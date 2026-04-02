package com.stripe.stripeterminal.dagger;

import com.stripe.kmpcore.jackrabbitclient.JackrabbitClient;
import com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class IpReaderModule_ProvideJackrabbitClientFactory implements Factory<JackrabbitClient> {
    private final Provider<KmpCrpcClient> kmpCrpcClientProvider;
    private final IpReaderModule module;

    public IpReaderModule_ProvideJackrabbitClientFactory(IpReaderModule ipReaderModule, Provider<KmpCrpcClient> provider) {
        this.module = ipReaderModule;
        this.kmpCrpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public JackrabbitClient get() {
        return provideJackrabbitClient(this.module, this.kmpCrpcClientProvider.get());
    }

    public static IpReaderModule_ProvideJackrabbitClientFactory create(IpReaderModule ipReaderModule, Provider<KmpCrpcClient> provider) {
        return new IpReaderModule_ProvideJackrabbitClientFactory(ipReaderModule, provider);
    }

    public static JackrabbitClient provideJackrabbitClient(IpReaderModule ipReaderModule, KmpCrpcClient kmpCrpcClient) {
        return (JackrabbitClient) Preconditions.checkNotNullFromProvides(ipReaderModule.provideJackrabbitClient(kmpCrpcClient));
    }
}
