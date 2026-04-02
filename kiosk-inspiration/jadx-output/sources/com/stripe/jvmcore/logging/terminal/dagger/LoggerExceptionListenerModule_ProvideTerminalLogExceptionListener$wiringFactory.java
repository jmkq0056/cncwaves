package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.loggingmodels.LoggerExceptionListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory implements Factory<LoggerExceptionListener> {
    @Override // javax.inject.Provider
    public LoggerExceptionListener get() {
        return provideTerminalLogExceptionListener$wiring();
    }

    public static LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static LoggerExceptionListener provideTerminalLogExceptionListener$wiring() {
        return (LoggerExceptionListener) Preconditions.checkNotNullFromProvides(LoggerExceptionListenerModule.INSTANCE.provideTerminalLogExceptionListener$wiring());
    }

    /* JADX INFO: compiled from: LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory.java */
    private static final class InstanceHolder {
        private static final LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory INSTANCE = new LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory();

        private InstanceHolder() {
        }
    }
}
