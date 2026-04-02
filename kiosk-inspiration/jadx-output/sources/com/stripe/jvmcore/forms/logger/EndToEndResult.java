package com.stripe.jvmcore.forms.logger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: EndToEndResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/jvmcore/forms/logger/EndToEndResult;", "", "(Ljava/lang/String;I)V", "SUCCESS", "TIMEOUT", "INVALID_PARAMETER", "MERCHANT_CANCELLED", "APPLICATION_ERROR", "COMMUNICATION_ERROR", "UNSUPPORTED", "forms"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EndToEndResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EndToEndResult[] $VALUES;
    public static final EndToEndResult SUCCESS = new EndToEndResult("SUCCESS", 0);
    public static final EndToEndResult TIMEOUT = new EndToEndResult("TIMEOUT", 1);
    public static final EndToEndResult INVALID_PARAMETER = new EndToEndResult("INVALID_PARAMETER", 2);
    public static final EndToEndResult MERCHANT_CANCELLED = new EndToEndResult("MERCHANT_CANCELLED", 3);
    public static final EndToEndResult APPLICATION_ERROR = new EndToEndResult("APPLICATION_ERROR", 4);
    public static final EndToEndResult COMMUNICATION_ERROR = new EndToEndResult("COMMUNICATION_ERROR", 5);
    public static final EndToEndResult UNSUPPORTED = new EndToEndResult("UNSUPPORTED", 6);

    private static final /* synthetic */ EndToEndResult[] $values() {
        return new EndToEndResult[]{SUCCESS, TIMEOUT, INVALID_PARAMETER, MERCHANT_CANCELLED, APPLICATION_ERROR, COMMUNICATION_ERROR, UNSUPPORTED};
    }

    public static EnumEntries<EndToEndResult> getEntries() {
        return $ENTRIES;
    }

    public static EndToEndResult valueOf(String str) {
        return (EndToEndResult) Enum.valueOf(EndToEndResult.class, str);
    }

    public static EndToEndResult[] values() {
        return (EndToEndResult[]) $VALUES.clone();
    }

    private EndToEndResult(String str, int i) {
    }

    static {
        EndToEndResult[] endToEndResultArr$values = $values();
        $VALUES = endToEndResultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(endToEndResultArr$values);
    }
}
