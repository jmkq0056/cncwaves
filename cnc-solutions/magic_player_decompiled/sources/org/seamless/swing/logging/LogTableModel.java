package org.seamless.swing.logging;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/* JADX INFO: loaded from: classes2.dex */
public class LogTableModel extends AbstractTableModel {
    public int maxAgeSeconds;
    public boolean paused = false;
    public List<LogMessage> messages = new ArrayList();

    public LogTableModel(int i4) {
        this.maxAgeSeconds = i4;
    }

    public void clearMessages() {
        this.messages.clear();
        fireTableDataChanged();
    }

    public Class<?> getColumnClass(int i4) {
        return LogMessage.class;
    }

    public int getColumnCount() {
        return 5;
    }

    public String getColumnName(int i4) {
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? "Message" : "Source" : "Thread" : "Time" : "";
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int getRowCount() {
        return this.messages.size();
    }

    public Object getValueAt(int i4, int i5) {
        return this.messages.get(i4);
    }

    public boolean isPaused() {
        return this.paused;
    }

    public synchronized void pushMessage(LogMessage logMessage) {
        if (this.paused) {
            return;
        }
        if (this.maxAgeSeconds != Integer.MAX_VALUE) {
            Iterator<LogMessage> it = this.messages.iterator();
            long time = new Date().getTime();
            while (it.hasNext()) {
                LogMessage next = it.next();
                if (next.getCreatedOn().longValue() + ((long) (this.maxAgeSeconds * 1000)) < time) {
                    it.remove();
                }
            }
        }
        this.messages.add(logMessage);
        fireTableDataChanged();
    }

    public void setMaxAgeSeconds(int i4) {
        this.maxAgeSeconds = i4;
    }

    public void setPaused(boolean z3) {
        this.paused = z3;
    }
}
