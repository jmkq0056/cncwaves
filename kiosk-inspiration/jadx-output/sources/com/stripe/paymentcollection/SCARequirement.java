package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SCARequirement.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/paymentcollection/SCARequirement;", "", "(Ljava/lang/String;I)V", "GENERIC", "ONLINE_OR_OFFLINE_PIN", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SCARequirement {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SCARequirement[] $VALUES;
    public static final SCARequirement GENERIC = new SCARequirement("GENERIC", 0);
    public static final SCARequirement ONLINE_OR_OFFLINE_PIN = new SCARequirement("ONLINE_OR_OFFLINE_PIN", 1);

    private static final /* synthetic */ SCARequirement[] $values() {
        return new SCARequirement[]{GENERIC, ONLINE_OR_OFFLINE_PIN};
    }

    public static EnumEntries<SCARequirement> getEntries() {
        return $ENTRIES;
    }

    public static SCARequirement valueOf(String str) {
        return (SCARequirement) Enum.valueOf(SCARequirement.class, str);
    }

    public static SCARequirement[] values() {
        return (SCARequirement[]) $VALUES.clone();
    }

    private SCARequirement(String str, int i) {
    }

    static {
        SCARequirement[] sCARequirementArr$values = $values();
        $VALUES = sCARequirementArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sCARequirementArr$values);
    }
}
