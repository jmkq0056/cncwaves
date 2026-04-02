package org.eclipse.jetty.util.component;

import java.io.FileWriter;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class FileNoticeLifeCycleListener implements LifeCycle.Listener {
    public Logger LOG = Log.getLogger((Class<?>) FileNoticeLifeCycleListener.class);
    private final String _filename;

    public FileNoticeLifeCycleListener(String str) {
        this._filename = str;
    }

    private void writeState(String str, LifeCycle lifeCycle) {
        try {
            FileWriter fileWriter = new FileWriter(this._filename, true);
            fileWriter.append((CharSequence) str).append((CharSequence) " ").append((CharSequence) lifeCycle.toString()).append((CharSequence) "\n");
            fileWriter.close();
        } catch (Exception e4) {
            this.LOG.warn(e4);
        }
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleFailure(LifeCycle lifeCycle, Throwable th) {
        writeState(AbstractLifeCycle.FAILED, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStarted(LifeCycle lifeCycle) {
        writeState(AbstractLifeCycle.STARTED, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStarting(LifeCycle lifeCycle) {
        writeState(AbstractLifeCycle.STARTING, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStopped(LifeCycle lifeCycle) {
        writeState(AbstractLifeCycle.STOPPED, lifeCycle);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
    public void lifeCycleStopping(LifeCycle lifeCycle) {
        writeState(AbstractLifeCycle.STOPPING, lifeCycle);
    }
}
