package org.xmlcml.validator.web;

import nu.xom.*;
import nu.xom.xslt.XSLException;
import nu.xom.xslt.XSLTransform;
import org.apache.log4j.Logger;
import org.restlet.data.Form;
import org.restlet.data.MediaType;
import org.restlet.data.Status;
import org.restlet.representation.Representation;
import org.restlet.representation.StringRepresentation;
import org.restlet.resource.Post;
import org.restlet.resource.ServerResource;
import org.xmlcml.www.CmlLiteValidator;
import org.xmlcml.www.ValidationReport;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/**
 * @author sea36
 * @author jat45
 */
public class ValidateResource extends ServerResource {

    private static Logger log = Logger.getLogger(ValidateResource.class);
    private CmlLiteValidator validator = new CmlLiteValidator();
    private XSLTransform xslt = null;

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
        ValidationReport report = validator.validate(cml);

        Map<String, Object> model = new HashMap<String, Object>();


        Document document = getReportAsHtml(report);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            print(document, baos);
            String doc = baos.toString();
            model.put("validationReport", doc);

            return getApplication().template("results.ftl", model, MediaType.TEXT_HTML);
    }

    @Post("cml|xml:xml")
    public Representation postCml(String cml) {
        ValidationReport report = validator.validate(cml);
        return new StringRepresentation(report.getReport().toXML(), MediaType.TEXT_HTML);
    }

    private Document getReportAsHtml(ValidationReport report) {
        Nodes nodes = null;
        try {
            xslt = createXSLTTransform();
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        if (null != xslt) {
            String resultType = "INVALID";
            switch (report.getValidationResult()) {
                case VALID: {
                    resultType = "VALID";
                    break;
                }
                case VALID_WITH_WARNINGS: {
                    resultType = "WARNINGS";
                    break;
                }
            }
            xslt.setParameter("result", resultType);
            try {
                nodes = xslt.transform(report.getReport());
            } catch (XSLException e) {
                log.error(e.getMessage());
            }
            if (nodes != null) {
                return XSLTransform.toDocument(nodes);
            }
        }
        return getGenericReportDocument();
    }

    private Document getGenericReportDocument() {
        System.out.println("getting generic doc");
        Document document = null;
        try {
            document = new Builder().build("<div xmlns=\"http://www.w3.org/1999/xhtml\">\n" +
                    "    <h1 class=\"exception\">We have been unable to process the text of the report</h1>\n" +
                    "</div>");
        } catch (ParsingException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        return document;
    }

    /**
     * Create a saxon 9 XSLTransform from a given xslt name. Leading "/" in xsltName
     * indicates absolute path in classpath, otherwise relative to derived Class's
     * package.
     *
     * @return
     * @throws Exception
     */
    private XSLTransform createXSLTTransform() throws Exception {
        Builder builder = new Builder();
        URL xslt = ValidateResource.class.getResource("xsl/report2html.xsl");
        /* set up to use saxon 9 */
        System.setProperty("javax.xml.transform.TransformerFactory", "net.sf.saxon.TransformerFactoryImpl");
        Document stylesheet = builder.build(xslt.openStream());
        return new XSLTransform(stylesheet);
    }

       /**
     * Prints a XOM document to an OutputStream without having to remember the
     * serializer voodoo. The encoding is always UTF-8.
     *
     * @param doc the XOM Document to print
     * @param out where to print to
     */
    public static void print(Document doc, OutputStream out) {
        Serializer serializer;
        try {
            DocType docType = new DocType("html", "-//W3C//DTD XHTML 1.0 Strict//EN",  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd");
            doc.setDocType(docType);
            serializer = new Serializer(out, "UTF-8");
            serializer.setIndent(4);
            serializer.write(doc);
        } catch (Exception e) {
            log.error(e);
            throw new RuntimeException(e);
        }
    }

}
