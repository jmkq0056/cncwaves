package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.forms.transform.CollectInputsExternalModelTransformer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideCollectInputsExternalModelTransformerFactory implements Factory<CollectInputsExternalModelTransformer> {
    private final TerminalModule module;

    public TerminalModule_ProvideCollectInputsExternalModelTransformerFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public CollectInputsExternalModelTransformer get() {
        return provideCollectInputsExternalModelTransformer(this.module);
    }

    public static TerminalModule_ProvideCollectInputsExternalModelTransformerFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideCollectInputsExternalModelTransformerFactory(terminalModule);
    }

    public static CollectInputsExternalModelTransformer provideCollectInputsExternalModelTransformer(TerminalModule terminalModule) {
        return (CollectInputsExternalModelTransformer) Preconditions.checkNotNullFromProvides(terminalModule.provideCollectInputsExternalModelTransformer());
    }
}
