package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class AdapterModule_ProvideSimulatorConfigurationRepositoryFactory implements Factory<SimulatorConfigurationRepository> {
    @Override // javax.inject.Provider
    public SimulatorConfigurationRepository get() {
        return provideSimulatorConfigurationRepository();
    }

    public static AdapterModule_ProvideSimulatorConfigurationRepositoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static SimulatorConfigurationRepository provideSimulatorConfigurationRepository() {
        return (SimulatorConfigurationRepository) Preconditions.checkNotNullFromProvides(AdapterModule.INSTANCE.provideSimulatorConfigurationRepository());
    }

    private static final class InstanceHolder {
        private static final AdapterModule_ProvideSimulatorConfigurationRepositoryFactory INSTANCE = new AdapterModule_ProvideSimulatorConfigurationRepositoryFactory();

        private InstanceHolder() {
        }
    }
}
