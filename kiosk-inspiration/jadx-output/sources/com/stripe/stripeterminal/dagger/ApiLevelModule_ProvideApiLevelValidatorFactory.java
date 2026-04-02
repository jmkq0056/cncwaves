package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.stripeterminal.internal.common.introspection.ApiLevelValidator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiLevelModule_ProvideApiLevelValidatorFactory implements Factory<ApiLevelValidator> {
    private final Provider<Context> contextProvider;
    private final ApiLevelModule module;

    public ApiLevelModule_ProvideApiLevelValidatorFactory(ApiLevelModule apiLevelModule, Provider<Context> provider) {
        this.module = apiLevelModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ApiLevelValidator get() {
        return provideApiLevelValidator(this.module, this.contextProvider.get());
    }

    public static ApiLevelModule_ProvideApiLevelValidatorFactory create(ApiLevelModule apiLevelModule, Provider<Context> provider) {
        return new ApiLevelModule_ProvideApiLevelValidatorFactory(apiLevelModule, provider);
    }

    public static ApiLevelValidator provideApiLevelValidator(ApiLevelModule apiLevelModule, Context context) {
        return (ApiLevelValidator) Preconditions.checkNotNullFromProvides(apiLevelModule.provideApiLevelValidator(context));
    }
}
