package com.stripe.core.hardware.reactive.dagger;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderUpdateListenerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule;", "", "()V", "provideReaderUpdateListener", "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ReaderUpdateListenerModule {
    public static final ReaderUpdateListenerModule INSTANCE = new ReaderUpdateListenerModule();

    private ReaderUpdateListenerModule() {
    }

    @Provides
    @Singleton
    public final ReaderUpdateListener provideReaderUpdateListener(ReactiveReaderUpdateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        return listener;
    }
}
