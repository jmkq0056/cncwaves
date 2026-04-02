package u2;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class p extends c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Socket f3602k;

    public p(Socket socket) {
        this.f3602k = socket;
    }

    @Override // u2.c
    public IOException l(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // u2.c
    public void m() {
        try {
            this.f3602k.close();
        } catch (AssertionError e4) {
            if (!o.a(e4)) {
                throw e4;
            }
            Logger logger = o.f3599a;
            Level level = Level.WARNING;
            StringBuilder sbA = android.support.v4.media.f.a("Failed to close timed out socket ");
            sbA.append(this.f3602k);
            logger.log(level, sbA.toString(), (Throwable) e4);
        } catch (Exception e5) {
            Logger logger2 = o.f3599a;
            Level level2 = Level.WARNING;
            StringBuilder sbA2 = android.support.v4.media.f.a("Failed to close timed out socket ");
            sbA2.append(this.f3602k);
            logger2.log(level2, sbA2.toString(), (Throwable) e5);
        }
    }
}
