package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.cots.common.SimulatedCotsClient;
import com.stripe.cots.common.compatibility.PreFlightChecks;
import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_ProvideSimulatedCotsClientFactory implements Factory<SimulatedCotsClient> {
    private final Provider<Context> applicationContextProvider;
    private final Provider<Boolean> isCotsIncludedProvider;
    private final CotsModule module;
    private final Provider<PreFlightChecks> preFlightChecksProvider;
    private final Provider<SimulatorConfigurationRepository> simulatorConfigurationRepositoryProvider;

    public CotsModule_ProvideSimulatedCotsClientFactory(CotsModule cotsModule, Provider<Context> provider, Provider<Boolean> provider2, Provider<PreFlightChecks> provider3, Provider<SimulatorConfigurationRepository> provider4) {
        this.module = cotsModule;
        this.applicationContextProvider = provider;
        this.isCotsIncludedProvider = provider2;
        this.preFlightChecksProvider = provider3;
        this.simulatorConfigurationRepositoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public SimulatedCotsClient get() {
        return provideSimulatedCotsClient(this.module, this.applicationContextProvider.get(), this.isCotsIncludedProvider.get().booleanValue(), this.preFlightChecksProvider.get(), this.simulatorConfigurationRepositoryProvider.get());
    }

    public static CotsModule_ProvideSimulatedCotsClientFactory create(CotsModule cotsModule, Provider<Context> provider, Provider<Boolean> provider2, Provider<PreFlightChecks> provider3, Provider<SimulatorConfigurationRepository> provider4) {
        return new CotsModule_ProvideSimulatedCotsClientFactory(cotsModule, provider, provider2, provider3, provider4);
    }

    public static SimulatedCotsClient provideSimulatedCotsClient(CotsModule cotsModule, Context context, boolean z, PreFlightChecks preFlightChecks, SimulatorConfigurationRepository simulatorConfigurationRepository) {
        return cotsModule.provideSimulatedCotsClient(context, z, preFlightChecks, simulatorConfigurationRepository);
    }
}
