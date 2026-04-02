package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: IncrementalAuthorizationStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "NOT_SUPPORTED", "SUPPORTED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IncrementalAuthorizationStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IncrementalAuthorizationStatus[] $VALUES;
    public static final IncrementalAuthorizationStatus UNKNOWN = new IncrementalAuthorizationStatus("UNKNOWN", 0);
    public static final IncrementalAuthorizationStatus NOT_SUPPORTED = new IncrementalAuthorizationStatus("NOT_SUPPORTED", 1);
    public static final IncrementalAuthorizationStatus SUPPORTED = new IncrementalAuthorizationStatus("SUPPORTED", 2);

    private static final /* synthetic */ IncrementalAuthorizationStatus[] $values() {
        return new IncrementalAuthorizationStatus[]{UNKNOWN, NOT_SUPPORTED, SUPPORTED};
    }

    public static EnumEntries<IncrementalAuthorizationStatus> getEntries() {
        return $ENTRIES;
    }

    public static IncrementalAuthorizationStatus valueOf(String str) {
        return (IncrementalAuthorizationStatus) Enum.valueOf(IncrementalAuthorizationStatus.class, str);
    }

    public static IncrementalAuthorizationStatus[] values() {
        return (IncrementalAuthorizationStatus[]) $VALUES.clone();
    }

    private IncrementalAuthorizationStatus(String str, int i) {
    }

    static {
        IncrementalAuthorizationStatus[] incrementalAuthorizationStatusArr$values = $values();
        $VALUES = incrementalAuthorizationStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(incrementalAuthorizationStatusArr$values);
    }
}
