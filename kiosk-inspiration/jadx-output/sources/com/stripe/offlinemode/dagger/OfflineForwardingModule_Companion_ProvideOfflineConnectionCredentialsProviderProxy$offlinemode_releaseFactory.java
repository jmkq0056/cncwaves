package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider;
import com.stripe.offlinemode.forwarding.OfflineCredentialsProviderProxy;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory implements Factory<OfflineCredentialsProviderProxy> {
    private final Provider<DefaultOfflineCredentialsProvider> credentialsProvider;
    private final Provider<ProxyOfflineListener> offlineListenerProvider;

    public OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory(Provider<DefaultOfflineCredentialsProvider> credentialsProvider, Provider<ProxyOfflineListener> offlineListenerProvider) {
        this.credentialsProvider = credentialsProvider;
        this.offlineListenerProvider = offlineListenerProvider;
    }

    @Override // javax.inject.Provider
    public OfflineCredentialsProviderProxy get() {
        return provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(this.credentialsProvider.get(), this.offlineListenerProvider.get());
    }

    public static OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory create(Provider<DefaultOfflineCredentialsProvider> credentialsProvider, Provider<ProxyOfflineListener> offlineListenerProvider) {
        return new OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory(credentialsProvider, offlineListenerProvider);
    }

    public static OfflineCredentialsProviderProxy provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(DefaultOfflineCredentialsProvider credentialsProvider, ProxyOfflineListener offlineListener) {
        return (OfflineCredentialsProviderProxy) Preconditions.checkNotNullFromProvides(OfflineForwardingModule.INSTANCE.provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(credentialsProvider, offlineListener));
    }
}
