package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerModule_ProvideClientLoggerApiFactory implements Factory<ClientLoggerApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public ClientLoggerModule_ProvideClientLoggerApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public ClientLoggerApi get() {
        return provideClientLoggerApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static ClientLoggerModule_ProvideClientLoggerApiFactory create(Provider<CrpcClient> provider) {
        return new ClientLoggerModule_ProvideClientLoggerApiFactory(provider);
    }

    public static ClientLoggerApi provideClientLoggerApi(Lazy<CrpcClient> lazy) {
        return (ClientLoggerApi) Preconditions.checkNotNullFromProvides(ClientLoggerModule.INSTANCE.provideClientLoggerApi(lazy));
    }
}
