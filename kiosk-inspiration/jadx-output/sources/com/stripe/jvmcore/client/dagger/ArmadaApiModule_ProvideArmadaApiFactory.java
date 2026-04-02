package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.api.armada.ArmadaApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ArmadaApiModule_ProvideArmadaApiFactory implements Factory<ArmadaApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public ArmadaApiModule_ProvideArmadaApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public ArmadaApi get() {
        return provideArmadaApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static ArmadaApiModule_ProvideArmadaApiFactory create(Provider<CrpcClient> provider) {
        return new ArmadaApiModule_ProvideArmadaApiFactory(provider);
    }

    public static ArmadaApi provideArmadaApi(Lazy<CrpcClient> lazy) {
        return (ArmadaApi) Preconditions.checkNotNullFromProvides(ArmadaApiModule.INSTANCE.provideArmadaApi(lazy));
    }
}
