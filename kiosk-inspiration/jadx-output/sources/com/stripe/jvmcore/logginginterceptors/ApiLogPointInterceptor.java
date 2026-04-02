package com.stripe.jvmcore.logginginterceptors;

import com.squareup.wire.Message;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.redaction.Extensions;
import com.stripe.jvmcore.redaction.terminal.TerminalMessageRedactor;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: ApiLogPointInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0088\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u001c\b\u0000\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0012`\u0014\"\u001c\b\u0001\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0010`\u0014\"\u001c\b\u0002\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0011`\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u0016H\u0016R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u0002`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "name", "", "getName", "()Ljava/lang/String;", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "Companion", "logging-interceptors"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiLogPointInterceptor extends RestInterceptor {
    private static final String CUSTOM_INTERCEPTOR_NAME = "ApiLogPointInterceptor";
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final String name;

    @Inject
    public ApiLogPointInterceptor(LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(RestClient.class));
        this.name = CUSTOM_INTERCEPTOR_NAME;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public String getName() {
        return this.name;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(RestInterceptor.Chain<Rq, Rsp, Err> chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        this.logger.i("url=" + chain.request().url() + " request=" + Extensions.toLogJson$default(Extensions.INSTANCE, chain.rpcRequest(), TerminalMessageRedactor.INSTANCE, null, 2, null), new Pair[0]);
        RestResponse<Rsp, Err> restResponseProceed = chain.proceed(chain.request());
        this.logger.i("url=" + chain.request().url() + TokenParser.SP + restResponseProceed.toLogString(), new Pair[0]);
        return restResponseProceed;
    }
}
