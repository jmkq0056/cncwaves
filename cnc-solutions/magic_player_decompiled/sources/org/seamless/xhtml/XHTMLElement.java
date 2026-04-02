package org.seamless.xhtml;

import androidx.appcompat.view.a;
import java.util.ArrayList;
import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML;
import org.seamless.xml.DOMElement;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes2.dex */
public class XHTMLElement extends DOMElement<XHTMLElement, XHTMLElement> {
    public static final String XPATH_PREFIX = "h";

    public XHTMLElement(XPath xPath, Element element) {
        super(xPath, element);
    }

    public XHTMLElement createChild(XHTML.ELEMENT element) {
        return (XHTMLElement) super.createChild(element.name(), XHTML.NAMESPACE_URI);
    }

    @Override // org.seamless.xml.DOMElement
    public DOMElement<XHTMLElement, XHTMLElement>.ArrayBuilder<XHTMLElement> createChildBuilder(DOMElement dOMElement) {
        return new DOMElement<XHTMLElement, XHTMLElement>.ArrayBuilder<XHTMLElement>(dOMElement) { // from class: org.seamless.xhtml.XHTMLElement.2
            @Override // org.seamless.xml.DOMElement.Builder
            public XHTMLElement build(Element element) {
                return new XHTMLElement(XHTMLElement.this.getXpath(), element);
            }

            @Override // org.seamless.xml.DOMElement.ArrayBuilder
            public XHTMLElement[] newChildrenArray(int i4) {
                return new XHTMLElement[i4];
            }
        };
    }

    @Override // org.seamless.xml.DOMElement
    public DOMElement<XHTMLElement, XHTMLElement>.Builder<XHTMLElement> createParentBuilder(DOMElement dOMElement) {
        return new DOMElement<XHTMLElement, XHTMLElement>.Builder<XHTMLElement>(dOMElement) { // from class: org.seamless.xhtml.XHTMLElement.1
            @Override // org.seamless.xml.DOMElement.Builder
            public XHTMLElement build(Element element) {
                return new XHTMLElement(XHTMLElement.this.getXpath(), element);
            }
        };
    }

    public Anchor[] findAllAnchors() {
        return findAllAnchors(null, null);
    }

    public XHTMLElement[] findChildren(XHTML.ELEMENT element) {
        return (XHTMLElement[]) super.findChildren(element.name());
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public XHTMLElement[] findChildrenWithClass(XHTML.ELEMENT element, String str) {
        ArrayList arrayList = new ArrayList();
        for (XHTMLElement xHTMLElement : findChildren(element)) {
            if (str == null) {
                arrayList.add(xHTMLElement);
            } else {
                String[] classes = xHTMLElement.getClasses();
                int length = classes.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    }
                    if (classes[i4].matches(str)) {
                        arrayList.add(xHTMLElement);
                        break;
                    }
                    i4++;
                }
            }
        }
        return (XHTMLElement[]) arrayList.toArray(this.CHILD_BUILDER.newChildrenArray(arrayList.size()));
    }

    public String getAttribute(XHTML.ATTR attr) {
        return getAttribute(attr.name());
    }

    public XHTMLElement[] getChildren(XHTML.ELEMENT element) {
        return (XHTMLElement[]) super.getChildren(element.name());
    }

    public String[] getClasses() {
        String attribute = getAttribute(XHTML.ATTR.CLASS);
        return attribute == null ? new String[0] : attribute.split(" ");
    }

    public XHTML.ELEMENT getConstant() {
        return XHTML.ELEMENT.valueOf(getElementName());
    }

    public XHTMLElement getFirstChild(XHTML.ELEMENT element) {
        return (XHTMLElement) super.getFirstChild(element.name());
    }

    public String getId() {
        return getAttribute(XHTML.ATTR.id);
    }

    public Option getOption(String str) {
        for (Option option : getOptions()) {
            if (option.getKey().equals(str)) {
                return option;
            }
        }
        return null;
    }

    public Option[] getOptions() {
        return Option.fromString(getAttribute(XHTML.ATTR.style));
    }

    public String getTitle() {
        return getAttribute(XHTML.ATTR.title);
    }

    @Override // org.seamless.xml.DOMElement
    public String prefix(String str) {
        return a.a("h:", str);
    }

    public XHTMLElement setClasses(String str) {
        setAttribute(XHTML.ATTR.CLASS, str);
        return this;
    }

    public XHTMLElement setId(String str) {
        setAttribute(XHTML.ATTR.id, str);
        return this;
    }

    public XHTMLElement setTitle(String str) {
        setAttribute(XHTML.ATTR.title, str);
        return this;
    }

    public Anchor[] findAllAnchors(String str) {
        return findAllAnchors(str, null);
    }

    public XHTMLElement setAttribute(XHTML.ATTR attr, String str) {
        super.setAttribute(attr.name(), str);
        return this;
    }

    public XHTMLElement setClasses(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < strArr.length; i4++) {
            sb.append(strArr[i4]);
            if (i4 != strArr.length - 1) {
                sb.append(" ");
            }
        }
        setAttribute(XHTML.ATTR.CLASS, sb.toString());
        return this;
    }

    @Override // org.seamless.xml.DOMElement
    public XHTMLElement setContent(String str) {
        super.setContent(str);
        return this;
    }

    public Anchor[] findAllAnchors(String str, String str2) {
        XHTMLElement[] xHTMLElementArrFindChildrenWithClass = findChildrenWithClass(XHTML.ELEMENT.a, str2);
        ArrayList arrayList = new ArrayList(xHTMLElementArrFindChildrenWithClass.length);
        for (XHTMLElement xHTMLElement : xHTMLElementArrFindChildrenWithClass) {
            String attribute = xHTMLElement.getAttribute(XHTML.ATTR.href);
            if (str == null || (attribute != null && attribute.startsWith(str))) {
                arrayList.add(new Anchor(getXpath(), xHTMLElement.getW3CElement()));
            }
        }
        return (Anchor[]) arrayList.toArray(new Anchor[arrayList.size()]);
    }

    @Override // org.seamless.xml.DOMElement
    public XHTMLElement setAttribute(String str, String str2) {
        super.setAttribute(str, str2);
        return this;
    }
}
