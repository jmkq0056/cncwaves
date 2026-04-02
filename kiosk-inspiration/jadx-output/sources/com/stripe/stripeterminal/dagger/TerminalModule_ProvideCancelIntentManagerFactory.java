package com.stripe.stripeterminal.dagger;

import com.stripe.cancelintent.CancelIntentManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideCancelIntentManagerFactory implements Factory<CancelIntentManager> {
    private final TerminalModule module;

    public TerminalModule_ProvideCancelIntentManagerFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public CancelIntentManager get() {
        return provideCancelIntentManager(this.module);
    }

    public static TerminalModule_ProvideCancelIntentManagerFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideCancelIntentManagerFactory(terminalModule);
    }

    public static CancelIntentManager provideCancelIntentManager(TerminalModule terminalModule) {
        return (CancelIntentManager) Preconditions.checkNotNullFromProvides(terminalModule.provideCancelIntentManager());
    }
}
