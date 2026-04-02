package org.fourthline.cling.protocol;

import android.support.v4.media.f;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.message.UpnpMessage;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ReceivingAsync<M extends UpnpMessage> implements Runnable {
    private static final Logger log = Logger.getLogger(UpnpService.class.getName());
    private M inputMessage;
    private final UpnpService upnpService;

    public ReceivingAsync(UpnpService upnpService, M m4) {
        this.upnpService = upnpService;
        this.inputMessage = m4;
    }

    public abstract void execute();

    public <H extends UpnpHeader> H getFirstHeader(UpnpHeader.Type type, Class<H> cls) {
        return (H) getInputMessage().getHeaders().getFirstHeader(type, cls);
    }

    public M getInputMessage() {
        return this.inputMessage;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zWaitBeforeExecution;
        try {
            zWaitBeforeExecution = waitBeforeExecution();
        } catch (InterruptedException unused) {
            Logger logger = log;
            StringBuilder sbA = f.a("Protocol wait before execution interrupted (on shutdown?): ");
            sbA.append(getClass().getSimpleName());
            logger.info(sbA.toString());
            zWaitBeforeExecution = false;
        }
        if (zWaitBeforeExecution) {
            try {
                execute();
            } catch (Exception e4) {
                Throwable thUnwrap = Exceptions.unwrap(e4);
                if (!(thUnwrap instanceof InterruptedException)) {
                    StringBuilder sbA2 = f.a("Fatal error while executing protocol '");
                    sbA2.append(getClass().getSimpleName());
                    sbA2.append("': ");
                    sbA2.append(e4);
                    throw new RuntimeException(sbA2.toString(), e4);
                }
                Logger logger2 = log;
                Level level = Level.INFO;
                StringBuilder sbA3 = f.a("Interrupted protocol '");
                sbA3.append(getClass().getSimpleName());
                sbA3.append("': ");
                sbA3.append(e4);
                logger2.log(level, sbA3.toString(), thUnwrap);
            }
        }
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(")");
        return sbA.toString();
    }

    public boolean waitBeforeExecution() {
        return true;
    }
}
