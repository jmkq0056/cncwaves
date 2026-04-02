package org.eclipse.jetty.util;

/* JADX INFO: loaded from: classes2.dex */
public class Utf8StringBuffer extends Utf8Appendable {
    public final StringBuffer _buffer;

    public Utf8StringBuffer() {
        super(new StringBuffer());
        this._buffer = (StringBuffer) this._appendable;
    }

    public StringBuffer getStringBuffer() {
        checkState();
        return this._buffer;
    }

    @Override // org.eclipse.jetty.util.Utf8Appendable
    public int length() {
        return this._buffer.length();
    }

    @Override // org.eclipse.jetty.util.Utf8Appendable
    public void reset() {
        super.reset();
        this._buffer.setLength(0);
    }

    public String toString() {
        checkState();
        return this._buffer.toString();
    }

    public Utf8StringBuffer(int i4) {
        super(new StringBuffer(i4));
        this._buffer = (StringBuffer) this._appendable;
    }
}
