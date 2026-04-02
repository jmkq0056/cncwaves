package com.stripe.transaction.payment;

import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.model.sdk.CardEntryMethod;
import com.stripe.proto.model.sdk.CardPaymentMethod;
import com.stripe.proto.model.sdk.CreditCardBrand;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MagstripePayment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u000eBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¨\u0006\u000f"}, d2 = {"Lcom/stripe/transaction/payment/MagstripePayment;", "Lcom/stripe/transaction/payment/Payment;", "encryptedTrack2", "", "ksn", "maskedPan", "expiryDate", "fallbackReason", "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", "epb", "epbKsn", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Ljava/lang/String;Ljava/lang/String;)V", "cardBrand", "Lcom/stripe/proto/model/sdk/CreditCardBrand;", "FallbackReason", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MagstripePayment extends Payment {

    /* JADX INFO: compiled from: MagstripePayment.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FallbackReason.values().length];
            try {
                iArr[FallbackReason.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FallbackReason.CHIP_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FallbackReason.EMPTY_CANDIDATE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ MagstripePayment(String str, String str2, String str3, String str4, FallbackReason fallbackReason, String str5, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, fallbackReason, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: MagstripePayment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", "", "(Ljava/lang/String;I)V", "NONE", "CHIP_ERROR", "EMPTY_CANDIDATE_LIST", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class FallbackReason {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FallbackReason[] $VALUES;
        public static final FallbackReason NONE = new FallbackReason("NONE", 0);
        public static final FallbackReason CHIP_ERROR = new FallbackReason("CHIP_ERROR", 1);
        public static final FallbackReason EMPTY_CANDIDATE_LIST = new FallbackReason("EMPTY_CANDIDATE_LIST", 2);

        private static final /* synthetic */ FallbackReason[] $values() {
            return new FallbackReason[]{NONE, CHIP_ERROR, EMPTY_CANDIDATE_LIST};
        }

        public static EnumEntries<FallbackReason> getEntries() {
            return $ENTRIES;
        }

        public static FallbackReason valueOf(String str) {
            return (FallbackReason) Enum.valueOf(FallbackReason.class, str);
        }

        public static FallbackReason[] values() {
            return (FallbackReason[]) $VALUES.clone();
        }

        private FallbackReason(String str, int i) {
        }

        static {
            FallbackReason[] fallbackReasonArr$values = $values();
            $VALUES = fallbackReasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(fallbackReasonArr$values);
        }
    }

    public MagstripePayment(String encryptedTrack2, String ksn, String maskedPan, String expiryDate, FallbackReason fallbackReason, String str, String str2) {
        String str3;
        String str4;
        PaymentMethod paymentMethodCopy$default;
        CardEntryMethod cardEntryMethod;
        Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        Intrinsics.checkNotNullParameter(fallbackReason, "fallbackReason");
        RequestedPaymentMethod restSource = getRestSource();
        if (fallbackReason == FallbackReason.NONE) {
            str3 = "magnetic_stripe_track2";
        } else {
            str3 = "magnetic_stripe_fallback";
        }
        int i = WhenMappings.$EnumSwitchMapping$0[fallbackReason.ordinal()];
        if (i == 1) {
            str4 = "no_chip";
        } else if (i == 2) {
            str4 = "chip_error";
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            str4 = "empty_candidate_list";
        }
        setRestSource(RequestedPaymentMethod.copy$default(restSource, "card_present", new RequestedPaymentMethod.RequestedCardPresent("encrypted_track_data", str3, str4, encryptedTrack2, null, null, str, str2, null, null, null, ksn, null, null, null, null, 63280, null), null, null, null, null, null, WinError.ERROR_INVALID_LEVEL, null));
        PaymentMethod sdkSource = getSdkSource();
        if (sdkSource != null) {
            CreditCardBrand creditCardBrandCardBrand = cardBrand(maskedPan);
            if (fallbackReason == FallbackReason.NONE) {
                cardEntryMethod = CardEntryMethod.SWIPED;
            } else {
                cardEntryMethod = CardEntryMethod.FSWIPE;
            }
            paymentMethodCopy$default = PaymentMethod.copy$default(sdkSource, new CardPaymentMethod(maskedPan, expiryDate, creditCardBrandCardBrand, cardEntryMethod, null, 16, null), null, null, null, 14, null);
        } else {
            paymentMethodCopy$default = null;
        }
        setSdkSource(paymentMethodCopy$default);
    }

    private final CreditCardBrand cardBrand(String maskedPan) {
        if (maskedPan.length() < 2) {
            return CreditCardBrand.INVALID_CREDIT_CARD_BRAND;
        }
        try {
            String strSubstring = maskedPan.substring(0, 2);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            int i = Integer.parseInt(strSubstring);
            if (40 <= i && i < 50) {
                return CreditCardBrand.VISA;
            }
            if (50 <= i && i < 60) {
                return CreditCardBrand.MASTERCARD;
            }
            if (22 <= i && i < 28) {
                return CreditCardBrand.MASTERCARD;
            }
            if (i == 67) {
                return CreditCardBrand.MASTERCARD;
            }
            if (i == 35) {
                return CreditCardBrand.JCB;
            }
            if (ArraysKt.contains(new Integer[]{30, 36, 38, 39}, Integer.valueOf(i))) {
                return CreditCardBrand.DINERS;
            }
            if (ArraysKt.contains(new Integer[]{60, 64, 65}, Integer.valueOf(i))) {
                return CreditCardBrand.DISCOVER;
            }
            if (i == 62) {
                return CreditCardBrand.CUP;
            }
            return CreditCardBrand.UNKNOWN_CREDIT;
        } catch (NumberFormatException unused) {
            return CreditCardBrand.INVALID_CREDIT_CARD_BRAND;
        }
    }
}
