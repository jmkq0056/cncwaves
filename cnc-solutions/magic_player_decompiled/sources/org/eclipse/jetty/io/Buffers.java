package org.eclipse.jetty.io;

/* JADX INFO: loaded from: classes2.dex */
public interface Buffers {

    public enum Type {
        BYTE_ARRAY,
        DIRECT,
        INDIRECT
    }

    Buffer getBuffer();

    Buffer getBuffer(int i4);

    Buffer getHeader();

    void returnBuffer(Buffer buffer);
}
