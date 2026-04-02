package com.stripe.jvmcore.logging.terminal.dagger;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationCollector;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperation;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideLogOperationCollectorFactory implements Factory<LogOperationCollector<ApplicationTraceResult, DefaultLogOperation>> {
    private final Provider<Gson> gsonProvider;
    private final Provider<MetricLogger> metricLoggerProvider;
    private final Provider<TraceLogger> traceLoggerProvider;

    public JvmCoreLogModule_ProvideLogOperationCollectorFactory(Provider<TraceLogger> provider, Provider<MetricLogger> provider2, Provider<Gson> provider3) {
        this.traceLoggerProvider = provider;
        this.metricLoggerProvider = provider2;
        this.gsonProvider = provider3;
    }

    @Override // javax.inject.Provider
    public LogOperationCollector<ApplicationTraceResult, DefaultLogOperation> get() {
        return provideLogOperationCollector(this.traceLoggerProvider.get(), this.metricLoggerProvider.get(), this.gsonProvider.get());
    }

    public static JvmCoreLogModule_ProvideLogOperationCollectorFactory create(Provider<TraceLogger> provider, Provider<MetricLogger> provider2, Provider<Gson> provider3) {
        return new JvmCoreLogModule_ProvideLogOperationCollectorFactory(provider, provider2, provider3);
    }

    public static LogOperationCollector<ApplicationTraceResult, DefaultLogOperation> provideLogOperationCollector(TraceLogger traceLogger, MetricLogger metricLogger, Gson gson) {
        return (LogOperationCollector) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideLogOperationCollector(traceLogger, metricLogger, gson));
    }
}
