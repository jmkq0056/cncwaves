package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory implements Factory<ReactiveReaderStatusListener> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final ReaderStatusModule module;

    public ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory(ReaderStatusModule readerStatusModule, Provider<LoggerFactory> provider) {
        this.module = readerStatusModule;
        this.loggerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReactiveReaderStatusListener get() {
        return provideReactiveReaderStatusListener(this.module, this.loggerFactoryProvider.get());
    }

    public static ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory create(ReaderStatusModule readerStatusModule, Provider<LoggerFactory> provider) {
        return new ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory(readerStatusModule, provider);
    }

    public static ReactiveReaderStatusListener provideReactiveReaderStatusListener(ReaderStatusModule readerStatusModule, LoggerFactory loggerFactory) {
        return (ReactiveReaderStatusListener) Preconditions.checkNotNullFromProvides(readerStatusModule.provideReactiveReaderStatusListener(loggerFactory));
    }
}
