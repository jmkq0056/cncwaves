package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.dagger.Files;
import com.stripe.jvmcore.dagger.ReportTraces;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.jvmcore.logginginterceptors.TraceLoggingRestClientInterceptor;
import com.stripe.jvmcore.redaction.terminal.TerminalMessageRedactor;
import com.stripe.jvmcore.restclient.IdempotencyRetryInterceptor;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.logwriter.LogWriter;
import com.stripe.stripeterminal.internal.common.terminalsession.SessionTokenInterceptor;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: FilesModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/dagger/FilesModule;", "", "()V", "provideFilesRestClient", "Lcom/stripe/jvmcore/restclient/RestClient;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "serviceUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "idempotencyRetryInterceptor", "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;", "sessionTokenInterceptor", "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;", "customRestInterceptor", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "traceLoggingRestClientInterceptor", "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideFilesServiceUrlProvider", "environmentProvider", "Lcom/stripe/jvmcore/environment/EnvironmentProvider;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class FilesModule {
    public static final FilesModule INSTANCE = new FilesModule();

    private FilesModule() {
    }

    @Provides
    @Files
    public final RestClient.BaseUrlProvider provideFilesServiceUrlProvider(final EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "environmentProvider");
        return new RestClient.BaseUrlProvider() { // from class: com.stripe.stripeterminal.dagger.FilesModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.restclient.RestClient.BaseUrlProvider
            public final String getBaseUrl() {
                return FilesModule.provideFilesServiceUrlProvider$lambda$0(environmentProvider);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String provideFilesServiceUrlProvider$lambda$0(EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "$environmentProvider");
        return environmentProvider.getEnvironment().getFilesApiUrl();
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.dagger.FilesModule$provideFilesRestClient$1, reason: invalid class name */
    /* JADX INFO: compiled from: FilesModule.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<OkHttpClient> {
        AnonymousClass1(Object obj) {
            super(0, obj, OkHttpClientProvider.class, "get", "get()Lokhttp3/OkHttpClient;", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final OkHttpClient invoke() {
            return ((OkHttpClientProvider) this.receiver).get();
        }
    }

    @Provides
    @Files
    public final RestClient provideFilesRestClient(OkHttpClientProvider okHttpClientProvider, @Files RestClient.BaseUrlProvider serviceUrlProvider, IdempotencyRetryInterceptor idempotencyRetryInterceptor, SessionTokenInterceptor sessionTokenInterceptor, @ReportTraces RestInterceptor customRestInterceptor, TraceLoggingRestClientInterceptor traceLoggingRestClientInterceptor, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(serviceUrlProvider, "serviceUrlProvider");
        Intrinsics.checkNotNullParameter(idempotencyRetryInterceptor, "idempotencyRetryInterceptor");
        Intrinsics.checkNotNullParameter(sessionTokenInterceptor, "sessionTokenInterceptor");
        Intrinsics.checkNotNullParameter(customRestInterceptor, "customRestInterceptor");
        Intrinsics.checkNotNullParameter(traceLoggingRestClientInterceptor, "traceLoggingRestClientInterceptor");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new RestClient.Builder(new AnonymousClass1(okHttpClientProvider), TerminalMessageRedactor.INSTANCE, logWriter, serviceUrlProvider).addCustomRestInterceptor(idempotencyRetryInterceptor).addCustomRestInterceptor(sessionTokenInterceptor).addCustomRestInterceptor(customRestInterceptor).addCustomRestInterceptor(traceLoggingRestClientInterceptor).build();
    }
}
