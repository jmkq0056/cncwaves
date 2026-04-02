package com.stripe.core.stripeterminal.log;

import com.squareup.wire.Message;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.jvmcore.restclient.RestResponse;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* JADX INFO: compiled from: TerminalActionIdRestInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0088\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\f0\n\"\u001c\b\u0000\u0010\r*\u0016\u0012\u0004\u0012\u0002H\r\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\r`\u000f\"\u001c\b\u0001\u0010\u000b*\u0016\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\u000b`\u000f\"\u001c\b\u0002\u0010\f*\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\f`\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\f0\u0011H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V", "name", "", "getName", "()Ljava/lang/String;", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalActionIdRestInterceptor extends RestInterceptor {
    private final String name;
    private final TraceManager traceManager;

    @Inject
    public TerminalActionIdRestInterceptor(TraceManager traceManager) {
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        this.traceManager = traceManager;
        this.name = "TerminalActionIdRestInterceptor";
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public String getName() {
        return this.name;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(RestInterceptor.Chain<Rq, Rsp, Err> chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        String terminalActionId = this.traceManager.getTerminalActionId();
        if (terminalActionId != null) {
            builderNewBuilder.header("X-Terminal-Action-Id", terminalActionId);
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
