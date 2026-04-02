package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.stripeterminal.internal.common.validators.PermissionsValidator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PermissionsModule_ProvidePermissionsValidatorFactory implements Factory<PermissionsValidator> {
    private final Provider<Context> contextProvider;
    private final PermissionsModule module;

    public PermissionsModule_ProvidePermissionsValidatorFactory(PermissionsModule permissionsModule, Provider<Context> provider) {
        this.module = permissionsModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public PermissionsValidator get() {
        return providePermissionsValidator(this.module, this.contextProvider.get());
    }

    public static PermissionsModule_ProvidePermissionsValidatorFactory create(PermissionsModule permissionsModule, Provider<Context> provider) {
        return new PermissionsModule_ProvidePermissionsValidatorFactory(permissionsModule, provider);
    }

    public static PermissionsValidator providePermissionsValidator(PermissionsModule permissionsModule, Context context) {
        return (PermissionsValidator) Preconditions.checkNotNullFromProvides(permissionsModule.providePermissionsValidator(context));
    }
}
