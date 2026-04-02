package com.stripe.restclient;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Enums.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/restclient/IntegrationType;", "", "(Ljava/lang/String;I)V", "LOCAL_POS", "SERVER_DRIVEN", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IntegrationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IntegrationType[] $VALUES;
    public static final IntegrationType LOCAL_POS = new IntegrationType("LOCAL_POS", 0);
    public static final IntegrationType SERVER_DRIVEN = new IntegrationType("SERVER_DRIVEN", 1);

    private static final /* synthetic */ IntegrationType[] $values() {
        return new IntegrationType[]{LOCAL_POS, SERVER_DRIVEN};
    }

    public static EnumEntries<IntegrationType> getEntries() {
        return $ENTRIES;
    }

    public static IntegrationType valueOf(String str) {
        return (IntegrationType) Enum.valueOf(IntegrationType.class, str);
    }

    public static IntegrationType[] values() {
        return (IntegrationType[]) $VALUES.clone();
    }

    private IntegrationType(String str, int i) {
    }

    static {
        IntegrationType[] integrationTypeArr$values = $values();
        $VALUES = integrationTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(integrationTypeArr$values);
    }
}
