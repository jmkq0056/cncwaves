package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvidesDebugFlavorFactory implements Factory<Boolean> {
    private final TerminalModule module;

    public TerminalModule_ProvidesDebugFlavorFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(providesDebugFlavor(this.module));
    }

    public static TerminalModule_ProvidesDebugFlavorFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvidesDebugFlavorFactory(terminalModule);
    }

    public static boolean providesDebugFlavor(TerminalModule terminalModule) {
        return terminalModule.providesDebugFlavor();
    }
}
