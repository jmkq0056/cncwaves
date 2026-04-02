package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TippingSelectionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/hardware/paymentcollection/TippingSelectionType;", "", "(Ljava/lang/String;I)V", "SELECTED_PERCENTAGE", "SELECTED_PERCENTAGE_SMART_TIP", "SELECTED_FIXED", "SELECTED_FIXED_SMART_TIP", "CUSTOMIZED", "NO_TIP", "NO_TIP_SELECTION_TYPE_FROM_BBPOS", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TippingSelectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TippingSelectionType[] $VALUES;
    public static final TippingSelectionType SELECTED_PERCENTAGE = new TippingSelectionType("SELECTED_PERCENTAGE", 0);
    public static final TippingSelectionType SELECTED_PERCENTAGE_SMART_TIP = new TippingSelectionType("SELECTED_PERCENTAGE_SMART_TIP", 1);
    public static final TippingSelectionType SELECTED_FIXED = new TippingSelectionType("SELECTED_FIXED", 2);
    public static final TippingSelectionType SELECTED_FIXED_SMART_TIP = new TippingSelectionType("SELECTED_FIXED_SMART_TIP", 3);
    public static final TippingSelectionType CUSTOMIZED = new TippingSelectionType("CUSTOMIZED", 4);
    public static final TippingSelectionType NO_TIP = new TippingSelectionType("NO_TIP", 5);
    public static final TippingSelectionType NO_TIP_SELECTION_TYPE_FROM_BBPOS = new TippingSelectionType("NO_TIP_SELECTION_TYPE_FROM_BBPOS", 6);

    private static final /* synthetic */ TippingSelectionType[] $values() {
        return new TippingSelectionType[]{SELECTED_PERCENTAGE, SELECTED_PERCENTAGE_SMART_TIP, SELECTED_FIXED, SELECTED_FIXED_SMART_TIP, CUSTOMIZED, NO_TIP, NO_TIP_SELECTION_TYPE_FROM_BBPOS};
    }

    public static EnumEntries<TippingSelectionType> getEntries() {
        return $ENTRIES;
    }

    public static TippingSelectionType valueOf(String str) {
        return (TippingSelectionType) Enum.valueOf(TippingSelectionType.class, str);
    }

    public static TippingSelectionType[] values() {
        return (TippingSelectionType[]) $VALUES.clone();
    }

    private TippingSelectionType(String str, int i) {
    }

    static {
        TippingSelectionType[] tippingSelectionTypeArr$values = $values();
        $VALUES = tippingSelectionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tippingSelectionTypeArr$values);
    }
}
