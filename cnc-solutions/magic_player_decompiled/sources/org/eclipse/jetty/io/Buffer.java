package org.eclipse.jetty.io;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public interface Buffer extends Cloneable {
    public static final int IMMUTABLE = 0;
    public static final boolean NON_VOLATILE = false;
    public static final int READONLY = 1;
    public static final int READWRITE = 2;
    public static final boolean VOLATILE = true;

    public interface CaseInsensitve {
    }

    byte[] array();

    byte[] asArray();

    Buffer asImmutableBuffer();

    Buffer asMutableBuffer();

    Buffer asNonVolatileBuffer();

    Buffer asReadOnlyBuffer();

    Buffer buffer();

    int capacity();

    void clear();

    void compact();

    boolean equalsIgnoreCase(Buffer buffer);

    byte get();

    int get(byte[] bArr, int i4, int i5);

    Buffer get(int i4);

    int getIndex();

    boolean hasContent();

    boolean isImmutable();

    boolean isReadOnly();

    boolean isVolatile();

    int length();

    void mark();

    void mark(int i4);

    int markIndex();

    byte peek();

    byte peek(int i4);

    int peek(int i4, byte[] bArr, int i5, int i6);

    Buffer peek(int i4, int i5);

    int poke(int i4, Buffer buffer);

    int poke(int i4, byte[] bArr, int i5, int i6);

    void poke(int i4, byte b4);

    int put(Buffer buffer);

    int put(byte[] bArr);

    int put(byte[] bArr, int i4, int i5);

    void put(byte b4);

    int putIndex();

    int readFrom(InputStream inputStream, int i4);

    void reset();

    void setGetIndex(int i4);

    void setMarkIndex(int i4);

    void setPutIndex(int i4);

    int skip(int i4);

    Buffer slice();

    Buffer sliceFromMark();

    Buffer sliceFromMark(int i4);

    int space();

    String toDetailString();

    String toString(String str);

    String toString(Charset charset);

    void writeTo(OutputStream outputStream);
}
