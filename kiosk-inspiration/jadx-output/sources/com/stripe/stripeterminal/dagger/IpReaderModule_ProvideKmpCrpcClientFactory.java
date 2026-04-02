package com.stripe.stripeterminal.dagger;

import com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class IpReaderModule_ProvideKmpCrpcClientFactory implements Factory<KmpCrpcClient> {
    private final IpReaderModule module;

    public IpReaderModule_ProvideKmpCrpcClientFactory(IpReaderModule ipReaderModule) {
        this.module = ipReaderModule;
    }

    @Override // javax.inject.Provider
    public KmpCrpcClient get() {
        return provideKmpCrpcClient(this.module);
    }

    public static IpReaderModule_ProvideKmpCrpcClientFactory create(IpReaderModule ipReaderModule) {
        return new IpReaderModule_ProvideKmpCrpcClientFactory(ipReaderModule);
    }

    public static KmpCrpcClient provideKmpCrpcClient(IpReaderModule ipReaderModule) {
        return (KmpCrpcClient) Preconditions.checkNotNullFromProvides(ipReaderModule.provideKmpCrpcClient());
    }
}
