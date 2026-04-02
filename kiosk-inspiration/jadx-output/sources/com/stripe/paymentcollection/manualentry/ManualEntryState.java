package com.stripe.paymentcollection.manualentry;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ManualEntryState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "", "(Ljava/lang/String;I)V", "EMPTY", "CONFIGURE_READER", "PAN_ENTRY", "EXPIRY_DATE_ENTRY", "CVV_ENTRY", "ZIP_CODE", "CONFIRM_DETAILS", "FINISHED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualEntryState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ManualEntryState[] $VALUES;
    public static final ManualEntryState EMPTY = new ManualEntryState("EMPTY", 0);
    public static final ManualEntryState CONFIGURE_READER = new ManualEntryState("CONFIGURE_READER", 1);
    public static final ManualEntryState PAN_ENTRY = new ManualEntryState("PAN_ENTRY", 2);
    public static final ManualEntryState EXPIRY_DATE_ENTRY = new ManualEntryState("EXPIRY_DATE_ENTRY", 3);
    public static final ManualEntryState CVV_ENTRY = new ManualEntryState("CVV_ENTRY", 4);
    public static final ManualEntryState ZIP_CODE = new ManualEntryState("ZIP_CODE", 5);
    public static final ManualEntryState CONFIRM_DETAILS = new ManualEntryState("CONFIRM_DETAILS", 6);
    public static final ManualEntryState FINISHED = new ManualEntryState("FINISHED", 7);

    private static final /* synthetic */ ManualEntryState[] $values() {
        return new ManualEntryState[]{EMPTY, CONFIGURE_READER, PAN_ENTRY, EXPIRY_DATE_ENTRY, CVV_ENTRY, ZIP_CODE, CONFIRM_DETAILS, FINISHED};
    }

    public static EnumEntries<ManualEntryState> getEntries() {
        return $ENTRIES;
    }

    public static ManualEntryState valueOf(String str) {
        return (ManualEntryState) Enum.valueOf(ManualEntryState.class, str);
    }

    public static ManualEntryState[] values() {
        return (ManualEntryState[]) $VALUES.clone();
    }

    private ManualEntryState(String str, int i) {
    }

    static {
        ManualEntryState[] manualEntryStateArr$values = $values();
        $VALUES = manualEntryStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(manualEntryStateArr$values);
    }
}
