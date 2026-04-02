package com.stripe.hardware.paymentcollection;

import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadFailure;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RecoverableError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b#\b\u0086\u0081\u0002\u0018\u0000 #2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001#B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"¨\u0006$"}, d2 = {"Lcom/stripe/hardware/paymentcollection/RecoverableError;", "", "(Ljava/lang/String;I)V", "CHIP_CARD_MUST_BE_INSERTED_FOR_SCA", "CHIP_CARD_INSERTED_INCORRECTLY", "CHECK_MOBILE_DEVICE", "CONTACTLESS_LIMIT_EXCEEDED", "CARD_BLOCKED", "EMPTY_CANDIDATE_LIST", "INSERT_OR_SWIPE_REQUIRED", "MULTIPLE_CARDS_DETECTED", "DECLINED", "CHIP_CARD_SWIPED", "SWIPE_FAILED", "INVALID_CARD", "BAD_TAP_READ", "TOO_MANY_TAPS", "CARD_REMOVED_TOO_SOON", "CARD_NOT_ADMITTED", "INVALID_TRANSACTION", "INVALID_CARD_NUMBER", "SYSTEM_MALFUNCTION", "EXPIRED_CARD", "TRANSACTION_NOT_PERMITTED", "INVALID_FUNCTION", "WRONG_CARD", "TERMINAL_NOT_PERMITTED", "ORIGINAL_AMOUNT_INCORRECT", "CARD_NOT_READABLE", "AUTHENTICATION_REQUIRED", "NOT_ACCEPTED_TRY_AGAIN", "DECLINED_CODE_05", "CARD_ERROR", "NOT_ACCEPTED", "PROCESSING_ERROR", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RecoverableError {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RecoverableError[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final RecoverableError CHIP_CARD_MUST_BE_INSERTED_FOR_SCA = new RecoverableError("CHIP_CARD_MUST_BE_INSERTED_FOR_SCA", 0);
    public static final RecoverableError CHIP_CARD_INSERTED_INCORRECTLY = new RecoverableError("CHIP_CARD_INSERTED_INCORRECTLY", 1);
    public static final RecoverableError CHECK_MOBILE_DEVICE = new RecoverableError("CHECK_MOBILE_DEVICE", 2);
    public static final RecoverableError CONTACTLESS_LIMIT_EXCEEDED = new RecoverableError("CONTACTLESS_LIMIT_EXCEEDED", 3);
    public static final RecoverableError CARD_BLOCKED = new RecoverableError("CARD_BLOCKED", 4);
    public static final RecoverableError EMPTY_CANDIDATE_LIST = new RecoverableError("EMPTY_CANDIDATE_LIST", 5);
    public static final RecoverableError INSERT_OR_SWIPE_REQUIRED = new RecoverableError("INSERT_OR_SWIPE_REQUIRED", 6);
    public static final RecoverableError MULTIPLE_CARDS_DETECTED = new RecoverableError("MULTIPLE_CARDS_DETECTED", 7);
    public static final RecoverableError DECLINED = new RecoverableError("DECLINED", 8);
    public static final RecoverableError CHIP_CARD_SWIPED = new RecoverableError("CHIP_CARD_SWIPED", 9);
    public static final RecoverableError SWIPE_FAILED = new RecoverableError("SWIPE_FAILED", 10);
    public static final RecoverableError INVALID_CARD = new RecoverableError("INVALID_CARD", 11);
    public static final RecoverableError BAD_TAP_READ = new RecoverableError("BAD_TAP_READ", 12);
    public static final RecoverableError TOO_MANY_TAPS = new RecoverableError("TOO_MANY_TAPS", 13);
    public static final RecoverableError CARD_REMOVED_TOO_SOON = new RecoverableError("CARD_REMOVED_TOO_SOON", 14);
    public static final RecoverableError CARD_NOT_ADMITTED = new RecoverableError("CARD_NOT_ADMITTED", 15);
    public static final RecoverableError INVALID_TRANSACTION = new RecoverableError("INVALID_TRANSACTION", 16);
    public static final RecoverableError INVALID_CARD_NUMBER = new RecoverableError("INVALID_CARD_NUMBER", 17);
    public static final RecoverableError SYSTEM_MALFUNCTION = new RecoverableError("SYSTEM_MALFUNCTION", 18);
    public static final RecoverableError EXPIRED_CARD = new RecoverableError("EXPIRED_CARD", 19);
    public static final RecoverableError TRANSACTION_NOT_PERMITTED = new RecoverableError("TRANSACTION_NOT_PERMITTED", 20);
    public static final RecoverableError INVALID_FUNCTION = new RecoverableError("INVALID_FUNCTION", 21);
    public static final RecoverableError WRONG_CARD = new RecoverableError("WRONG_CARD", 22);
    public static final RecoverableError TERMINAL_NOT_PERMITTED = new RecoverableError("TERMINAL_NOT_PERMITTED", 23);
    public static final RecoverableError ORIGINAL_AMOUNT_INCORRECT = new RecoverableError("ORIGINAL_AMOUNT_INCORRECT", 24);
    public static final RecoverableError CARD_NOT_READABLE = new RecoverableError("CARD_NOT_READABLE", 25);
    public static final RecoverableError AUTHENTICATION_REQUIRED = new RecoverableError("AUTHENTICATION_REQUIRED", 26);
    public static final RecoverableError NOT_ACCEPTED_TRY_AGAIN = new RecoverableError("NOT_ACCEPTED_TRY_AGAIN", 27);
    public static final RecoverableError DECLINED_CODE_05 = new RecoverableError("DECLINED_CODE_05", 28);
    public static final RecoverableError CARD_ERROR = new RecoverableError("CARD_ERROR", 29);
    public static final RecoverableError NOT_ACCEPTED = new RecoverableError("NOT_ACCEPTED", 30);
    public static final RecoverableError PROCESSING_ERROR = new RecoverableError("PROCESSING_ERROR", 31);

    private static final /* synthetic */ RecoverableError[] $values() {
        return new RecoverableError[]{CHIP_CARD_MUST_BE_INSERTED_FOR_SCA, CHIP_CARD_INSERTED_INCORRECTLY, CHECK_MOBILE_DEVICE, CONTACTLESS_LIMIT_EXCEEDED, CARD_BLOCKED, EMPTY_CANDIDATE_LIST, INSERT_OR_SWIPE_REQUIRED, MULTIPLE_CARDS_DETECTED, DECLINED, CHIP_CARD_SWIPED, SWIPE_FAILED, INVALID_CARD, BAD_TAP_READ, TOO_MANY_TAPS, CARD_REMOVED_TOO_SOON, CARD_NOT_ADMITTED, INVALID_TRANSACTION, INVALID_CARD_NUMBER, SYSTEM_MALFUNCTION, EXPIRED_CARD, TRANSACTION_NOT_PERMITTED, INVALID_FUNCTION, WRONG_CARD, TERMINAL_NOT_PERMITTED, ORIGINAL_AMOUNT_INCORRECT, CARD_NOT_READABLE, AUTHENTICATION_REQUIRED, NOT_ACCEPTED_TRY_AGAIN, DECLINED_CODE_05, CARD_ERROR, NOT_ACCEPTED, PROCESSING_ERROR};
    }

    public static EnumEntries<RecoverableError> getEntries() {
        return $ENTRIES;
    }

    public static RecoverableError valueOf(String str) {
        return (RecoverableError) Enum.valueOf(RecoverableError.class, str);
    }

    public static RecoverableError[] values() {
        return (RecoverableError[]) $VALUES.clone();
    }

    private RecoverableError(String str, int i) {
    }

    static {
        RecoverableError[] recoverableErrorArr$values = $values();
        $VALUES = recoverableErrorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(recoverableErrorArr$values);
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: compiled from: RecoverableError.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;", "", "()V", "fromIntermediateTransactionError", "Lcom/stripe/hardware/paymentcollection/RecoverableError;", "error", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "fromMagStripeReadFailure", "failureType", "Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;", "fromTransactionResult", "result", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: RecoverableError.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;
            public static final /* synthetic */ int[] $EnumSwitchMapping$2;

            static {
                int[] iArr = new int[MagStripeReadFailure.FailureType.values().length];
                try {
                    iArr[MagStripeReadFailure.FailureType.BAD_SWIPE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[MagStripeReadFailure.FailureType.MSR_FAILURE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[IntermediateTransactionError.values().length];
                try {
                    iArr2[IntermediateTransactionError.CONTACTLESS_LIMIT_EXCEEDED.ordinal()] = 1;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr2[IntermediateTransactionError.CHECK_MOBILE_DEVICE.ordinal()] = 2;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr2[IntermediateTransactionError.MULTIPLE_CARDS_DETECTED.ordinal()] = 3;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[IntermediateTransactionError.BAD_TAP_READ.ordinal()] = 4;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[IntermediateTransactionError.TOO_MANY_TAPS.ordinal()] = 5;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr2[IntermediateTransactionError.CARD_NOT_ADMITTED.ordinal()] = 6;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr2[IntermediateTransactionError.INVALID_TRANSACTION.ordinal()] = 7;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr2[IntermediateTransactionError.INVALID_CARD_NUMBER.ordinal()] = 8;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr2[IntermediateTransactionError.SYSTEM_MALFUNCTION.ordinal()] = 9;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr2[IntermediateTransactionError.EXPIRED_CARD.ordinal()] = 10;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr2[IntermediateTransactionError.TRANSACTION_NOT_PERMITTED.ordinal()] = 11;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr2[IntermediateTransactionError.INVALID_FUNCTION.ordinal()] = 12;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr2[IntermediateTransactionError.INVALID_CARD.ordinal()] = 13;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr2[IntermediateTransactionError.WRONG_CARD.ordinal()] = 14;
                } catch (NoSuchFieldError unused16) {
                }
                try {
                    iArr2[IntermediateTransactionError.TERMINAL_NOT_PERMITTED.ordinal()] = 15;
                } catch (NoSuchFieldError unused17) {
                }
                try {
                    iArr2[IntermediateTransactionError.ORIGINAL_AMOUNT_INCORRECT.ordinal()] = 16;
                } catch (NoSuchFieldError unused18) {
                }
                try {
                    iArr2[IntermediateTransactionError.CARD_NOT_READABLE.ordinal()] = 17;
                } catch (NoSuchFieldError unused19) {
                }
                try {
                    iArr2[IntermediateTransactionError.AUTHENTICATION_REQUIRED.ordinal()] = 18;
                } catch (NoSuchFieldError unused20) {
                }
                try {
                    iArr2[IntermediateTransactionError.NOT_ACCEPTED_TRY_AGAIN.ordinal()] = 19;
                } catch (NoSuchFieldError unused21) {
                }
                try {
                    iArr2[IntermediateTransactionError.DECLINED_CODE_05.ordinal()] = 20;
                } catch (NoSuchFieldError unused22) {
                }
                try {
                    iArr2[IntermediateTransactionError.CARD_ERROR.ordinal()] = 21;
                } catch (NoSuchFieldError unused23) {
                }
                try {
                    iArr2[IntermediateTransactionError.NOT_ACCEPTED.ordinal()] = 22;
                } catch (NoSuchFieldError unused24) {
                }
                try {
                    iArr2[IntermediateTransactionError.PROCESSING_ERROR.ordinal()] = 23;
                } catch (NoSuchFieldError unused25) {
                }
                $EnumSwitchMapping$1 = iArr2;
                int[] iArr3 = new int[TransactionResult.Result.values().length];
                try {
                    iArr3[TransactionResult.Result.ICC_CARD_REMOVED.ordinal()] = 1;
                } catch (NoSuchFieldError unused26) {
                }
                try {
                    iArr3[TransactionResult.Result.CHECK_MOBILE_DEVICE.ordinal()] = 2;
                } catch (NoSuchFieldError unused27) {
                }
                try {
                    iArr3[TransactionResult.Result.CONTACTLESS_LIMIT_EXCEEDED.ordinal()] = 3;
                } catch (NoSuchFieldError unused28) {
                }
                try {
                    iArr3[TransactionResult.Result.CARD_BLOCKED.ordinal()] = 4;
                } catch (NoSuchFieldError unused29) {
                }
                try {
                    iArr3[TransactionResult.Result.EMPTY_CANDIDATE_LIST.ordinal()] = 5;
                } catch (NoSuchFieldError unused30) {
                }
                try {
                    iArr3[TransactionResult.Result.INSERT_OR_SWIPE_REQUIRED.ordinal()] = 6;
                } catch (NoSuchFieldError unused31) {
                }
                try {
                    iArr3[TransactionResult.Result.MULTIPLE_CARDS_DETECTED.ordinal()] = 7;
                } catch (NoSuchFieldError unused32) {
                }
                try {
                    iArr3[TransactionResult.Result.DECLINED.ordinal()] = 8;
                } catch (NoSuchFieldError unused33) {
                }
                try {
                    iArr3[TransactionResult.Result.MOBILE_WALLET_TOO_MANY_TAPS.ordinal()] = 9;
                } catch (NoSuchFieldError unused34) {
                }
                try {
                    iArr3[TransactionResult.Result.APPROVED.ordinal()] = 10;
                } catch (NoSuchFieldError unused35) {
                }
                try {
                    iArr3[TransactionResult.Result.TERMINATED.ordinal()] = 11;
                } catch (NoSuchFieldError unused36) {
                }
                try {
                    iArr3[TransactionResult.Result.TIMEOUT.ordinal()] = 12;
                } catch (NoSuchFieldError unused37) {
                }
                try {
                    iArr3[TransactionResult.Result.CANCELED.ordinal()] = 13;
                } catch (NoSuchFieldError unused38) {
                }
                try {
                    iArr3[TransactionResult.Result.DEVICE_FAILURE.ordinal()] = 14;
                } catch (NoSuchFieldError unused39) {
                }
                try {
                    iArr3[TransactionResult.Result.CARD_STILL_INSERTED.ordinal()] = 15;
                } catch (NoSuchFieldError unused40) {
                }
                $EnumSwitchMapping$2 = iArr3;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RecoverableError fromMagStripeReadFailure(MagStripeReadFailure.FailureType failureType) {
            Intrinsics.checkNotNullParameter(failureType, "failureType");
            int i = WhenMappings.$EnumSwitchMapping$0[failureType.ordinal()];
            if (i == 1) {
                return RecoverableError.SWIPE_FAILED;
            }
            if (i == 2) {
                return RecoverableError.INVALID_CARD;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final RecoverableError fromIntermediateTransactionError(IntermediateTransactionError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            switch (WhenMappings.$EnumSwitchMapping$1[error.ordinal()]) {
                case 1:
                    return RecoverableError.CONTACTLESS_LIMIT_EXCEEDED;
                case 2:
                    return RecoverableError.CHECK_MOBILE_DEVICE;
                case 3:
                    return RecoverableError.MULTIPLE_CARDS_DETECTED;
                case 4:
                    return RecoverableError.BAD_TAP_READ;
                case 5:
                    return RecoverableError.TOO_MANY_TAPS;
                case 6:
                    return RecoverableError.CARD_NOT_ADMITTED;
                case 7:
                    return RecoverableError.INVALID_TRANSACTION;
                case 8:
                    return RecoverableError.INVALID_CARD_NUMBER;
                case 9:
                    return RecoverableError.SYSTEM_MALFUNCTION;
                case 10:
                    return RecoverableError.EXPIRED_CARD;
                case 11:
                    return RecoverableError.TRANSACTION_NOT_PERMITTED;
                case 12:
                    return RecoverableError.INVALID_FUNCTION;
                case 13:
                    return RecoverableError.INVALID_CARD;
                case 14:
                    return RecoverableError.WRONG_CARD;
                case 15:
                    return RecoverableError.TERMINAL_NOT_PERMITTED;
                case 16:
                    return RecoverableError.ORIGINAL_AMOUNT_INCORRECT;
                case 17:
                    return RecoverableError.CARD_NOT_READABLE;
                case 18:
                    return RecoverableError.AUTHENTICATION_REQUIRED;
                case 19:
                    return RecoverableError.NOT_ACCEPTED_TRY_AGAIN;
                case 20:
                    return RecoverableError.DECLINED_CODE_05;
                case 21:
                    return RecoverableError.CARD_ERROR;
                case 22:
                    return RecoverableError.NOT_ACCEPTED;
                case 23:
                    return RecoverableError.PROCESSING_ERROR;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final RecoverableError fromTransactionResult(TransactionResult.Result result) {
            Intrinsics.checkNotNullParameter(result, "result");
            switch (WhenMappings.$EnumSwitchMapping$2[result.ordinal()]) {
                case 1:
                    return RecoverableError.CARD_REMOVED_TOO_SOON;
                case 2:
                    return RecoverableError.CHECK_MOBILE_DEVICE;
                case 3:
                    return RecoverableError.CONTACTLESS_LIMIT_EXCEEDED;
                case 4:
                    return RecoverableError.CARD_BLOCKED;
                case 5:
                    return RecoverableError.EMPTY_CANDIDATE_LIST;
                case 6:
                    return RecoverableError.INSERT_OR_SWIPE_REQUIRED;
                case 7:
                    return RecoverableError.MULTIPLE_CARDS_DETECTED;
                case 8:
                    return RecoverableError.DECLINED;
                case 9:
                    return RecoverableError.TOO_MANY_TAPS;
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    return null;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }
}
