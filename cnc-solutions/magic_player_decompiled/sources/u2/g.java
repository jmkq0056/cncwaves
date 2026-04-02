package u2;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public interface g extends w, ReadableByteChannel {
    InputStream A();

    e buffer();

    h c(long j4);

    boolean d(long j4, h hVar);

    String h();

    int j();

    boolean l();

    byte[] n(long j4);

    short q();

    String r(long j4);

    byte readByte();

    int readInt();

    short readShort();

    void skip(long j4);

    void t(long j4);

    long w(byte b4);

    long y();

    String z(Charset charset);
}
