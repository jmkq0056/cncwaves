package com.stripe.jvmcore.terminal.requestfactories.payment;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.CancelPaymentIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.PaymentMethodOptions;
import com.stripe.proto.api.rest.TransferData;
import com.stripe.stripeterminal.external.models.CardPresentCaptureMethod;
import com.stripe.stripeterminal.external.models.CardPresentParameters;
import com.stripe.stripeterminal.external.models.CardPresentRequestPartialAuthorization;
import com.stripe.stripeterminal.external.models.CardPresentRoutingOptionParameters;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethodOptionsParameters;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.RoutingPriority;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: DefaultPaymentIntentRestApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "()V", "cancelPaymentIntent", "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;", OfflineStorageConstantsKt.ID, "", "createPaymentIntent", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "params", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultPaymentIntentRestApiFactory implements PaymentIntentRestApiFactory {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory
    public CreatePaymentIntentRequest createPaymentIntent(PaymentIntentParameters params) {
        PaymentMethodOptions.CardPresent.RoutingParameters routingParameters;
        CardPresentParameters cardPresentParameters;
        CardPresentRequestPartialAuthorization requestPartialAuthorization;
        CardPresentParameters cardPresentParameters2;
        CardPresentRoutingOptionParameters routing;
        RoutingPriority requestedPriority;
        CardPresentParameters cardPresentParameters3;
        CardPresentCaptureMethod captureMethod;
        CardPresentParameters cardPresentParameters4;
        CardPresentParameters cardPresentParameters5;
        Intrinsics.checkNotNullParameter(params, "params");
        PaymentMethodOptions.CardPresent.Builder builder = new PaymentMethodOptions.CardPresent.Builder();
        PaymentMethodOptionsParameters paymentMethodOptionsParameters = params.getPaymentMethodOptionsParameters();
        ByteString byteString = null;
        Object[] objArr = 0;
        PaymentMethodOptions.CardPresent.Builder builderRequest_extended_authorization = builder.request_extended_authorization((paymentMethodOptionsParameters == null || (cardPresentParameters5 = paymentMethodOptionsParameters.getCardPresentParameters()) == null) ? null : cardPresentParameters5.getRequestExtendedAuthorization());
        PaymentMethodOptionsParameters paymentMethodOptionsParameters2 = params.getPaymentMethodOptionsParameters();
        PaymentMethodOptions.CardPresent.Builder builderRequest_incremental_authorization_support = builderRequest_extended_authorization.request_incremental_authorization_support((paymentMethodOptionsParameters2 == null || (cardPresentParameters4 = paymentMethodOptionsParameters2.getCardPresentParameters()) == null) ? null : cardPresentParameters4.getRequestIncrementalAuthorizationSupport());
        PaymentMethodOptionsParameters paymentMethodOptionsParameters3 = params.getPaymentMethodOptionsParameters();
        PaymentMethodOptions.CardPresent.Builder builderCapture_method = builderRequest_incremental_authorization_support.capture_method((paymentMethodOptionsParameters3 == null || (cardPresentParameters3 = paymentMethodOptionsParameters3.getCardPresentParameters()) == null || (captureMethod = cardPresentParameters3.getCaptureMethod()) == null) ? null : captureMethod.getKey());
        PaymentMethodOptionsParameters paymentMethodOptionsParameters4 = params.getPaymentMethodOptionsParameters();
        if (paymentMethodOptionsParameters4 == null || (cardPresentParameters2 = paymentMethodOptionsParameters4.getCardPresentParameters()) == null || (routing = cardPresentParameters2.getRouting()) == null || (requestedPriority = routing.getRequestedPriority()) == null) {
            routingParameters = null;
        } else {
            routingParameters = new PaymentMethodOptions.CardPresent.RoutingParameters(ProtoConverter.INSTANCE.toProtoPriority(requestedPriority).name(), byteString, 2, objArr == true ? 1 : 0);
        }
        PaymentMethodOptions.CardPresent.Builder builderRouting = builderCapture_method.routing(routingParameters);
        PaymentMethodOptionsParameters paymentMethodOptionsParameters5 = params.getPaymentMethodOptionsParameters();
        PaymentMethodOptions paymentMethodOptionsBuild = new PaymentMethodOptions.Builder().card_present(builderRouting.request_partial_authorization((paymentMethodOptionsParameters5 == null || (cardPresentParameters = paymentMethodOptionsParameters5.getCardPresentParameters()) == null || (requestPartialAuthorization = cardPresentParameters.getRequestPartialAuthorization()) == null) ? null : requestPartialAuthorization.getTypeName()).build()).build();
        List<PaymentMethodType> paymentMethodTypes = params.getPaymentMethodTypes();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(paymentMethodTypes, 10));
        Iterator<T> it = paymentMethodTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((PaymentMethodType) it.next()).getTypeName());
        }
        ArrayList arrayList2 = arrayList;
        Long amount = params.getAmount();
        String key = params.getCaptureMethod().getKey();
        String currency = params.getCurrency();
        String customer = params.getCustomer();
        String description = params.getDescription();
        String receiptEmail = params.getReceiptEmail();
        String statementDescriptor = params.getStatementDescriptor();
        String statementDescriptorSuffix = params.getStatementDescriptorSuffix();
        Map<String, String> metadata = params.getMetadata();
        if (metadata == null) {
            metadata = MapsKt.emptyMap();
        }
        Map<String, String> map = metadata;
        Long applicationFeeAmount = params.getApplicationFeeAmount();
        String transferDataDestination = params.getTransferDataDestination();
        return new CreatePaymentIntentRequest(amount, key, currency, description, map, arrayList2, receiptEmail, statementDescriptor, customer, params.getTransferGroup(), applicationFeeAmount, params.getOnBehalfOf(), transferDataDestination != null ? new TransferData(transferDataDestination, null, null, 6, null) : null, paymentMethodOptionsBuild, statementDescriptorSuffix, params.getSetupFutureUsage(), null, 65536, null);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory
    public CancelPaymentIntentRequest cancelPaymentIntent(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new CancelPaymentIntentRequest(null, id, null, null, 13, null);
    }
}
