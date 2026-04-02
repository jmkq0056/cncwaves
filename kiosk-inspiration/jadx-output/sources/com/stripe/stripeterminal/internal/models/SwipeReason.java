package com.stripe.stripeterminal.internal.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SwipeReason.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/SwipeReason;", "", "reason", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getReason", "()Ljava/lang/String;", "CHIP_ERROR", "EMPTY_CANDIDATE_LIST", "COLLECT_DATA", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SwipeReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SwipeReason[] $VALUES;
    private final String reason;
    public static final SwipeReason CHIP_ERROR = new SwipeReason("CHIP_ERROR", 0, "chip_error");
    public static final SwipeReason EMPTY_CANDIDATE_LIST = new SwipeReason("EMPTY_CANDIDATE_LIST", 1, "empty_candidate_list");
    public static final SwipeReason COLLECT_DATA = new SwipeReason("COLLECT_DATA", 2, "collect_data");

    private static final /* synthetic */ SwipeReason[] $values() {
        return new SwipeReason[]{CHIP_ERROR, EMPTY_CANDIDATE_LIST, COLLECT_DATA};
    }

    public static EnumEntries<SwipeReason> getEntries() {
        return $ENTRIES;
    }

    public static SwipeReason valueOf(String str) {
        return (SwipeReason) Enum.valueOf(SwipeReason.class, str);
    }

    public static SwipeReason[] values() {
        return (SwipeReason[]) $VALUES.clone();
    }

    private SwipeReason(String str, int i, String str2) {
        this.reason = str2;
    }

    public final String getReason() {
        return this.reason;
    }

    static {
        SwipeReason[] swipeReasonArr$values = $values();
        $VALUES = swipeReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(swipeReasonArr$values);
    }
}
