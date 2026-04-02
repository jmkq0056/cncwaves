package org.slf4j.impl;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Properties;
import org.slf4j.helpers.Util;
import org.slf4j.impl.OutputChoice;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleLoggerConfiguration {
    private static final boolean CACHE_OUTPUT_STREAM_DEFAULT = false;
    private static final String CONFIGURATION_FILE = "simplelogger.properties";
    private static final String DATE_TIME_FORMAT_STR_DEFAULT = null;
    public static int DEFAULT_LOG_LEVEL_DEFAULT = 20;
    private static final boolean LEVEL_IN_BRACKETS_DEFAULT = false;
    private static String LOG_FILE_DEFAULT = "System.err";
    private static final boolean SHOW_DATE_TIME_DEFAULT = false;
    public static final boolean SHOW_LOG_NAME_DEFAULT = true;
    private static final boolean SHOW_SHORT_LOG_NAME_DEFAULT = false;
    private static final boolean SHOW_THREAD_NAME_DEFAULT = true;
    private static final String WARN_LEVELS_STRING_DEFAULT = "WARN";
    private static String dateTimeFormatStr;
    public int defaultLogLevel = DEFAULT_LOG_LEVEL_DEFAULT;
    public boolean showDateTime = false;
    public DateFormat dateFormatter = null;
    public boolean showThreadName = true;
    public boolean showLogName = true;
    public boolean showShortLogName = false;
    public boolean levelInBrackets = false;
    private String logFile = LOG_FILE_DEFAULT;
    public OutputChoice outputChoice = null;
    private boolean cacheOutputStream = false;
    public String warnLevelString = WARN_LEVELS_STRING_DEFAULT;
    private final Properties properties = new Properties();

    private static OutputChoice computeOutputChoice(String str, boolean z3) {
        if ("System.err".equalsIgnoreCase(str)) {
            return z3 ? new OutputChoice(OutputChoice.OutputChoiceType.CACHED_SYS_ERR) : new OutputChoice(OutputChoice.OutputChoiceType.SYS_ERR);
        }
        if ("System.out".equalsIgnoreCase(str)) {
            return z3 ? new OutputChoice(OutputChoice.OutputChoiceType.CACHED_SYS_OUT) : new OutputChoice(OutputChoice.OutputChoiceType.SYS_OUT);
        }
        try {
            return new OutputChoice(new PrintStream(new FileOutputStream(str)));
        } catch (FileNotFoundException e4) {
            Util.report("Could not open [" + str + "]. Defaulting to System.err", e4);
            return new OutputChoice(OutputChoice.OutputChoiceType.SYS_ERR);
        }
    }

    private void loadProperties() {
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() { // from class: org.slf4j.impl.SimpleLoggerConfiguration.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public InputStream run() {
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                return contextClassLoader != null ? contextClassLoader.getResourceAsStream(SimpleLoggerConfiguration.CONFIGURATION_FILE) : ClassLoader.getSystemResourceAsStream(SimpleLoggerConfiguration.CONFIGURATION_FILE);
            }
        });
        if (inputStream != null) {
            try {
                this.properties.load(inputStream);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                inputStream.close();
            } catch (IOException unused3) {
            }
        }
    }

    public static int stringToLevel(String str) {
        if ("trace".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("debug".equalsIgnoreCase(str)) {
            return 10;
        }
        if ("info".equalsIgnoreCase(str)) {
            return 20;
        }
        if ("warn".equalsIgnoreCase(str)) {
            return 30;
        }
        if ("error".equalsIgnoreCase(str)) {
            return 40;
        }
        return "off".equalsIgnoreCase(str) ? 50 : 20;
    }

    public boolean getBooleanProperty(String str, boolean z3) {
        String stringProperty = getStringProperty(str);
        return stringProperty == null ? z3 : "true".equalsIgnoreCase(stringProperty);
    }

    public String getStringProperty(String str, String str2) {
        String stringProperty = getStringProperty(str);
        return stringProperty == null ? str2 : stringProperty;
    }

    public void init() {
        loadProperties();
        String stringProperty = getStringProperty(SimpleLogger.DEFAULT_LOG_LEVEL_KEY, null);
        if (stringProperty != null) {
            this.defaultLogLevel = stringToLevel(stringProperty);
        }
        this.showLogName = getBooleanProperty(SimpleLogger.SHOW_LOG_NAME_KEY, true);
        this.showShortLogName = getBooleanProperty(SimpleLogger.SHOW_SHORT_LOG_NAME_KEY, false);
        this.showDateTime = getBooleanProperty(SimpleLogger.SHOW_DATE_TIME_KEY, false);
        this.showThreadName = getBooleanProperty(SimpleLogger.SHOW_THREAD_NAME_KEY, true);
        dateTimeFormatStr = getStringProperty(SimpleLogger.DATE_TIME_FORMAT_KEY, DATE_TIME_FORMAT_STR_DEFAULT);
        this.levelInBrackets = getBooleanProperty(SimpleLogger.LEVEL_IN_BRACKETS_KEY, false);
        this.warnLevelString = getStringProperty(SimpleLogger.WARN_LEVEL_STRING_KEY, WARN_LEVELS_STRING_DEFAULT);
        this.logFile = getStringProperty(SimpleLogger.LOG_FILE_KEY, this.logFile);
        boolean booleanProperty = getBooleanProperty(SimpleLogger.CACHE_OUTPUT_STREAM_STRING_KEY, false);
        this.cacheOutputStream = booleanProperty;
        this.outputChoice = computeOutputChoice(this.logFile, booleanProperty);
        if (dateTimeFormatStr != null) {
            try {
                this.dateFormatter = new SimpleDateFormat(dateTimeFormatStr);
            } catch (IllegalArgumentException e4) {
                Util.report("Bad date format in simplelogger.properties; will output relative time", e4);
            }
        }
    }

    public String getStringProperty(String str) {
        String property;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        return property == null ? this.properties.getProperty(str) : property;
    }
}
