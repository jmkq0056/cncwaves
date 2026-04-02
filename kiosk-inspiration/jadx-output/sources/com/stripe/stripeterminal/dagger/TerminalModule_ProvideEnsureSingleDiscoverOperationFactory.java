package com.stripe.stripeterminal.dagger;

import com.stripe.discoverreaders.EnsureSingleDiscoverOperation;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideEnsureSingleDiscoverOperationFactory implements Factory<EnsureSingleDiscoverOperation> {
    private final TerminalModule module;

    public TerminalModule_ProvideEnsureSingleDiscoverOperationFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public EnsureSingleDiscoverOperation get() {
        return provideEnsureSingleDiscoverOperation(this.module);
    }

    public static TerminalModule_ProvideEnsureSingleDiscoverOperationFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideEnsureSingleDiscoverOperationFactory(terminalModule);
    }

    public static EnsureSingleDiscoverOperation provideEnsureSingleDiscoverOperation(TerminalModule terminalModule) {
        return (EnsureSingleDiscoverOperation) Preconditions.checkNotNullFromProvides(terminalModule.provideEnsureSingleDiscoverOperation());
    }
}
