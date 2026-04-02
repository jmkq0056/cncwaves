package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideClientLoggerApiFactory implements Factory<ClientLoggerApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public LogModule_ProvideClientLoggerApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public ClientLoggerApi get() {
        return provideClientLoggerApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static LogModule_ProvideClientLoggerApiFactory create(Provider<CrpcClient> provider) {
        return new LogModule_ProvideClientLoggerApiFactory(provider);
    }

    public static ClientLoggerApi provideClientLoggerApi(Lazy<CrpcClient> lazy) {
        return (ClientLoggerApi) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideClientLoggerApi(lazy));
    }
}
