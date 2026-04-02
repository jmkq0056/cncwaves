package org.seamless.swing.logging;

import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.util.Arrays;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LoggingHandler extends Handler {
    public int sourcePathElements;

    public LoggingHandler() {
        this.sourcePathElements = 3;
    }

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    public String getSource(LogRecord logRecord) {
        StringBuilder sb = new StringBuilder(BaseTransientBottomBar.ANIMATION_FADE_DURATION);
        String[] strArrSplit = logRecord.getSourceClassName().split("\\.");
        int length = strArrSplit.length;
        int i4 = this.sourcePathElements;
        if (length > i4) {
            strArrSplit = (String[]) Arrays.copyOfRange(strArrSplit, strArrSplit.length - i4, strArrSplit.length);
        }
        for (String str : strArrSplit) {
            sb.append(str);
            sb.append(".");
        }
        sb.append(logRecord.getSourceMethodName());
        return sb.toString();
    }

    public abstract void log(LogMessage logMessage);

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        log(new LogMessage(logRecord.getLevel(), getSource(logRecord), logRecord.getMessage()));
    }

    public LoggingHandler(int i4) {
        this.sourcePathElements = 3;
        this.sourcePathElements = i4;
    }
}
