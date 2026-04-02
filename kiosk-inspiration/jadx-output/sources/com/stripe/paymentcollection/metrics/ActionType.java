package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/paymentcollection/metrics/ActionType;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "AUTOMATIC", "CUSTOMER_INPUT", "NETWORK_RESPONSE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ActionType[] $VALUES;
    public static final ActionType UNKNOWN = new ActionType("UNKNOWN", 0);
    public static final ActionType AUTOMATIC = new ActionType("AUTOMATIC", 1);
    public static final ActionType CUSTOMER_INPUT = new ActionType("CUSTOMER_INPUT", 2);
    public static final ActionType NETWORK_RESPONSE = new ActionType("NETWORK_RESPONSE", 3);

    private static final /* synthetic */ ActionType[] $values() {
        return new ActionType[]{UNKNOWN, AUTOMATIC, CUSTOMER_INPUT, NETWORK_RESPONSE};
    }

    public static EnumEntries<ActionType> getEntries() {
        return $ENTRIES;
    }

    public static ActionType valueOf(String str) {
        return (ActionType) Enum.valueOf(ActionType.class, str);
    }

    public static ActionType[] values() {
        return (ActionType[]) $VALUES.clone();
    }

    private ActionType(String str, int i) {
    }

    static {
        ActionType[] actionTypeArr$values = $values();
        $VALUES = actionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(actionTypeArr$values);
    }
}
