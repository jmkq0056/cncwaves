package com.stripe.jvmcore.transaction;

import com.stripe.currency.Amount;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.model.rest.Card;
import com.stripe.proto.model.rest.CardPresent;
import com.stripe.proto.model.rest.Charge;
import com.stripe.proto.model.rest.Charges;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentMethod;
import com.stripe.proto.model.rest.PaymentMethodDetails;
import com.stripe.proto.model.rest.Refund;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.rest.StatusCode;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.ExtendedActionConstants;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Extensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u0007J\u0018\u0010\t\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u000bH\u0002J\u0018\u0010\f\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u000bH\u0002J\u001d\u0010\r\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\b0\u000bH\u0007¢\u0006\u0002\b\u000fJ\n\u0010\u0010\u001a\u00020\n*\u00020\u0011J\u001d\u0010\u0012\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\b\u0013J\u001d\u0010\u0012\u001a\u00020\n*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\b\u0014J-\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\b\u001aJ\u001d\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\b\u001cJ%\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\b\u001dJ%\u0010\u0015\u001a\u00020\u0016*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0017\u001a\u00020\nH\u0007¢\u0006\u0002\b\u000fJ\u0014\u0010\u001e\u001a\u00020\u0016*\u0004\u0018\u00010\u001f2\u0006\u0010\u0017\u001a\u00020\nJ\u0014\u0010\u001e\u001a\u00020\u0016*\u00020\b2\u0006\u0010\u0017\u001a\u00020\nH\u0002J\u000e\u0010 \u001a\u00020\u0016*\u0004\u0018\u00010\u001fH\u0002J\f\u0010!\u001a\u00020\u0004*\u00020\u0004H\u0002J\u001e\u0010\"\u001a\u00020\u0016*\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010#\u001a\u00020\nH\u0002J\u0014\u0010$\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/jvmcore/transaction/Extensions;", "", "()V", "TAG", "", "alreadyCompletedPaymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "isDeclinedCharge", "", "Lcom/stripe/jvmcore/restclient/RestResponse$Success;", "isPendingNextAction", "isSetupError", "Lcom/stripe/proto/model/rest/SetupIntent;", "toChargeAttemptForSetupIntent", "isSuccess", "Lcom/stripe/proto/model/rest/Refund;", "requiresExtendedAction", "requiresExtendedActionForPaymentIntent", "requiresExtendedActionForSetupIntent", "toChargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "allowExtendedTransactions", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "toChargeAttemptForPaymentIntent", "Lcom/stripe/proto/model/rest/PaymentMethod;", "toChargeAttemptForPaymentMethod", "toChargeAttemptForRefund", "toDeclinedAttempt", "Lcom/stripe/proto/model/rest/ErrorResponse;", "toDeclinedAttemptForStandardAttempt", "toProperBrand", "toSuccessfulCharge", "hasAlreadySucceeded", "toSuccessfulRefund", "jvm-transaction-extensions"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Extensions {
    public static final Extensions INSTANCE = new Extensions();
    private static final String TAG = "transaction/Extensions";

    /* JADX INFO: compiled from: Extensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StatusCode.values().length];
            try {
                iArr[StatusCode.HTTP_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StatusCode.HTTP_ERROR_UNKNOWN_STATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StatusCode.BAD_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private Extensions() {
    }

    public final boolean requiresExtendedActionForPaymentIntent(RestResponse<PaymentIntent, ErrorWrapper> restResponse) {
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        if (!(restResponse instanceof RestResponse.ServerError)) {
            return false;
        }
        ExtendedActionConstants extendedActionConstants = ExtendedActionConstants.INSTANCE;
        ErrorResponse errorResponse = ((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse()).error;
        return extendedActionConstants.isExtendedActionError(errorResponse != null ? errorResponse.code : null);
    }

    public final boolean requiresExtendedActionForSetupIntent(RestResponse<SetupIntent, ErrorWrapper> restResponse) {
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        if (!(restResponse instanceof RestResponse.ServerError)) {
            return false;
        }
        ExtendedActionConstants extendedActionConstants = ExtendedActionConstants.INSTANCE;
        ErrorResponse errorResponse = ((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse()).error;
        return extendedActionConstants.isExtendedActionError(errorResponse != null ? errorResponse.code : null);
    }

    private final boolean isDeclinedCharge(RestResponse.Success<PaymentIntent, ErrorWrapper> success) {
        return ((PaymentIntent) success.getResponse()).last_payment_error != null;
    }

    private final boolean isPendingNextAction(RestResponse.Success<PaymentIntent, ErrorWrapper> success) {
        return ((PaymentIntent) success.getResponse()).next_action != null;
    }

    public final boolean toChargeAttemptForSetupIntent(RestResponse.Success<SetupIntent, ErrorWrapper> success) {
        Intrinsics.checkNotNullParameter(success, "<this>");
        return ((SetupIntent) success.getResponse()).last_setup_error != null;
    }

    public final ChargeAttempt toChargeAttemptForPaymentIntent(RestResponse<PaymentIntent, ErrorWrapper> restResponse, boolean z, LogWriter logWriter) {
        ChargeAttempt successfulCharge;
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        if (restResponse instanceof RestResponse.Success) {
            RestResponse.Success<PaymentIntent, ErrorWrapper> success = (RestResponse.Success) restResponse;
            if (isDeclinedCharge(success)) {
                return toDeclinedAttempt(new ErrorWrapper(((PaymentIntent) success.getResponse()).last_payment_error, null, null, 6, null), z);
            }
            if (isPendingNextAction(success)) {
                return ChargeAttempt.PendingNextActionAttempt.INSTANCE;
            }
            return toSuccessfulCharge$default(this, (PaymentIntent) success.getResponse(), logWriter, false, 2, null);
        }
        if (!(restResponse instanceof RestResponse.ServerError)) {
            if (restResponse instanceof RestResponse.ParseError) {
                return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
            }
            throw new NoWhenBranchMatchedException();
        }
        int i = WhenMappings.$EnumSwitchMapping$0[restResponse.getStatusCode().ordinal()];
        if (i == 1 || i == 2) {
            return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
        }
        if (i == 3) {
            PaymentIntent paymentIntentAlreadyCompletedPaymentIntent = alreadyCompletedPaymentIntent(restResponse);
            return (paymentIntentAlreadyCompletedPaymentIntent == null || (successfulCharge = toSuccessfulCharge(paymentIntentAlreadyCompletedPaymentIntent, logWriter, true)) == null) ? toDeclinedAttempt((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse(), z) : successfulCharge;
        }
        return toDeclinedAttempt((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse(), z);
    }

    public final PaymentIntent alreadyCompletedPaymentIntent(RestResponse<PaymentIntent, ErrorWrapper> restResponse) {
        ErrorWrapper errorWrapper;
        ErrorResponse errorResponse;
        PaymentIntent paymentIntent;
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        RestResponse.ServerError serverError = restResponse instanceof RestResponse.ServerError ? (RestResponse.ServerError) restResponse : null;
        if (serverError != null) {
            if (serverError.getStatusCode() != StatusCode.BAD_REQUEST) {
                serverError = null;
            }
            if (serverError != null) {
                ErrorResponse errorResponse2 = ((ErrorWrapper) serverError.getResponse()).error;
                if (!Intrinsics.areEqual(errorResponse2 != null ? errorResponse2.code : null, "payment_intent_unexpected_state")) {
                    serverError = null;
                }
                if (serverError != null) {
                    Set of = SetsKt.setOf((Object[]) new String[]{"succeeded", "requires_capture"});
                    ErrorResponse errorResponse3 = ((ErrorWrapper) serverError.getResponse()).error;
                    if (!CollectionsKt.contains(of, (errorResponse3 == null || (paymentIntent = errorResponse3.payment_intent) == null) ? null : paymentIntent.status)) {
                        serverError = null;
                    }
                    if (serverError != null && (errorWrapper = (ErrorWrapper) serverError.getResponse()) != null && (errorResponse = errorWrapper.error) != null) {
                        return errorResponse.payment_intent;
                    }
                }
            }
        }
        return null;
    }

    public final ChargeAttempt toChargeAttemptForSetupIntent(RestResponse<SetupIntent, ErrorWrapper> restResponse, boolean z) {
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        if (restResponse instanceof RestResponse.Success) {
            RestResponse.Success<SetupIntent, ErrorWrapper> success = (RestResponse.Success) restResponse;
            if (toChargeAttemptForSetupIntent(success)) {
                return toDeclinedAttempt(new ErrorWrapper(null, ((SetupIntent) success.getResponse()).last_setup_error, null, 5, null), z);
            }
            return ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE;
        }
        if (restResponse instanceof RestResponse.ServerError) {
            int i = WhenMappings.$EnumSwitchMapping$0[restResponse.getStatusCode().ordinal()];
            if (i == 1) {
                return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
            }
            if (i == 2) {
                return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
            }
            return toDeclinedAttempt((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse(), z);
        }
        if (restResponse instanceof RestResponse.ParseError) {
            return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
        }
        throw new NoWhenBranchMatchedException();
    }

    static /* synthetic */ ChargeAttempt toSuccessfulCharge$default(Extensions extensions, PaymentIntent paymentIntent, LogWriter logWriter, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return extensions.toSuccessfulCharge(paymentIntent, logWriter, z);
    }

    private final ChargeAttempt toSuccessfulCharge(PaymentIntent paymentIntent, LogWriter logWriter, boolean z) {
        Amount amount;
        Amount amount2;
        String str;
        String str2;
        String properBrand;
        String str3;
        String str4;
        String properBrand2;
        Amount amount3;
        String str5;
        String str6;
        String str7;
        String properBrand3;
        PaymentIntent.AmountDetails.Surcharge surcharge;
        Long l;
        List<Charge> list;
        Charge charge;
        Charges charges = paymentIntent.charges;
        PaymentMethodDetails paymentMethodDetails = (charges == null || (list = charges.data_) == null || (charge = (Charge) CollectionsKt.firstOrNull((List) list)) == null) ? null : charge.payment_method_details;
        Long l2 = paymentIntent.amount;
        long jLongValue = l2 != null ? l2.longValue() : 0L;
        String str8 = paymentIntent.currency;
        if (str8 == null) {
            str8 = "";
        }
        Amount amount4 = new Amount(jLongValue, str8);
        PaymentIntent.AmountDetails amountDetails = paymentIntent.amount_details;
        if (amountDetails == null || (surcharge = amountDetails.surcharge) == null || (l = surcharge.amount) == null) {
            amount = null;
        } else {
            long jLongValue2 = l.longValue();
            String str9 = paymentIntent.currency;
            if (str9 == null) {
                str9 = "";
            }
            amount = new Amount(jLongValue2, str9);
        }
        Long l3 = paymentIntent.amount_requested;
        if (l3 != null) {
            long jLongValue3 = l3.longValue();
            String str10 = paymentIntent.currency;
            if (str10 == null) {
                str10 = "";
            }
            amount2 = new Amount(jLongValue3, str10);
        } else {
            amount2 = null;
        }
        if ((paymentMethodDetails != null ? paymentMethodDetails.card_present : null) != null) {
            CardPresent cardPresent = paymentMethodDetails.card_present;
            String str11 = (cardPresent == null || (str7 = cardPresent.brand) == null || (properBrand3 = toProperBrand(str7)) == null) ? "" : properBrand3;
            CardPresent cardPresent2 = paymentMethodDetails.card_present;
            if (cardPresent2 == null || (str6 = cardPresent2.last4) == null) {
                amount3 = amount;
                str5 = "";
            } else {
                amount3 = amount;
                str5 = str6;
            }
            return new ChargeAttempt.CompletedAttempt.SuccessfulCharge(str11, str5, amount4, amount3, amount2);
        }
        Amount amount5 = amount;
        if ((paymentMethodDetails != null ? paymentMethodDetails.interac_present : null) != null) {
            CardPresent cardPresent3 = paymentMethodDetails.interac_present;
            String str12 = (cardPresent3 == null || (str4 = cardPresent3.brand) == null || (properBrand2 = toProperBrand(str4)) == null) ? "" : properBrand2;
            CardPresent cardPresent4 = paymentMethodDetails.interac_present;
            return new ChargeAttempt.CompletedAttempt.SuccessfulCharge(str12, (cardPresent4 == null || (str3 = cardPresent4.last4) == null) ? "" : str3, amount4, amount5, amount2);
        }
        if ((paymentMethodDetails != null ? paymentMethodDetails.card : null) != null) {
            Card card = paymentMethodDetails.card;
            String str13 = (card == null || (str2 = card.brand) == null || (properBrand = toProperBrand(str2)) == null) ? "" : properBrand;
            Card card2 = paymentMethodDetails.card;
            return new ChargeAttempt.CompletedAttempt.SuccessfulCharge(str13, (card2 == null || (str = card2.last4) == null) ? "" : str, amount4, amount5, amount2);
        }
        if ((paymentMethodDetails != null ? paymentMethodDetails.wechat_pay : null) != null) {
            return new ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge(PaymentMethodType.WECHAT_PAY, amount4, amount5, z);
        }
        if ((paymentMethodDetails != null ? paymentMethodDetails.affirm : null) != null) {
            return new ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge(PaymentMethodType.AFFIRM, amount4, amount5, z);
        }
        logWriter.w(TAG, "Unable to parse type " + (paymentMethodDetails != null ? paymentMethodDetails.type : null));
        return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
    }

    private final ChargeAttempt toDeclinedAttempt(ErrorWrapper errorWrapper, boolean z) {
        return toDeclinedAttempt(errorWrapper.error, z);
    }

    public final ChargeAttempt toDeclinedAttempt(ErrorResponse errorResponse, boolean z) {
        String str;
        String str2;
        String str3;
        if (z) {
            String str4 = errorResponse != null ? errorResponse.decline_code : null;
            if (str4 != null) {
                int iHashCode = str4.hashCode();
                String str5 = "";
                if (iHashCode != -803280923) {
                    if (iHashCode != 748045013) {
                        if (iHashCode == 1493626330 && str4.equals(ExtendedActionConstants.MOBILE_DEVICE_AUTH_REQUIRED)) {
                            PaymentIntent paymentIntent = errorResponse.payment_intent;
                            if (paymentIntent != null && (str3 = paymentIntent.id) != null) {
                                str5 = str3;
                            }
                            return new ChargeAttempt.ExtendedAttempt(str5, ChargeAttempt.ExtendedAttempt.Requirement.MOBILE_DEVICE_AUTHENTICATION_REQUIRED);
                        }
                    } else if (str4.equals(ExtendedActionConstants.ONLINE_OR_OFFLINE_PIN_REQUIRED)) {
                        PaymentIntent paymentIntent2 = errorResponse.payment_intent;
                        if (paymentIntent2 != null && (str2 = paymentIntent2.id) != null) {
                            str5 = str2;
                        }
                        return new ChargeAttempt.ExtendedAttempt(str5, ChargeAttempt.ExtendedAttempt.Requirement.ONLINE_OR_OFFLINE_PIN_REQUIRED);
                    }
                } else if (str4.equals(ExtendedActionConstants.OFFLINE_PIN_REQUIRED)) {
                    PaymentIntent paymentIntent3 = errorResponse.payment_intent;
                    if (paymentIntent3 != null && (str = paymentIntent3.id) != null) {
                        str5 = str;
                    }
                    return new ChargeAttempt.ExtendedAttempt(str5, ChargeAttempt.ExtendedAttempt.Requirement.OFFLINE_PIN_REQUIRED);
                }
            }
            return toDeclinedAttemptForStandardAttempt(errorResponse);
        }
        return toDeclinedAttemptForStandardAttempt(errorResponse);
    }

    private final ChargeAttempt toDeclinedAttemptForStandardAttempt(ErrorResponse errorResponse) {
        String str;
        if (Intrinsics.areEqual(errorResponse != null ? errorResponse.code : null, "charge_already_refunded")) {
            return ChargeAttempt.CompletedAttempt.AlreadyRefunded.INSTANCE;
        }
        if (errorResponse == null || (str = errorResponse.decline_code) == null) {
            str = "";
        }
        return new ChargeAttempt.CompletedAttempt.DeclinedCharge(str);
    }

    public final ChargeAttempt toChargeAttemptForPaymentMethod(RestResponse<PaymentMethod, ErrorWrapper> restResponse) {
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        if (restResponse instanceof RestResponse.Success) {
            return ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE;
        }
        if (restResponse instanceof RestResponse.ServerError) {
            int i = WhenMappings.$EnumSwitchMapping$0[restResponse.getStatusCode().ordinal()];
            if (i == 1) {
                return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
            }
            if (i == 2) {
                return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
            }
            return toDeclinedAttempt((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse(), false);
        }
        if (restResponse instanceof RestResponse.ParseError) {
            return ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final String toProperBrand(String str) {
        switch (str.hashCode()) {
            case -2038717326:
                return !str.equals("mastercard") ? str : "MasterCard";
            case -1331704771:
                return !str.equals("diners") ? str : "Diners Club";
            case -296504455:
                return !str.equals("unionpay") ? str : "UnionPay";
            case 105033:
                return !str.equals("jcb") ? str : "JCB";
            case 2997727:
                return !str.equals("amex") ? str : "American Express";
            case 3619905:
                return !str.equals("visa") ? str : "Visa";
            case 273184745:
                return !str.equals("discover") ? str : "Discover";
            default:
                return str;
        }
    }

    public final ChargeAttempt toChargeAttemptForRefund(RestResponse<Refund, ErrorWrapper> restResponse, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(restResponse, "<this>");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        if (restResponse instanceof RestResponse.Success) {
            RestResponse.Success success = (RestResponse.Success) restResponse;
            if (isSuccess((Refund) success.getResponse())) {
                return toSuccessfulRefund((Refund) success.getResponse(), logWriter);
            }
            String str = ((Refund) success.getResponse()).failure_reason;
            if (str == null) {
                str = "";
            }
            return new ChargeAttempt.CompletedAttempt.DeclinedRefund(str);
        }
        if (restResponse instanceof RestResponse.ServerError) {
            int i = WhenMappings.$EnumSwitchMapping$0[restResponse.getStatusCode().ordinal()];
            if (i == 1) {
                return ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE;
            }
            if (i == 2) {
                return ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE;
            }
            return toDeclinedAttempt((ErrorWrapper) ((RestResponse.ServerError) restResponse).getResponse(), false);
        }
        if (restResponse instanceof RestResponse.ParseError) {
            return ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final ChargeAttempt toSuccessfulRefund(Refund refund, LogWriter logWriter) {
        String properBrand;
        String str;
        String str2;
        String properBrand2;
        String str3;
        String str4;
        PaymentMethodDetails paymentMethodDetails = refund.payment_method_details;
        Long l = refund.amount;
        long jLongValue = l != null ? l.longValue() : 0L;
        String str5 = refund.currency;
        String str6 = "";
        if (str5 == null) {
            str5 = "";
        }
        Amount amount = new Amount(jLongValue, str5);
        if ((paymentMethodDetails != null ? paymentMethodDetails.card_present : null) != null) {
            CardPresent cardPresent = paymentMethodDetails.card_present;
            if (cardPresent == null || (str4 = cardPresent.brand) == null || (properBrand2 = toProperBrand(str4)) == null) {
                properBrand2 = "";
            }
            CardPresent cardPresent2 = paymentMethodDetails.card_present;
            if (cardPresent2 != null && (str3 = cardPresent2.last4) != null) {
                str6 = str3;
            }
            return new ChargeAttempt.CompletedAttempt.SuccessfulRefund(properBrand2, str6, amount);
        }
        if ((paymentMethodDetails != null ? paymentMethodDetails.interac_present : null) != null) {
            CardPresent cardPresent3 = paymentMethodDetails.interac_present;
            if (cardPresent3 == null || (str2 = cardPresent3.brand) == null || (properBrand = toProperBrand(str2)) == null) {
                properBrand = "";
            }
            CardPresent cardPresent4 = paymentMethodDetails.interac_present;
            if (cardPresent4 != null && (str = cardPresent4.last4) != null) {
                str6 = str;
            }
            return new ChargeAttempt.CompletedAttempt.SuccessfulRefund(properBrand, str6, amount);
        }
        logWriter.w(TAG, "Unable to parse type " + (paymentMethodDetails != null ? paymentMethodDetails.type : null));
        return ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE;
    }

    public final boolean isSuccess(Refund refund) {
        Intrinsics.checkNotNullParameter(refund, "<this>");
        return Intrinsics.areEqual(refund.status, "pending") || Intrinsics.areEqual(refund.status, "succeeded");
    }
}
