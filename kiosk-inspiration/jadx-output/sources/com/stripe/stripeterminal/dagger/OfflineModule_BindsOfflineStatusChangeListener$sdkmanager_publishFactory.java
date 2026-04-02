package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineModule_BindsOfflineStatusChangeListener$sdkmanager_publishFactory implements Factory<OfflineStatusChangeListener> {
    private final OfflineModule module;
    private final Provider<ProxyOfflineListener> proxyOfflineListenerProvider;

    public OfflineModule_BindsOfflineStatusChangeListener$sdkmanager_publishFactory(OfflineModule offlineModule, Provider<ProxyOfflineListener> provider) {
        this.module = offlineModule;
        this.proxyOfflineListenerProvider = provider;
    }

    @Override // javax.inject.Provider
    public OfflineStatusChangeListener get() {
        return bindsOfflineStatusChangeListener$sdkmanager_publish(this.module, this.proxyOfflineListenerProvider.get());
    }

    public static OfflineModule_BindsOfflineStatusChangeListener$sdkmanager_publishFactory create(OfflineModule offlineModule, Provider<ProxyOfflineListener> provider) {
        return new OfflineModule_BindsOfflineStatusChangeListener$sdkmanager_publishFactory(offlineModule, provider);
    }

    public static OfflineStatusChangeListener bindsOfflineStatusChangeListener$sdkmanager_publish(OfflineModule offlineModule, ProxyOfflineListener proxyOfflineListener) {
        return (OfflineStatusChangeListener) Preconditions.checkNotNullFromProvides(offlineModule.bindsOfflineStatusChangeListener$sdkmanager_publish(proxyOfflineListener));
    }
}
