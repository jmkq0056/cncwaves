package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.dagger.Mainland;
import com.stripe.jvmcore.dagger.ReportTraces;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.jvmcore.logginginterceptors.TraceLoggingRestClientInterceptor;
import com.stripe.jvmcore.redaction.terminal.TerminalMessageRedactor;
import com.stripe.jvmcore.restclient.IdempotencyGenerator;
import com.stripe.jvmcore.restclient.IdempotencyHeader;
import com.stripe.jvmcore.restclient.IdempotencyRetryInterceptor;
import com.stripe.jvmcore.restclient.MainlandIdempotencyGenerator;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.stripeterminal.dagger.MainlandModule;
import com.stripe.stripeterminal.internal.common.terminalsession.SessionTokenInterceptor;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainlandModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b!\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/dagger/MainlandModule;", "", "()V", "bindIdempotencyGenerator", "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;", "mainlandIdempotencyGenerator", "Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;", "Companion", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class MainlandModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract IdempotencyGenerator bindIdempotencyGenerator(MainlandIdempotencyGenerator mainlandIdempotencyGenerator);

    /* JADX INFO: compiled from: MainlandModule.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007JD\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J \u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007¨\u0006\u001e"}, d2 = {"Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;", "", "()V", "provideIdempotencyRetryInterceptor", "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;", "generator", "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;", "provideRestClient", "Lcom/stripe/jvmcore/restclient/RestClient;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "serviceUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "idempotencyRetryInterceptor", "sessionTokenInterceptor", "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;", "customRestInterceptor", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "traceLoggingRestClientInterceptor", "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideServiceUrlProvider", "environmentProvider", "Lcom/stripe/jvmcore/environment/EnvironmentProvider;", "provideTraceLoggingRestClientInterceptor", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        public final IdempotencyRetryInterceptor provideIdempotencyRetryInterceptor(IdempotencyGenerator generator) {
            Intrinsics.checkNotNullParameter(generator, "generator");
            return new IdempotencyRetryInterceptor(new IdempotencyHeader(generator));
        }

        @Provides
        @Mainland
        public final RestClient.BaseUrlProvider provideServiceUrlProvider(final EnvironmentProvider environmentProvider) {
            Intrinsics.checkNotNullParameter(environmentProvider, "environmentProvider");
            return new RestClient.BaseUrlProvider() { // from class: com.stripe.stripeterminal.dagger.MainlandModule$Companion$$ExternalSyntheticLambda0
                @Override // com.stripe.jvmcore.restclient.RestClient.BaseUrlProvider
                public final String getBaseUrl() {
                    return MainlandModule.Companion.provideServiceUrlProvider$lambda$0(environmentProvider);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String provideServiceUrlProvider$lambda$0(EnvironmentProvider environmentProvider) {
            Intrinsics.checkNotNullParameter(environmentProvider, "$environmentProvider");
            return environmentProvider.getEnvironment().getStripeApiUrl();
        }

        @Provides
        @Singleton
        public final TraceLoggingRestClientInterceptor provideTraceLoggingRestClientInterceptor(MetricLogger metricLogger, TraceLogger traceLogger, LogWriter logWriter) {
            Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
            Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
            Intrinsics.checkNotNullParameter(logWriter, "logWriter");
            return new TraceLoggingRestClientInterceptor(metricLogger, traceLogger, logWriter);
        }

        @Provides
        @Mainland
        public final RestClient provideRestClient(OkHttpClientProvider okHttpClientProvider, @Mainland RestClient.BaseUrlProvider serviceUrlProvider, IdempotencyRetryInterceptor idempotencyRetryInterceptor, SessionTokenInterceptor sessionTokenInterceptor, @ReportTraces RestInterceptor customRestInterceptor, TraceLoggingRestClientInterceptor traceLoggingRestClientInterceptor, LogWriter logWriter) {
            Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
            Intrinsics.checkNotNullParameter(serviceUrlProvider, "serviceUrlProvider");
            Intrinsics.checkNotNullParameter(idempotencyRetryInterceptor, "idempotencyRetryInterceptor");
            Intrinsics.checkNotNullParameter(sessionTokenInterceptor, "sessionTokenInterceptor");
            Intrinsics.checkNotNullParameter(customRestInterceptor, "customRestInterceptor");
            Intrinsics.checkNotNullParameter(traceLoggingRestClientInterceptor, "traceLoggingRestClientInterceptor");
            Intrinsics.checkNotNullParameter(logWriter, "logWriter");
            return new RestClient.Builder(new MainlandModule$Companion$provideRestClient$1(okHttpClientProvider), TerminalMessageRedactor.INSTANCE, logWriter, serviceUrlProvider).addCustomRestInterceptor(idempotencyRetryInterceptor).addCustomRestInterceptor(sessionTokenInterceptor).addCustomRestInterceptor(customRestInterceptor).addCustomRestInterceptor(traceLoggingRestClientInterceptor).build();
        }
    }
}
