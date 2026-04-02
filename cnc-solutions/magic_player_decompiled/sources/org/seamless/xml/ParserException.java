package org.seamless.xml;

import android.support.v4.media.f;
import org.xml.sax.SAXParseException;

/* JADX INFO: loaded from: classes2.dex */
public class ParserException extends Exception {
    public ParserException() {
    }

    public ParserException(String str) {
        super(str);
    }

    public ParserException(String str, Throwable th) {
        super(str, th);
    }

    public ParserException(Throwable th) {
        super(th);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParserException(SAXParseException sAXParseException) {
        StringBuilder sbA = f.a("(Line/Column: ");
        sbA.append(sAXParseException.getLineNumber());
        sbA.append(":");
        sbA.append(sAXParseException.getColumnNumber());
        sbA.append(") ");
        sbA.append(sAXParseException.getMessage());
        super(sbA.toString());
    }
}
