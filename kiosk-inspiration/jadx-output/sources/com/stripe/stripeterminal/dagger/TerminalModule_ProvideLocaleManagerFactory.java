package com.stripe.stripeterminal.dagger;

import com.stripe.core.locale.LocaleManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideLocaleManagerFactory implements Factory<LocaleManager> {
    private final TerminalModule module;

    public TerminalModule_ProvideLocaleManagerFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public LocaleManager get() {
        return provideLocaleManager(this.module);
    }

    public static TerminalModule_ProvideLocaleManagerFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideLocaleManagerFactory(terminalModule);
    }

    public static LocaleManager provideLocaleManager(TerminalModule terminalModule) {
        return (LocaleManager) Preconditions.checkNotNullFromProvides(terminalModule.provideLocaleManager());
    }
}
