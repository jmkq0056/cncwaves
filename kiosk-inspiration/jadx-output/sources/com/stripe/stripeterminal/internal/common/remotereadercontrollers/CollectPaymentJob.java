package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.api.sdk.CollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.CollectPaymentMethodResponse;
import com.stripe.proto.api.sdk.JackRabbitApi;
import com.stripe.proto.api.sdk.QueryPaymentMethodRequest;
import com.stripe.proto.api.sdk.QueryPaymentMethodResponse;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AsyncQueryJob.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001BM\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0013H\u0014J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0013H\u0014R\u000e\u0010\u000e\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectPaymentJob;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", Callback.METHOD_NAME, "Lkotlin/Function1;", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "collectRequest", "jackrabbitApiClient", "Lcom/stripe/proto/api/sdk/JackRabbitApi;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V", "executeJobRequest", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "queryJobRequest", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectPaymentJob extends CollectAsyncQueryJob<CollectPaymentMethodRequest, CollectPaymentMethodResponse> {
    private final CollectPaymentMethodRequest collectRequest;
    private final JackRabbitApi jackrabbitApiClient;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectPaymentJob(CoroutineScope coroutineScope, LoggerFactory loggerFactory, Function1<? super PaymentMethodData, Unit> callback, Function1<? super TerminalException, Unit> onFailure, CollectPaymentMethodRequest collectRequest, JackRabbitApi jackrabbitApiClient) {
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
    protected CrpcResponse<CollectPaymentMethodResponse> executeJobRequest() {
        return this.jackrabbitApiClient.collectPaymentMethod(this.collectRequest);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob
    protected CrpcResponse<QueryPaymentMethodResponse> queryJobRequest() {
        return this.jackrabbitApiClient.queryPaymentMethod(new QueryPaymentMethodRequest(null, 1, null));
    }
}
