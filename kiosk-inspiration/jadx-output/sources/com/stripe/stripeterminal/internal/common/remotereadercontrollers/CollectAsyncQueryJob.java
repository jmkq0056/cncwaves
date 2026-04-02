package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.squareup.wire.Message;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.api.sdk.QueryPaymentMethodRequest;
import com.stripe.proto.api.sdk.QueryPaymentMethodResponse;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018\u0000*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\u0012\b\u0001\u0010\u0003*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u00022 \u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004B=\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00132\u0006\u0010\u0014\u001a\u00020\u0006H\u0014¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;", "CollectRequest", "Lcom/squareup/wire/Message;", "CollectResponse", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", Callback.METHOD_NAME, "Lkotlin/Function1;", "", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getQueryResult", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "queryResponse", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class CollectAsyncQueryJob<CollectRequest extends Message<CollectRequest, ?>, CollectResponse extends Message<CollectResponse, ?>> extends AsyncQueryJob<CollectRequest, CollectResponse, QueryPaymentMethodRequest, QueryPaymentMethodResponse, PaymentMethodData> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectAsyncQueryJob(CoroutineScope coroutineScope, LoggerFactory loggerFactory, Function1<? super PaymentMethodData, Unit> callback, Function1<? super TerminalException, Unit> onFailure) {
        super(coroutineScope, loggerFactory, callback, onFailure);
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob
    public AsyncQueryJob.QueryResult<PaymentMethodData> getQueryResult(QueryPaymentMethodResponse queryResponse) {
        Intrinsics.checkNotNullParameter(queryResponse, "queryResponse");
        PaymentMethod paymentMethod = queryResponse.payment_method;
        if (paymentMethod != null) {
            return new AsyncQueryJob.QueryResult.QueryResultSucceeded(PaymentMethodDataMaker.INSTANCE.newIpData(paymentMethod, queryResponse.payment_intent));
        }
        if (queryResponse.payment_status == QueryPaymentMethodResponse.PaymentRequestStatus.PAYMENT_CANCELED) {
            return new AsyncQueryJob.QueryResult.QueryResultCanceled();
        }
        return new AsyncQueryJob.QueryResult.QueryResultPending();
    }
}
