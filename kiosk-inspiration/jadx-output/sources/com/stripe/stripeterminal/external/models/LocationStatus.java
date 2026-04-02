package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LocationStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/LocationStatus;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "SET", "NOT_SET", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocationStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LocationStatus[] $VALUES;
    public static final LocationStatus UNKNOWN = new LocationStatus("UNKNOWN", 0);
    public static final LocationStatus SET = new LocationStatus("SET", 1);
    public static final LocationStatus NOT_SET = new LocationStatus("NOT_SET", 2);

    private static final /* synthetic */ LocationStatus[] $values() {
        return new LocationStatus[]{UNKNOWN, SET, NOT_SET};
    }

    public static EnumEntries<LocationStatus> getEntries() {
        return $ENTRIES;
    }

    public static LocationStatus valueOf(String str) {
        return (LocationStatus) Enum.valueOf(LocationStatus.class, str);
    }

    public static LocationStatus[] values() {
        return (LocationStatus[]) $VALUES.clone();
    }

    private LocationStatus(String str, int i) {
    }

    static {
        LocationStatus[] locationStatusArr$values = $values();
        $VALUES = locationStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(locationStatusArr$values);
    }
}
