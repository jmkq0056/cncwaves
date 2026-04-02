package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: OfflineBehavior.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "", "(Ljava/lang/String;I)V", "REQUIRE_ONLINE", "PREFER_ONLINE", "FORCE_OFFLINE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineBehavior {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OfflineBehavior[] $VALUES;
    public static final OfflineBehavior REQUIRE_ONLINE = new OfflineBehavior("REQUIRE_ONLINE", 0);
    public static final OfflineBehavior PREFER_ONLINE = new OfflineBehavior("PREFER_ONLINE", 1);
    public static final OfflineBehavior FORCE_OFFLINE = new OfflineBehavior("FORCE_OFFLINE", 2);

    private static final /* synthetic */ OfflineBehavior[] $values() {
        return new OfflineBehavior[]{REQUIRE_ONLINE, PREFER_ONLINE, FORCE_OFFLINE};
    }

    public static EnumEntries<OfflineBehavior> getEntries() {
        return $ENTRIES;
    }

    public static OfflineBehavior valueOf(String str) {
        return (OfflineBehavior) Enum.valueOf(OfflineBehavior.class, str);
    }

    public static OfflineBehavior[] values() {
        return (OfflineBehavior[]) $VALUES.clone();
    }

    private OfflineBehavior(String str, int i) {
    }

    static {
        OfflineBehavior[] offlineBehaviorArr$values = $values();
        $VALUES = offlineBehaviorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(offlineBehaviorArr$values);
    }
}
