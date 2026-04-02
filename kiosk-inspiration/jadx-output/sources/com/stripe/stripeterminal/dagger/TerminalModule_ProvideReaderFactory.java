package com.stripe.stripeterminal.dagger;

import com.stripe.core.hardware.Reader;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideReaderFactory implements Factory<Reader> {
    private final TerminalModule module;
    private final Provider<TerminalStatusManager> statusManagerProvider;

    public TerminalModule_ProvideReaderFactory(TerminalModule terminalModule, Provider<TerminalStatusManager> provider) {
        this.module = terminalModule;
        this.statusManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public Reader get() {
        return provideReader(this.module, this.statusManagerProvider.get());
    }

    public static TerminalModule_ProvideReaderFactory create(TerminalModule terminalModule, Provider<TerminalStatusManager> provider) {
        return new TerminalModule_ProvideReaderFactory(terminalModule, provider);
    }

    public static Reader provideReader(TerminalModule terminalModule, TerminalStatusManager terminalStatusManager) {
        return terminalModule.provideReader(terminalStatusManager);
    }
}
