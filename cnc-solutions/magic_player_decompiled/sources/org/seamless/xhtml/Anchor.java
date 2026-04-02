package org.seamless.xhtml;

import android.support.v4.media.f;
import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes2.dex */
public class Anchor extends XHTMLElement {
    public Anchor(XPath xPath, Element element) {
        super(xPath, element);
    }

    public Href getHref() {
        return Href.fromString(getAttribute(XHTML.ATTR.href));
    }

    public String getType() {
        return getAttribute(XHTML.ATTR.type);
    }

    public Anchor setHref(String str) {
        setAttribute(XHTML.ATTR.href, str);
        return this;
    }

    public Anchor setType(String str) {
        setAttribute(XHTML.ATTR.type, str);
        return this;
    }

    @Override // org.seamless.xml.DOMElement
    public String toString() {
        StringBuilder sbA = f.a("(Anchor) ");
        sbA.append(getAttribute(XHTML.ATTR.href));
        return sbA.toString();
    }
}
