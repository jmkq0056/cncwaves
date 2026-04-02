package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.jvmcore.restclient.RestClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class FilesModule_ProvideFilesServiceUrlProviderFactory implements Factory<RestClient.BaseUrlProvider> {
    private final Provider<EnvironmentProvider> environmentProvider;

    public FilesModule_ProvideFilesServiceUrlProviderFactory(Provider<EnvironmentProvider> provider) {
        this.environmentProvider = provider;
    }

    @Override // javax.inject.Provider
    public RestClient.BaseUrlProvider get() {
        return provideFilesServiceUrlProvider(this.environmentProvider.get());
    }

    public static FilesModule_ProvideFilesServiceUrlProviderFactory create(Provider<EnvironmentProvider> provider) {
        return new FilesModule_ProvideFilesServiceUrlProviderFactory(provider);
    }

    public static RestClient.BaseUrlProvider provideFilesServiceUrlProvider(EnvironmentProvider environmentProvider) {
        return (RestClient.BaseUrlProvider) Preconditions.checkNotNullFromProvides(FilesModule.INSTANCE.provideFilesServiceUrlProvider(environmentProvider));
    }
}
