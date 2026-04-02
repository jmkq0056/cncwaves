package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory implements Factory<UpdatePaymentIntentParamRepository> {
    private final TerminalModule module;

    public TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public UpdatePaymentIntentParamRepository get() {
        return provideUpdatePaymentIntentParamRepository(this.module);
    }

    public static TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory(terminalModule);
    }

    public static UpdatePaymentIntentParamRepository provideUpdatePaymentIntentParamRepository(TerminalModule terminalModule) {
        return (UpdatePaymentIntentParamRepository) Preconditions.checkNotNullFromProvides(terminalModule.provideUpdatePaymentIntentParamRepository());
    }
}
