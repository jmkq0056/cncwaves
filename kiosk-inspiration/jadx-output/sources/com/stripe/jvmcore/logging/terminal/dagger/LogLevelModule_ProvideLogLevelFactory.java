package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.loggingmodels.LogLevel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class LogLevelModule_ProvideLogLevelFactory implements Factory<LogLevel> {
    private final LogLevelModule module;

    public LogLevelModule_ProvideLogLevelFactory(LogLevelModule logLevelModule) {
        this.module = logLevelModule;
    }

    @Override // javax.inject.Provider
    public LogLevel get() {
        return provideLogLevel(this.module);
    }

    public static LogLevelModule_ProvideLogLevelFactory create(LogLevelModule logLevelModule) {
        return new LogLevelModule_ProvideLogLevelFactory(logLevelModule);
    }

    public static LogLevel provideLogLevel(LogLevelModule logLevelModule) {
        return (LogLevel) Preconditions.checkNotNullFromProvides(logLevelModule.getLogLevel());
    }
}
