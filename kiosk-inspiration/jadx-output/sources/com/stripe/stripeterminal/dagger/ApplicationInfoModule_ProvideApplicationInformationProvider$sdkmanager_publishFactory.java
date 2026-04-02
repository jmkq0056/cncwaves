package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.appinfo.SdkApplicationInformationFactory;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory implements Factory<ApplicationInformationProvider> {
    private final ApplicationInfoModule module;
    private final Provider<SdkApplicationInformationFactory> sdkApplicationInformationFactoryProvider;

    public ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory(ApplicationInfoModule applicationInfoModule, Provider<SdkApplicationInformationFactory> provider) {
        this.module = applicationInfoModule;
        this.sdkApplicationInformationFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ApplicationInformationProvider get() {
        return provideApplicationInformationProvider$sdkmanager_publish(this.module, DoubleCheck.lazy(this.sdkApplicationInformationFactoryProvider));
    }

    public static ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory create(ApplicationInfoModule applicationInfoModule, Provider<SdkApplicationInformationFactory> provider) {
        return new ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory(applicationInfoModule, provider);
    }

    public static ApplicationInformationProvider provideApplicationInformationProvider$sdkmanager_publish(ApplicationInfoModule applicationInfoModule, Lazy<SdkApplicationInformationFactory> lazy) {
        return (ApplicationInformationProvider) Preconditions.checkNotNullFromProvides(applicationInfoModule.provideApplicationInformationProvider$sdkmanager_publish(lazy));
    }
}
