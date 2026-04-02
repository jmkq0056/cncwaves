package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;", "", "(Ljava/lang/String;I)V", "ORIGINAL", "TARGET", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicCurrencyConversionSelectionResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DynamicCurrencyConversionSelectionResult[] $VALUES;
    public static final DynamicCurrencyConversionSelectionResult ORIGINAL = new DynamicCurrencyConversionSelectionResult("ORIGINAL", 0);
    public static final DynamicCurrencyConversionSelectionResult TARGET = new DynamicCurrencyConversionSelectionResult("TARGET", 1);

    private static final /* synthetic */ DynamicCurrencyConversionSelectionResult[] $values() {
        return new DynamicCurrencyConversionSelectionResult[]{ORIGINAL, TARGET};
    }

    public static EnumEntries<DynamicCurrencyConversionSelectionResult> getEntries() {
        return $ENTRIES;
    }

    public static DynamicCurrencyConversionSelectionResult valueOf(String str) {
        return (DynamicCurrencyConversionSelectionResult) Enum.valueOf(DynamicCurrencyConversionSelectionResult.class, str);
    }

    public static DynamicCurrencyConversionSelectionResult[] values() {
        return (DynamicCurrencyConversionSelectionResult[]) $VALUES.clone();
    }

    private DynamicCurrencyConversionSelectionResult(String str, int i) {
    }

    static {
        DynamicCurrencyConversionSelectionResult[] dynamicCurrencyConversionSelectionResultArr$values = $values();
        $VALUES = dynamicCurrencyConversionSelectionResultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(dynamicCurrencyConversionSelectionResultArr$values);
    }
}
