package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory implements Factory<MposReaderDebugLogManager> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<ReaderConnectionController> readerConnectionControllerProvider;

    public MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory(Provider<FeatureFlagsRepository> provider, Provider<ReaderConnectionController> provider2, Provider<CoroutineScope> provider3) {
        this.featureFlagsRepositoryProvider = provider;
        this.readerConnectionControllerProvider = provider2;
        this.appScopeProvider = provider3;
    }

    @Override // javax.inject.Provider
    public MposReaderDebugLogManager get() {
        return provideMposReaderDebugLogManager(this.featureFlagsRepositoryProvider.get(), this.readerConnectionControllerProvider.get(), this.appScopeProvider.get());
    }

    public static MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory create(Provider<FeatureFlagsRepository> provider, Provider<ReaderConnectionController> provider2, Provider<CoroutineScope> provider3) {
        return new MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory(provider, provider2, provider3);
    }

    public static MposReaderDebugLogManager provideMposReaderDebugLogManager(FeatureFlagsRepository featureFlagsRepository, ReaderConnectionController readerConnectionController, CoroutineScope coroutineScope) {
        return (MposReaderDebugLogManager) Preconditions.checkNotNullFromProvides(MposReaderDebugLogManagerModule.INSTANCE.provideMposReaderDebugLogManager(featureFlagsRepository, readerConnectionController, coroutineScope));
    }
}
