package org.xmlcml.validator.web;

import freemarker.cache.ClassTemplateLoader;
import freemarker.template.Configuration;
import org.restlet.Application;
import org.restlet.Component;
import org.restlet.Restlet;
import org.restlet.data.MediaType;
import org.restlet.data.Protocol;
import org.restlet.ext.freemarker.TemplateRepresentation;
import org.restlet.representation.Representation;
import org.restlet.routing.Router;
import org.restlet.routing.Template;

import java.io.IOException;

/**
 * @author sea36
 */
public class ValidatorWebApp extends Application {

    private Configuration freemarker;

    public ValidatorWebApp() {
        this.freemarker = new Configuration();
        this.freemarker.setTemplateLoader(new ClassTemplateLoader(ValidatorWebApp.class, "/org/xmlcml/validator/web/templates"));

        getMetadataService().addExtension("cml", MediaType.register("chemical/x-cml", "Chemical Markup Language"));
    }

    @Override
    public Restlet createInboundRoot() {
        Router router = new Router();
        router.setDefaultMatchingMode(Template.MODE_EQUALS);
        router.attach("/", IndexResource.class);
        router.attach("/validate", ValidateResource.class);
        return router;
    }

    public Representation template(String name, MediaType mediaType) throws IOException {
        freemarker.template.Template template = freemarker.getTemplate(name);
        return new TemplateRepresentation(template, mediaType);
    }

    public Representation template(String name, Object model, MediaType mediaType) throws IOException {
        freemarker.template.Template template = freemarker.getTemplate(name);
        return new TemplateRepresentation(template, model, mediaType);
    }


    public static void main(String[] args) throws Exception {
        Component component = new Component();
        component.getServers().add(Protocol.HTTP, 8080);
        component.getDefaultHost().attachDefault(new ValidatorWebApp());
        component.start();
    }

}
