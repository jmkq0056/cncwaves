package u2;

import java.io.Closeable;
import java.io.Flushable;

/* JADX INFO: loaded from: classes2.dex */
public interface v extends Closeable, Flushable {
    x a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    void o(e eVar, long j4);
}
