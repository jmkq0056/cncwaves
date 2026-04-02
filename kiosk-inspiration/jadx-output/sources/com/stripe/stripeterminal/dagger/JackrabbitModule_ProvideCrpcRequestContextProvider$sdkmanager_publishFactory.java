package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class JackrabbitModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory implements Factory<CrpcClient.CrpcRequestContextProvider> {
    private final Provider<RemoteReaderRequestContextProvider> readerCrpcRequestContextProvider;

    public JackrabbitModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory(Provider<RemoteReaderRequestContextProvider> provider) {
        this.readerCrpcRequestContextProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcClient.CrpcRequestContextProvider get() {
        return provideCrpcRequestContextProvider$sdkmanager_publish(this.readerCrpcRequestContextProvider.get());
    }

    public static JackrabbitModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory create(Provider<RemoteReaderRequestContextProvider> provider) {
        return new JackrabbitModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory(provider);
    }

    public static CrpcClient.CrpcRequestContextProvider provideCrpcRequestContextProvider$sdkmanager_publish(RemoteReaderRequestContextProvider remoteReaderRequestContextProvider) {
        return (CrpcClient.CrpcRequestContextProvider) Preconditions.checkNotNullFromProvides(JackrabbitModule.INSTANCE.provideCrpcRequestContextProvider$sdkmanager_publish(remoteReaderRequestContextProvider));
    }
}
