package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideLoggerFactoryFactory implements Factory<LoggerFactory> {
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> terminalLoggerProvider;

    public JvmCoreLogModule_ProvideLoggerFactoryFactory(Provider<LogWriter> provider, Provider<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> provider2) {
        this.logWriterProvider = provider;
        this.terminalLoggerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public LoggerFactory get() {
        return provideLoggerFactory(this.logWriterProvider.get(), this.terminalLoggerProvider.get());
    }

    public static JvmCoreLogModule_ProvideLoggerFactoryFactory create(Provider<LogWriter> provider, Provider<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> provider2) {
        return new JvmCoreLogModule_ProvideLoggerFactoryFactory(provider, provider2);
    }

    public static LoggerFactory provideLoggerFactory(LogWriter logWriter, SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger) {
        return (LoggerFactory) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideLoggerFactory(logWriter, simpleLogger));
    }
}
