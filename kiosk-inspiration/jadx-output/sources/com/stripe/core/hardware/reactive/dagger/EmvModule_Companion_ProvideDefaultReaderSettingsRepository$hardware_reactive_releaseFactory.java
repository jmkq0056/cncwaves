package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory implements Factory<DefaultReaderSettingsRepository> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<ConfigurationHandler> configurationHandlerProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;

    public EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory(Provider<CoroutineScope> provider, Provider<CoroutineDispatcher> provider2, Provider<ConfigurationHandler> provider3) {
        this.appScopeProvider = provider;
        this.dispatcherProvider = provider2;
        this.configurationHandlerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public DefaultReaderSettingsRepository get() {
        return provideDefaultReaderSettingsRepository$hardware_reactive_release(this.appScopeProvider.get(), this.dispatcherProvider.get(), this.configurationHandlerProvider.get());
    }

    public static EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory create(Provider<CoroutineScope> provider, Provider<CoroutineDispatcher> provider2, Provider<ConfigurationHandler> provider3) {
        return new EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory(provider, provider2, provider3);
    }

    public static DefaultReaderSettingsRepository provideDefaultReaderSettingsRepository$hardware_reactive_release(CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, ConfigurationHandler configurationHandler) {
        return (DefaultReaderSettingsRepository) Preconditions.checkNotNullFromProvides(EmvModule.INSTANCE.provideDefaultReaderSettingsRepository$hardware_reactive_release(coroutineScope, coroutineDispatcher, configurationHandler));
    }
}
