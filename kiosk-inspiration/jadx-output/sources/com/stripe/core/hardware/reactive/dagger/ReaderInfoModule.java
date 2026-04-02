package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.ReaderInfoHandler;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ReaderInfoModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;", "", "()V", "provideReaderInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "readerInfoHandler", "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ReaderInfoModule {
    public static final ReaderInfoModule INSTANCE = new ReaderInfoModule();

    private ReaderInfoModule() {
    }

    @Provides
    @Singleton
    public final ReaderInfoRepository provideReaderInfoRepository(@AppScope CoroutineScope appScope, @IO CoroutineDispatcher io2, ReaderInfoHandler readerInfoHandler, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(readerInfoHandler, "readerInfoHandler");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ReaderInfoRepository(appScope, io2, readerInfoHandler, loggerFactory.create(Reflection.getOrCreateKotlinClass(ReaderInfoRepository.class)));
    }
}
