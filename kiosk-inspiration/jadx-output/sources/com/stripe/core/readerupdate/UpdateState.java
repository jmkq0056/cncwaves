package com.stripe.core.readerupdate;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: UpdateState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateState;", "", "(Ljava/lang/String;I)V", "NONE", "CHECKING_FOR_UPDATE", "INSTALLING_UPDATE", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ UpdateState[] $VALUES;
    public static final UpdateState NONE = new UpdateState("NONE", 0);
    public static final UpdateState CHECKING_FOR_UPDATE = new UpdateState("CHECKING_FOR_UPDATE", 1);
    public static final UpdateState INSTALLING_UPDATE = new UpdateState("INSTALLING_UPDATE", 2);

    private static final /* synthetic */ UpdateState[] $values() {
        return new UpdateState[]{NONE, CHECKING_FOR_UPDATE, INSTALLING_UPDATE};
    }

    public static EnumEntries<UpdateState> getEntries() {
        return $ENTRIES;
    }

    public static UpdateState valueOf(String str) {
        return (UpdateState) Enum.valueOf(UpdateState.class, str);
    }

    public static UpdateState[] values() {
        return (UpdateState[]) $VALUES.clone();
    }

    private UpdateState(String str, int i) {
    }

    static {
        UpdateState[] updateStateArr$values = $values();
        $VALUES = updateStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(updateStateArr$values);
    }
}
