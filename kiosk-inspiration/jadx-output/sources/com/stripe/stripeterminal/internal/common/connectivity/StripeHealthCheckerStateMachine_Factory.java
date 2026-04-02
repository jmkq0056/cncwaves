package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class StripeHealthCheckerStateMachine_Factory implements Factory<StripeHealthCheckerStateMachine> {
    private final Provider<OfflineStableHandler> offlineStableHandlerProvider;
    private final Provider<OfflineUnstableHandler> offlineUnstableHandlerProvider;
    private final Provider<OnlineStableHandler> onlineStableHandlerProvider;
    private final Provider<OnlineUnstableHandler> onlineUnstableHandlerProvider;
    private final Provider<UnknownHandler> unknownHandlerProvider;

    public StripeHealthCheckerStateMachine_Factory(Provider<UnknownHandler> provider, Provider<OnlineStableHandler> provider2, Provider<OfflineStableHandler> provider3, Provider<OnlineUnstableHandler> provider4, Provider<OfflineUnstableHandler> provider5) {
        this.unknownHandlerProvider = provider;
        this.onlineStableHandlerProvider = provider2;
        this.offlineStableHandlerProvider = provider3;
        this.onlineUnstableHandlerProvider = provider4;
        this.offlineUnstableHandlerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public StripeHealthCheckerStateMachine get() {
        return newInstance(this.unknownHandlerProvider.get(), this.onlineStableHandlerProvider.get(), this.offlineStableHandlerProvider.get(), this.onlineUnstableHandlerProvider.get(), this.offlineUnstableHandlerProvider.get());
    }

    public static StripeHealthCheckerStateMachine_Factory create(Provider<UnknownHandler> provider, Provider<OnlineStableHandler> provider2, Provider<OfflineStableHandler> provider3, Provider<OnlineUnstableHandler> provider4, Provider<OfflineUnstableHandler> provider5) {
        return new StripeHealthCheckerStateMachine_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static StripeHealthCheckerStateMachine newInstance(UnknownHandler unknownHandler, OnlineStableHandler onlineStableHandler, OfflineStableHandler offlineStableHandler, OnlineUnstableHandler onlineUnstableHandler, OfflineUnstableHandler offlineUnstableHandler) {
        return new StripeHealthCheckerStateMachine(unknownHandler, onlineStableHandler, offlineStableHandler, onlineUnstableHandler, offlineUnstableHandler);
    }
}
