package com.stripe.core.hardware.reactive;

import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ReaderInfoHandler_Factory implements Factory<ReaderInfoHandler> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;
    private final Provider<Scheduler> ioProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ReaderInfoController> readerInfoControllerProvider;
    private final Provider<ReactiveReaderStatusListener> readerStatusListenerProvider;

    public ReaderInfoHandler_Factory(Provider<Scheduler> provider, Provider<ReaderInfoController> provider2, Provider<ReactiveReaderStatusListener> provider3, Provider<HealthLoggerBuilder> provider4, Provider<LoggerFactory> provider5) {
        this.ioProvider = provider;
        this.readerInfoControllerProvider = provider2;
        this.readerStatusListenerProvider = provider3;
        this.healthLoggerBuilderProvider = provider4;
        this.loggerFactoryProvider = provider5;
    }

    @Override // javax.inject.Provider
    public ReaderInfoHandler get() {
        return newInstance(this.ioProvider.get(), this.readerInfoControllerProvider.get(), this.readerStatusListenerProvider.get(), this.healthLoggerBuilderProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ReaderInfoHandler_Factory create(Provider<Scheduler> provider, Provider<ReaderInfoController> provider2, Provider<ReactiveReaderStatusListener> provider3, Provider<HealthLoggerBuilder> provider4, Provider<LoggerFactory> provider5) {
        return new ReaderInfoHandler_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static ReaderInfoHandler newInstance(Scheduler scheduler, ReaderInfoController readerInfoController, ReactiveReaderStatusListener reactiveReaderStatusListener, HealthLoggerBuilder healthLoggerBuilder, LoggerFactory loggerFactory) {
        return new ReaderInfoHandler(scheduler, readerInfoController, reactiveReaderStatusListener, healthLoggerBuilder, loggerFactory);
    }
}
