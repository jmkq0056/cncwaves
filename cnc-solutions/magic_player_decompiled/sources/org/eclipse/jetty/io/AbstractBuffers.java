package org.eclipse.jetty.io;

import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.nio.DirectNIOBuffer;
import org.eclipse.jetty.io.nio.IndirectNIOBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractBuffers implements Buffers {
    public final int _bufferSize;
    public final Buffers.Type _bufferType;
    public final int _headerSize;
    public final Buffers.Type _headerType;
    public final Buffers.Type _otherType;

    /* JADX INFO: renamed from: org.eclipse.jetty.io.AbstractBuffers$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$eclipse$jetty$io$Buffers$Type;

        static {
            int[] iArr = new int[Buffers.Type.values().length];
            $SwitchMap$org$eclipse$jetty$io$Buffers$Type = iArr;
            try {
                iArr[Buffers.Type.BYTE_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$eclipse$jetty$io$Buffers$Type[Buffers.Type.DIRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$eclipse$jetty$io$Buffers$Type[Buffers.Type.INDIRECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AbstractBuffers(Buffers.Type type, int i4, Buffers.Type type2, int i5, Buffers.Type type3) {
        this._headerType = type;
        this._headerSize = i4;
        this._bufferType = type2;
        this._bufferSize = i5;
        this._otherType = type3;
    }

    public int getBufferSize() {
        return this._bufferSize;
    }

    public int getHeaderSize() {
        return this._headerSize;
    }

    public final boolean isBuffer(Buffer buffer) {
        if (buffer.capacity() != this._bufferSize) {
            return false;
        }
        int i4 = AnonymousClass1.$SwitchMap$org$eclipse$jetty$io$Buffers$Type[this._bufferType.ordinal()];
        if (i4 == 1) {
            return (buffer instanceof ByteArrayBuffer) && !(buffer instanceof IndirectNIOBuffer);
        }
        if (i4 == 2) {
            return buffer instanceof DirectNIOBuffer;
        }
        if (i4 != 3) {
            return false;
        }
        return buffer instanceof IndirectNIOBuffer;
    }

    public final boolean isHeader(Buffer buffer) {
        if (buffer.capacity() != this._headerSize) {
            return false;
        }
        int i4 = AnonymousClass1.$SwitchMap$org$eclipse$jetty$io$Buffers$Type[this._headerType.ordinal()];
        if (i4 == 1) {
            return (buffer instanceof ByteArrayBuffer) && !(buffer instanceof IndirectNIOBuffer);
        }
        if (i4 == 2) {
            return buffer instanceof DirectNIOBuffer;
        }
        if (i4 != 3) {
            return false;
        }
        return buffer instanceof IndirectNIOBuffer;
    }

    public final Buffer newBuffer() {
        int i4 = AnonymousClass1.$SwitchMap$org$eclipse$jetty$io$Buffers$Type[this._bufferType.ordinal()];
        if (i4 == 1) {
            return new ByteArrayBuffer(this._bufferSize);
        }
        if (i4 == 2) {
            return new DirectNIOBuffer(this._bufferSize);
        }
        if (i4 == 3) {
            return new IndirectNIOBuffer(this._bufferSize);
        }
        throw new IllegalStateException();
    }

    public final Buffer newHeader() {
        int i4 = AnonymousClass1.$SwitchMap$org$eclipse$jetty$io$Buffers$Type[this._headerType.ordinal()];
        if (i4 == 1) {
            return new ByteArrayBuffer(this._headerSize);
        }
        if (i4 == 2) {
            return new DirectNIOBuffer(this._headerSize);
        }
        if (i4 == 3) {
            return new IndirectNIOBuffer(this._headerSize);
        }
        throw new IllegalStateException();
    }

    public String toString() {
        return String.format("%s [%d,%d]", getClass().getSimpleName(), Integer.valueOf(this._headerSize), Integer.valueOf(this._bufferSize));
    }

    public final Buffer newBuffer(int i4) {
        int i5 = AnonymousClass1.$SwitchMap$org$eclipse$jetty$io$Buffers$Type[this._otherType.ordinal()];
        if (i5 == 1) {
            return new ByteArrayBuffer(i4);
        }
        if (i5 == 2) {
            return new DirectNIOBuffer(i4);
        }
        if (i5 == 3) {
            return new IndirectNIOBuffer(i4);
        }
        throw new IllegalStateException();
    }
}
