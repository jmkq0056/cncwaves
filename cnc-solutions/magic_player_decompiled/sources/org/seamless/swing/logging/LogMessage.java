package org.seamless.swing.logging;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class LogMessage {
    private Long createdOn;
    private Level level;
    private String message;
    private String source;
    private String thread;

    public LogMessage(String str) {
        this(Level.INFO, str);
    }

    public Long getCreatedOn() {
        return this.createdOn;
    }

    public Level getLevel() {
        return this.level;
    }

    public String getMessage() {
        return this.message;
    }

    public String getSource() {
        return this.source;
    }

    public String getThread() {
        return this.thread;
    }

    public String toString() {
        return getLevel() + " - " + new SimpleDateFormat("HH:mm:ss:SSS").format(new Date(getCreatedOn().longValue())) + " - " + getThread() + " : " + getSource() + " : " + getMessage();
    }

    public LogMessage(String str, String str2) {
        this(Level.INFO, str, str2);
    }

    public LogMessage(Level level, String str) {
        this(level, null, str);
    }

    public LogMessage(Level level, String str, String str2) {
        this.createdOn = Long.valueOf(new Date().getTime());
        this.thread = Thread.currentThread().getName();
        this.level = level;
        this.source = str;
        this.message = str2;
    }
}
