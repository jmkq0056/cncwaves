package org.seamless.xml;

import android.support.v4.media.f;
import java.util.ArrayList;
import java.util.Collection;
import javax.xml.namespace.QName;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import org.seamless.xml.DOMElement;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DOMElement<CHILD extends DOMElement, PARENT extends DOMElement> {
    private Element element;
    private final XPath xpath;
    public final DOMElement<CHILD, PARENT>.Builder<PARENT> PARENT_BUILDER = createParentBuilder(this);
    public final DOMElement<CHILD, PARENT>.ArrayBuilder<CHILD> CHILD_BUILDER = createChildBuilder(this);

    public abstract class ArrayBuilder<T extends DOMElement> extends DOMElement<CHILD, PARENT>.Builder<T> {
        public ArrayBuilder(DOMElement dOMElement) {
            super(dOMElement);
        }

        public T[] buildArray(DOMElement[] dOMElementArr) {
            T[] tArr = (T[]) newChildrenArray(dOMElementArr.length);
            for (int i4 = 0; i4 < tArr.length; i4++) {
                tArr[i4] = build(dOMElementArr[i4].getW3CElement());
            }
            return tArr;
        }

        public T[] getChildElements() {
            return (T[]) buildArray(this.element.getChildren());
        }

        public abstract T[] newChildrenArray(int i4);

        public T[] getChildElements(String str) {
            return (T[]) buildArray(this.element.getChildren(str));
        }
    }

    public abstract class Builder<T extends DOMElement> {
        public DOMElement element;

        public Builder(DOMElement dOMElement) {
            this.element = dOMElement;
        }

        public abstract T build(Element element);

        public T firstChildOrNull(String str) {
            DOMElement firstChild = this.element.getFirstChild(str);
            if (firstChild != null) {
                return (T) build(firstChild.getW3CElement());
            }
            return null;
        }
    }

    public DOMElement(XPath xPath, Element element) {
        this.xpath = xPath;
        this.element = element;
    }

    public CHILD adoptOrImport(Document document, CHILD child, boolean z3) {
        return document != null ? z3 ? this.CHILD_BUILDER.build((Element) document.importNode(child.getW3CElement(), true)) : this.CHILD_BUILDER.build((Element) document.adoptNode(child.getW3CElement())) : child;
    }

    public CHILD appendChild(CHILD child, boolean z3) {
        CHILD child2 = (CHILD) adoptOrImport(getW3CElement().getOwnerDocument(), child, z3);
        getW3CElement().appendChild(child2.getW3CElement());
        return child2;
    }

    public CHILD createChild(String str) {
        return (CHILD) createChild(str, null);
    }

    public abstract DOMElement<CHILD, PARENT>.ArrayBuilder<CHILD> createChildBuilder(DOMElement dOMElement);

    public abstract DOMElement<CHILD, PARENT>.Builder<PARENT> createParentBuilder(DOMElement dOMElement);

    public CHILD findChildWithIdentifier(String str) {
        DOMElement<CHILD, PARENT>.ArrayBuilder<CHILD> arrayBuilder = this.CHILD_BUILDER;
        StringBuilder sbA = f.a("descendant::");
        sbA.append(prefix("*"));
        sbA.append("[@id=\"");
        sbA.append(str);
        sbA.append("\"]");
        Collection<CHILD> xPathChildElements = getXPathChildElements(arrayBuilder, sbA.toString());
        if (xPathChildElements.size() == 1) {
            return xPathChildElements.iterator().next();
        }
        return null;
    }

    public CHILD[] findChildren(String str) {
        DOMElement<CHILD, PARENT>.ArrayBuilder<CHILD> arrayBuilder = this.CHILD_BUILDER;
        StringBuilder sbA = f.a("descendant::");
        sbA.append(prefix(str));
        Collection<CHILD> xPathChildElements = getXPathChildElements(arrayBuilder, sbA.toString());
        return (CHILD[]) ((DOMElement[]) xPathChildElements.toArray(this.CHILD_BUILDER.newChildrenArray(xPathChildElements.size())));
    }

    public String getAttribute(String str) {
        String attribute = getW3CElement().getAttribute(str);
        if (attribute.length() > 0) {
            return attribute;
        }
        return null;
    }

    public CHILD[] getChildren() {
        NodeList childNodes = getW3CElement().getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
            Node nodeItem = childNodes.item(i4);
            if (nodeItem.getNodeType() == 1) {
                arrayList.add(this.CHILD_BUILDER.build((Element) nodeItem));
            }
        }
        return (CHILD[]) ((DOMElement[]) arrayList.toArray(this.CHILD_BUILDER.newChildrenArray(arrayList.size())));
    }

    public String getContent() {
        return getW3CElement().getTextContent();
    }

    public String getElementName() {
        return getW3CElement().getNodeName();
    }

    public CHILD getFirstChild(String str) {
        return (CHILD) getXPathChildElement(this.CHILD_BUILDER, prefix(str) + "[1]");
    }

    public PARENT getParent() {
        return (PARENT) this.PARENT_BUILDER.build((Element) getW3CElement().getParentNode());
    }

    public CHILD getRequiredChild(String str) throws ParserException {
        DOMElement[] children = getChildren(str);
        if (children.length == 1) {
            return (CHILD) children[0];
        }
        StringBuilder sbA = f.a("Required single child element of '");
        sbA.append(getElementName());
        sbA.append("' not found: ");
        sbA.append(str);
        throw new ParserException(sbA.toString());
    }

    public Element getW3CElement() {
        return this.element;
    }

    public CHILD getXPathChildElement(DOMElement<CHILD, PARENT>.Builder<CHILD> builder, String str) {
        Node node = (Node) getXPathResult(getW3CElement(), str, XPathConstants.NODE);
        if (node == null || node.getNodeType() != 1) {
            return null;
        }
        return (CHILD) builder.build((Element) node);
    }

    public Collection<CHILD> getXPathChildElements(DOMElement<CHILD, PARENT>.Builder<CHILD> builder, String str) {
        return getXPathElements(builder, str);
    }

    public Collection getXPathElements(Builder builder, String str) {
        ArrayList arrayList = new ArrayList();
        NodeList nodeList = (NodeList) getXPathResult(getW3CElement(), str, XPathConstants.NODESET);
        for (int i4 = 0; i4 < nodeList.getLength(); i4++) {
            arrayList.add(builder.build((Element) nodeList.item(i4)));
        }
        return arrayList;
    }

    public PARENT getXPathParentElement(DOMElement<CHILD, PARENT>.Builder<PARENT> builder, String str) {
        Node node = (Node) getXPathResult(getW3CElement(), str, XPathConstants.NODE);
        if (node == null || node.getNodeType() != 1) {
            return null;
        }
        return (PARENT) builder.build((Element) node);
    }

    public Collection<PARENT> getXPathParentElements(DOMElement<CHILD, PARENT>.Builder<CHILD> builder, String str) {
        return getXPathElements(builder, str);
    }

    public Object getXPathResult(String str, QName qName) {
        return getXPathResult(getW3CElement(), str, qName);
    }

    public String getXPathString(XPath xPath, String str) {
        return getXPathResult(getW3CElement(), str, null).toString();
    }

    public XPath getXpath() {
        return this.xpath;
    }

    public String prefix(String str) {
        return str;
    }

    public void removeChild(CHILD child) {
        getW3CElement().removeChild(child.getW3CElement());
    }

    public void removeChildren() {
        NodeList childNodes = getW3CElement().getChildNodes();
        for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
            getW3CElement().removeChild(childNodes.item(i4));
        }
    }

    public CHILD replaceChild(CHILD child, CHILD child2, boolean z3) {
        CHILD child3 = (CHILD) adoptOrImport(getW3CElement().getOwnerDocument(), child2, z3);
        getW3CElement().replaceChild(child3.getW3CElement(), child.getW3CElement());
        return child3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceEqualChild(DOMElement dOMElement, String str) {
        DOMElement dOMElementFindChildWithIdentifier = findChildWithIdentifier(str);
        dOMElementFindChildWithIdentifier.getParent().replaceChild(dOMElementFindChildWithIdentifier, dOMElement.findChildWithIdentifier(str), true);
    }

    public DOMElement setAttribute(String str, String str2) {
        getW3CElement().setAttribute(str, str2);
        return this;
    }

    public DOMElement<CHILD, PARENT> setContent(String str) {
        getW3CElement().setTextContent(str);
        return this;
    }

    public String toSimpleXMLString() {
        StringBuilder sbA = f.a("<");
        sbA.append(getElementName());
        NamedNodeMap attributes = getW3CElement().getAttributes();
        for (int i4 = 0; i4 < attributes.getLength(); i4++) {
            Node nodeItem = attributes.item(i4);
            sbA.append(" ");
            sbA.append(nodeItem.getNodeName());
            sbA.append("=\"");
            sbA.append(nodeItem.getTextContent());
            sbA.append("\"");
        }
        if (getContent().length() > 0) {
            sbA.append(">");
            sbA.append(getContent());
            sbA.append("</");
            sbA.append(getElementName());
            sbA.append(">");
        } else {
            sbA.append("/>");
        }
        return sbA.toString();
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") ");
        sbA.append(getW3CElement() == null ? "UNBOUND" : getElementName());
        return sbA.toString();
    }

    public CHILD createChild(String str, String str2) {
        CHILD childBuild = this.CHILD_BUILDER.build(str2 == null ? getW3CElement().getOwnerDocument().createElement(str) : getW3CElement().getOwnerDocument().createElementNS(str2, str));
        getW3CElement().appendChild(childBuild.getW3CElement());
        return childBuild;
    }

    public Object getXPathResult(Node node, String str, QName qName) {
        try {
            return qName == null ? this.xpath.evaluate(str, node) : this.xpath.evaluate(str, node, qName);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public CHILD[] getChildren(String str) {
        Collection<CHILD> xPathChildElements = getXPathChildElements(this.CHILD_BUILDER, prefix(str));
        return (CHILD[]) ((DOMElement[]) xPathChildElements.toArray(this.CHILD_BUILDER.newChildrenArray(xPathChildElements.size())));
    }
}
