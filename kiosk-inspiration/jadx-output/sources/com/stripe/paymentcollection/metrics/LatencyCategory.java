package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LatencyCategory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/LatencyCategory;", "", "(Ljava/lang/String;I)V", "USER_ACTION", "KERNEL_PROCESSING", "POS_COMMAND_DELAY", "NETWORK_PROCESSING", "UNKNOWN", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LatencyCategory {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LatencyCategory[] $VALUES;
    public static final LatencyCategory USER_ACTION = new LatencyCategory("USER_ACTION", 0);
    public static final LatencyCategory KERNEL_PROCESSING = new LatencyCategory("KERNEL_PROCESSING", 1);
    public static final LatencyCategory POS_COMMAND_DELAY = new LatencyCategory("POS_COMMAND_DELAY", 2);
    public static final LatencyCategory NETWORK_PROCESSING = new LatencyCategory("NETWORK_PROCESSING", 3);
    public static final LatencyCategory UNKNOWN = new LatencyCategory("UNKNOWN", 4);

    private static final /* synthetic */ LatencyCategory[] $values() {
        return new LatencyCategory[]{USER_ACTION, KERNEL_PROCESSING, POS_COMMAND_DELAY, NETWORK_PROCESSING, UNKNOWN};
    }

    public static EnumEntries<LatencyCategory> getEntries() {
        return $ENTRIES;
    }

    public static LatencyCategory valueOf(String str) {
        return (LatencyCategory) Enum.valueOf(LatencyCategory.class, str);
    }

    public static LatencyCategory[] values() {
        return (LatencyCategory[]) $VALUES.clone();
    }

    private LatencyCategory(String str, int i) {
    }

    static {
        LatencyCategory[] latencyCategoryArr$values = $values();
        $VALUES = latencyCategoryArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(latencyCategoryArr$values);
    }
}
