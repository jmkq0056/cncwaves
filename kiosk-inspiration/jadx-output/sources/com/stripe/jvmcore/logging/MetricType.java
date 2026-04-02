package com.stripe.jvmcore.logging;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: HealthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/jvmcore/logging/MetricType;", "", "(Ljava/lang/String;I)V", "COUNTER", "TIMER", "GAUGE", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MetricType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MetricType[] $VALUES;
    public static final MetricType COUNTER = new MetricType("COUNTER", 0);
    public static final MetricType TIMER = new MetricType("TIMER", 1);
    public static final MetricType GAUGE = new MetricType("GAUGE", 2);

    private static final /* synthetic */ MetricType[] $values() {
        return new MetricType[]{COUNTER, TIMER, GAUGE};
    }

    public static EnumEntries<MetricType> getEntries() {
        return $ENTRIES;
    }

    public static MetricType valueOf(String str) {
        return (MetricType) Enum.valueOf(MetricType.class, str);
    }

    public static MetricType[] values() {
        return (MetricType[]) $VALUES.clone();
    }

    private MetricType(String str, int i) {
    }

    static {
        MetricType[] metricTypeArr$values = $values();
        $VALUES = metricTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(metricTypeArr$values);
    }
}
