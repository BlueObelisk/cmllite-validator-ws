package org.xmlcml.validator.web;

import org.restlet.Request;
import org.restlet.data.Form;
import org.restlet.data.MediaType;
import org.restlet.data.Status;
import org.restlet.representation.Representation;
import org.restlet.representation.StringRepresentation;
import org.restlet.resource.Post;
import org.restlet.resource.ServerResource;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author sea36
 */
public class ValidateResource extends ServerResource {

    public ValidatorWebApp getApplication() {
        return (ValidatorWebApp) super.getApplication();
    }

    @Post("form:html")
    public Representation postForm(Form form) throws IOException {
        String cml = form.getFirstValue("cml");
        if (cml == null) {
            setStatus(Status.CLIENT_ERROR_BAD_REQUEST);
            return null;
        }
        Map<String,Object> model = new HashMap<String, Object>();
        model.put("cml", cml.replace("<", "&lt;"));
        return getApplication().template("results.ftl", model, MediaType.TEXT_HTML);
    }

    @Post("cml|xml:xml")
    public Representation postCml(String cml) {
        return new StringRepresentation(cml, MediaType.APPLICATION_XML);
    }

    
}
