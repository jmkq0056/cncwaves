package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.api.warden.WardenApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class WardenModule_ProvideWardenApiFactory implements Factory<WardenApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public WardenModule_ProvideWardenApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public WardenApi get() {
        return provideWardenApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static WardenModule_ProvideWardenApiFactory create(Provider<CrpcClient> provider) {
        return new WardenModule_ProvideWardenApiFactory(provider);
    }

    public static WardenApi provideWardenApi(Lazy<CrpcClient> lazy) {
        return (WardenApi) Preconditions.checkNotNullFromProvides(WardenModule.INSTANCE.provideWardenApi(lazy));
    }
}
