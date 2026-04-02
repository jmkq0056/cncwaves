package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u001a\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a¨\u0006\u001b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "MAGSTRIPE_NOT_ALLOWED", "CHIP_CARD_INITIALIZATION_FAILED", "EMPTY_CANDIDATE_LIST", "PIN_ENTRY_CANCELED", "PIN_ENTRY_TIMED_OUT", "CONTACTLESS_LIMIT_EXCEEDED", "READER_DECLINED", "READER_TERMINATED", "MULTIPLE_CARDS_DETECTED", "CARD_BLOCKED", "DEVICE_FAILURE", "ICC_CARD_REMOVED", "CHECK_MOBILE_DEVICE", "INSERT_OR_SWIPE_REQUIRED", "TIMEOUT", "ONLINE_CONFIRMATION_DECLINED", "ONLINE_CONFIRMATION_UNKNOWN", "SCA_NEEDED", "MOBILE_WALLET_TOO_MANY_TAPS", "CARD_STILL_INSERTED", "INVALID_COLLECTED_DATA", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectionFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CollectionFailureReason[] $VALUES;
    public static final CollectionFailureReason UNKNOWN = new CollectionFailureReason("UNKNOWN", 0);
    public static final CollectionFailureReason MERCHANT_CANCELLED = new CollectionFailureReason("MERCHANT_CANCELLED", 1);
    public static final CollectionFailureReason CUSTOMER_CANCELLED = new CollectionFailureReason("CUSTOMER_CANCELLED", 2);
    public static final CollectionFailureReason MAGSTRIPE_NOT_ALLOWED = new CollectionFailureReason("MAGSTRIPE_NOT_ALLOWED", 3);
    public static final CollectionFailureReason CHIP_CARD_INITIALIZATION_FAILED = new CollectionFailureReason("CHIP_CARD_INITIALIZATION_FAILED", 4);
    public static final CollectionFailureReason EMPTY_CANDIDATE_LIST = new CollectionFailureReason("EMPTY_CANDIDATE_LIST", 5);
    public static final CollectionFailureReason PIN_ENTRY_CANCELED = new CollectionFailureReason("PIN_ENTRY_CANCELED", 6);
    public static final CollectionFailureReason PIN_ENTRY_TIMED_OUT = new CollectionFailureReason("PIN_ENTRY_TIMED_OUT", 7);
    public static final CollectionFailureReason CONTACTLESS_LIMIT_EXCEEDED = new CollectionFailureReason("CONTACTLESS_LIMIT_EXCEEDED", 8);
    public static final CollectionFailureReason READER_DECLINED = new CollectionFailureReason("READER_DECLINED", 9);
    public static final CollectionFailureReason READER_TERMINATED = new CollectionFailureReason("READER_TERMINATED", 10);
    public static final CollectionFailureReason MULTIPLE_CARDS_DETECTED = new CollectionFailureReason("MULTIPLE_CARDS_DETECTED", 11);
    public static final CollectionFailureReason CARD_BLOCKED = new CollectionFailureReason("CARD_BLOCKED", 12);
    public static final CollectionFailureReason DEVICE_FAILURE = new CollectionFailureReason("DEVICE_FAILURE", 13);
    public static final CollectionFailureReason ICC_CARD_REMOVED = new CollectionFailureReason("ICC_CARD_REMOVED", 14);
    public static final CollectionFailureReason CHECK_MOBILE_DEVICE = new CollectionFailureReason("CHECK_MOBILE_DEVICE", 15);
    public static final CollectionFailureReason INSERT_OR_SWIPE_REQUIRED = new CollectionFailureReason("INSERT_OR_SWIPE_REQUIRED", 16);
    public static final CollectionFailureReason TIMEOUT = new CollectionFailureReason("TIMEOUT", 17);
    public static final CollectionFailureReason ONLINE_CONFIRMATION_DECLINED = new CollectionFailureReason("ONLINE_CONFIRMATION_DECLINED", 18);
    public static final CollectionFailureReason ONLINE_CONFIRMATION_UNKNOWN = new CollectionFailureReason("ONLINE_CONFIRMATION_UNKNOWN", 19);
    public static final CollectionFailureReason SCA_NEEDED = new CollectionFailureReason("SCA_NEEDED", 20);
    public static final CollectionFailureReason MOBILE_WALLET_TOO_MANY_TAPS = new CollectionFailureReason("MOBILE_WALLET_TOO_MANY_TAPS", 21);
    public static final CollectionFailureReason CARD_STILL_INSERTED = new CollectionFailureReason("CARD_STILL_INSERTED", 22);
    public static final CollectionFailureReason INVALID_COLLECTED_DATA = new CollectionFailureReason("INVALID_COLLECTED_DATA", 23);

    private static final /* synthetic */ CollectionFailureReason[] $values() {
        return new CollectionFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, MAGSTRIPE_NOT_ALLOWED, CHIP_CARD_INITIALIZATION_FAILED, EMPTY_CANDIDATE_LIST, PIN_ENTRY_CANCELED, PIN_ENTRY_TIMED_OUT, CONTACTLESS_LIMIT_EXCEEDED, READER_DECLINED, READER_TERMINATED, MULTIPLE_CARDS_DETECTED, CARD_BLOCKED, DEVICE_FAILURE, ICC_CARD_REMOVED, CHECK_MOBILE_DEVICE, INSERT_OR_SWIPE_REQUIRED, TIMEOUT, ONLINE_CONFIRMATION_DECLINED, ONLINE_CONFIRMATION_UNKNOWN, SCA_NEEDED, MOBILE_WALLET_TOO_MANY_TAPS, CARD_STILL_INSERTED, INVALID_COLLECTED_DATA};
    }

    public static EnumEntries<CollectionFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static CollectionFailureReason valueOf(String str) {
        return (CollectionFailureReason) Enum.valueOf(CollectionFailureReason.class, str);
    }

    public static CollectionFailureReason[] values() {
        return (CollectionFailureReason[]) $VALUES.clone();
    }

    private CollectionFailureReason(String str, int i) {
    }

    static {
        CollectionFailureReason[] collectionFailureReasonArr$values = $values();
        $VALUES = collectionFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(collectionFailureReasonArr$values);
    }
}
