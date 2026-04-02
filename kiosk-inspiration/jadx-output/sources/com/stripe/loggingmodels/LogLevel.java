package com.stripe.loggingmodels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LogLevel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/LogLevel;", "", "(Ljava/lang/String;I)V", "NONE", "ERROR", "WARNING", "INFO", "VERBOSE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LogLevel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LogLevel[] $VALUES;
    public static final LogLevel NONE = new LogLevel("NONE", 0);
    public static final LogLevel ERROR = new LogLevel("ERROR", 1);
    public static final LogLevel WARNING = new LogLevel("WARNING", 2);
    public static final LogLevel INFO = new LogLevel("INFO", 3);
    public static final LogLevel VERBOSE = new LogLevel("VERBOSE", 4);

    private static final /* synthetic */ LogLevel[] $values() {
        return new LogLevel[]{NONE, ERROR, WARNING, INFO, VERBOSE};
    }

    public static EnumEntries<LogLevel> getEntries() {
        return $ENTRIES;
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) $VALUES.clone();
    }

    private LogLevel(String str, int i) {
    }

    static {
        LogLevel[] logLevelArr$values = $values();
        $VALUES = logLevelArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(logLevelArr$values);
    }
}
