package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class AdapterModule_ProvideDisconnectReasonRepositoryFactory implements Factory<DisconnectReasonRepository> {
    private final Provider<Clock> clockProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public AdapterModule_ProvideDisconnectReasonRepositoryFactory(Provider<Clock> provider, Provider<LoggerFactory> provider2) {
        this.clockProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DisconnectReasonRepository get() {
        return provideDisconnectReasonRepository(this.clockProvider.get(), this.loggerFactoryProvider.get());
    }

    public static AdapterModule_ProvideDisconnectReasonRepositoryFactory create(Provider<Clock> provider, Provider<LoggerFactory> provider2) {
        return new AdapterModule_ProvideDisconnectReasonRepositoryFactory(provider, provider2);
    }

    public static DisconnectReasonRepository provideDisconnectReasonRepository(Clock clock, LoggerFactory loggerFactory) {
        return (DisconnectReasonRepository) Preconditions.checkNotNullFromProvides(AdapterModule.INSTANCE.provideDisconnectReasonRepository(clock, loggerFactory));
    }
}
