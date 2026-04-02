package com.stripe.core.schedulers.dagger;

import com.stripe.jvmcore.dagger.Main;
import com.stripe.jvmcore.schedulers.dagger.JvmSchedulersModule;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SchedulersModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/schedulers/dagger/SchedulersModule;", "", "()V", "provideMainDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "schedulers_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {JvmSchedulersModule.class})
public final class SchedulersModule {
    public static final SchedulersModule INSTANCE = new SchedulersModule();

    private SchedulersModule() {
    }

    @Provides
    @Main
    public final CoroutineDispatcher provideMainDispatcher() {
        return Dispatchers.getMain().getImmediate();
    }
}
