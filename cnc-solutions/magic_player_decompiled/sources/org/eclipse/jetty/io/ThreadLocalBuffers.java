package org.eclipse.jetty.io;

import android.support.v4.media.f;
import org.eclipse.jetty.io.Buffers;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadLocalBuffers extends AbstractBuffers {
    private final ThreadLocal<ThreadBuffers> _buffers;

    public static class ThreadBuffers {
        public Buffer _buffer;
        public Buffer _header;
        public Buffer _other;
    }

    public ThreadLocalBuffers(Buffers.Type type, int i4, Buffers.Type type2, int i5, Buffers.Type type3) {
        super(type, i4, type2, i5, type3);
        this._buffers = new ThreadLocal<ThreadBuffers>() { // from class: org.eclipse.jetty.io.ThreadLocalBuffers.1
            @Override // java.lang.ThreadLocal
            public ThreadBuffers initialValue() {
                return new ThreadBuffers();
            }
        };
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer() {
        ThreadBuffers threadBuffers = this._buffers.get();
        Buffer buffer = threadBuffers._buffer;
        if (buffer != null) {
            threadBuffers._buffer = null;
            return buffer;
        }
        Buffer buffer2 = threadBuffers._other;
        if (buffer2 == null || !isBuffer(buffer2)) {
            return newBuffer();
        }
        Buffer buffer3 = threadBuffers._other;
        threadBuffers._other = null;
        return buffer3;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getHeader() {
        ThreadBuffers threadBuffers = this._buffers.get();
        Buffer buffer = threadBuffers._header;
        if (buffer != null) {
            threadBuffers._header = null;
            return buffer;
        }
        Buffer buffer2 = threadBuffers._other;
        if (buffer2 == null || !isHeader(buffer2)) {
            return newHeader();
        }
        Buffer buffer3 = threadBuffers._other;
        threadBuffers._other = null;
        return buffer3;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void returnBuffer(Buffer buffer) {
        buffer.clear();
        if (buffer.isVolatile() || buffer.isImmutable()) {
            return;
        }
        ThreadBuffers threadBuffers = this._buffers.get();
        if (threadBuffers._header == null && isHeader(buffer)) {
            threadBuffers._header = buffer;
        } else if (threadBuffers._buffer == null && isBuffer(buffer)) {
            threadBuffers._buffer = buffer;
        } else {
            threadBuffers._other = buffer;
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffers
    public String toString() {
        StringBuilder sbA = f.a("{{");
        sbA.append(getHeaderSize());
        sbA.append(",");
        sbA.append(getBufferSize());
        sbA.append("}}");
        return sbA.toString();
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer(int i4) {
        ThreadBuffers threadBuffers = this._buffers.get();
        Buffer buffer = threadBuffers._other;
        if (buffer != null && buffer.capacity() == i4) {
            Buffer buffer2 = threadBuffers._other;
            threadBuffers._other = null;
            return buffer2;
        }
        return newBuffer(i4);
    }
}
