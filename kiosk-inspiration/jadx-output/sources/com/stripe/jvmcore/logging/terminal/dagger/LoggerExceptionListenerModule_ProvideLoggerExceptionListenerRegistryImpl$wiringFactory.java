package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerExceptionListenerRegistryImpl;
import com.stripe.loggingmodels.LoggerExceptionListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory implements Factory<LoggerExceptionListenerRegistryImpl> {
    private final Provider<Set<LoggerExceptionListener>> listenersProvider;

    public LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory(Provider<Set<LoggerExceptionListener>> provider) {
        this.listenersProvider = provider;
    }

    @Override // javax.inject.Provider
    public LoggerExceptionListenerRegistryImpl get() {
        return provideLoggerExceptionListenerRegistryImpl$wiring(this.listenersProvider.get());
    }

    public static LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory create(Provider<Set<LoggerExceptionListener>> provider) {
        return new LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory(provider);
    }

    public static LoggerExceptionListenerRegistryImpl provideLoggerExceptionListenerRegistryImpl$wiring(Set<LoggerExceptionListener> set) {
        return (LoggerExceptionListenerRegistryImpl) Preconditions.checkNotNullFromProvides(LoggerExceptionListenerModule.INSTANCE.provideLoggerExceptionListenerRegistryImpl$wiring(set));
    }
}
