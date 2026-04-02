package com.stripe.stripeterminal.internal.common.p000enum;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AdapterType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "", "(Ljava/lang/String;I)V", "BBPOS", "COTS", "EMBEDDED", "REMOTE", "SIMULATED", "TEST", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AdapterType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdapterType[] $VALUES;
    public static final AdapterType BBPOS = new AdapterType("BBPOS", 0);
    public static final AdapterType COTS = new AdapterType("COTS", 1);
    public static final AdapterType EMBEDDED = new AdapterType("EMBEDDED", 2);
    public static final AdapterType REMOTE = new AdapterType("REMOTE", 3);
    public static final AdapterType SIMULATED = new AdapterType("SIMULATED", 4);
    public static final AdapterType TEST = new AdapterType("TEST", 5);

    private static final /* synthetic */ AdapterType[] $values() {
        return new AdapterType[]{BBPOS, COTS, EMBEDDED, REMOTE, SIMULATED, TEST};
    }

    public static EnumEntries<AdapterType> getEntries() {
        return $ENTRIES;
    }

    public static AdapterType valueOf(String str) {
        return (AdapterType) Enum.valueOf(AdapterType.class, str);
    }

    public static AdapterType[] values() {
        return (AdapterType[]) $VALUES.clone();
    }

    private AdapterType(String str, int i) {
    }

    static {
        AdapterType[] adapterTypeArr$values = $values();
        $VALUES = adapterTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(adapterTypeArr$values);
    }
}
