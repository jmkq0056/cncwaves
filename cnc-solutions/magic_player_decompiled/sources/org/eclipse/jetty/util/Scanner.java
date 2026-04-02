package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class Scanner extends AbstractLifeCycle {
    private static final Logger LOG = Log.getLogger((Class<?>) Scanner.class);
    private static int __scannerId = 0;
    private FilenameFilter _filter;
    private int _scanInterval;
    private TimerTask _task;
    private Timer _timer;
    private int _scanCount = 0;
    private final List<Listener> _listeners = new ArrayList();
    private final Map<String, TimeNSize> _prevScan = new HashMap();
    private final Map<String, TimeNSize> _currentScan = new HashMap();
    private final List<File> _scanDirs = new ArrayList();
    private volatile boolean _running = false;
    private boolean _reportExisting = true;
    private boolean _reportDirs = true;
    private int _scanDepth = 0;
    private final Map<String, Notification> _notifications = new HashMap();

    /* JADX INFO: renamed from: org.eclipse.jetty.util.Scanner$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$org$eclipse$jetty$util$Scanner$Notification;

        static {
            int[] iArr = new int[Notification.values().length];
            $SwitchMap$org$eclipse$jetty$util$Scanner$Notification = iArr;
            try {
                iArr[Notification.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$eclipse$jetty$util$Scanner$Notification[Notification.CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$eclipse$jetty$util$Scanner$Notification[Notification.ADDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface BulkListener extends Listener {
        void filesChanged(List<String> list);
    }

    public interface DiscreteListener extends Listener {
        void fileAdded(String str);

        void fileChanged(String str);

        void fileRemoved(String str);
    }

    public interface Listener {
    }

    public enum Notification {
        ADDED,
        CHANGED,
        REMOVED
    }

    public interface ScanCycleListener extends Listener {
        void scanEnded(int i4);

        void scanStarted(int i4);
    }

    public interface ScanListener extends Listener {
        void scan();
    }

    public static class TimeNSize {
        public final long _lastModified;
        public final long _size;

        public TimeNSize(long j4, long j5) {
            this._lastModified = j4;
            this._size = j5;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof TimeNSize)) {
                return false;
            }
            TimeNSize timeNSize = (TimeNSize) obj;
            return timeNSize._lastModified == this._lastModified && timeNSize._size == this._size;
        }

        public int hashCode() {
            return ((int) this._size) ^ ((int) this._lastModified);
        }

        public String toString() {
            StringBuilder sbA = f.a("[lm=");
            sbA.append(this._lastModified);
            sbA.append(",s=");
            sbA.append(this._size);
            sbA.append("]");
            return sbA.toString();
        }
    }

    private void reportAddition(String str) {
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof DiscreteListener) {
                    ((DiscreteListener) listener).fileAdded(str);
                }
            } catch (Error e4) {
                warn(listener, str, e4);
            } catch (Exception e5) {
                warn(listener, str, e5);
            }
        }
    }

    private void reportBulkChanges(List<String> list) {
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof BulkListener) {
                    ((BulkListener) listener).filesChanged(list);
                }
            } catch (Error e4) {
                warn(listener, list.toString(), e4);
            } catch (Exception e5) {
                warn(listener, list.toString(), e5);
            }
        }
    }

    private void reportChange(String str) {
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof DiscreteListener) {
                    ((DiscreteListener) listener).fileChanged(str);
                }
            } catch (Error e4) {
                warn(listener, str, e4);
            } catch (Exception e5) {
                warn(listener, str, e5);
            }
        }
    }

    private void reportRemoval(String str) {
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof DiscreteListener) {
                    ((DiscreteListener) listener).fileRemoved(str);
                }
            } catch (Error e4) {
                warn(listener, str, e4);
            } catch (Exception e5) {
                warn(listener, str, e5);
            }
        }
    }

    private void reportScanEnd(int i4) {
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof ScanCycleListener) {
                    ((ScanCycleListener) listener).scanEnded(i4);
                }
            } catch (Exception e4) {
                LOG.warn(listener + " failed on scan end for cycle " + i4, e4);
            }
        }
    }

    private void reportScanStart(int i4) {
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof ScanCycleListener) {
                    ((ScanCycleListener) listener).scanStarted(i4);
                }
            } catch (Exception e4) {
                LOG.warn(listener + " failed on scan start for cycle " + i4, e4);
            }
        }
    }

    private void scanFile(File file, Map<String, TimeNSize> map, int i4) {
        FilenameFilter filenameFilter;
        try {
            if (file.exists()) {
                if ((file.isFile() || (i4 > 0 && this._reportDirs && file.isDirectory())) && ((filenameFilter = this._filter) == null || (filenameFilter != null && filenameFilter.accept(file.getParentFile(), file.getName())))) {
                    map.put(file.getCanonicalPath(), new TimeNSize(file.lastModified(), file.length()));
                }
                if (file.isDirectory()) {
                    int i5 = this._scanDepth;
                    if (i4 < i5 || i5 == -1 || this._scanDirs.contains(file)) {
                        File[] fileArrListFiles = file.listFiles();
                        if (fileArrListFiles == null) {
                            LOG.warn("Error listing files in directory {}", file);
                            return;
                        }
                        for (File file2 : fileArrListFiles) {
                            scanFile(file2, map, i4 + 1);
                        }
                    }
                }
            }
        } catch (IOException e4) {
            LOG.warn("Error scanning watched files", e4);
        }
    }

    private void warn(Object obj, String str, Throwable th) {
        LOG.warn(obj + " failed on '" + str, th);
    }

    public synchronized void addListener(Listener listener) {
        if (listener == null) {
            return;
        }
        this._listeners.add(listener);
    }

    public synchronized void addScanDir(File file) {
        this._scanDirs.add(file);
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public synchronized void doStart() {
        if (this._running) {
            return;
        }
        this._running = true;
        if (this._reportExisting) {
            scan();
            scan();
        } else {
            scanFiles();
            this._prevScan.putAll(this._currentScan);
        }
        schedule();
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public synchronized void doStop() {
        if (this._running) {
            this._running = false;
            Timer timer = this._timer;
            if (timer != null) {
                timer.cancel();
            }
            TimerTask timerTask = this._task;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this._task = null;
            this._timer = null;
        }
    }

    public FilenameFilter getFilenameFilter() {
        return this._filter;
    }

    public boolean getRecursive() {
        return this._scanDepth == -1;
    }

    public boolean getReportDirs() {
        return this._reportDirs;
    }

    public boolean getReportExistingFilesOnStartup() {
        return this._reportExisting;
    }

    public int getScanDepth() {
        return this._scanDepth;
    }

    @Deprecated
    public File getScanDir() {
        List<File> list = this._scanDirs;
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    public List<File> getScanDirs() {
        return Collections.unmodifiableList(this._scanDirs);
    }

    public int getScanInterval() {
        return this._scanInterval;
    }

    public Timer newTimer() {
        StringBuilder sbA = f.a("Scanner-");
        int i4 = __scannerId;
        __scannerId = i4 + 1;
        sbA.append(i4);
        return new Timer(sbA.toString(), true);
    }

    public TimerTask newTimerTask() {
        return new TimerTask() { // from class: org.eclipse.jetty.util.Scanner.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Scanner.this.scan();
            }
        };
    }

    public synchronized void removeListener(Listener listener) {
        if (listener == null) {
            return;
        }
        this._listeners.remove(listener);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0134 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void reportDifferences(java.util.Map<java.lang.String, org.eclipse.jetty.util.Scanner.TimeNSize> r10, java.util.Map<java.lang.String, org.eclipse.jetty.util.Scanner.TimeNSize> r11) {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.Scanner.reportDifferences(java.util.Map, java.util.Map):void");
    }

    public synchronized void scan() {
        int i4 = this._scanCount + 1;
        this._scanCount = i4;
        reportScanStart(i4);
        scanFiles();
        reportDifferences(this._currentScan, this._prevScan);
        this._prevScan.clear();
        this._prevScan.putAll(this._currentScan);
        reportScanEnd(this._scanCount);
        for (Listener listener : this._listeners) {
            try {
                if (listener instanceof ScanListener) {
                    ((ScanListener) listener).scan();
                }
            } catch (Error e4) {
                LOG.warn(e4);
            } catch (Exception e5) {
                LOG.warn(e5);
            }
        }
    }

    public synchronized void scanFiles() {
        if (this._scanDirs == null) {
            return;
        }
        this._currentScan.clear();
        for (File file : this._scanDirs) {
            if (file != null && file.exists()) {
                try {
                    scanFile(file.getCanonicalFile(), this._currentScan, 0);
                } catch (IOException e4) {
                    LOG.warn("Error scanning files.", e4);
                }
            }
        }
    }

    public void schedule() {
        if (this._running) {
            Timer timer = this._timer;
            if (timer != null) {
                timer.cancel();
            }
            TimerTask timerTask = this._task;
            if (timerTask != null) {
                timerTask.cancel();
            }
            if (getScanInterval() > 0) {
                this._timer = newTimer();
                TimerTask timerTaskNewTimerTask = newTimerTask();
                this._task = timerTaskNewTimerTask;
                this._timer.schedule(timerTaskNewTimerTask, ((long) getScanInterval()) * 1010, 1010 * ((long) getScanInterval()));
            }
        }
    }

    public void setFilenameFilter(FilenameFilter filenameFilter) {
        this._filter = filenameFilter;
    }

    public void setRecursive(boolean z3) {
        this._scanDepth = z3 ? -1 : 0;
    }

    public void setReportDirs(boolean z3) {
        this._reportDirs = z3;
    }

    public void setReportExistingFilesOnStartup(boolean z3) {
        this._reportExisting = z3;
    }

    public void setScanDepth(int i4) {
        this._scanDepth = i4;
    }

    @Deprecated
    public void setScanDir(File file) {
        this._scanDirs.clear();
        this._scanDirs.add(file);
    }

    public void setScanDirs(List<File> list) {
        this._scanDirs.clear();
        this._scanDirs.addAll(list);
    }

    public synchronized void setScanInterval(int i4) {
        this._scanInterval = i4;
        schedule();
    }
}
