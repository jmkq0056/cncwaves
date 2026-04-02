package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.terminalsession.transform.TerminalExceptionTransformer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideTerminalExceptionTransformerFactory implements Factory<TerminalExceptionTransformer> {
    private final TerminalModule module;

    public TerminalModule_ProvideTerminalExceptionTransformerFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public TerminalExceptionTransformer get() {
        return provideTerminalExceptionTransformer(this.module);
    }

    public static TerminalModule_ProvideTerminalExceptionTransformerFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideTerminalExceptionTransformerFactory(terminalModule);
    }

    public static TerminalExceptionTransformer provideTerminalExceptionTransformer(TerminalModule terminalModule) {
        return (TerminalExceptionTransformer) Preconditions.checkNotNullFromProvides(terminalModule.provideTerminalExceptionTransformer());
    }
}
