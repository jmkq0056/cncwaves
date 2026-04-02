package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.api.sdk.CollectSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.CollectSetupIntentPaymentMethodResponse;
import com.stripe.proto.api.sdk.JackRabbitApi;
import com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodResponse;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.makers.PaymentMethodDataMaker;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AsyncQueryJob.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001BM\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\f\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015H\u0014J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0014J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u0015H\u0014R\u000e\u0010\u0010\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodResponse;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", Callback.METHOD_NAME, "Lkotlin/Function1;", "", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "collectRequest", "jackrabbitApiClient", "Lcom/stripe/proto/api/sdk/JackRabbitApi;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V", "executeJobRequest", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "getQueryResult", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "queryResponse", "queryJobRequest", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectSetupIntentPaymentJob extends AsyncQueryJob<CollectSetupIntentPaymentMethodRequest, CollectSetupIntentPaymentMethodResponse, QuerySetupIntentPaymentMethodRequest, QuerySetupIntentPaymentMethodResponse, PaymentMethodData> {
    private final CollectSetupIntentPaymentMethodRequest collectRequest;
    private final JackRabbitApi jackrabbitApiClient;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectSetupIntentPaymentJob(CoroutineScope coroutineScope, LoggerFactory loggerFactory, Function1<? super PaymentMethodData, Unit> callback, Function1<? super TerminalException, Unit> onFailure, CollectSetupIntentPaymentMethodRequest collectRequest, JackRabbitApi jackrabbitApiClient) {
        super(coroutineScope, loggerFactory, callback, onFailure);
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        Intrinsics.checkNotNullParameter(collectRequest, "collectRequest");
        Intrinsics.checkNotNullParameter(jackrabbitApiClient, "jackrabbitApiClient");
        this.collectRequest = collectRequest;
        this.jackrabbitApiClient = jackrabbitApiClient;
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob
    protected CrpcResponse<CollectSetupIntentPaymentMethodResponse> executeJobRequest() {
        return this.jackrabbitApiClient.collectSetupIntentPaymentMethod(this.collectRequest);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob
    protected CrpcResponse<QuerySetupIntentPaymentMethodResponse> queryJobRequest() {
        return this.jackrabbitApiClient.querySetupIntentPaymentMethod(new QuerySetupIntentPaymentMethodRequest(null, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob
    public AsyncQueryJob.QueryResult<PaymentMethodData> getQueryResult(QuerySetupIntentPaymentMethodResponse queryResponse) {
        Intrinsics.checkNotNullParameter(queryResponse, "queryResponse");
        PaymentMethod paymentMethod = queryResponse.payment_method;
        if (paymentMethod != null) {
            return new AsyncQueryJob.QueryResult.QueryResultSucceeded(PaymentMethodDataMaker.INSTANCE.newIpData(paymentMethod, null));
        }
        if (queryResponse.payment_status == QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus.PAYMENT_CANCELED) {
            return new AsyncQueryJob.QueryResult.QueryResultCanceled();
        }
        return new AsyncQueryJob.QueryResult.QueryResultPending();
    }
}
