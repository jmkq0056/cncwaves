package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideEpochProviderFactory implements Factory<Function0<Long>> {
    private final TerminalModule module;

    public TerminalModule_ProvideEpochProviderFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public Function0<Long> get() {
        return provideEpochProvider(this.module);
    }

    public static TerminalModule_ProvideEpochProviderFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideEpochProviderFactory(terminalModule);
    }

    public static Function0<Long> provideEpochProvider(TerminalModule terminalModule) {
        return (Function0) Preconditions.checkNotNullFromProvides(terminalModule.provideEpochProvider());
    }
}
