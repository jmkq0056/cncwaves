package com.stripe.paymentcollection;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: DefaultPaymentCollectionTimeoutSupplier.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J'\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\t\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\n"}, d2 = {"Lcom/stripe/paymentcollection/DefaultPaymentCollectionTimeoutSupplier;", "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;", "()V", "get", "Lkotlin/time/Duration;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "get-3UGz1UU", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultPaymentCollectionTimeoutSupplier implements PaymentCollectionTimeoutSupplier {

    /* JADX INFO: compiled from: DefaultPaymentCollectionTimeoutSupplier.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PaymentCollectionState.values().length];
            try {
                iArr[PaymentCollectionState.ONLINE_AUTHORIZATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PaymentCollectionState.ONLINE_CONFIRMATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PaymentCollectionState.NON_CARD_PAYMENT_METHOD_CONFIRMATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PaymentCollectionState.PASSTHROUGH_CONFIRMATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PaymentCollectionState.RECOVERABLE_ERROR_SUMMARY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PaymentCollectionState.PROCESSING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PaymentCollectionState.CANCEL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PaymentCollectionState.INTERSTITIAL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PaymentCollectionState.EMPTY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[PaymentCollectionState.TIPPING_SELECTION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[PaymentCollectionState.DISPLAY_CART_PRE_COLLECTION.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[PaymentCollectionState.DISPLAY_CART_POST_COLLECTION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[PaymentCollectionState.COLLECTION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[PaymentCollectionState.APPLICATION_SELECTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[PaymentCollectionState.LANGUAGE_SELECTION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[PaymentCollectionState.ACCOUNT_SELECTION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[PaymentCollectionState.PIN_ENTRY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[PaymentCollectionState.MAGSTRIPE_PIN_ENTRY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[PaymentCollectionState.ONLINE_AUTHORIZATION_MAG_STRIPE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[PaymentCollectionState.REMOVE_CARD.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[PaymentCollectionState.COLLECTION_COMPLETE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[PaymentCollectionState.TIMEOUT.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[PaymentCollectionState.FINISHED.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[PaymentCollectionState.MANUAL_ENTRY.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[PaymentCollectionState.COLLECT_PAYMENT_METHOD_API_ERROR.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[PaymentCollectionState.DCC_SELECTION.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[PaymentCollectionState.NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionTimeoutSupplier
    /* JADX INFO: renamed from: get-3UGz1UU, reason: not valid java name */
    public Duration mo494get3UGz1UU(PaymentCollectionState state, PaymentCollectionData data) {
        long duration;
        Intrinsics.checkNotNullParameter(state, "state");
        switch (WhenMappings.$EnumSwitchMapping$0[state.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                Duration.Companion companion = Duration.INSTANCE;
                return Duration.m2177boximpl(DurationKt.toDuration(60, DurationUnit.SECONDS));
            case 5:
                Duration.Companion companion2 = Duration.INSTANCE;
                return Duration.m2177boximpl(DurationKt.toDuration(30, DurationUnit.SECONDS));
            case 6:
            case 7:
                Duration.Companion companion3 = Duration.INSTANCE;
                return Duration.m2177boximpl(DurationKt.toDuration(30, DurationUnit.SECONDS));
            case 8:
                if ((data != null ? data.getCancelReason() : null) == CancelReason.MERCHANT_CANCELLED) {
                    Duration.Companion companion4 = Duration.INSTANCE;
                    duration = DurationKt.toDuration(5, DurationUnit.SECONDS);
                } else {
                    Duration.Companion companion5 = Duration.INSTANCE;
                    duration = DurationKt.toDuration(30, DurationUnit.SECONDS);
                }
                return Duration.m2177boximpl(duration);
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
                return null;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
