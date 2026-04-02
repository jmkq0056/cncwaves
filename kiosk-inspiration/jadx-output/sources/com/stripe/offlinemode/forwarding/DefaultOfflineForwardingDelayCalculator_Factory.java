package com.stripe.offlinemode.forwarding;

import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultOfflineForwardingDelayCalculator_Factory implements Factory<DefaultOfflineForwardingDelayCalculator> {
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<Random> randomProvider;

    public DefaultOfflineForwardingDelayCalculator_Factory(Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<Random> randomProvider) {
        this.offlineConfigHelperProvider = offlineConfigHelperProvider;
        this.randomProvider = randomProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineForwardingDelayCalculator get() {
        return newInstance(this.offlineConfigHelperProvider.get(), this.randomProvider.get());
    }

    public static DefaultOfflineForwardingDelayCalculator_Factory create(Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<Random> randomProvider) {
        return new DefaultOfflineForwardingDelayCalculator_Factory(offlineConfigHelperProvider, randomProvider);
    }

    public static DefaultOfflineForwardingDelayCalculator newInstance(OfflineConfigHelper offlineConfigHelper, Random random) {
        return new DefaultOfflineForwardingDelayCalculator(offlineConfigHelper, random);
    }
}
