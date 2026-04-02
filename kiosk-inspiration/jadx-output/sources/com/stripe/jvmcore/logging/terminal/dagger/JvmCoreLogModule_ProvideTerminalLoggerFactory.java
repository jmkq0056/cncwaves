package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.LogOperationCollector;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory;
import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperation;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.logwriter.LogWriter;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideTerminalLoggerFactory implements Factory<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> {
    private final Provider<LoggerHelper<ApplicationTrace, ApplicationTraceResult>> applicationTraceHelperProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<LogRepository<DefaultLogOperation>> logRepositoryProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LogOperationCollector<ApplicationTraceResult, DefaultLogOperation>> operationCollectorProvider;
    private final Provider<LogOperationFactory<ApplicationTrace, DefaultLogOperation>> operationFactoryProvider;

    public JvmCoreLogModule_ProvideTerminalLoggerFactory(Provider<LogWriter> provider, Provider<LogRepository<DefaultLogOperation>> provider2, Provider<Clock> provider3, Provider<LogOperationFactory<ApplicationTrace, DefaultLogOperation>> provider4, Provider<LogOperationCollector<ApplicationTraceResult, DefaultLogOperation>> provider5, Provider<LoggerHelper<ApplicationTrace, ApplicationTraceResult>> provider6) {
        this.logWriterProvider = provider;
        this.logRepositoryProvider = provider2;
        this.clockProvider = provider3;
        this.operationFactoryProvider = provider4;
        this.operationCollectorProvider = provider5;
        this.applicationTraceHelperProvider = provider6;
    }

    @Override // javax.inject.Provider
    public SimpleLogger<ApplicationTrace, ApplicationTraceResult> get() {
        return provideTerminalLogger(this.logWriterProvider.get(), this.logRepositoryProvider.get(), this.clockProvider.get(), this.operationFactoryProvider.get(), this.operationCollectorProvider.get(), this.applicationTraceHelperProvider.get());
    }

    public static JvmCoreLogModule_ProvideTerminalLoggerFactory create(Provider<LogWriter> provider, Provider<LogRepository<DefaultLogOperation>> provider2, Provider<Clock> provider3, Provider<LogOperationFactory<ApplicationTrace, DefaultLogOperation>> provider4, Provider<LogOperationCollector<ApplicationTraceResult, DefaultLogOperation>> provider5, Provider<LoggerHelper<ApplicationTrace, ApplicationTraceResult>> provider6) {
        return new JvmCoreLogModule_ProvideTerminalLoggerFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static SimpleLogger<ApplicationTrace, ApplicationTraceResult> provideTerminalLogger(LogWriter logWriter, LogRepository<DefaultLogOperation> logRepository, Clock clock, LogOperationFactory<ApplicationTrace, DefaultLogOperation> logOperationFactory, LogOperationCollector<ApplicationTraceResult, DefaultLogOperation> logOperationCollector, LoggerHelper<ApplicationTrace, ApplicationTraceResult> loggerHelper) {
        return (SimpleLogger) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideTerminalLogger(logWriter, logRepository, clock, logOperationFactory, logOperationCollector, loggerHelper));
    }
}
