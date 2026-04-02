package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import com.stripe.jvmcore.dagger.Jackrabbit;
import com.stripe.jvmcore.dns.InetAddressValidator;
import com.stripe.jvmcore.dns.InternetReaderDns;
import com.stripe.jvmcore.dns.SocketConnectInetAddressValidator;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.jvmcore.terminal.crpc.DistributedTracingInterceptor;
import com.stripe.jvmcore.terminal.crpc.LocalIpReaderResolutionStrategy;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.sdk.JackRabbitApi;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.TimeUnit;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dns;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: JackrabbitModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001¢\u0006\u0002\b\u0012J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u0016\u001a\u00020\u0017H\u0007J\u0012\u0010\u0018\u001a\u00020\b2\b\b\u0001\u0010\u0019\u001a\u00020\u0017H\u0007J\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u000e\b\u0001\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u001eH\u0007¨\u0006\u001f"}, d2 = {"Lcom/stripe/stripeterminal/dagger/JackrabbitModule;", "", "()V", "provideCrpcClientBuilder", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "internetReaderDns", "Lokhttp3/Dns;", "crpcRequestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "tracingInterceptor", "Lokhttp3/Interceptor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideCrpcRequestContextProvider", "readerCrpcRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;", "provideCrpcRequestContextProvider$sdkmanager_publish", "provideDistributedTracingInterceptor", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "provideInetAddressValidator", "Lcom/stripe/jvmcore/dns/InetAddressValidator;", "provideInternetReaderDns", "inetAddressValidator", "provideJackrabbitApiResolver", "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;", "Lcom/stripe/proto/api/sdk/JackRabbitApi;", "crpcClientBuilder", "Ldagger/Lazy;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class JackrabbitModule {
    public static final JackrabbitModule INSTANCE = new JackrabbitModule();

    private JackrabbitModule() {
    }

    @Provides
    @Singleton
    public final CrpcServiceResolver<JackRabbitApi> provideJackrabbitApiResolver(@Jackrabbit Lazy<CrpcClient.Builder> crpcClientBuilder) {
        Intrinsics.checkNotNullParameter(crpcClientBuilder, "crpcClientBuilder");
        return new CrpcServiceResolver<>(crpcClientBuilder, LocalIpReaderResolutionStrategy.INSTANCE, new Function1<Lazy<CrpcClient>, JackRabbitApi>() { // from class: com.stripe.stripeterminal.dagger.JackrabbitModule.provideJackrabbitApiResolver.1
            @Override // kotlin.jvm.functions.Function1
            public final JackRabbitApi invoke(Lazy<CrpcClient> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new JackRabbitApi(it);
            }
        });
    }

    @Jackrabbit
    @Provides
    @Singleton
    public final CrpcClient.CrpcRequestContextProvider provideCrpcRequestContextProvider$sdkmanager_publish(RemoteReaderRequestContextProvider readerCrpcRequestContextProvider) {
        Intrinsics.checkNotNullParameter(readerCrpcRequestContextProvider, "readerCrpcRequestContextProvider");
        return readerCrpcRequestContextProvider;
    }

    @Jackrabbit
    @Provides
    public final Interceptor provideDistributedTracingInterceptor(TraceManager traceManager) {
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        return new DistributedTracingInterceptor(traceManager);
    }

    @Jackrabbit
    @Provides
    public final InetAddressValidator provideInetAddressValidator() {
        return new SocketConnectInetAddressValidator();
    }

    @Jackrabbit
    @Provides
    public final Dns provideInternetReaderDns(@Jackrabbit InetAddressValidator inetAddressValidator) {
        Intrinsics.checkNotNullParameter(inetAddressValidator, "inetAddressValidator");
        return new InternetReaderDns(inetAddressValidator, Dns.SYSTEM, "device.stripe-terminal-local-reader.net");
    }

    @Jackrabbit
    @Provides
    @Singleton
    public final CrpcClient.Builder provideCrpcClientBuilder(final OkHttpClientProvider okHttpClientProvider, @Jackrabbit final Dns internetReaderDns, @Jackrabbit CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, @Jackrabbit final Interceptor tracingInterceptor, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(internetReaderDns, "internetReaderDns");
        Intrinsics.checkNotNullParameter(crpcRequestContextProvider, "crpcRequestContextProvider");
        Intrinsics.checkNotNullParameter(tracingInterceptor, "tracingInterceptor");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new CrpcClient.Builder(new Function0<OkHttpClient>() { // from class: com.stripe.stripeterminal.dagger.JackrabbitModule.provideCrpcClientBuilder.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                return okHttpClientProvider.get().newBuilder().dns(internetReaderDns).addInterceptor(tracingInterceptor).connectTimeout(45L, TimeUnit.SECONDS).readTimeout(45L, TimeUnit.SECONDS).build();
            }
        }, new CrpcClient.BaseUrlProvider() { // from class: com.stripe.stripeterminal.dagger.JackrabbitModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.BaseUrlProvider
            public final String getBaseUrl() {
                return JackrabbitModule.provideCrpcClientBuilder$lambda$0();
            }
        }, crpcRequestContextProvider, logWriter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String provideCrpcClientBuilder$lambda$0() {
        return "";
    }
}
