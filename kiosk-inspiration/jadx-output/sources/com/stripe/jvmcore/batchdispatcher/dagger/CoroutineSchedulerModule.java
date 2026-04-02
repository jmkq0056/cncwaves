package com.stripe.jvmcore.batchdispatcher.dagger;

import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.Main;
import com.stripe.logwriter.LogWriter;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CoroutineSchedulerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007J$\u0010\r\u001a\u00020\u00062\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;", "", "dispatchIntervalMillis", "", "(J)V", "provideClientLoggerScheduler", "Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "main", "Lkotlinx/coroutines/CoroutineDispatcher;", "provideScheduler", "Bindings", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class CoroutineSchedulerModule {
    private final long dispatchIntervalMillis;

    /* JADX INFO: compiled from: CoroutineSchedulerModule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule$Bindings;", "", "bindClientLoggerScheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;", "bindDefaultScheduler", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @ClientLogger
        @Binds
        Scheduler bindClientLoggerScheduler(@ClientLogger CoroutineScheduler scheduler);

        @Binds
        Scheduler bindDefaultScheduler(CoroutineScheduler scheduler);
    }

    public CoroutineSchedulerModule() {
        this(0L, 1, null);
    }

    public CoroutineSchedulerModule(long j) {
        this.dispatchIntervalMillis = j;
    }

    public /* synthetic */ CoroutineSchedulerModule(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DispatcherContantsKt.getDEFAULT_DISPATCH_INTERVAL_MILLIS() : j);
    }

    @Provides
    public final CoroutineScheduler provideScheduler(@AppScope CoroutineScope appScope, @Main CoroutineDispatcher main, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(main, "main");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new CoroutineScheduler(this.dispatchIntervalMillis, appScope, main, logWriter);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final CoroutineScheduler provideClientLoggerScheduler(LogWriter logWriter, @AppScope CoroutineScope appScope, @Main CoroutineDispatcher main) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(main, "main");
        return new CoroutineScheduler(DispatcherContantsKt.getDEFAULT_DISPATCH_INTERVAL_MILLIS(), appScope, main, logWriter);
    }
}
