package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.CardRemovalChecker;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory implements Factory<CardRemovalChecker> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory(Provider<CoroutineScope> provider, Provider<LoggerFactory> provider2) {
        this.appScopeProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CardRemovalChecker get() {
        return provideCardRemovalChecker$hardware_release(this.appScopeProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory create(Provider<CoroutineScope> provider, Provider<LoggerFactory> provider2) {
        return new BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory(provider, provider2);
    }

    public static CardRemovalChecker provideCardRemovalChecker$hardware_release(CoroutineScope coroutineScope, LoggerFactory loggerFactory) {
        return (CardRemovalChecker) Preconditions.checkNotNullFromProvides(BbposEmvModule.INSTANCE.provideCardRemovalChecker$hardware_release(coroutineScope, loggerFactory));
    }
}
