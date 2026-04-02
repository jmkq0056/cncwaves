package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CollectDataType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CollectDataType;", "", "(Ljava/lang/String;I)V", "MAGSTRIPE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectDataType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CollectDataType[] $VALUES;
    public static final CollectDataType MAGSTRIPE = new CollectDataType("MAGSTRIPE", 0);

    private static final /* synthetic */ CollectDataType[] $values() {
        return new CollectDataType[]{MAGSTRIPE};
    }

    public static EnumEntries<CollectDataType> getEntries() {
        return $ENTRIES;
    }

    public static CollectDataType valueOf(String str) {
        return (CollectDataType) Enum.valueOf(CollectDataType.class, str);
    }

    public static CollectDataType[] values() {
        return (CollectDataType[]) $VALUES.clone();
    }

    private CollectDataType(String str, int i) {
    }

    static {
        CollectDataType[] collectDataTypeArr$values = $values();
        $VALUES = collectDataTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(collectDataTypeArr$values);
    }
}
