package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Optional;
import okhttp3.EventListener;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory implements Factory<Optional<EventListener.Factory>> {
    private final TerminalModule module;

    public TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public Optional<EventListener.Factory> get() {
        return provideOptionalEmptyEventListenerFactory(this.module);
    }

    public static TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory(terminalModule);
    }

    public static Optional<EventListener.Factory> provideOptionalEmptyEventListenerFactory(TerminalModule terminalModule) {
        return (Optional) Preconditions.checkNotNullFromProvides(terminalModule.provideOptionalEmptyEventListenerFactory());
    }
}
