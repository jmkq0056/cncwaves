package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PermissionsModule_ProvideLocationServicesValidatorFactory implements Factory<LocationServicesValidator> {
    private final Provider<Context> contextProvider;
    private final PermissionsModule module;

    public PermissionsModule_ProvideLocationServicesValidatorFactory(PermissionsModule permissionsModule, Provider<Context> provider) {
        this.module = permissionsModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public LocationServicesValidator get() {
        return provideLocationServicesValidator(this.module, this.contextProvider.get());
    }

    public static PermissionsModule_ProvideLocationServicesValidatorFactory create(PermissionsModule permissionsModule, Provider<Context> provider) {
        return new PermissionsModule_ProvideLocationServicesValidatorFactory(permissionsModule, provider);
    }

    public static LocationServicesValidator provideLocationServicesValidator(PermissionsModule permissionsModule, Context context) {
        return (LocationServicesValidator) Preconditions.checkNotNullFromProvides(permissionsModule.provideLocationServicesValidator(context));
    }
}
