package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ToggleResult.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ToggleResult;", "", "(Ljava/lang/String;I)V", "ENABLED", "DISABLED", "SKIPPED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ToggleResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ToggleResult[] $VALUES;
    public static final ToggleResult ENABLED = new ToggleResult("ENABLED", 0);
    public static final ToggleResult DISABLED = new ToggleResult("DISABLED", 1);
    public static final ToggleResult SKIPPED = new ToggleResult("SKIPPED", 2);

    private static final /* synthetic */ ToggleResult[] $values() {
        return new ToggleResult[]{ENABLED, DISABLED, SKIPPED};
    }

    public static EnumEntries<ToggleResult> getEntries() {
        return $ENTRIES;
    }

    public static ToggleResult valueOf(String str) {
        return (ToggleResult) Enum.valueOf(ToggleResult.class, str);
    }

    public static ToggleResult[] values() {
        return (ToggleResult[]) $VALUES.clone();
    }

    private ToggleResult(String str, int i) {
    }

    static {
        ToggleResult[] toggleResultArr$values = $values();
        $VALUES = toggleResultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(toggleResultArr$values);
    }
}
