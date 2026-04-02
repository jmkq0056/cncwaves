package com.stripe.core.logginginterceptors;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CrpcLogLevel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/core/logginginterceptors/CrpcLogLevel;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NONE", "ERROR", "VERBOSE", "logging-interceptors_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CrpcLogLevel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CrpcLogLevel[] $VALUES;
    private final int value;
    public static final CrpcLogLevel NONE = new CrpcLogLevel("NONE", 0, 1);
    public static final CrpcLogLevel ERROR = new CrpcLogLevel("ERROR", 1, 2);
    public static final CrpcLogLevel VERBOSE = new CrpcLogLevel("VERBOSE", 2, 3);

    private static final /* synthetic */ CrpcLogLevel[] $values() {
        return new CrpcLogLevel[]{NONE, ERROR, VERBOSE};
    }

    public static EnumEntries<CrpcLogLevel> getEntries() {
        return $ENTRIES;
    }

    public static CrpcLogLevel valueOf(String str) {
        return (CrpcLogLevel) Enum.valueOf(CrpcLogLevel.class, str);
    }

    public static CrpcLogLevel[] values() {
        return (CrpcLogLevel[]) $VALUES.clone();
    }

    private CrpcLogLevel(String str, int i, int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        CrpcLogLevel[] crpcLogLevelArr$values = $values();
        $VALUES = crpcLogLevelArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(crpcLogLevelArr$values);
    }
}
