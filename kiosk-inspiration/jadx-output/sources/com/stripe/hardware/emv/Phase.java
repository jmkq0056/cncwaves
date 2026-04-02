package com.stripe.hardware.emv;

import com.stripe.jvmcore.dagger.PaymentCollectionLegacy;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Phase.kt */
/* JADX INFO: loaded from: classes3.dex */
@PaymentCollectionLegacy
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/emv/Phase;", "", "(Ljava/lang/String;I)V", "NONE", "ACCOUNT_TYPE_SELECTION", "APPLICATION_SELECTION", "PIN", "FINAL_CONFIRMATION", "AUTH", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Phase {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Phase[] $VALUES;
    public static final Phase NONE = new Phase("NONE", 0);
    public static final Phase ACCOUNT_TYPE_SELECTION = new Phase("ACCOUNT_TYPE_SELECTION", 1);
    public static final Phase APPLICATION_SELECTION = new Phase("APPLICATION_SELECTION", 2);
    public static final Phase PIN = new Phase("PIN", 3);
    public static final Phase FINAL_CONFIRMATION = new Phase("FINAL_CONFIRMATION", 4);
    public static final Phase AUTH = new Phase("AUTH", 5);

    private static final /* synthetic */ Phase[] $values() {
        return new Phase[]{NONE, ACCOUNT_TYPE_SELECTION, APPLICATION_SELECTION, PIN, FINAL_CONFIRMATION, AUTH};
    }

    public static EnumEntries<Phase> getEntries() {
        return $ENTRIES;
    }

    public static Phase valueOf(String str) {
        return (Phase) Enum.valueOf(Phase.class, str);
    }

    public static Phase[] values() {
        return (Phase[]) $VALUES.clone();
    }

    private Phase(String str, int i) {
    }

    static {
        Phase[] phaseArr$values = $values();
        $VALUES = phaseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(phaseArr$values);
    }
}
