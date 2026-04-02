package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ArmadaClientModule_ProvideContextProvider$sdkmanager_publishFactory implements Factory<CrpcClient.CrpcRequestContextProvider> {
    private final Provider<PlymouthRequestContextProvider> plymouthRequestContextProvider;

    public ArmadaClientModule_ProvideContextProvider$sdkmanager_publishFactory(Provider<PlymouthRequestContextProvider> provider) {
        this.plymouthRequestContextProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcClient.CrpcRequestContextProvider get() {
        return provideContextProvider$sdkmanager_publish(this.plymouthRequestContextProvider.get());
    }

    public static ArmadaClientModule_ProvideContextProvider$sdkmanager_publishFactory create(Provider<PlymouthRequestContextProvider> provider) {
        return new ArmadaClientModule_ProvideContextProvider$sdkmanager_publishFactory(provider);
    }

    public static CrpcClient.CrpcRequestContextProvider provideContextProvider$sdkmanager_publish(PlymouthRequestContextProvider plymouthRequestContextProvider) {
        return (CrpcClient.CrpcRequestContextProvider) Preconditions.checkNotNullFromProvides(ArmadaClientModule.INSTANCE.provideContextProvider$sdkmanager_publish(plymouthRequestContextProvider));
    }
}
