package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxySpanPb;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TraceLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;", "", "()V", "provideBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "collector", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "dispatcher", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ClientLoggerTraceLoggerBatchDispatcherModule {
    public static final ClientLoggerTraceLoggerBatchDispatcherModule INSTANCE = new ClientLoggerTraceLoggerBatchDispatcherModule();

    private ClientLoggerTraceLoggerBatchDispatcherModule() {
    }

    @Provides
    @Singleton
    public final BatchDispatcher<ProxySpanPb> provideBatchDispatcher(Collector<ProxySpanPb> collector, @ClientLogger Dispatcher<ProxySpanPb> dispatcher, Scheduler scheduler, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new BatchDispatcher<>(collector, dispatcher, scheduler, logWriter);
    }
}
