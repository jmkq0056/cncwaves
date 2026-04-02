package org.eclipse.jetty.io.bio;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class StringEndPoint extends StreamEndPoint {
    public ByteArrayInputStream _bin;
    public ByteArrayOutputStream _bout;
    public String _encoding;

    public StringEndPoint() {
        super(null, null);
        this._encoding = StringUtil.__UTF8;
        this._bin = new ByteArrayInputStream(new byte[0]);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this._bout = byteArrayOutputStream;
        this._in = this._bin;
        this._out = byteArrayOutputStream;
    }

    public String getOutput() {
        try {
            String str = new String(this._bout.toByteArray(), this._encoding);
            this._bout.reset();
            return str;
        } catch (Exception e4) {
            throw new IllegalStateException(this._encoding, e4) { // from class: org.eclipse.jetty.io.bio.StringEndPoint.1
                public final /* synthetic */ Exception val$e;

                {
                    this.val$e = e4;
                    initCause(e4);
                }
            };
        }
    }

    public boolean hasMore() {
        return this._bin.available() > 0;
    }

    public void setInput(String str) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes(this._encoding));
            this._bin = byteArrayInputStream;
            this._in = byteArrayInputStream;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this._bout = byteArrayOutputStream;
            this._out = byteArrayOutputStream;
            this._ishut = false;
            this._oshut = false;
        } catch (Exception e4) {
            throw new IllegalStateException(e4.toString());
        }
    }

    public StringEndPoint(String str) {
        this();
        if (str != null) {
            this._encoding = str;
        }
    }
}
