package com.stripe.jvmcore.terminal.crpc;

import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.jvmcore.observability.SdkHeaders;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: DistributedTracingInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;", "Lokhttp3/Interceptor;", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DistributedTracingInterceptor implements Interceptor {
    private final TraceManager traceManager;

    public DistributedTracingInterceptor(TraceManager traceManager) {
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        this.traceManager = traceManager;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        builderNewBuilder.addHeader(SdkHeaders.ACTION_ID, this.traceManager.getTraceId());
        String sessionId = this.traceManager.getSessionId();
        if (sessionId != null) {
            builderNewBuilder.addHeader(SdkHeaders.SESSION_ID, sessionId);
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
