package com.stripe.jvmcore.batchdispatcher.dagger;

import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.batchdispatcher.schedulers.ExecutorScheduler;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.LogUpload;
import com.stripe.logwriter.LogWriter;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ExecutorSchedulerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007J$\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;", "", "delayMs", "", "(J)V", "providesClientLoggerExecutorScheduler", "Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "executorService", "Ljava/util/concurrent/ScheduledExecutorService;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "providesExecutorScheduler", "Bindings", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class ExecutorSchedulerModule {
    private final long delayMs;

    /* JADX INFO: compiled from: ExecutorSchedulerModule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule$Bindings;", "", "bindClientLoggerExecutorScheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;", "bindDefaultScheduler", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @ClientLogger
        @Binds
        Scheduler bindClientLoggerExecutorScheduler(@ClientLogger ExecutorScheduler scheduler);

        @Binds
        Scheduler bindDefaultScheduler(ExecutorScheduler scheduler);
    }

    public ExecutorSchedulerModule() {
        this(0L, 1, null);
    }

    public ExecutorSchedulerModule(long j) {
        this.delayMs = j;
    }

    public /* synthetic */ ExecutorSchedulerModule(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DispatcherContantsKt.getDEFAULT_DISPATCH_INTERVAL_MILLIS() : j);
    }

    @Provides
    public final ExecutorScheduler providesExecutorScheduler(LogWriter logWriter, @LogUpload ScheduledExecutorService executorService, @AppScope CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new ExecutorScheduler(this.delayMs, logWriter, executorService, scope);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final ExecutorScheduler providesClientLoggerExecutorScheduler(LogWriter logWriter, @LogUpload ScheduledExecutorService executorService, @AppScope CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new ExecutorScheduler(this.delayMs, logWriter, executorService, scope);
    }
}
