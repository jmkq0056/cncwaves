package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.jvmcore.dagger.Armada;
import com.stripe.jvmcore.dagger.ReportTraces;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.logwriter.LogWriter;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoSet;
import java.util.Iterator;
import java.util.Set;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: ArmadaCrpcClientModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JK\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\u0013\b\u0001\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0002\b\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0012\u0010\u0016\u001a\u00020\r2\b\b\u0001\u0010\u0017\u001a\u00020\rH\u0007¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;", "", "()V", "provideCrpcClient", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "serviceUrlProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "crpcRequestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "customCrpcInterceptors", "", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "Lkotlin/jvm/JvmSuppressWildcards;", "httpClientConfigurator", "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideServiceUrlProvider", "environmentProvider", "Lcom/stripe/jvmcore/environment/EnvironmentProvider;", "provideTraceLoggingInterceptor", "traceLoggingInterceptor", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ArmadaCrpcClientModule {
    public static final ArmadaCrpcClientModule INSTANCE = new ArmadaCrpcClientModule();

    @Provides
    @Armada
    @IntoSet
    public final CustomCrpcInterceptor provideTraceLoggingInterceptor(@ReportTraces CustomCrpcInterceptor traceLoggingInterceptor) {
        Intrinsics.checkNotNullParameter(traceLoggingInterceptor, "traceLoggingInterceptor");
        return traceLoggingInterceptor;
    }

    private ArmadaCrpcClientModule() {
    }

    @Provides
    @Armada
    public final CrpcClient.BaseUrlProvider provideServiceUrlProvider(final EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "environmentProvider");
        return new CrpcClient.BaseUrlProvider() { // from class: com.stripe.jvmcore.client.dagger.ArmadaCrpcClientModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.BaseUrlProvider
            public final String getBaseUrl() {
                return ArmadaCrpcClientModule.provideServiceUrlProvider$lambda$0(environmentProvider);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String provideServiceUrlProvider$lambda$0(EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "$environmentProvider");
        return environmentProvider.getEnvironment().getArmadaApiUrl();
    }

    @Provides
    @Singleton
    @Armada
    public final CrpcClient provideCrpcClient(final OkHttpClientProvider okHttpClientProvider, @Armada CrpcClient.BaseUrlProvider serviceUrlProvider, @Armada CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, @Armada Set<CustomCrpcInterceptor> customCrpcInterceptors, @Armada final HttpClientConfigurator httpClientConfigurator, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(serviceUrlProvider, "serviceUrlProvider");
        Intrinsics.checkNotNullParameter(crpcRequestContextProvider, "crpcRequestContextProvider");
        Intrinsics.checkNotNullParameter(customCrpcInterceptors, "customCrpcInterceptors");
        Intrinsics.checkNotNullParameter(httpClientConfigurator, "httpClientConfigurator");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        CrpcClient.Builder builder = new CrpcClient.Builder(new Function0<OkHttpClient>() { // from class: com.stripe.jvmcore.client.dagger.ArmadaCrpcClientModule.provideCrpcClient.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                return httpClientConfigurator.configure(okHttpClientProvider.get().newBuilder()).build();
            }
        }, serviceUrlProvider, crpcRequestContextProvider, logWriter);
        Iterator<T> it = customCrpcInterceptors.iterator();
        while (it.hasNext()) {
            builder.addCustomCrpcInterceptor((CustomCrpcInterceptor) it.next());
        }
        return builder.build();
    }
}
