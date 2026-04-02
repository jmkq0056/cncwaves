package org.fourthline.cling.support.model;

import java.net.URI;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes2.dex */
public class DescMeta<M> {
    public String id;
    public M metadata;
    public URI nameSpace;
    public String type;

    public DescMeta() {
    }

    public Document createMetadataDocument() {
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            documentNewDocument.appendChild(documentNewDocument.createElementNS(DIDLContent.DESC_WRAPPER_NAMESPACE_URI, "desc-wrapper"));
            return documentNewDocument;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public String getId() {
        return this.id;
    }

    public M getMetadata() {
        return this.metadata;
    }

    public URI getNameSpace() {
        return this.nameSpace;
    }

    public String getType() {
        return this.type;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setMetadata(M m4) {
        this.metadata = m4;
    }

    public void setNameSpace(URI uri) {
        this.nameSpace = uri;
    }

    public void setType(String str) {
        this.type = str;
    }

    public DescMeta(String str, String str2, URI uri, M m4) {
        this.id = str;
        this.type = str2;
        this.nameSpace = uri;
        this.metadata = m4;
    }
}
