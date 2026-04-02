package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.loggingmodels.StructuredEventLogger;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory implements Factory<MposReaderEventLogger> {
    private final Provider<ReactiveReaderStatusListener> reactiveReaderStatusListenerProvider;
    private final Provider<CoroutineScope> scopeProvider;
    private final Provider<StructuredEventLogger> structuredEventLoggerProvider;
    private final Provider<TerminalStatusManager> terminalStatusManagerProvider;

    public MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory(Provider<CoroutineScope> provider, Provider<StructuredEventLogger> provider2, Provider<TerminalStatusManager> provider3, Provider<ReactiveReaderStatusListener> provider4) {
        this.scopeProvider = provider;
        this.structuredEventLoggerProvider = provider2;
        this.terminalStatusManagerProvider = provider3;
        this.reactiveReaderStatusListenerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public MposReaderEventLogger get() {
        return provideMposReaderEventLogger(this.scopeProvider.get(), this.structuredEventLoggerProvider.get(), this.terminalStatusManagerProvider.get(), this.reactiveReaderStatusListenerProvider.get());
    }

    public static MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory create(Provider<CoroutineScope> provider, Provider<StructuredEventLogger> provider2, Provider<TerminalStatusManager> provider3, Provider<ReactiveReaderStatusListener> provider4) {
        return new MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory(provider, provider2, provider3, provider4);
    }

    public static MposReaderEventLogger provideMposReaderEventLogger(CoroutineScope coroutineScope, StructuredEventLogger structuredEventLogger, TerminalStatusManager terminalStatusManager, ReactiveReaderStatusListener reactiveReaderStatusListener) {
        return (MposReaderEventLogger) Preconditions.checkNotNullFromProvides(MposReaderEventLoggerModule.INSTANCE.provideMposReaderEventLogger(coroutineScope, structuredEventLogger, terminalStatusManager, reactiveReaderStatusListener));
    }
}
