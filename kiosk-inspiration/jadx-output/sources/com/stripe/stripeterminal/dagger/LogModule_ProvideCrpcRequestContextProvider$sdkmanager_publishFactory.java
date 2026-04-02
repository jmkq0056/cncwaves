package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory implements Factory<CrpcClient.CrpcRequestContextProvider> {
    private final Provider<PlymouthRequestContextProvider> requestContextProvider;

    public LogModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory(Provider<PlymouthRequestContextProvider> provider) {
        this.requestContextProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcClient.CrpcRequestContextProvider get() {
        return provideCrpcRequestContextProvider$sdkmanager_publish(this.requestContextProvider.get());
    }

    public static LogModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory create(Provider<PlymouthRequestContextProvider> provider) {
        return new LogModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory(provider);
    }

    public static CrpcClient.CrpcRequestContextProvider provideCrpcRequestContextProvider$sdkmanager_publish(PlymouthRequestContextProvider plymouthRequestContextProvider) {
        return (CrpcClient.CrpcRequestContextProvider) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideCrpcRequestContextProvider$sdkmanager_publish(plymouthRequestContextProvider));
    }
}
