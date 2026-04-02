package org.seamless.xml;

import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.logging.Logger;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class SAXParser {
    private final XMLReader xr;
    private static final Logger log = Logger.getLogger(SAXParser.class.getName());
    public static final URI XML_SCHEMA_NAMESPACE = URI.create("http://www.w3.org/2001/xml.xsd");
    public static final URL XML_SCHEMA_RESOURCE = Thread.currentThread().getContextClassLoader().getResource("org/seamless/schemas/xml.xsd");

    public static class Handler<I> extends DefaultHandler {
        public Attributes attributes;
        public StringBuilder characters;
        public I instance;
        public Handler parent;
        public SAXParser parser;

        public Handler(I i4) {
            this(i4, null, null);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i4, int i5) {
            this.characters.append(cArr, i4, i5);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            if (!isLastElement(str, str2, str3)) {
                SAXParser.log.finer(getClass().getSimpleName() + " ending: " + str2);
                return;
            }
            SAXParser.log.finer(getClass().getSimpleName() + ": last element, switching to parent: " + str2);
            switchToParent();
        }

        public Attributes getAttributes() {
            return this.attributes;
        }

        public String getCharacters() {
            return this.characters.toString();
        }

        public I getInstance() {
            return this.instance;
        }

        public Handler getParent() {
            return this.parent;
        }

        public SAXParser getParser() {
            return this.parser;
        }

        public boolean isLastElement(String str, String str2, String str3) {
            return false;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            this.characters = new StringBuilder();
            this.attributes = new AttributesImpl(attributes);
            SAXParser.log.finer(getClass().getSimpleName() + " starting: " + str2);
        }

        public void switchToParent() {
            Handler handler;
            SAXParser sAXParser = this.parser;
            if (sAXParser == null || (handler = this.parent) == null) {
                return;
            }
            sAXParser.setContentHandler(handler);
            this.attributes = null;
        }

        public Handler(I i4, SAXParser sAXParser) {
            this(i4, sAXParser, null);
        }

        public Handler(I i4, Handler handler) {
            this(i4, handler.getParser(), handler);
        }

        public Handler(I i4, SAXParser sAXParser, Handler handler) {
            this.characters = new StringBuilder();
            this.instance = i4;
            this.parser = sAXParser;
            this.parent = handler;
            if (sAXParser != null) {
                sAXParser.setContentHandler(this);
            }
        }
    }

    public class SimpleErrorHandler implements ErrorHandler {
        public SimpleErrorHandler() {
        }

        @Override // org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) throws SAXException {
            throw new SAXException(sAXParseException);
        }

        @Override // org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            throw new SAXException(sAXParseException);
        }

        @Override // org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) throws SAXException {
            throw new SAXException(sAXParseException);
        }
    }

    public SAXParser() {
        this(null);
    }

    public XMLReader create() {
        try {
            SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            sAXParserFactoryNewInstance.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
            sAXParserFactoryNewInstance.setXIncludeAware(false);
            sAXParserFactoryNewInstance.setNamespaceAware(true);
            if (getSchemaSources() != null) {
                sAXParserFactoryNewInstance.setSchema(createSchema(getSchemaSources()));
            }
            XMLReader xMLReader = sAXParserFactoryNewInstance.newSAXParser().getXMLReader();
            xMLReader.setErrorHandler(getErrorHandler());
            return xMLReader;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public Schema createSchema(Source[] sourceArr) {
        try {
            SchemaFactory schemaFactoryNewInstance = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
            schemaFactoryNewInstance.setResourceResolver(new CatalogResourceResolver(new HashMap<URI, URL>() { // from class: org.seamless.xml.SAXParser.1
                {
                    put(SAXParser.XML_SCHEMA_NAMESPACE, SAXParser.XML_SCHEMA_RESOURCE);
                }
            }));
            return schemaFactoryNewInstance.newSchema(sourceArr);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public ErrorHandler getErrorHandler() {
        return new SimpleErrorHandler();
    }

    public Source[] getSchemaSources() {
        return null;
    }

    public void parse(InputSource inputSource) throws ParserException {
        try {
            this.xr.parse(inputSource);
        } catch (Exception e4) {
            throw new ParserException(e4);
        }
    }

    public void setContentHandler(ContentHandler contentHandler) {
        this.xr.setContentHandler(contentHandler);
    }

    public SAXParser(DefaultHandler defaultHandler) {
        XMLReader xMLReaderCreate = create();
        this.xr = xMLReaderCreate;
        if (defaultHandler != null) {
            xMLReaderCreate.setContentHandler(defaultHandler);
        }
    }
}
