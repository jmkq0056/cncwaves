package com.stripe.jvmcore.logging;

import com.stripe.loggingmodels.MetricLogger;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HealthLoggerBuilder_Factory implements Factory<HealthLoggerBuilder> {
    private final Provider<Boolean> isDebugProvider;
    private final Provider<HealthMetricListenersProvider> listenersProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<MetricLogger> metricLoggerProvider;

    public HealthLoggerBuilder_Factory(Provider<MetricLogger> provider, Provider<Boolean> provider2, Provider<HealthMetricListenersProvider> provider3, Provider<LogWriter> provider4) {
        this.metricLoggerProvider = provider;
        this.isDebugProvider = provider2;
        this.listenersProvider = provider3;
        this.logWriterProvider = provider4;
    }

    @Override // javax.inject.Provider
    public HealthLoggerBuilder get() {
        return newInstance(this.metricLoggerProvider.get(), this.isDebugProvider.get().booleanValue(), this.listenersProvider.get(), this.logWriterProvider.get());
    }

    public static HealthLoggerBuilder_Factory create(Provider<MetricLogger> provider, Provider<Boolean> provider2, Provider<HealthMetricListenersProvider> provider3, Provider<LogWriter> provider4) {
        return new HealthLoggerBuilder_Factory(provider, provider2, provider3, provider4);
    }

    public static HealthLoggerBuilder newInstance(MetricLogger metricLogger, boolean z, HealthMetricListenersProvider healthMetricListenersProvider, LogWriter logWriter) {
        return new HealthLoggerBuilder(metricLogger, z, healthMetricListenersProvider, logWriter);
    }
}
