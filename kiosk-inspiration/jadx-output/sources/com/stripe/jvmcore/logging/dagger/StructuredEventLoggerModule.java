package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.logging.BaseSearchIndicesProvider;
import com.stripe.jvmcore.logging.ObservabilityDataStructuredEventLogger;
import com.stripe.loggingmodels.StructuredEventLogger;
import com.stripe.loggingmodels.StructuredEventLoggerInitializer;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import com.stripe.time.Clock;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StructuredEventLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;", "", "()V", "provideObservabilityDataStructuredEventLogger", "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;", "observabilityDataBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "clock", "Lcom/stripe/time/Clock;", "baseSearchIndicesProvider", "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;", "provideObservabilityDataStructuredEventLogger$logging", "Bindings", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class StructuredEventLoggerModule {

    /* JADX INFO: compiled from: StructuredEventLoggerModule.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule$Bindings;", "", "()V", "bindStructuredEventLogger", "Lcom/stripe/loggingmodels/StructuredEventLogger;", "observabilityDataStructuredEventLogger", "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;", "bindStructuredEventLogger$logging", "bindStructuredEventLoggerInitializer", "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;", "bindStructuredEventLoggerInitializer$logging", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Singleton
        @Binds
        public abstract StructuredEventLogger bindStructuredEventLogger$logging(ObservabilityDataStructuredEventLogger observabilityDataStructuredEventLogger);

        @Singleton
        @Binds
        public abstract StructuredEventLoggerInitializer bindStructuredEventLoggerInitializer$logging(ObservabilityDataStructuredEventLogger observabilityDataStructuredEventLogger);
    }

    @Provides
    @Singleton
    public final ObservabilityDataStructuredEventLogger provideObservabilityDataStructuredEventLogger$logging(BatchDispatcher<ObservabilityData> observabilityDataBatchDispatcher, Clock clock, BaseSearchIndicesProvider baseSearchIndicesProvider) {
        Intrinsics.checkNotNullParameter(observabilityDataBatchDispatcher, "observabilityDataBatchDispatcher");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(baseSearchIndicesProvider, "baseSearchIndicesProvider");
        return new ObservabilityDataStructuredEventLogger(observabilityDataBatchDispatcher, clock, baseSearchIndicesProvider);
    }
}
