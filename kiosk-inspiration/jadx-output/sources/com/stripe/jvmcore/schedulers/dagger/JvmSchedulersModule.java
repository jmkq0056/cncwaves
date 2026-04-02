package com.stripe.jvmcore.schedulers.dagger;

import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.Computation;
import com.stripe.jvmcore.dagger.IO;
import dagger.Module;
import dagger.Provides;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: JvmSchedulersModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\bH\u0007J\r\u0010\n\u001a\u00070\u000b¢\u0006\u0002\b\fH\u0007J\b\u0010\r\u001a\u00020\bH\u0007J\r\u0010\u000e\u001a\u00070\u000b¢\u0006\u0002\b\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;", "", "()V", "APP_SCOPE", "", "provideAppScope", "Lkotlinx/coroutines/CoroutineScope;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "provideComputationDispatcher", "provideComputationScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "Lio/reactivex/rxjava3/annotations/NonNull;", "provideIoDispatcher", "provideIoScheduler", "schedulers"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class JvmSchedulersModule {
    private static final String APP_SCOPE = "AppScope";
    public static final JvmSchedulersModule INSTANCE = new JvmSchedulersModule();

    private JvmSchedulersModule() {
    }

    @Provides
    @AppScope
    public final CoroutineScope provideAppScope(@IO CoroutineDispatcher ioDispatcher) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(ioDispatcher).plus(new CoroutineName(APP_SCOPE)));
    }

    @Provides
    @IO
    public final Scheduler provideIoScheduler() {
        Scheduler schedulerIo = Schedulers.io();
        Intrinsics.checkNotNullExpressionValue(schedulerIo, "io(...)");
        return schedulerIo;
    }

    @Computation
    @Provides
    public final Scheduler provideComputationScheduler() {
        Scheduler schedulerComputation = Schedulers.computation();
        Intrinsics.checkNotNullExpressionValue(schedulerComputation, "computation(...)");
        return schedulerComputation;
    }

    @Provides
    @IO
    public final CoroutineDispatcher provideIoDispatcher() {
        return Dispatchers.getIO();
    }

    @Computation
    @Provides
    public final CoroutineDispatcher provideComputationDispatcher() {
        return Dispatchers.getDefault();
    }
}
