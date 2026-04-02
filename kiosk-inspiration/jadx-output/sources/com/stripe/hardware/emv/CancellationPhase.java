package com.stripe.hardware.emv;

import com.stripe.jvmcore.dagger.PaymentCollection;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CancellationPhase.kt */
/* JADX INFO: loaded from: classes3.dex */
@PaymentCollection
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/emv/CancellationPhase;", "", "(Ljava/lang/String;I)V", "COLLECTION", "AUTH", "ACCOUNT_TYPE_SELECTION", "APPLICATION_SELECTION", "PIN", "FINAL_CONFIRMATION", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancellationPhase {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CancellationPhase[] $VALUES;
    public static final CancellationPhase COLLECTION = new CancellationPhase("COLLECTION", 0);
    public static final CancellationPhase AUTH = new CancellationPhase("AUTH", 1);
    public static final CancellationPhase ACCOUNT_TYPE_SELECTION = new CancellationPhase("ACCOUNT_TYPE_SELECTION", 2);
    public static final CancellationPhase APPLICATION_SELECTION = new CancellationPhase("APPLICATION_SELECTION", 3);
    public static final CancellationPhase PIN = new CancellationPhase("PIN", 4);
    public static final CancellationPhase FINAL_CONFIRMATION = new CancellationPhase("FINAL_CONFIRMATION", 5);

    private static final /* synthetic */ CancellationPhase[] $values() {
        return new CancellationPhase[]{COLLECTION, AUTH, ACCOUNT_TYPE_SELECTION, APPLICATION_SELECTION, PIN, FINAL_CONFIRMATION};
    }

    public static EnumEntries<CancellationPhase> getEntries() {
        return $ENTRIES;
    }

    public static CancellationPhase valueOf(String str) {
        return (CancellationPhase) Enum.valueOf(CancellationPhase.class, str);
    }

    public static CancellationPhase[] values() {
        return (CancellationPhase[]) $VALUES.clone();
    }

    private CancellationPhase(String str, int i) {
    }

    static {
        CancellationPhase[] cancellationPhaseArr$values = $values();
        $VALUES = cancellationPhaseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cancellationPhaseArr$values);
    }
}
