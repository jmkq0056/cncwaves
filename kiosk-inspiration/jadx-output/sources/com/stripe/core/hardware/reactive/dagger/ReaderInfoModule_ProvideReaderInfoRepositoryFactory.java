package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.ReaderInfoHandler;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class ReaderInfoModule_ProvideReaderInfoRepositoryFactory implements Factory<ReaderInfoRepository> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ReaderInfoHandler> readerInfoHandlerProvider;

    public ReaderInfoModule_ProvideReaderInfoRepositoryFactory(Provider<CoroutineScope> provider, Provider<CoroutineDispatcher> provider2, Provider<ReaderInfoHandler> provider3, Provider<LoggerFactory> provider4) {
        this.appScopeProvider = provider;
        this.ioProvider = provider2;
        this.readerInfoHandlerProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public ReaderInfoRepository get() {
        return provideReaderInfoRepository(this.appScopeProvider.get(), this.ioProvider.get(), this.readerInfoHandlerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ReaderInfoModule_ProvideReaderInfoRepositoryFactory create(Provider<CoroutineScope> provider, Provider<CoroutineDispatcher> provider2, Provider<ReaderInfoHandler> provider3, Provider<LoggerFactory> provider4) {
        return new ReaderInfoModule_ProvideReaderInfoRepositoryFactory(provider, provider2, provider3, provider4);
    }

    public static ReaderInfoRepository provideReaderInfoRepository(CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, ReaderInfoHandler readerInfoHandler, LoggerFactory loggerFactory) {
        return (ReaderInfoRepository) Preconditions.checkNotNullFromProvides(ReaderInfoModule.INSTANCE.provideReaderInfoRepository(coroutineScope, coroutineDispatcher, readerInfoHandler, loggerFactory));
    }
}
