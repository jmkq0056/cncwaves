package org.slf4j.impl;

import androidx.constraintlayout.solver.a;
import java.io.PrintStream;
import java.util.Date;
import org.eclipse.jetty.http.HttpMethods;
import org.slf4j.event.LoggingEvent;
import org.slf4j.helpers.FormattingTuple;
import org.slf4j.helpers.MarkerIgnoringBase;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleLogger extends MarkerIgnoringBase {
    public static final String CACHE_OUTPUT_STREAM_STRING_KEY = "org.slf4j.simpleLogger.cacheOutputStream";
    public static final String DATE_TIME_FORMAT_KEY = "org.slf4j.simpleLogger.dateTimeFormat";
    public static final String DEFAULT_LOG_LEVEL_KEY = "org.slf4j.simpleLogger.defaultLogLevel";
    public static final String LEVEL_IN_BRACKETS_KEY = "org.slf4j.simpleLogger.levelInBrackets";
    public static final String LOG_FILE_KEY = "org.slf4j.simpleLogger.logFile";
    public static final String LOG_KEY_PREFIX = "org.slf4j.simpleLogger.log.";
    public static final int LOG_LEVEL_DEBUG = 10;
    public static final int LOG_LEVEL_ERROR = 40;
    public static final int LOG_LEVEL_INFO = 20;
    public static final int LOG_LEVEL_OFF = 50;
    public static final int LOG_LEVEL_TRACE = 0;
    public static final int LOG_LEVEL_WARN = 30;
    public static final String SHOW_DATE_TIME_KEY = "org.slf4j.simpleLogger.showDateTime";
    public static final String SHOW_LOG_NAME_KEY = "org.slf4j.simpleLogger.showLogName";
    public static final String SHOW_SHORT_LOG_NAME_KEY = "org.slf4j.simpleLogger.showShortLogName";
    public static final String SHOW_THREAD_NAME_KEY = "org.slf4j.simpleLogger.showThreadName";
    public static final String SYSTEM_PREFIX = "org.slf4j.simpleLogger.";
    public static final String WARN_LEVEL_STRING_KEY = "org.slf4j.simpleLogger.warnLevelString";
    private static final long serialVersionUID = -632788891211436180L;
    public int currentLogLevel;
    private transient String shortLogName = null;
    private static long START_TIME = System.currentTimeMillis();
    private static boolean INITIALIZED = false;
    public static SimpleLoggerConfiguration CONFIG_PARAMS = null;

    public SimpleLogger(String str) {
        this.currentLogLevel = 20;
        this.name = str;
        String strRecursivelyComputeLevelString = recursivelyComputeLevelString();
        if (strRecursivelyComputeLevelString != null) {
            this.currentLogLevel = SimpleLoggerConfiguration.stringToLevel(strRecursivelyComputeLevelString);
        } else {
            this.currentLogLevel = CONFIG_PARAMS.defaultLogLevel;
        }
    }

    private String computeShortName() {
        String str = this.name;
        return str.substring(str.lastIndexOf(".") + 1);
    }

    private void formatAndLog(int i4, String str, Object obj, Object obj2) {
        if (isLevelEnabled(i4)) {
            FormattingTuple formattingTuple = MessageFormatter.format(str, obj, obj2);
            log(i4, formattingTuple.getMessage(), formattingTuple.getThrowable());
        }
    }

    private String getFormattedDate() {
        String str;
        Date date = new Date();
        synchronized (CONFIG_PARAMS.dateFormatter) {
            str = CONFIG_PARAMS.dateFormatter.format(date);
        }
        return str;
    }

    public static void init() {
        SimpleLoggerConfiguration simpleLoggerConfiguration = new SimpleLoggerConfiguration();
        CONFIG_PARAMS = simpleLoggerConfiguration;
        simpleLoggerConfiguration.init();
    }

    public static void lazyInit() {
        if (INITIALIZED) {
            return;
        }
        INITIALIZED = true;
        init();
    }

    private void log(int i4, String str, Throwable th) {
        if (isLevelEnabled(i4)) {
            StringBuilder sb = new StringBuilder(32);
            SimpleLoggerConfiguration simpleLoggerConfiguration = CONFIG_PARAMS;
            if (simpleLoggerConfiguration.showDateTime) {
                if (simpleLoggerConfiguration.dateFormatter != null) {
                    sb.append(getFormattedDate());
                    sb.append(' ');
                } else {
                    sb.append(System.currentTimeMillis() - START_TIME);
                    sb.append(' ');
                }
            }
            if (CONFIG_PARAMS.showThreadName) {
                sb.append('[');
                sb.append(Thread.currentThread().getName());
                sb.append("] ");
            }
            if (CONFIG_PARAMS.levelInBrackets) {
                sb.append('[');
            }
            sb.append(renderLevel(i4));
            if (CONFIG_PARAMS.levelInBrackets) {
                sb.append(']');
            }
            sb.append(' ');
            SimpleLoggerConfiguration simpleLoggerConfiguration2 = CONFIG_PARAMS;
            if (simpleLoggerConfiguration2.showShortLogName) {
                if (this.shortLogName == null) {
                    this.shortLogName = computeShortName();
                }
                sb.append(String.valueOf(this.shortLogName));
                sb.append(" - ");
            } else if (simpleLoggerConfiguration2.showLogName) {
                sb.append(String.valueOf(this.name));
                sb.append(" - ");
            }
            sb.append(str);
            write(sb, th);
        }
    }

    @Override // org.slf4j.Logger
    public void debug(String str) {
        log(10, str, null);
    }

    @Override // org.slf4j.Logger
    public void error(String str) {
        log(40, str, null);
    }

    @Override // org.slf4j.Logger
    public void info(String str) {
        log(20, str, null);
    }

    @Override // org.slf4j.Logger
    public boolean isDebugEnabled() {
        return isLevelEnabled(10);
    }

    @Override // org.slf4j.Logger
    public boolean isErrorEnabled() {
        return isLevelEnabled(40);
    }

    @Override // org.slf4j.Logger
    public boolean isInfoEnabled() {
        return isLevelEnabled(20);
    }

    public boolean isLevelEnabled(int i4) {
        return i4 >= this.currentLogLevel;
    }

    @Override // org.slf4j.Logger
    public boolean isTraceEnabled() {
        return isLevelEnabled(0);
    }

    @Override // org.slf4j.Logger
    public boolean isWarnEnabled() {
        return isLevelEnabled(30);
    }

    public String recursivelyComputeLevelString() {
        String strSubstring = this.name;
        int length = strSubstring.length();
        String stringProperty = null;
        while (stringProperty == null && length > -1) {
            strSubstring = strSubstring.substring(0, length);
            stringProperty = CONFIG_PARAMS.getStringProperty(LOG_KEY_PREFIX + strSubstring, null);
            length = String.valueOf(strSubstring).lastIndexOf(".");
        }
        return stringProperty;
    }

    public String renderLevel(int i4) {
        if (i4 == 0) {
            return HttpMethods.TRACE;
        }
        if (i4 == 10) {
            return "DEBUG";
        }
        if (i4 == 20) {
            return "INFO";
        }
        if (i4 == 30) {
            return CONFIG_PARAMS.warnLevelString;
        }
        if (i4 == 40) {
            return "ERROR";
        }
        throw new IllegalStateException(a.a("Unrecognized level [", i4, "]"));
    }

    @Override // org.slf4j.Logger
    public void trace(String str) {
        log(0, str, null);
    }

    @Override // org.slf4j.Logger
    public void warn(String str) {
        log(30, str, null);
    }

    public void write(StringBuilder sb, Throwable th) {
        PrintStream targetPrintStream = CONFIG_PARAMS.outputChoice.getTargetPrintStream();
        targetPrintStream.println(sb.toString());
        writeThrowable(th, targetPrintStream);
        targetPrintStream.flush();
    }

    public void writeThrowable(Throwable th, PrintStream printStream) {
        if (th != null) {
            th.printStackTrace(printStream);
        }
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object obj) {
        formatAndLog(10, str, obj, null);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object obj) {
        formatAndLog(40, str, obj, null);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object obj) {
        formatAndLog(20, str, obj, null);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object obj) {
        formatAndLog(0, str, obj, null);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object obj) {
        formatAndLog(30, str, obj, null);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object obj, Object obj2) {
        formatAndLog(10, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object obj, Object obj2) {
        formatAndLog(40, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object obj, Object obj2) {
        formatAndLog(20, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object obj, Object obj2) {
        formatAndLog(0, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object obj, Object obj2) {
        formatAndLog(30, str, obj, obj2);
    }

    private void formatAndLog(int i4, String str, Object... objArr) {
        if (isLevelEnabled(i4)) {
            FormattingTuple formattingTupleArrayFormat = MessageFormatter.arrayFormat(str, objArr);
            log(i4, formattingTupleArrayFormat.getMessage(), formattingTupleArrayFormat.getThrowable());
        }
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object... objArr) {
        formatAndLog(10, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object... objArr) {
        formatAndLog(40, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object... objArr) {
        formatAndLog(20, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object... objArr) {
        formatAndLog(0, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object... objArr) {
        formatAndLog(30, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Throwable th) {
        log(10, str, th);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Throwable th) {
        log(40, str, th);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Throwable th) {
        log(20, str, th);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Throwable th) {
        log(0, str, th);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Throwable th) {
        log(30, str, th);
    }

    public void log(LoggingEvent loggingEvent) {
        int i4 = loggingEvent.getLevel().toInt();
        if (isLevelEnabled(i4)) {
            log(i4, MessageFormatter.arrayFormat(loggingEvent.getMessage(), loggingEvent.getArgumentArray(), loggingEvent.getThrowable()).getMessage(), loggingEvent.getThrowable());
        }
    }
}
