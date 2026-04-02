package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.logging.DefaultTraceLogger;
import com.stripe.loggingmodels.TraceLogger;
import dagger.Binds;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: TraceLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/CoreTraceLoggerModule;", "", "()V", "Bindings", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {TraceLoggerCollectorModule.class, Bindings.class})
public final class CoreTraceLoggerModule {
    public static final CoreTraceLoggerModule INSTANCE = new CoreTraceLoggerModule();

    /* JADX INFO: compiled from: TraceLoggerModule.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/CoreTraceLoggerModule$Bindings;", "", "bindTraceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "defaultTraceLogger", "Lcom/stripe/jvmcore/logging/DefaultTraceLogger;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        TraceLogger bindTraceLogger(DefaultTraceLogger defaultTraceLogger);
    }

    private CoreTraceLoggerModule() {
    }
}
