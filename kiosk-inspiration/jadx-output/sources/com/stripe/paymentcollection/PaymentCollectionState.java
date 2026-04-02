package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PaymentCollectionState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u001f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001f¨\u0006 "}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionState;", "", "(Ljava/lang/String;I)V", "EMPTY", "TIPPING_SELECTION", "DISPLAY_CART_PRE_COLLECTION", "DISPLAY_CART_POST_COLLECTION", "COLLECTION", "PROCESSING", "APPLICATION_SELECTION", "LANGUAGE_SELECTION", "ACCOUNT_SELECTION", "PIN_ENTRY", "MAGSTRIPE_PIN_ENTRY", "PREPARE_TO_COLLECT_AGAIN", "RECOVERABLE_ERROR_SUMMARY", "ONLINE_AUTHORIZATION", "ONLINE_AUTHORIZATION_MAG_STRIPE", "REMOVE_CARD", "ONLINE_CONFIRMATION", "COLLECTION_COMPLETE", "CANCEL", "TIMEOUT", "FINISHED", "MANUAL_ENTRY", "COLLECT_PAYMENT_METHOD_API_ERROR", "DCC_SELECTION", "NON_CARD_PAYMENT_METHOD_SELECTION", "NON_CARD_PAYMENT_METHOD_CONFIRMATION", "NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED", "INTERSTITIAL", "PASSTHROUGH_CONFIRMATION", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentCollectionState[] $VALUES;
    public static final PaymentCollectionState EMPTY = new PaymentCollectionState("EMPTY", 0);
    public static final PaymentCollectionState TIPPING_SELECTION = new PaymentCollectionState("TIPPING_SELECTION", 1);
    public static final PaymentCollectionState DISPLAY_CART_PRE_COLLECTION = new PaymentCollectionState("DISPLAY_CART_PRE_COLLECTION", 2);
    public static final PaymentCollectionState DISPLAY_CART_POST_COLLECTION = new PaymentCollectionState("DISPLAY_CART_POST_COLLECTION", 3);
    public static final PaymentCollectionState COLLECTION = new PaymentCollectionState("COLLECTION", 4);
    public static final PaymentCollectionState PROCESSING = new PaymentCollectionState("PROCESSING", 5);
    public static final PaymentCollectionState APPLICATION_SELECTION = new PaymentCollectionState("APPLICATION_SELECTION", 6);
    public static final PaymentCollectionState LANGUAGE_SELECTION = new PaymentCollectionState("LANGUAGE_SELECTION", 7);
    public static final PaymentCollectionState ACCOUNT_SELECTION = new PaymentCollectionState("ACCOUNT_SELECTION", 8);
    public static final PaymentCollectionState PIN_ENTRY = new PaymentCollectionState("PIN_ENTRY", 9);
    public static final PaymentCollectionState MAGSTRIPE_PIN_ENTRY = new PaymentCollectionState("MAGSTRIPE_PIN_ENTRY", 10);
    public static final PaymentCollectionState PREPARE_TO_COLLECT_AGAIN = new PaymentCollectionState("PREPARE_TO_COLLECT_AGAIN", 11);
    public static final PaymentCollectionState RECOVERABLE_ERROR_SUMMARY = new PaymentCollectionState("RECOVERABLE_ERROR_SUMMARY", 12);
    public static final PaymentCollectionState ONLINE_AUTHORIZATION = new PaymentCollectionState("ONLINE_AUTHORIZATION", 13);
    public static final PaymentCollectionState ONLINE_AUTHORIZATION_MAG_STRIPE = new PaymentCollectionState("ONLINE_AUTHORIZATION_MAG_STRIPE", 14);
    public static final PaymentCollectionState REMOVE_CARD = new PaymentCollectionState("REMOVE_CARD", 15);
    public static final PaymentCollectionState ONLINE_CONFIRMATION = new PaymentCollectionState("ONLINE_CONFIRMATION", 16);
    public static final PaymentCollectionState COLLECTION_COMPLETE = new PaymentCollectionState("COLLECTION_COMPLETE", 17);
    public static final PaymentCollectionState CANCEL = new PaymentCollectionState("CANCEL", 18);
    public static final PaymentCollectionState TIMEOUT = new PaymentCollectionState("TIMEOUT", 19);
    public static final PaymentCollectionState FINISHED = new PaymentCollectionState("FINISHED", 20);
    public static final PaymentCollectionState MANUAL_ENTRY = new PaymentCollectionState("MANUAL_ENTRY", 21);
    public static final PaymentCollectionState COLLECT_PAYMENT_METHOD_API_ERROR = new PaymentCollectionState("COLLECT_PAYMENT_METHOD_API_ERROR", 22);
    public static final PaymentCollectionState DCC_SELECTION = new PaymentCollectionState("DCC_SELECTION", 23);
    public static final PaymentCollectionState NON_CARD_PAYMENT_METHOD_SELECTION = new PaymentCollectionState("NON_CARD_PAYMENT_METHOD_SELECTION", 24);
    public static final PaymentCollectionState NON_CARD_PAYMENT_METHOD_CONFIRMATION = new PaymentCollectionState("NON_CARD_PAYMENT_METHOD_CONFIRMATION", 25);
    public static final PaymentCollectionState NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED = new PaymentCollectionState("NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED", 26);
    public static final PaymentCollectionState INTERSTITIAL = new PaymentCollectionState("INTERSTITIAL", 27);
    public static final PaymentCollectionState PASSTHROUGH_CONFIRMATION = new PaymentCollectionState("PASSTHROUGH_CONFIRMATION", 28);

    private static final /* synthetic */ PaymentCollectionState[] $values() {
        return new PaymentCollectionState[]{EMPTY, TIPPING_SELECTION, DISPLAY_CART_PRE_COLLECTION, DISPLAY_CART_POST_COLLECTION, COLLECTION, PROCESSING, APPLICATION_SELECTION, LANGUAGE_SELECTION, ACCOUNT_SELECTION, PIN_ENTRY, MAGSTRIPE_PIN_ENTRY, PREPARE_TO_COLLECT_AGAIN, RECOVERABLE_ERROR_SUMMARY, ONLINE_AUTHORIZATION, ONLINE_AUTHORIZATION_MAG_STRIPE, REMOVE_CARD, ONLINE_CONFIRMATION, COLLECTION_COMPLETE, CANCEL, TIMEOUT, FINISHED, MANUAL_ENTRY, COLLECT_PAYMENT_METHOD_API_ERROR, DCC_SELECTION, NON_CARD_PAYMENT_METHOD_SELECTION, NON_CARD_PAYMENT_METHOD_CONFIRMATION, NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED, INTERSTITIAL, PASSTHROUGH_CONFIRMATION};
    }

    public static EnumEntries<PaymentCollectionState> getEntries() {
        return $ENTRIES;
    }

    public static PaymentCollectionState valueOf(String str) {
        return (PaymentCollectionState) Enum.valueOf(PaymentCollectionState.class, str);
    }

    public static PaymentCollectionState[] values() {
        return (PaymentCollectionState[]) $VALUES.clone();
    }

    private PaymentCollectionState(String str, int i) {
    }

    static {
        PaymentCollectionState[] paymentCollectionStateArr$values = $values();
        $VALUES = paymentCollectionStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentCollectionStateArr$values);
    }
}
