package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.logging.DefaultMetricLogger;
import com.stripe.loggingmodels.MetricLogger;
import dagger.Binds;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: MetricLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/CoreMetricLoggerModule;", "", "()V", "Bindings", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {MetricLoggerCollectorModule.class, Bindings.class})
public final class CoreMetricLoggerModule {
    public static final CoreMetricLoggerModule INSTANCE = new CoreMetricLoggerModule();

    /* JADX INFO: compiled from: MetricLoggerModule.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/CoreMetricLoggerModule$Bindings;", "", "bindMetricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "defaultMetricLogger", "Lcom/stripe/jvmcore/logging/DefaultMetricLogger;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        MetricLogger bindMetricLogger(DefaultMetricLogger defaultMetricLogger);
    }

    private CoreMetricLoggerModule() {
    }
}
