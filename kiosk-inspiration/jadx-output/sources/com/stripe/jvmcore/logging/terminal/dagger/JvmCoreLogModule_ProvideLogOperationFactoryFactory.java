package com.stripe.jvmcore.logging.terminal.dagger;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperation;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideLogOperationFactoryFactory implements Factory<LogOperationFactory<ApplicationTrace, DefaultLogOperation>> {
    private final Provider<Gson> gsonProvider;
    private final Provider<MetricLogger> metricLoggerProvider;
    private final Provider<TraceLogger> traceLoggerProvider;
    private final Provider<TraceManager> traceManagerProvider;

    public JvmCoreLogModule_ProvideLogOperationFactoryFactory(Provider<TraceLogger> provider, Provider<MetricLogger> provider2, Provider<TraceManager> provider3, Provider<Gson> provider4) {
        this.traceLoggerProvider = provider;
        this.metricLoggerProvider = provider2;
        this.traceManagerProvider = provider3;
        this.gsonProvider = provider4;
    }

    @Override // javax.inject.Provider
    public LogOperationFactory<ApplicationTrace, DefaultLogOperation> get() {
        return provideLogOperationFactory(this.traceLoggerProvider.get(), this.metricLoggerProvider.get(), this.traceManagerProvider.get(), this.gsonProvider.get());
    }

    public static JvmCoreLogModule_ProvideLogOperationFactoryFactory create(Provider<TraceLogger> provider, Provider<MetricLogger> provider2, Provider<TraceManager> provider3, Provider<Gson> provider4) {
        return new JvmCoreLogModule_ProvideLogOperationFactoryFactory(provider, provider2, provider3, provider4);
    }

    public static LogOperationFactory<ApplicationTrace, DefaultLogOperation> provideLogOperationFactory(TraceLogger traceLogger, MetricLogger metricLogger, TraceManager traceManager, Gson gson) {
        return (LogOperationFactory) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideLogOperationFactory(traceLogger, metricLogger, traceManager, gson));
    }
}
