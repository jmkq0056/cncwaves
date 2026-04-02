package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.jvmcore.dagger.Gator;
import com.stripe.jvmcore.dagger.ObservabilityClientFailures;
import com.stripe.jvmcore.dagger.ReportTraces;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.GatorApi;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: GatorModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JL\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u0012\u001a\u00020\u00132\u000e\b\u0001\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0007¨\u0006\u0019"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/GatorModule;", "", "()V", "provideCrpcClient", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "serviceUrlProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "crpcRequestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "traceLoggingInterceptor", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "observabilityClientFailuresInterceptor", "httpClientConfigurator", "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideGatorApi", "Lcom/stripe/proto/api/gator/GatorApi;", "crpcClient", "Ldagger/Lazy;", "provideServiceUrlProvider", "environmentProvider", "Lcom/stripe/jvmcore/environment/EnvironmentProvider;", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class GatorModule {
    public static final GatorModule INSTANCE = new GatorModule();

    private GatorModule() {
    }

    @Provides
    @Gator
    public final CrpcClient.BaseUrlProvider provideServiceUrlProvider(final EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "environmentProvider");
        return new CrpcClient.BaseUrlProvider() { // from class: com.stripe.jvmcore.client.dagger.GatorModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.BaseUrlProvider
            public final String getBaseUrl() {
                return GatorModule.provideServiceUrlProvider$lambda$0(environmentProvider);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String provideServiceUrlProvider$lambda$0(EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "$environmentProvider");
        return environmentProvider.getEnvironment().getGatorApiUrl();
    }

    @Provides
    @Singleton
    @Gator
    public final CrpcClient provideCrpcClient(final OkHttpClientProvider okHttpClientProvider, @Gator CrpcClient.BaseUrlProvider serviceUrlProvider, @Gator CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, @ReportTraces CustomCrpcInterceptor traceLoggingInterceptor, @ObservabilityClientFailures CustomCrpcInterceptor observabilityClientFailuresInterceptor, @Gator final HttpClientConfigurator httpClientConfigurator, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(serviceUrlProvider, "serviceUrlProvider");
        Intrinsics.checkNotNullParameter(crpcRequestContextProvider, "crpcRequestContextProvider");
        Intrinsics.checkNotNullParameter(traceLoggingInterceptor, "traceLoggingInterceptor");
        Intrinsics.checkNotNullParameter(httpClientConfigurator, "httpClientConfigurator");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        CrpcClient.Builder builder = new CrpcClient.Builder(new Function0<OkHttpClient>() { // from class: com.stripe.jvmcore.client.dagger.GatorModule.provideCrpcClient.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                return httpClientConfigurator.configure(okHttpClientProvider.get().newBuilder()).build();
            }
        }, serviceUrlProvider, crpcRequestContextProvider, logWriter);
        if (observabilityClientFailuresInterceptor != null) {
            builder.addCustomCrpcInterceptor(observabilityClientFailuresInterceptor);
        }
        return builder.addCustomCrpcInterceptor(traceLoggingInterceptor).build();
    }

    @Provides
    @Singleton
    public final GatorApi provideGatorApi(@Gator Lazy<CrpcClient> crpcClient) {
        Intrinsics.checkNotNullParameter(crpcClient, "crpcClient");
        return new GatorApi(crpcClient);
    }
}
