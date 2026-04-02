package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ApplicationInfoModule_ProvideUserAgentProviderFactory implements Factory<UserAgentProvider> {
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final ApplicationInfoModule module;

    public ApplicationInfoModule_ProvideUserAgentProviderFactory(ApplicationInfoModule applicationInfoModule, Provider<ApplicationInformationProvider> provider) {
        this.module = applicationInfoModule;
        this.applicationInformationProvider = provider;
    }

    @Override // javax.inject.Provider
    public UserAgentProvider get() {
        return provideUserAgentProvider(this.module, this.applicationInformationProvider.get());
    }

    public static ApplicationInfoModule_ProvideUserAgentProviderFactory create(ApplicationInfoModule applicationInfoModule, Provider<ApplicationInformationProvider> provider) {
        return new ApplicationInfoModule_ProvideUserAgentProviderFactory(applicationInfoModule, provider);
    }

    public static UserAgentProvider provideUserAgentProvider(ApplicationInfoModule applicationInfoModule, ApplicationInformationProvider applicationInformationProvider) {
        return (UserAgentProvider) Preconditions.checkNotNullFromProvides(applicationInfoModule.provideUserAgentProvider(applicationInformationProvider));
    }
}
