package com.stripe.core.aidlrpc;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AidlRpcErrorCode.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;", "", "(Ljava/lang/String;I)V", "CONNECTION_FAILURE", "UNEXPECTED_DISCONNECT", "REQUEST_FAILURE", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AidlRpcErrorCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AidlRpcErrorCode[] $VALUES;
    public static final AidlRpcErrorCode CONNECTION_FAILURE = new AidlRpcErrorCode("CONNECTION_FAILURE", 0);
    public static final AidlRpcErrorCode UNEXPECTED_DISCONNECT = new AidlRpcErrorCode("UNEXPECTED_DISCONNECT", 1);
    public static final AidlRpcErrorCode REQUEST_FAILURE = new AidlRpcErrorCode("REQUEST_FAILURE", 2);

    private static final /* synthetic */ AidlRpcErrorCode[] $values() {
        return new AidlRpcErrorCode[]{CONNECTION_FAILURE, UNEXPECTED_DISCONNECT, REQUEST_FAILURE};
    }

    public static EnumEntries<AidlRpcErrorCode> getEntries() {
        return $ENTRIES;
    }

    public static AidlRpcErrorCode valueOf(String str) {
        return (AidlRpcErrorCode) Enum.valueOf(AidlRpcErrorCode.class, str);
    }

    public static AidlRpcErrorCode[] values() {
        return (AidlRpcErrorCode[]) $VALUES.clone();
    }

    private AidlRpcErrorCode(String str, int i) {
    }

    static {
        AidlRpcErrorCode[] aidlRpcErrorCodeArr$values = $values();
        $VALUES = aidlRpcErrorCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(aidlRpcErrorCodeArr$values);
    }
}
