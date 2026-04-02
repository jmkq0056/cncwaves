package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TerminalErrorType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TerminalErrorType;", "", "(Ljava/lang/String;I)V", "INTEGRATION_ERROR", "USER_ERROR", "READER_ERROR", "NETWORK_ERROR", "PAYMENT_ERROR", "UNEXPECTED_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalErrorType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TerminalErrorType[] $VALUES;
    public static final TerminalErrorType INTEGRATION_ERROR = new TerminalErrorType("INTEGRATION_ERROR", 0);
    public static final TerminalErrorType USER_ERROR = new TerminalErrorType("USER_ERROR", 1);
    public static final TerminalErrorType READER_ERROR = new TerminalErrorType("READER_ERROR", 2);
    public static final TerminalErrorType NETWORK_ERROR = new TerminalErrorType("NETWORK_ERROR", 3);
    public static final TerminalErrorType PAYMENT_ERROR = new TerminalErrorType("PAYMENT_ERROR", 4);
    public static final TerminalErrorType UNEXPECTED_ERROR = new TerminalErrorType("UNEXPECTED_ERROR", 5);

    private static final /* synthetic */ TerminalErrorType[] $values() {
        return new TerminalErrorType[]{INTEGRATION_ERROR, USER_ERROR, READER_ERROR, NETWORK_ERROR, PAYMENT_ERROR, UNEXPECTED_ERROR};
    }

    public static EnumEntries<TerminalErrorType> getEntries() {
        return $ENTRIES;
    }

    public static TerminalErrorType valueOf(String str) {
        return (TerminalErrorType) Enum.valueOf(TerminalErrorType.class, str);
    }

    public static TerminalErrorType[] values() {
        return (TerminalErrorType[]) $VALUES.clone();
    }

    private TerminalErrorType(String str, int i) {
    }

    static {
        TerminalErrorType[] terminalErrorTypeArr$values = $values();
        $VALUES = terminalErrorTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(terminalErrorTypeArr$values);
    }
}
