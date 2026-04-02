package com.stripe.core.bbpos.hardware;

import com.stripe.bbpos.sdk.CardData;
import com.stripe.bbpos.sdk.TransactionResult;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadFailure;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposTranslation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u00020\b*\u00020\t¨\u0006\n"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposTranslation;", "", "()V", "extractMagStripeReadResult", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "toTransactionResult", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposTranslation {
    public static final BbposTranslation INSTANCE = new BbposTranslation();

    /* JADX INFO: compiled from: BbposTranslation.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionResult.Type.values().length];
            try {
                iArr[TransactionResult.Type.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionResult.Type.TERMINATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionResult.Type.DECLINED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransactionResult.Type.CANCELED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransactionResult.Type.TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransactionResult.Type.CAPK_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransactionResult.Type.CARD_BLOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TransactionResult.Type.DEVICE_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TransactionResult.Type.ICC_CARD_REMOVED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[TransactionResult.Type.NOT_ICC.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[TransactionResult.Type.CARD_SCHEME_NOT_MATCHED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[TransactionResult.Type.NO_EMV_APPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[TransactionResult.Type.CANCELED_OR_TIMEOUT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[TransactionResult.Type.APPLICATION_BLOCKED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[TransactionResult.Type.CARD_NOT_SUPPORTED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[TransactionResult.Type.CONDITION_NOT_SATISFIED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[TransactionResult.Type.INVALID_ICC_DATA.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[TransactionResult.Type.MISSING_MANDATORY_DATA.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[TransactionResult.Type.SELECT_APP_FAIL.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[TransactionResult.Type.TRANSACTION_RESULT_TYPE_UNKNOWN.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private BbposTranslation() {
    }

    public final MagStripeReadResult extractMagStripeReadResult(CardData cardData) {
        Intrinsics.checkNotNullParameter(cardData, "cardData");
        String str = cardData.encTrack2;
        String str2 = cardData.ksn;
        String str3 = cardData.maskedPan;
        String str4 = cardData.expiryDate;
        String str5 = cardData.serviceCode;
        if (str != null && str2 != null && str3 != null && str4 != null && str5 != null) {
            if (str.length() == 0 || str2.length() == 0) {
                return new MagStripeReadFailure(MagStripeReadFailure.FailureType.BAD_SWIPE);
            }
            return new MagStripeReadSuccess(str, str2, str3, str4, str5, null, null, 96, null);
        }
        return new MagStripeReadFailure(MagStripeReadFailure.FailureType.MSR_FAILURE);
    }

    public final TransactionResult.Result toTransactionResult(TransactionResult.Type type) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
                return TransactionResult.Result.APPROVED;
            case 2:
                return TransactionResult.Result.TERMINATED;
            case 3:
                return TransactionResult.Result.DECLINED;
            case 4:
                return TransactionResult.Result.CANCELED;
            case 5:
                return TransactionResult.Result.TIMEOUT;
            case 6:
                return TransactionResult.Result.DEVICE_FAILURE;
            case 7:
                return TransactionResult.Result.CARD_BLOCKED;
            case 8:
                return TransactionResult.Result.DEVICE_FAILURE;
            case 9:
                return TransactionResult.Result.ICC_CARD_REMOVED;
            case 10:
                return TransactionResult.Result.ICC_CARD_REMOVED;
            case 11:
                return TransactionResult.Result.DEVICE_FAILURE;
            case 12:
                return TransactionResult.Result.EMPTY_CANDIDATE_LIST;
            case 13:
                return TransactionResult.Result.DECLINED;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                return TransactionResult.Result.DEVICE_FAILURE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
