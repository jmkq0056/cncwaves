package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.forms.transform.CollectInputsParametersTransformer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideCollectInputsParametersTransformerFactory implements Factory<CollectInputsParametersTransformer> {
    private final TerminalModule module;

    public TerminalModule_ProvideCollectInputsParametersTransformerFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public CollectInputsParametersTransformer get() {
        return provideCollectInputsParametersTransformer(this.module);
    }

    public static TerminalModule_ProvideCollectInputsParametersTransformerFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideCollectInputsParametersTransformerFactory(terminalModule);
    }

    public static CollectInputsParametersTransformer provideCollectInputsParametersTransformer(TerminalModule terminalModule) {
        return (CollectInputsParametersTransformer) Preconditions.checkNotNullFromProvides(terminalModule.provideCollectInputsParametersTransformer());
    }
}
