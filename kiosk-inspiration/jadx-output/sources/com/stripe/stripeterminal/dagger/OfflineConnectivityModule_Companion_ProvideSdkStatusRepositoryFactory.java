package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.repositories.SdkStatusRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory implements Factory<SdkStatusRepository> {
    private final Provider<Adapter> embeddedAdapterProvider;

    public OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory(Provider<Adapter> provider) {
        this.embeddedAdapterProvider = provider;
    }

    @Override // javax.inject.Provider
    public SdkStatusRepository get() {
        return provideSdkStatusRepository(this.embeddedAdapterProvider.get());
    }

    public static OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory create(Provider<Adapter> provider) {
        return new OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory(provider);
    }

    public static SdkStatusRepository provideSdkStatusRepository(Adapter adapter) {
        return (SdkStatusRepository) Preconditions.checkNotNullFromProvides(OfflineConnectivityModule.INSTANCE.provideSdkStatusRepository(adapter));
    }
}
