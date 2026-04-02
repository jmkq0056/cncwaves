package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.terminal.terminal.pub.api.armada.IotApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class IotApiModule_ProvideIotApiFactory implements Factory<IotApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public IotApiModule_ProvideIotApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public IotApi get() {
        return provideIotApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static IotApiModule_ProvideIotApiFactory create(Provider<CrpcClient> provider) {
        return new IotApiModule_ProvideIotApiFactory(provider);
    }

    public static IotApi provideIotApi(Lazy<CrpcClient> lazy) {
        return (IotApi) Preconditions.checkNotNullFromProvides(IotApiModule.INSTANCE.provideIotApi(lazy));
    }
}
