package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ReaderStatusModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;", "", "()V", "provideReactiveReaderStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "Bindings", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class ReaderStatusModule {

    /* JADX INFO: compiled from: ReaderStatusModule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule$Bindings;", "", "()V", "provideReaderStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "reactiveReaderStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Singleton
        @Binds
        public abstract ReaderStatusListener provideReaderStatusListener(ReactiveReaderStatusListener reactiveReaderStatusListener);
    }

    @Provides
    @Singleton
    public final ReactiveReaderStatusListener provideReactiveReaderStatusListener(LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ReactiveReaderStatusListener(loggerFactory.create(Reflection.getOrCreateKotlinClass(ReactiveReaderStatusListener.class)));
    }
}
