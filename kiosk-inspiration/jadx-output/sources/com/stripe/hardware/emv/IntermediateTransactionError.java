package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: IntermediateTransactionError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0019\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/stripe/hardware/emv/IntermediateTransactionError;", "", "(Ljava/lang/String;I)V", "CONTACTLESS_LIMIT_EXCEEDED", "CHECK_MOBILE_DEVICE", "MULTIPLE_CARDS_DETECTED", "BAD_TAP_READ", "TOO_MANY_TAPS", "CARD_NOT_ADMITTED", "INVALID_TRANSACTION", "INVALID_CARD_NUMBER", "SYSTEM_MALFUNCTION", "EXPIRED_CARD", "TRANSACTION_NOT_PERMITTED", "INVALID_FUNCTION", "INVALID_CARD", "WRONG_CARD", "TERMINAL_NOT_PERMITTED", "ORIGINAL_AMOUNT_INCORRECT", "CARD_NOT_READABLE", "AUTHENTICATION_REQUIRED", "NOT_ACCEPTED_TRY_AGAIN", "DECLINED_CODE_05", "CARD_ERROR", "NOT_ACCEPTED", "PROCESSING_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IntermediateTransactionError {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IntermediateTransactionError[] $VALUES;
    public static final IntermediateTransactionError CONTACTLESS_LIMIT_EXCEEDED = new IntermediateTransactionError("CONTACTLESS_LIMIT_EXCEEDED", 0);
    public static final IntermediateTransactionError CHECK_MOBILE_DEVICE = new IntermediateTransactionError("CHECK_MOBILE_DEVICE", 1);
    public static final IntermediateTransactionError MULTIPLE_CARDS_DETECTED = new IntermediateTransactionError("MULTIPLE_CARDS_DETECTED", 2);
    public static final IntermediateTransactionError BAD_TAP_READ = new IntermediateTransactionError("BAD_TAP_READ", 3);
    public static final IntermediateTransactionError TOO_MANY_TAPS = new IntermediateTransactionError("TOO_MANY_TAPS", 4);
    public static final IntermediateTransactionError CARD_NOT_ADMITTED = new IntermediateTransactionError("CARD_NOT_ADMITTED", 5);
    public static final IntermediateTransactionError INVALID_TRANSACTION = new IntermediateTransactionError("INVALID_TRANSACTION", 6);
    public static final IntermediateTransactionError INVALID_CARD_NUMBER = new IntermediateTransactionError("INVALID_CARD_NUMBER", 7);
    public static final IntermediateTransactionError SYSTEM_MALFUNCTION = new IntermediateTransactionError("SYSTEM_MALFUNCTION", 8);
    public static final IntermediateTransactionError EXPIRED_CARD = new IntermediateTransactionError("EXPIRED_CARD", 9);
    public static final IntermediateTransactionError TRANSACTION_NOT_PERMITTED = new IntermediateTransactionError("TRANSACTION_NOT_PERMITTED", 10);
    public static final IntermediateTransactionError INVALID_FUNCTION = new IntermediateTransactionError("INVALID_FUNCTION", 11);
    public static final IntermediateTransactionError INVALID_CARD = new IntermediateTransactionError("INVALID_CARD", 12);
    public static final IntermediateTransactionError WRONG_CARD = new IntermediateTransactionError("WRONG_CARD", 13);
    public static final IntermediateTransactionError TERMINAL_NOT_PERMITTED = new IntermediateTransactionError("TERMINAL_NOT_PERMITTED", 14);
    public static final IntermediateTransactionError ORIGINAL_AMOUNT_INCORRECT = new IntermediateTransactionError("ORIGINAL_AMOUNT_INCORRECT", 15);
    public static final IntermediateTransactionError CARD_NOT_READABLE = new IntermediateTransactionError("CARD_NOT_READABLE", 16);
    public static final IntermediateTransactionError AUTHENTICATION_REQUIRED = new IntermediateTransactionError("AUTHENTICATION_REQUIRED", 17);
    public static final IntermediateTransactionError NOT_ACCEPTED_TRY_AGAIN = new IntermediateTransactionError("NOT_ACCEPTED_TRY_AGAIN", 18);
    public static final IntermediateTransactionError DECLINED_CODE_05 = new IntermediateTransactionError("DECLINED_CODE_05", 19);
    public static final IntermediateTransactionError CARD_ERROR = new IntermediateTransactionError("CARD_ERROR", 20);
    public static final IntermediateTransactionError NOT_ACCEPTED = new IntermediateTransactionError("NOT_ACCEPTED", 21);
    public static final IntermediateTransactionError PROCESSING_ERROR = new IntermediateTransactionError("PROCESSING_ERROR", 22);

    private static final /* synthetic */ IntermediateTransactionError[] $values() {
        return new IntermediateTransactionError[]{CONTACTLESS_LIMIT_EXCEEDED, CHECK_MOBILE_DEVICE, MULTIPLE_CARDS_DETECTED, BAD_TAP_READ, TOO_MANY_TAPS, CARD_NOT_ADMITTED, INVALID_TRANSACTION, INVALID_CARD_NUMBER, SYSTEM_MALFUNCTION, EXPIRED_CARD, TRANSACTION_NOT_PERMITTED, INVALID_FUNCTION, INVALID_CARD, WRONG_CARD, TERMINAL_NOT_PERMITTED, ORIGINAL_AMOUNT_INCORRECT, CARD_NOT_READABLE, AUTHENTICATION_REQUIRED, NOT_ACCEPTED_TRY_AGAIN, DECLINED_CODE_05, CARD_ERROR, NOT_ACCEPTED, PROCESSING_ERROR};
    }

    public static EnumEntries<IntermediateTransactionError> getEntries() {
        return $ENTRIES;
    }

    public static IntermediateTransactionError valueOf(String str) {
        return (IntermediateTransactionError) Enum.valueOf(IntermediateTransactionError.class, str);
    }

    public static IntermediateTransactionError[] values() {
        return (IntermediateTransactionError[]) $VALUES.clone();
    }

    private IntermediateTransactionError(String str, int i) {
    }

    static {
        IntermediateTransactionError[] intermediateTransactionErrorArr$values = $values();
        $VALUES = intermediateTransactionErrorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(intermediateTransactionErrorArr$values);
    }
}
