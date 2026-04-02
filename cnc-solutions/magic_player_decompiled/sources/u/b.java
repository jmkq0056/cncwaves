package u;

import javax.xml.parsers.SAXParserFactory;
import org.fourthline.cling.support.renderingcontrol.lastchange.RenderingControlLastChangeParser;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
public class b extends RenderingControlLastChangeParser {
    @Override // org.seamless.xml.SAXParser
    public XMLReader create() {
        try {
            SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
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
}
