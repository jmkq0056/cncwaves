package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.Reader;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.core.updater.Ingester;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ArmadaModule_ProvideArmadaIngesterFactory implements Factory<Ingester<UpdateSummary, UpdatePackage>> {
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<Reader> readerProvider;
    private final Provider<UpdateClient> updateClientProvider;

    public ArmadaModule_ProvideArmadaIngesterFactory(Provider<UpdateClient> provider, Provider<Reader> provider2, Provider<FeatureFlagsRepository> provider3, Provider<LoggerFactory> provider4) {
        this.updateClientProvider = provider;
        this.readerProvider = provider2;
        this.featureFlagsRepositoryProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public Ingester<UpdateSummary, UpdatePackage> get() {
        return provideArmadaIngester(this.updateClientProvider.get(), this.readerProvider, this.featureFlagsRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ArmadaModule_ProvideArmadaIngesterFactory create(Provider<UpdateClient> provider, Provider<Reader> provider2, Provider<FeatureFlagsRepository> provider3, Provider<LoggerFactory> provider4) {
        return new ArmadaModule_ProvideArmadaIngesterFactory(provider, provider2, provider3, provider4);
    }

    public static Ingester<UpdateSummary, UpdatePackage> provideArmadaIngester(UpdateClient updateClient, Provider<Reader> provider, FeatureFlagsRepository featureFlagsRepository, LoggerFactory loggerFactory) {
        return (Ingester) Preconditions.checkNotNullFromProvides(ArmadaModule.INSTANCE.provideArmadaIngester(updateClient, provider, featureFlagsRepository, loggerFactory));
    }
}
