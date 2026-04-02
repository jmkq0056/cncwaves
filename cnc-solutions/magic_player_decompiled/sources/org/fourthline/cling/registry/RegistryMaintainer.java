package org.fourthline.cling.registry;

import android.support.v4.media.f;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class RegistryMaintainer implements Runnable {
    private static Logger log = Logger.getLogger(RegistryMaintainer.class.getName());
    private final RegistryImpl registry;
    private final int sleepIntervalMillis;
    private volatile boolean stopped = false;

    public RegistryMaintainer(RegistryImpl registryImpl, int i4) {
        this.registry = registryImpl;
        this.sleepIntervalMillis = i4;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.stopped = false;
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sbA = f.a("Running registry maintenance loop every milliseconds: ");
            sbA.append(this.sleepIntervalMillis);
            logger.fine(sbA.toString());
        }
        while (!this.stopped) {
            try {
                this.registry.maintain();
                Thread.sleep(this.sleepIntervalMillis);
            } catch (InterruptedException unused) {
                this.stopped = true;
            }
        }
        log.fine("Stopped status on thread received, ending maintenance loop");
    }

    public void stop() {
        if (log.isLoggable(Level.FINE)) {
            log.fine("Setting stopped status on thread");
        }
        this.stopped = true;
    }
}
