package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.dagger.HandoffClientModule;
import com.stripe.stripeterminal.internal.common.terminalsession.HandoffConnectionTokenProviderSupplier;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class HandoffClientModule_ProvideHandoffConnectionTokenProviderSupplierFactory implements Factory<HandoffConnectionTokenProviderSupplier> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final HandoffClientModule module;
    private final Provider<HandoffClientModule.ProviderMirror> providerMirrorProvider;

    public HandoffClientModule_ProvideHandoffConnectionTokenProviderSupplierFactory(HandoffClientModule handoffClientModule, Provider<HandoffClientModule.ProviderMirror> provider, Provider<LoggerFactory> provider2) {
        this.module = handoffClientModule;
        this.providerMirrorProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public HandoffConnectionTokenProviderSupplier get() {
        return provideHandoffConnectionTokenProviderSupplier(this.module, this.providerMirrorProvider.get(), this.loggerFactoryProvider.get());
    }

    public static HandoffClientModule_ProvideHandoffConnectionTokenProviderSupplierFactory create(HandoffClientModule handoffClientModule, Provider<HandoffClientModule.ProviderMirror> provider, Provider<LoggerFactory> provider2) {
        return new HandoffClientModule_ProvideHandoffConnectionTokenProviderSupplierFactory(handoffClientModule, provider, provider2);
    }

    public static HandoffConnectionTokenProviderSupplier provideHandoffConnectionTokenProviderSupplier(HandoffClientModule handoffClientModule, HandoffClientModule.ProviderMirror providerMirror, LoggerFactory loggerFactory) {
        return (HandoffConnectionTokenProviderSupplier) Preconditions.checkNotNullFromProvides(handoffClientModule.provideHandoffConnectionTokenProviderSupplier(providerMirror, loggerFactory));
    }
}
