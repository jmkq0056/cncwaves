package org.fourthline.cling.model;

import android.support.v4.media.b;
import android.support.v4.media.f;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes2.dex */
public class XMLUtil {
    public static Element appendNewElement(Document document, Element element, Enum r22) {
        return appendNewElement(document, element, r22.toString());
    }

    public static Element appendNewElementIfNotNull(Document document, Element element, Enum r3, Object obj) {
        return appendNewElementIfNotNull(document, element, r3, obj, (String) null);
    }

    public static String documentToFragmentString(Document document) {
        return nodeToString(document.getDocumentElement(), new HashSet(), document.getDocumentElement().getNamespaceURI());
    }

    public static String documentToString(Document document) {
        return documentToString(document, true);
    }

    public static String encodeText(String str) {
        return encodeText(str, true);
    }

    public static String getTextContent(Node node) {
        StringBuffer stringBuffer = new StringBuffer();
        NodeList childNodes = node.getChildNodes();
        for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
            Node nodeItem = childNodes.item(i4);
            if (nodeItem.getNodeType() == 3) {
                stringBuffer.append(nodeItem.getNodeValue());
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String nodeToString(Node node, Set<String> set, String str) {
        boolean z3;
        StringBuilder sb = new StringBuilder();
        if (node == null) {
            return "";
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            sb.append("<");
            sb.append(element.getNodeName());
            HashMap map = new HashMap();
            if (element.getPrefix() != null && !set.contains(element.getPrefix())) {
                map.put(element.getPrefix(), element.getNamespaceURI());
            }
            if (element.hasAttributes()) {
                NamedNodeMap attributes = element.getAttributes();
                for (int i4 = 0; i4 < attributes.getLength(); i4++) {
                    Node nodeItem = attributes.item(i4);
                    if (!nodeItem.getNodeName().startsWith("xmlns")) {
                        if (nodeItem.getPrefix() != null && !set.contains(nodeItem.getPrefix())) {
                            map.put(nodeItem.getPrefix(), element.getNamespaceURI());
                        }
                        sb.append(" ");
                        sb.append(nodeItem.getNodeName());
                        sb.append("=\"");
                        sb.append(nodeItem.getNodeValue());
                        sb.append("\"");
                    }
                }
            }
            if (str != null && !map.containsValue(str) && !str.equals(element.getParentNode().getNamespaceURI())) {
                sb.append(" xmlns=\"");
                sb.append(str);
                sb.append("\"");
            }
            for (Map.Entry entry : map.entrySet()) {
                sb.append(" xmlns:");
                sb.append((String) entry.getKey());
                sb.append("=\"");
                sb.append((String) entry.getValue());
                sb.append("\"");
                set.add(entry.getKey());
            }
            NodeList childNodes = element.getChildNodes();
            int i5 = 0;
            while (true) {
                if (i5 >= childNodes.getLength()) {
                    z3 = true;
                    break;
                }
                if (childNodes.item(i5).getNodeType() != 2) {
                    z3 = false;
                    break;
                }
                i5++;
            }
            if (z3) {
                sb.append("/>");
            } else {
                sb.append(">");
                for (int i6 = 0; i6 < childNodes.getLength(); i6++) {
                    sb.append(nodeToString(childNodes.item(i6), set, childNodes.item(i6).getNamespaceURI()));
                }
                sb.append("</");
                sb.append(element.getNodeName());
                sb.append(">");
            }
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                set.remove((String) it.next());
            }
        } else if (node.getNodeValue() != null) {
            sb.append(encodeText(node.getNodeValue(), node instanceof Attr));
        }
        return sb.toString();
    }

    public static Element appendNewElement(Document document, Element element, String str) {
        Element elementCreateElement = document.createElement(str);
        element.appendChild(elementCreateElement);
        return elementCreateElement;
    }

    public static Element appendNewElementIfNotNull(Document document, Element element, Enum r22, Object obj, String str) {
        return appendNewElementIfNotNull(document, element, r22.toString(), obj, str);
    }

    public static String documentToString(Document document, boolean z3) {
        StringBuilder sbA = f.a(b.a(f.a("<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\""), z3 ? "yes" : "no", "\"?>"));
        sbA.append(nodeToString(document.getDocumentElement(), new HashSet(), document.getDocumentElement().getNamespaceURI()));
        return sbA.toString();
    }

    public static String encodeText(String str, boolean z3) {
        String strReplaceAll = str.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;");
        return z3 ? strReplaceAll.replaceAll("'", "&apos;").replaceAll("\"", "&quot;") : strReplaceAll;
    }

    public static Element appendNewElementIfNotNull(Document document, Element element, String str, Object obj) {
        return appendNewElementIfNotNull(document, element, str, obj, (String) null);
    }

    public static Element appendNewElement(Document document, Element element, String str, Object obj) {
        return appendNewElement(document, element, str, obj, null);
    }

    public static Element appendNewElementIfNotNull(Document document, Element element, String str, Object obj, String str2) {
        return obj == null ? element : appendNewElement(document, element, str, obj, str2);
    }

    public static Element appendNewElement(Document document, Element element, String str, Object obj, String str2) {
        Element elementCreateElement;
        if (str2 != null) {
            elementCreateElement = document.createElementNS(str2, str);
        } else {
            elementCreateElement = document.createElement(str);
        }
        if (obj != null) {
            elementCreateElement.appendChild(document.createTextNode(obj.toString()));
        }
        element.appendChild(elementCreateElement);
        return elementCreateElement;
    }
}
