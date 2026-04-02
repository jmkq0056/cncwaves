package com.stripe.core.bbpos;

import com.stripe.core.hardware.updates.ReaderUpdateListener;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposOtaListener_Factory implements Factory<BbposOtaListener> {
    private final Provider<Boolean> debugLogsShouldBeSentToSplunkProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ReaderUpdateListener> updateListenerProvider;

    public BbposOtaListener_Factory(Provider<ReaderUpdateListener> provider, Provider<Boolean> provider2, Provider<LoggerFactory> provider3) {
        this.updateListenerProvider = provider;
        this.debugLogsShouldBeSentToSplunkProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BbposOtaListener get() {
        return newInstance(this.updateListenerProvider.get(), this.debugLogsShouldBeSentToSplunkProvider, this.loggerFactoryProvider.get());
    }

    public static BbposOtaListener_Factory create(Provider<ReaderUpdateListener> provider, Provider<Boolean> provider2, Provider<LoggerFactory> provider3) {
        return new BbposOtaListener_Factory(provider, provider2, provider3);
    }

    public static BbposOtaListener newInstance(ReaderUpdateListener readerUpdateListener, Provider<Boolean> provider, LoggerFactory loggerFactory) {
        return new BbposOtaListener(readerUpdateListener, provider, loggerFactory);
    }
}
