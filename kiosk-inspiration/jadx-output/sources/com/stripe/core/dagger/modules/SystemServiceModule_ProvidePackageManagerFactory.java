package com.stripe.core.dagger.modules;

import android.app.Application;
import android.content.pm.PackageManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvidePackageManagerFactory implements Factory<PackageManager> {
    private final Provider<Application> appProvider;

    public SystemServiceModule_ProvidePackageManagerFactory(Provider<Application> provider) {
        this.appProvider = provider;
    }

    @Override // javax.inject.Provider
    public PackageManager get() {
        return providePackageManager(this.appProvider.get());
    }

    public static SystemServiceModule_ProvidePackageManagerFactory create(Provider<Application> provider) {
        return new SystemServiceModule_ProvidePackageManagerFactory(provider);
    }

    public static PackageManager providePackageManager(Application application) {
        return (PackageManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.providePackageManager(application));
    }
}
