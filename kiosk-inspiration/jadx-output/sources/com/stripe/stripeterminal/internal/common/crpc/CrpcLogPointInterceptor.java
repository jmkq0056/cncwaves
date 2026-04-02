package com.stripe.stripeterminal.internal.common.crpc;

import com.squareup.wire.Message;
import com.stripe.core.logginginterceptors.CrpcLogLevel;
import com.stripe.core.logginginterceptors.CrpcLogLevelKt;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.redaction.Extensions;
import com.stripe.jvmcore.redaction.terminal.TerminalMessageRedactor;
import com.stripe.proto.net.rpc.base.RpcRequest;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: CrpcLogPointInterceptor.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J[\u0010\u0007\u001a\u00020\b\"\u0012\b\u0000\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n\"\u0012\b\u0001\u0010\u000b*\f\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\b\u00030\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u0002H\u000b2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\t0\u0012H\u0016¢\u0006\u0002\u0010\u0013J9\u0010\u0014\u001a\u00020\b\"\u0012\b\u0000\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u0002H\tH\u0016¢\u0006\u0002\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "()V", "name", "", "getName", "()Ljava/lang/String;", "postCallAction", "", "M", "Lcom/squareup/wire/Message;", "RE", "okHttpRequest", "Lokhttp3/Request;", "rpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "apiRequest", "crpcResponse", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V", "preCallAction", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CrpcLogPointInterceptor extends CustomCrpcInterceptor {
    private static final String CUSTOM_INTERCEPTOR_NAME = "CrpcLogPointInterceptor";
    private static final Log LOGGER = Log.INSTANCE.getLogger(CrpcClient.class);
    private final String name = CUSTOM_INTERCEPTOR_NAME;

    @Inject
    public CrpcLogPointInterceptor() {
    }

    @Override // com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor
    public String getName() {
        return this.name;
    }

    @Override // com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor
    public <M extends Message<M, ?>> void preCallAction(Request okHttpRequest, RpcRequest rpcRequest, M apiRequest) {
        Intrinsics.checkNotNullParameter(okHttpRequest, "okHttpRequest");
        Intrinsics.checkNotNullParameter(rpcRequest, "rpcRequest");
        Intrinsics.checkNotNullParameter(apiRequest, "apiRequest");
        if (CrpcLogLevelKt.getTraceLogLevel(rpcRequest).compareTo(CrpcLogLevel.NONE) > 0) {
            LOGGER.i(rpcRequest.service + '.' + rpcRequest.method + " request=" + Extensions.toLogJson$default(Extensions.INSTANCE, apiRequest, TerminalMessageRedactor.INSTANCE, null, 2, null), new Pair[0]);
        }
    }

    @Override // com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor
    public <M extends Message<M, ?>, RE extends Message<RE, ?>> void postCallAction(Request okHttpRequest, RpcRequest rpcRequest, RE apiRequest, CrpcResponse<M> crpcResponse) {
        Intrinsics.checkNotNullParameter(okHttpRequest, "okHttpRequest");
        Intrinsics.checkNotNullParameter(rpcRequest, "rpcRequest");
        Intrinsics.checkNotNullParameter(apiRequest, "apiRequest");
        Intrinsics.checkNotNullParameter(crpcResponse, "crpcResponse");
        if (CrpcLogLevelKt.getTraceLogLevel(rpcRequest).compareTo(CrpcLogLevel.NONE) > 0) {
            LOGGER.i(rpcRequest.service + '.' + rpcRequest.method + TokenParser.SP + crpcResponse.toLogString(), new Pair[0]);
        }
    }
}
