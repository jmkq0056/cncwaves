package com.stripe.logwriter.dagger;

import com.stripe.loggingmodels.LogLevel;
import com.stripe.logwriter.PlatformLogWriter;
import com.stripe.logwriter.TerminalLogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class LogWriterModule_ProvideTerminalLogWriterFactory implements Factory<TerminalLogWriter> {
    private final Provider<LogLevel> logLevelProvider;
    private final Provider<PlatformLogWriter> writerProvider;

    public LogWriterModule_ProvideTerminalLogWriterFactory(Provider<LogLevel> provider, Provider<PlatformLogWriter> provider2) {
        this.logLevelProvider = provider;
        this.writerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TerminalLogWriter get() {
        return provideTerminalLogWriter(this.logLevelProvider.get(), this.writerProvider.get());
    }

    public static LogWriterModule_ProvideTerminalLogWriterFactory create(Provider<LogLevel> provider, Provider<PlatformLogWriter> provider2) {
        return new LogWriterModule_ProvideTerminalLogWriterFactory(provider, provider2);
    }

    public static TerminalLogWriter provideTerminalLogWriter(LogLevel logLevel, PlatformLogWriter platformLogWriter) {
        return (TerminalLogWriter) Preconditions.checkNotNullFromProvides(LogWriterModule.INSTANCE.provideTerminalLogWriter(logLevel, platformLogWriter));
    }
}
