package org.eclipse.jetty.util;

/* JADX INFO: loaded from: classes2.dex */
public class Utf8StringBuilder extends Utf8Appendable {
    public final StringBuilder _buffer;

    public Utf8StringBuilder() {
        super(new StringBuilder());
        this._buffer = (StringBuilder) this._appendable;
    }

    public StringBuilder getStringBuilder() {
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

    public Utf8StringBuilder(int i4) {
        super(new StringBuilder(i4));
        this._buffer = (StringBuilder) this._appendable;
    }
}
