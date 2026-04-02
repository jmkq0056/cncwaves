package u2;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public interface f extends v, WritableByteChannel {
    f b(long j4);

    e buffer();

    f e(int i4);

    f f(int i4);

    @Override // u2.v, java.io.Flushable
    void flush();

    f m(int i4);

    f p(byte[] bArr);

    f u(String str);
}
