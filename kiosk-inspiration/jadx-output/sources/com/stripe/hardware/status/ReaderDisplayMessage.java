package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReaderDisplayMessage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/status/ReaderDisplayMessage;", "", "(Ljava/lang/String;I)V", "CHECK_MOBILE_DEVICE", "RETRY_CARD", "INSERT_CARD", "INSERT_OR_SWIPE_CARD", "SWIPE_CARD", "REMOVE_CARD", "MULTIPLE_CONTACTLESS_CARDS_DETECTED", "TRY_ANOTHER_READ_METHOD", "TRY_ANOTHER_CARD", "CARD_REMOVED_TOO_EARLY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderDisplayMessage {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderDisplayMessage[] $VALUES;
    public static final ReaderDisplayMessage CHECK_MOBILE_DEVICE = new ReaderDisplayMessage("CHECK_MOBILE_DEVICE", 0);
    public static final ReaderDisplayMessage RETRY_CARD = new ReaderDisplayMessage("RETRY_CARD", 1);
    public static final ReaderDisplayMessage INSERT_CARD = new ReaderDisplayMessage("INSERT_CARD", 2);
    public static final ReaderDisplayMessage INSERT_OR_SWIPE_CARD = new ReaderDisplayMessage("INSERT_OR_SWIPE_CARD", 3);
    public static final ReaderDisplayMessage SWIPE_CARD = new ReaderDisplayMessage("SWIPE_CARD", 4);
    public static final ReaderDisplayMessage REMOVE_CARD = new ReaderDisplayMessage("REMOVE_CARD", 5);
    public static final ReaderDisplayMessage MULTIPLE_CONTACTLESS_CARDS_DETECTED = new ReaderDisplayMessage("MULTIPLE_CONTACTLESS_CARDS_DETECTED", 6);
    public static final ReaderDisplayMessage TRY_ANOTHER_READ_METHOD = new ReaderDisplayMessage("TRY_ANOTHER_READ_METHOD", 7);
    public static final ReaderDisplayMessage TRY_ANOTHER_CARD = new ReaderDisplayMessage("TRY_ANOTHER_CARD", 8);
    public static final ReaderDisplayMessage CARD_REMOVED_TOO_EARLY = new ReaderDisplayMessage("CARD_REMOVED_TOO_EARLY", 9);

    private static final /* synthetic */ ReaderDisplayMessage[] $values() {
        return new ReaderDisplayMessage[]{CHECK_MOBILE_DEVICE, RETRY_CARD, INSERT_CARD, INSERT_OR_SWIPE_CARD, SWIPE_CARD, REMOVE_CARD, MULTIPLE_CONTACTLESS_CARDS_DETECTED, TRY_ANOTHER_READ_METHOD, TRY_ANOTHER_CARD, CARD_REMOVED_TOO_EARLY};
    }

    public static EnumEntries<ReaderDisplayMessage> getEntries() {
        return $ENTRIES;
    }

    public static ReaderDisplayMessage valueOf(String str) {
        return (ReaderDisplayMessage) Enum.valueOf(ReaderDisplayMessage.class, str);
    }

    public static ReaderDisplayMessage[] values() {
        return (ReaderDisplayMessage[]) $VALUES.clone();
    }

    private ReaderDisplayMessage(String str, int i) {
    }

    static {
        ReaderDisplayMessage[] readerDisplayMessageArr$values = $values();
        $VALUES = readerDisplayMessageArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readerDisplayMessageArr$values);
    }
}
