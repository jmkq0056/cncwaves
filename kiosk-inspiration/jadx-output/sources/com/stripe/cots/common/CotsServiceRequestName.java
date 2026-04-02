package com.stripe.cots.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CotsServiceConstants.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/cots/common/CotsServiceRequestName;", "", "(Ljava/lang/String;I)V", "DISCOVER", "ACTIVATE", "COLLECT_PAYMENT", "COLLECT_PIN", "DISCONNECT", "CANCEL_COLLECT_PAYMENT", "UPDATE_READER", "SET_FAKED_CONTACTLESS_OUTCOME", "KILL_AIDL_SERVER", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsServiceRequestName {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CotsServiceRequestName[] $VALUES;
    public static final CotsServiceRequestName DISCOVER = new CotsServiceRequestName("DISCOVER", 0);
    public static final CotsServiceRequestName ACTIVATE = new CotsServiceRequestName("ACTIVATE", 1);
    public static final CotsServiceRequestName COLLECT_PAYMENT = new CotsServiceRequestName("COLLECT_PAYMENT", 2);
    public static final CotsServiceRequestName COLLECT_PIN = new CotsServiceRequestName("COLLECT_PIN", 3);
    public static final CotsServiceRequestName DISCONNECT = new CotsServiceRequestName("DISCONNECT", 4);
    public static final CotsServiceRequestName CANCEL_COLLECT_PAYMENT = new CotsServiceRequestName("CANCEL_COLLECT_PAYMENT", 5);
    public static final CotsServiceRequestName UPDATE_READER = new CotsServiceRequestName("UPDATE_READER", 6);
    public static final CotsServiceRequestName SET_FAKED_CONTACTLESS_OUTCOME = new CotsServiceRequestName("SET_FAKED_CONTACTLESS_OUTCOME", 7);
    public static final CotsServiceRequestName KILL_AIDL_SERVER = new CotsServiceRequestName("KILL_AIDL_SERVER", 8);

    private static final /* synthetic */ CotsServiceRequestName[] $values() {
        return new CotsServiceRequestName[]{DISCOVER, ACTIVATE, COLLECT_PAYMENT, COLLECT_PIN, DISCONNECT, CANCEL_COLLECT_PAYMENT, UPDATE_READER, SET_FAKED_CONTACTLESS_OUTCOME, KILL_AIDL_SERVER};
    }

    public static EnumEntries<CotsServiceRequestName> getEntries() {
        return $ENTRIES;
    }

    public static CotsServiceRequestName valueOf(String str) {
        return (CotsServiceRequestName) Enum.valueOf(CotsServiceRequestName.class, str);
    }

    public static CotsServiceRequestName[] values() {
        return (CotsServiceRequestName[]) $VALUES.clone();
    }

    private CotsServiceRequestName(String str, int i) {
    }

    static {
        CotsServiceRequestName[] cotsServiceRequestNameArr$values = $values();
        $VALUES = cotsServiceRequestNameArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cotsServiceRequestNameArr$values);
    }
}
