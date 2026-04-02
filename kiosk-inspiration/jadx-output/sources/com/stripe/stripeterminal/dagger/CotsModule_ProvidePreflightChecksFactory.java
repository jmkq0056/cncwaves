package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.core.device.BuildValues;
import com.stripe.cots.common.compatibility.PreFlightChecks;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_ProvidePreflightChecksFactory implements Factory<PreFlightChecks> {
    private final Provider<Context> applicationContextProvider;
    private final Provider<BuildValues> buildValuesProvider;
    private final CotsModule module;

    public CotsModule_ProvidePreflightChecksFactory(CotsModule cotsModule, Provider<Context> provider, Provider<BuildValues> provider2) {
        this.module = cotsModule;
        this.applicationContextProvider = provider;
        this.buildValuesProvider = provider2;
    }

    @Override // javax.inject.Provider
    public PreFlightChecks get() {
        return providePreflightChecks(this.module, this.applicationContextProvider.get(), this.buildValuesProvider.get());
    }

    public static CotsModule_ProvidePreflightChecksFactory create(CotsModule cotsModule, Provider<Context> provider, Provider<BuildValues> provider2) {
        return new CotsModule_ProvidePreflightChecksFactory(cotsModule, provider, provider2);
    }

    public static PreFlightChecks providePreflightChecks(CotsModule cotsModule, Context context, BuildValues buildValues) {
        return (PreFlightChecks) Preconditions.checkNotNullFromProvides(cotsModule.providePreflightChecks(context, buildValues));
    }
}
