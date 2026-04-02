package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.cots.common.CotsClient;
import com.stripe.cots.common.compatibility.PreFlightChecks;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_ProvideCotsClientFactory implements Factory<CotsClient> {
    private final Provider<Context> applicationContextProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<Boolean> isCotsIncludedProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final CotsModule module;
    private final Provider<PreFlightChecks> preFlightChecksProvider;

    public CotsModule_ProvideCotsClientFactory(CotsModule cotsModule, Provider<Context> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3, Provider<PreFlightChecks> provider4, Provider<LoggerFactory> provider5) {
        this.module = cotsModule;
        this.applicationContextProvider = provider;
        this.dispatcherProvider = provider2;
        this.isCotsIncludedProvider = provider3;
        this.preFlightChecksProvider = provider4;
        this.loggerFactoryProvider = provider5;
    }

    @Override // javax.inject.Provider
    public CotsClient get() {
        return provideCotsClient(this.module, this.applicationContextProvider.get(), this.dispatcherProvider.get(), this.isCotsIncludedProvider.get().booleanValue(), this.preFlightChecksProvider.get(), this.loggerFactoryProvider.get());
    }

    public static CotsModule_ProvideCotsClientFactory create(CotsModule cotsModule, Provider<Context> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3, Provider<PreFlightChecks> provider4, Provider<LoggerFactory> provider5) {
        return new CotsModule_ProvideCotsClientFactory(cotsModule, provider, provider2, provider3, provider4, provider5);
    }

    public static CotsClient provideCotsClient(CotsModule cotsModule, Context context, CoroutineDispatcher coroutineDispatcher, boolean z, PreFlightChecks preFlightChecks, LoggerFactory loggerFactory) {
        return cotsModule.provideCotsClient(context, coroutineDispatcher, z, preFlightChecks, loggerFactory);
    }
}
