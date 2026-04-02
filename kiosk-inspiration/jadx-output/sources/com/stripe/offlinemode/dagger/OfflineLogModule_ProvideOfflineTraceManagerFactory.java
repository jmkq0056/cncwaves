package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.log.DefaultOfflineTraceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideOfflineTraceManagerFactory implements Factory<DefaultOfflineTraceManager> {
    private final Provider<Random> randomProvider;

    public OfflineLogModule_ProvideOfflineTraceManagerFactory(Provider<Random> randomProvider) {
        this.randomProvider = randomProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineTraceManager get() {
        return provideOfflineTraceManager(this.randomProvider.get());
    }

    public static OfflineLogModule_ProvideOfflineTraceManagerFactory create(Provider<Random> randomProvider) {
        return new OfflineLogModule_ProvideOfflineTraceManagerFactory(randomProvider);
    }

    public static DefaultOfflineTraceManager provideOfflineTraceManager(Random random) {
        return (DefaultOfflineTraceManager) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideOfflineTraceManager(random));
    }
}
