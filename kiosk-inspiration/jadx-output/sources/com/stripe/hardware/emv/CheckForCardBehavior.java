package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CheckForCardBehavior.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/emv/CheckForCardBehavior;", "", "(Ljava/lang/String;I)V", "POLL_FOR_CARD_REMOVAL", "DO_NOT_POLL", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckForCardBehavior {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CheckForCardBehavior[] $VALUES;
    public static final CheckForCardBehavior POLL_FOR_CARD_REMOVAL = new CheckForCardBehavior("POLL_FOR_CARD_REMOVAL", 0);
    public static final CheckForCardBehavior DO_NOT_POLL = new CheckForCardBehavior("DO_NOT_POLL", 1);

    private static final /* synthetic */ CheckForCardBehavior[] $values() {
        return new CheckForCardBehavior[]{POLL_FOR_CARD_REMOVAL, DO_NOT_POLL};
    }

    public static EnumEntries<CheckForCardBehavior> getEntries() {
        return $ENTRIES;
    }

    public static CheckForCardBehavior valueOf(String str) {
        return (CheckForCardBehavior) Enum.valueOf(CheckForCardBehavior.class, str);
    }

    public static CheckForCardBehavior[] values() {
        return (CheckForCardBehavior[]) $VALUES.clone();
    }

    private CheckForCardBehavior(String str, int i) {
    }

    static {
        CheckForCardBehavior[] checkForCardBehaviorArr$values = $values();
        $VALUES = checkForCardBehaviorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(checkForCardBehaviorArr$values);
    }
}
