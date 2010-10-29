package org.xmlcml.validator.web;

import org.restlet.data.MediaType;
import org.restlet.representation.Representation;
import org.restlet.resource.Get;
import org.restlet.resource.ServerResource;

import java.io.IOException;

/**
 * @author sea36
 */
public class IndexResource extends ServerResource {

    public ValidatorWebApp getApplication() {
        return (ValidatorWebApp) super.getApplication();
    }

    @Get("html")
    public Representation getHtml() throws IOException {
        return getApplication().template("index.ftl", MediaType.TEXT_HTML);
    }

}
