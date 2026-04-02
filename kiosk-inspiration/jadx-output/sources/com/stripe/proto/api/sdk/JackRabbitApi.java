package com.stripe.proto.api.sdk;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import dagger.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JackRabbitApi.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009a\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\n2\u0006\u0010\f\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\n2\u0006\u0010\f\u001a\u00020\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\n2\u0006\u0010\f\u001a\u00020\u0016J\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\f\u001a\u00020\u001aJ\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\n2\u0006\u0010\f\u001a\u00020\u001dJ\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\n2\u0006\u0010\f\u001a\u00020 J\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\n2\u0006\u0010\f\u001a\u00020#J\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\n2\u0006\u0010\f\u001a\u00020&J\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\n2\u0006\u0010\f\u001a\u00020)J\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020+0\n2\u0006\u0010\f\u001a\u00020,J\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\n2\u0006\u0010\f\u001a\u00020/J\u0014\u00100\u001a\b\u0012\u0004\u0012\u0002010\n2\u0006\u0010\f\u001a\u000202J\u0014\u00103\u001a\b\u0012\u0004\u0012\u0002040\n2\u0006\u0010\f\u001a\u000205J\u0014\u00106\u001a\b\u0012\u0004\u0012\u0002070\n2\u0006\u0010\f\u001a\u000208J\u0014\u00109\u001a\b\u0012\u0004\u0012\u00020:0\n2\u0006\u0010\f\u001a\u00020;J\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020=0\n2\u0006\u0010\f\u001a\u00020>J\u0014\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\n2\u0006\u0010\f\u001a\u00020AJ\u0014\u0010B\u001a\b\u0012\u0004\u0012\u00020C0\n2\u0006\u0010\f\u001a\u00020DJ\u0014\u0010E\u001a\b\u0012\u0004\u0012\u00020F0\n2\u0006\u0010\f\u001a\u00020GJ\u0014\u0010H\u001a\b\u0012\u0004\u0012\u00020I0\n2\u0006\u0010\f\u001a\u00020JJ\u0014\u0010K\u001a\b\u0012\u0004\u0012\u00020L0\n2\u0006\u0010\f\u001a\u00020MJ\u0014\u0010N\u001a\b\u0012\u0004\u0012\u00020O0\n2\u0006\u0010\f\u001a\u00020PJ\u0014\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0\n2\u0006\u0010\f\u001a\u00020SJ\u0014\u0010T\u001a\b\u0012\u0004\u0012\u00020U0\n2\u0006\u0010\f\u001a\u00020VJ\u0014\u0010W\u001a\b\u0012\u0004\u0012\u00020X0\n2\u0006\u0010\f\u001a\u00020YJ\u0014\u0010Z\u001a\b\u0012\u0004\u0012\u00020[0\n2\u0006\u0010\f\u001a\u00020\\J\u0014\u0010]\u001a\b\u0012\u0004\u0012\u00020^0\n2\u0006\u0010\f\u001a\u00020_J\u0014\u0010`\u001a\b\u0012\u0004\u0012\u00020a0\n2\u0006\u0010\f\u001a\u00020bJ\u0014\u0010c\u001a\b\u0012\u0004\u0012\u00020d0\n2\u0006\u0010\f\u001a\u00020eJ\u0014\u0010f\u001a\b\u0012\u0004\u0012\u00020g0\n2\u0006\u0010\f\u001a\u00020hJ\u0014\u0010i\u001a\b\u0012\u0004\u0012\u00020j0\n2\u0006\u0010\f\u001a\u00020kJ\u0014\u0010l\u001a\b\u0012\u0004\u0012\u00020m0\n2\u0006\u0010\f\u001a\u00020nJ\u0014\u0010o\u001a\b\u0012\u0004\u0012\u00020j0\n2\u0006\u0010\f\u001a\u00020kJ\u0014\u0010p\u001a\b\u0012\u0004\u0012\u00020q0\n2\u0006\u0010\f\u001a\u00020rJ\u0014\u0010s\u001a\b\u0012\u0004\u0012\u00020:0\n2\u0006\u0010\f\u001a\u00020tJ\u0014\u0010u\u001a\b\u0012\u0004\u0012\u00020@0\n2\u0006\u0010\f\u001a\u00020AJ\u0014\u0010v\u001a\b\u0012\u0004\u0012\u00020w0\n2\u0006\u0010\f\u001a\u00020xJ\u0014\u0010y\u001a\b\u0012\u0004\u0012\u00020z0\n2\u0006\u0010\f\u001a\u00020{J\u0014\u0010|\u001a\b\u0012\u0004\u0012\u00020}0\n2\u0006\u0010\f\u001a\u00020~R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u007f"}, d2 = {"Lcom/stripe/proto/api/sdk/JackRabbitApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "activateTerminal", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", "message", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;", "cancelCollectData", "Lcom/stripe/proto/api/sdk/CancelCollectDataResponse;", "Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;", "cancelCollectInputs", "Lcom/stripe/proto/api/sdk/CancelCollectInputsResponse;", "Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;", "cancelCollectInteracRefundMethod", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;", "cancelCollectPaymentMethod", "cancelCollectReusableCard", "Lcom/stripe/proto/api/sdk/CancelCollectReusableCardResponse;", "Lcom/stripe/proto/api/sdk/CancelCollectReusableCardRequest;", "cancelConfirmInteracRefund", "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundResponse;", "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;", "cancelConfirmPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentResponse;", "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;", "cancelConfirmSetupIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentResponse;", "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;", "cancelPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;", "cancelSetupIntent", "Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;", "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;", "cancelSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;", "clearReaderDisplay", "Lcom/stripe/proto/api/sdk/ClearReaderDisplayResponse;", "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;", "collectData", "Lcom/stripe/proto/api/sdk/CollectDataResponse;", "Lcom/stripe/proto/api/sdk/CollectDataRequest;", "collectInputs", "Lcom/stripe/proto/api/sdk/CollectInputsResponse;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest;", "collectInteracRefundMethod", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodResponse;", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", "collectPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "collectReusableCard", "Lcom/stripe/proto/api/sdk/CollectReusableCardResponse;", "Lcom/stripe/proto/api/sdk/CollectReusableCardRequest;", "collectSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "confirmInteracRefund", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "confirmPayment", "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "confirmReusableCard", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;", "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;", "confirmSetupIntent", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;", "createPaymentIntent", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "createSetupIntent", "Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "fetchReaderConfig", "Lcom/stripe/proto/api/sdk/FetchReaderConfigResponse;", "Lcom/stripe/proto/api/sdk/FetchReaderConfigRequest;", "fetchReaderEvents", "Lcom/stripe/proto/api/sdk/FetchReaderEventsResponse;", "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;", "getReaderSettings", "Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;", "Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;", "handlePaymentIntentNextActions", "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsResponse;", "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;", "queryCollectData", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;", "Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;", "queryCollectInputs", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;", "Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;", "queryCollectReusableCard", "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;", "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardRequest;", "queryInteracRefundMethod", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;", "queryPaymentIntentNextActions", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsRequest;", "queryPaymentMethod", "querySetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;", "resumeCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "resumeCollectSetupIntentPaymentMethod", "setReaderDisplay", "Lcom/stripe/proto/api/sdk/SetReaderDisplayResponse;", "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;", "setReaderSettings", "Lcom/stripe/proto/api/sdk/SetReaderSettingsResponse;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "terminalHeartbeat", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatRequest;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class JackRabbitApi {
    private final Lazy<? extends CrpcClient> lazyClient;

    public JackRabbitApi(Lazy<? extends CrpcClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final CrpcClient getClient() {
        CrpcClient crpcClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(crpcClient, "get(...)");
        return crpcClient;
    }

    public final CrpcResponse<ActivateTerminalResponse> activateTerminal(ActivateTerminalRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "activateTerminal", message, ActivateTerminalRequest.ADAPTER, ActivateTerminalResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<TerminalHeartbeatResponse> terminalHeartbeat(TerminalHeartbeatRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "terminalHeartbeat", message, TerminalHeartbeatRequest.ADAPTER, TerminalHeartbeatResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<FetchReaderConfigResponse> fetchReaderConfig(FetchReaderConfigRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "fetchReaderConfig", message, FetchReaderConfigRequest.ADAPTER, FetchReaderConfigResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<SetReaderDisplayResponse> setReaderDisplay(SetReaderDisplayRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "setReaderDisplay", message, SetReaderDisplayRequest.ADAPTER, SetReaderDisplayResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ClearReaderDisplayResponse> clearReaderDisplay(ClearReaderDisplayRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "clearReaderDisplay", message, ClearReaderDisplayRequest.ADAPTER, ClearReaderDisplayResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<SetReaderSettingsResponse> setReaderSettings(SetReaderSettingsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "setReaderSettings", message, SetReaderSettingsRequest.ADAPTER, SetReaderSettingsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<GetReaderSettingsResponse> getReaderSettings(GetReaderSettingsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "getReaderSettings", message, GetReaderSettingsRequest.ADAPTER, GetReaderSettingsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ConfirmPaymentResponse> confirmPayment(ConfirmPaymentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "confirmPayment", message, ConfirmPaymentRequest.ADAPTER, ConfirmPaymentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelConfirmPaymentIntentResponse> cancelConfirmPaymentIntent(CancelConfirmPaymentIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelConfirmPaymentIntent", message, CancelConfirmPaymentIntentRequest.ADAPTER, CancelConfirmPaymentIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectDataResponse> collectData(CollectDataRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "collectData", message, CollectDataRequest.ADAPTER, CollectDataResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QueryCollectDataResponse> queryCollectData(QueryCollectDataRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "queryCollectData", message, QueryCollectDataRequest.ADAPTER, QueryCollectDataResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelCollectDataResponse> cancelCollectData(CancelCollectDataRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelCollectData", message, CancelCollectDataRequest.ADAPTER, CancelCollectDataResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectPaymentMethodResponse> collectPaymentMethod(CollectPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "collectPaymentMethod", message, CollectPaymentMethodRequest.ADAPTER, CollectPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectPaymentMethodResponse> resumeCollectPaymentMethod(ResumeCollectPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "resumeCollectPaymentMethod", message, ResumeCollectPaymentMethodRequest.ADAPTER, CollectPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QueryPaymentMethodResponse> queryPaymentMethod(QueryPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "queryPaymentMethod", message, QueryPaymentMethodRequest.ADAPTER, QueryPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelCollectPaymentMethodResponse> cancelCollectPaymentMethod(CancelCollectPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelCollectPaymentMethod", message, CancelCollectPaymentMethodRequest.ADAPTER, CancelCollectPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectReusableCardResponse> collectReusableCard(CollectReusableCardRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "collectReusableCard", message, CollectReusableCardRequest.ADAPTER, CollectReusableCardResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QueryCollectReusableCardResponse> queryCollectReusableCard(QueryCollectReusableCardRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "queryCollectReusableCard", message, QueryCollectReusableCardRequest.ADAPTER, QueryCollectReusableCardResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelCollectReusableCardResponse> cancelCollectReusableCard(CancelCollectReusableCardRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelCollectReusableCard", message, CancelCollectReusableCardRequest.ADAPTER, CancelCollectReusableCardResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ConfirmReusableCardResponse> confirmReusableCard(ConfirmReusableCardRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "confirmReusableCard", message, ConfirmReusableCardRequest.ADAPTER, ConfirmReusableCardResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelCollectPaymentMethodResponse> cancelCollectInteracRefundMethod(CancelCollectPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelCollectInteracRefundMethod", message, CancelCollectPaymentMethodRequest.ADAPTER, CancelCollectPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectInteracRefundMethodResponse> collectInteracRefundMethod(CollectInteracRefundMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "collectInteracRefundMethod", message, CollectInteracRefundMethodRequest.ADAPTER, CollectInteracRefundMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ConfirmInteracRefundResponse> confirmInteracRefund(ConfirmInteracRefundRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "confirmInteracRefund", message, ConfirmInteracRefundRequest.ADAPTER, ConfirmInteracRefundResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelConfirmInteracRefundResponse> cancelConfirmInteracRefund(CancelConfirmInteracRefundRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelConfirmInteracRefund", message, CancelConfirmInteracRefundRequest.ADAPTER, CancelConfirmInteracRefundResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QueryPaymentMethodResponse> queryInteracRefundMethod(QueryPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "queryInteracRefundMethod", message, QueryPaymentMethodRequest.ADAPTER, QueryPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectSetupIntentPaymentMethodResponse> collectSetupIntentPaymentMethod(CollectSetupIntentPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "collectSetupIntentPaymentMethod", message, CollectSetupIntentPaymentMethodRequest.ADAPTER, CollectSetupIntentPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectSetupIntentPaymentMethodResponse> resumeCollectSetupIntentPaymentMethod(CollectSetupIntentPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "resumeCollectSetupIntentPaymentMethod", message, CollectSetupIntentPaymentMethodRequest.ADAPTER, CollectSetupIntentPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QuerySetupIntentPaymentMethodResponse> querySetupIntentPaymentMethod(QuerySetupIntentPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "querySetupIntentPaymentMethod", message, QuerySetupIntentPaymentMethodRequest.ADAPTER, QuerySetupIntentPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ConfirmSetupIntentResponse> confirmSetupIntent(ConfirmSetupIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "confirmSetupIntent", message, ConfirmSetupIntentRequest.ADAPTER, ConfirmSetupIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelConfirmSetupIntentResponse> cancelConfirmSetupIntent(CancelConfirmSetupIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelConfirmSetupIntent", message, CancelConfirmSetupIntentRequest.ADAPTER, CancelConfirmSetupIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelSetupIntentPaymentMethodResponse> cancelSetupIntentPaymentMethod(CancelSetupIntentPaymentMethodRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelSetupIntentPaymentMethod", message, CancelSetupIntentPaymentMethodRequest.ADAPTER, CancelSetupIntentPaymentMethodResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CreatePaymentIntentResponse> createPaymentIntent(CreatePaymentIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "createPaymentIntent", message, CreatePaymentIntentRequest.ADAPTER, CreatePaymentIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelPaymentIntentResponse> cancelPaymentIntent(CancelPaymentIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelPaymentIntent", message, CancelPaymentIntentRequest.ADAPTER, CancelPaymentIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CreateSetupIntentResponse> createSetupIntent(CreateSetupIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "createSetupIntent", message, CreateSetupIntentRequest.ADAPTER, CreateSetupIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelSetupIntentResponse> cancelSetupIntent(CancelSetupIntentRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelSetupIntent", message, CancelSetupIntentRequest.ADAPTER, CancelSetupIntentResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CollectInputsResponse> collectInputs(CollectInputsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "collectInputs", message, CollectInputsRequest.ADAPTER, CollectInputsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CancelCollectInputsResponse> cancelCollectInputs(CancelCollectInputsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "cancelCollectInputs", message, CancelCollectInputsRequest.ADAPTER, CancelCollectInputsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QueryCollectInputsResponse> queryCollectInputs(QueryCollectInputsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "queryCollectInputs", message, QueryCollectInputsRequest.ADAPTER, QueryCollectInputsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<HandlePaymentIntentNextActionsResponse> handlePaymentIntentNextActions(HandlePaymentIntentNextActionsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "handlePaymentIntentNextActions", message, HandlePaymentIntentNextActionsRequest.ADAPTER, HandlePaymentIntentNextActionsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<QueryPaymentIntentNextActionsResponse> queryPaymentIntentNextActions(QueryPaymentIntentNextActionsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "queryPaymentIntentNextActions", message, QueryPaymentIntentNextActionsRequest.ADAPTER, QueryPaymentIntentNextActionsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<FetchReaderEventsResponse> fetchReaderEvents(FetchReaderEventsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "JackRabbitService", "fetchReaderEvents", message, FetchReaderEventsRequest.ADAPTER, FetchReaderEventsResponse.ADAPTER, null, 32, null);
    }
}
