package com.stripe.stripeterminal.internal.common.makers;

import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.stripeterminal.internal.models.SwipeReason;
import com.stripe.transaction.payment.MagstripePayment;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodDataMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006J@\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018¨\u0006\u0019"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;", "", "()V", "newEmvData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "tlv", "", "newEncryptedEmvData", "encryptedTrack2", "cryptogram", "newEncryptedEmvDataWithTtpaPin", "clientPublicKey", "serverPublicKeyHash", "installationUuid", "pinBlock", "newIpData", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "paymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "newMsrData", "result", "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "fallbackReason", "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodDataMaker {
    public static final PaymentMethodDataMaker INSTANCE = new PaymentMethodDataMaker();

    /* JADX INFO: compiled from: PaymentMethodDataMaker.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MagstripePayment.FallbackReason.values().length];
            try {
                iArr[MagstripePayment.FallbackReason.CHIP_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MagstripePayment.FallbackReason.EMPTY_CANDIDATE_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PaymentMethodDataMaker() {
    }

    public final PaymentMethodData newEmvData(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        return new PaymentMethodData(tlv, null, null, null, null, null, null, null, null, null, WinError.ERROR_NOTIFY_ENUM_DIR, null);
    }

    public final PaymentMethodData newEncryptedEmvData(String tlv, String encryptedTrack2, String cryptogram) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
        return new PaymentMethodData(tlv, null, null, encryptedTrack2, cryptogram, null, null, null, null, null, WinError.ERROR_NOACCESS, null);
    }

    public final PaymentMethodData newEncryptedEmvDataWithTtpaPin(String tlv, String encryptedTrack2, String cryptogram, String clientPublicKey, String serverPublicKeyHash, String installationUuid, String pinBlock) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
        Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
        Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
        Intrinsics.checkNotNullParameter(installationUuid, "installationUuid");
        Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
        return new PaymentMethodData(tlv, null, null, encryptedTrack2, cryptogram, null, null, null, null, new RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType(RequestedPaymentMethod.RequestedCardPresent.SchemeType.ecka_ttpa, new RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka(clientPublicKey, serverPublicKeyHash, installationUuid, null, 8, null), pinBlock, null, 8, null), 486, null);
    }

    public final PaymentMethodData newMsrData(MagStripeReadSuccess result, MagstripePayment.FallbackReason fallbackReason) {
        SwipeReason swipeReason;
        Intrinsics.checkNotNullParameter(result, "result");
        int i = fallbackReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[fallbackReason.ordinal()];
        if (i != 1 && i == 2) {
            swipeReason = SwipeReason.EMPTY_CANDIDATE_LIST;
        } else {
            swipeReason = SwipeReason.CHIP_ERROR;
        }
        return new PaymentMethodData(null, result, swipeReason, null, null, null, null, null, null, null, 1017, null);
    }

    public final PaymentMethodData newIpData(PaymentMethod paymentMethod, PaymentIntentExpandedMethod paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        if (paymentMethod.non_card_payment != null) {
            return new PaymentMethodData(null, null, null, null, null, null, null, paymentMethod, null, null, 895, null);
        }
        return new PaymentMethodData(null, null, null, null, null, paymentMethod, paymentIntent, null, null, null, 927, null);
    }
}
