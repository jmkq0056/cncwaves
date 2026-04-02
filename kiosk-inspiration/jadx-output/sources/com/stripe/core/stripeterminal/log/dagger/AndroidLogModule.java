package com.stripe.core.stripeterminal.log.dagger;

import com.stripe.jvmcore.logging.terminal.dagger.JvmCoreLogModule;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidLogModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule;", "", "()V", "provideScheduledExecutorService", "Ljava/util/concurrent/ScheduledExecutorService;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {JvmCoreLogModule.class})
public final class AndroidLogModule {
    public static final AndroidLogModule INSTANCE = new AndroidLogModule();

    private AndroidLogModule() {
    }

    @Provides
    public final ScheduledExecutorService provideScheduledExecutorService() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewSingleThreadScheduledExecutor, "newSingleThreadScheduledExecutor(...)");
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }
}
