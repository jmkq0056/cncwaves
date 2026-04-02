package com.stripe.stripeterminal.internal.common.crpc;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.environment.EnvironmentKt;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.observability.SdkHeaders;
import com.stripe.proto.model.rest.UserAgent;
import dagger.Reusable;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: IdentifierHeadersInterceptor.kt */
/* JADX INFO: loaded from: classes4.dex */
@Reusable
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;", "Lokhttp3/Interceptor;", "tokenProvider", "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/environment/UserAgentProvider;)V", "userAgent", "Lcom/stripe/proto/model/rest/UserAgent;", "getUserAgent", "()Lcom/stripe/proto/model/rest/UserAgent;", "userAgent$delegate", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IdentifierHeadersInterceptor implements Interceptor {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(IdentifierHeadersInterceptor.class, "userAgent", "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;", 0))};
    private final RpcSessionTokenProvider tokenProvider;
    private final TransactionRepository transactionRepository;

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private final UserAgentProvider userAgent;

    @Inject
    public IdentifierHeadersInterceptor(RpcSessionTokenProvider tokenProvider, TransactionRepository transactionRepository, UserAgentProvider userAgentProvider) {
        Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.tokenProvider = tokenProvider;
        this.transactionRepository = transactionRepository;
        this.userAgent = userAgentProvider;
    }

    private final UserAgent getUserAgent() {
        return this.userAgent.getValue(this, $$delegatedProperties[0]);
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        String rpcSessionToken = this.tokenProvider.getRpcSessionToken();
        if (rpcSessionToken != null) {
            builderNewBuilder.addHeader(SdkHeaders.SESSION_TOKEN, rpcSessionToken);
        }
        String accountId = this.transactionRepository.getAccountId();
        if (accountId != null) {
            builderNewBuilder.addHeader("Stripe-Account", accountId);
        }
        for (Map.Entry<String, String> entry : EnvironmentKt.toRequestHeaders(getUserAgent(), false).entrySet()) {
            builderNewBuilder.addHeader(entry.getKey(), entry.getValue());
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
