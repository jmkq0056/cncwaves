package com.stripe.core.readerupdate.healthreporter;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/readerupdate/healthreporter/Endpoint;", "", "(Ljava/lang/String;I)V", "TMS", "ARMADA", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Endpoint {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Endpoint[] $VALUES;
    public static final Endpoint TMS = new Endpoint("TMS", 0);
    public static final Endpoint ARMADA = new Endpoint("ARMADA", 1);

    private static final /* synthetic */ Endpoint[] $values() {
        return new Endpoint[]{TMS, ARMADA};
    }

    public static EnumEntries<Endpoint> getEntries() {
        return $ENTRIES;
    }

    public static Endpoint valueOf(String str) {
        return (Endpoint) Enum.valueOf(Endpoint.class, str);
    }

    public static Endpoint[] values() {
        return (Endpoint[]) $VALUES.clone();
    }

    private Endpoint(String str, int i) {
    }

    static {
        Endpoint[] endpointArr$values = $values();
        $VALUES = endpointArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(endpointArr$values);
    }
}
