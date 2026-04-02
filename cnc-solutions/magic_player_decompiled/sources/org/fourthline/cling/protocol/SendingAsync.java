package org.fourthline.cling.protocol;

import android.support.v4.media.f;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SendingAsync implements Runnable {
    private static final Logger log = Logger.getLogger(UpnpService.class.getName());
    private final UpnpService upnpService;

    public SendingAsync(UpnpService upnpService) {
        this.upnpService = upnpService;
    }

    public abstract void execute();

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            execute();
        } catch (Exception e4) {
            Throwable thUnwrap = Exceptions.unwrap(e4);
            if (!(thUnwrap instanceof InterruptedException)) {
                StringBuilder sbA = f.a("Fatal error while executing protocol '");
                sbA.append(getClass().getSimpleName());
                sbA.append("': ");
                sbA.append(e4);
                throw new RuntimeException(sbA.toString(), e4);
            }
            Logger logger = log;
            Level level = Level.INFO;
            StringBuilder sbA2 = f.a("Interrupted protocol '");
            sbA2.append(getClass().getSimpleName());
            sbA2.append("': ");
            sbA2.append(e4);
            logger.log(level, sbA2.toString(), thUnwrap);
        }
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(")");
        return sbA.toString();
    }
}
