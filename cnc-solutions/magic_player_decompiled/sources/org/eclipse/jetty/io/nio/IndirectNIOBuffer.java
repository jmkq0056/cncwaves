package org.eclipse.jetty.io.nio;

import java.nio.ByteBuffer;
import org.eclipse.jetty.io.ByteArrayBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class IndirectNIOBuffer extends ByteArrayBuffer implements NIOBuffer {
    public final ByteBuffer _buf;

    public IndirectNIOBuffer(int i4) {
        super(i4, 2, false);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this._bytes);
        this._buf = byteBufferWrap;
        byteBufferWrap.position(0);
        byteBufferWrap.limit(byteBufferWrap.capacity());
    }

    @Override // org.eclipse.jetty.io.nio.NIOBuffer
    public ByteBuffer getByteBuffer() {
        return this._buf;
    }

    @Override // org.eclipse.jetty.io.nio.NIOBuffer
    public boolean isDirect() {
        return false;
    }

    public IndirectNIOBuffer(ByteBuffer byteBuffer, boolean z3) {
        super(byteBuffer.array(), 0, 0, z3 ? 0 : 2, false);
        if (!byteBuffer.isDirect()) {
            this._buf = byteBuffer;
            this._get = byteBuffer.position();
            this._put = byteBuffer.limit();
            byteBuffer.position(0);
            byteBuffer.limit(byteBuffer.capacity());
            return;
        }
        throw new IllegalArgumentException();
    }
}
