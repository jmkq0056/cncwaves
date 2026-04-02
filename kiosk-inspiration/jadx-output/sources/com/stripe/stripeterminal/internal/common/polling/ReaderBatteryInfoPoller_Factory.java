package com.stripe.stripeterminal.internal.common.polling;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class ReaderBatteryInfoPoller_Factory implements Factory<ReaderBatteryInfoPoller> {
    private final Provider<Clock> clockProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public ReaderBatteryInfoPoller_Factory(Provider<CoroutineDispatcher> provider, Provider<Clock> provider2, Provider<LoggerFactory> provider3) {
        this.ioProvider = provider;
        this.clockProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ReaderBatteryInfoPoller get() {
        return newInstance(this.ioProvider.get(), this.clockProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ReaderBatteryInfoPoller_Factory create(Provider<CoroutineDispatcher> provider, Provider<Clock> provider2, Provider<LoggerFactory> provider3) {
        return new ReaderBatteryInfoPoller_Factory(provider, provider2, provider3);
    }

    public static ReaderBatteryInfoPoller newInstance(CoroutineDispatcher coroutineDispatcher, Clock clock, LoggerFactory loggerFactory) {
        return new ReaderBatteryInfoPoller(coroutineDispatcher, clock, loggerFactory);
    }
}
