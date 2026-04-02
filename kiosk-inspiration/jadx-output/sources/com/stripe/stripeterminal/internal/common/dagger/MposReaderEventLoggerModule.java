package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.loggingmodels.StructuredEventLogger;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MposReaderEventLoggerModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;", "", "()V", "provideMposReaderEventLogger", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "structuredEventLogger", "Lcom/stripe/loggingmodels/StructuredEventLogger;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "reactiveReaderStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class MposReaderEventLoggerModule {
    public static final MposReaderEventLoggerModule INSTANCE = new MposReaderEventLoggerModule();

    private MposReaderEventLoggerModule() {
    }

    @Provides
    @Singleton
    public final MposReaderEventLogger provideMposReaderEventLogger(@AppScope CoroutineScope scope, StructuredEventLogger structuredEventLogger, TerminalStatusManager terminalStatusManager, ReactiveReaderStatusListener reactiveReaderStatusListener) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(structuredEventLogger, "structuredEventLogger");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(reactiveReaderStatusListener, "reactiveReaderStatusListener");
        return new DefaultMposReaderEventLogger(reactiveReaderStatusListener, terminalStatusManager, scope, structuredEventLogger);
    }
}
