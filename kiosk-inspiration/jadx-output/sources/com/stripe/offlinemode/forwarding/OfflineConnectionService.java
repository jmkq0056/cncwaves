package com.stripe.offlinemode.forwarding;

import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.Trace;
import com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken;
import com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OfflineConnectionService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J*\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u000e\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u0013R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;", "Lcom/stripe/offlinemode/forwarding/AuthTokenListener;", "hasConnectionToken", "", "getHasConnectionToken", "()Z", "setHasConnectionToken", "(Z)V", "redeemOfflineConnection", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "request", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "traceContext", "Lcom/stripe/loggingmodels/Trace$Context;", "(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveAccount", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineConnectionService extends AuthTokenListener {
    boolean getHasConnectionToken();

    Object redeemOfflineConnection(RedeemForOfflineConnectionTokenRequest redeemForOfflineConnectionTokenRequest, Trace.Context context, Continuation<? super RestResponse<RedeemedForOfflineConnectionToken, ErrorWrapper>> continuation);

    Object retrieveAccount(Trace.Context context, Continuation<? super RestResponse<ReceivedAccountIdFromConnectionToken, ErrorWrapper>> continuation);

    void setHasConnectionToken(boolean z);
}
