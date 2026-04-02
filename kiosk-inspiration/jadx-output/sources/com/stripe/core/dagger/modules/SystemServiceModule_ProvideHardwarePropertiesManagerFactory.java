package com.stripe.core.dagger.modules;

import android.content.Context;
import android.os.HardwarePropertiesManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideHardwarePropertiesManagerFactory implements Factory<HardwarePropertiesManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideHardwarePropertiesManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public HardwarePropertiesManager get() {
        return provideHardwarePropertiesManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideHardwarePropertiesManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideHardwarePropertiesManagerFactory(provider);
    }

    public static HardwarePropertiesManager provideHardwarePropertiesManager(Context context) {
        return (HardwarePropertiesManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideHardwarePropertiesManager(context));
    }
}
