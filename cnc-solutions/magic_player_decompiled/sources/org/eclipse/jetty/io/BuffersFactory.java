package org.eclipse.jetty.io;

import org.eclipse.jetty.io.Buffers;

/* JADX INFO: loaded from: classes2.dex */
public class BuffersFactory {
    public static Buffers newBuffers(Buffers.Type type, int i4, Buffers.Type type2, int i5, Buffers.Type type3, int i6) {
        return i6 >= 0 ? new PooledBuffers(type, i4, type2, i5, type3, i6) : new ThreadLocalBuffers(type, i4, type2, i5, type3);
    }
}
