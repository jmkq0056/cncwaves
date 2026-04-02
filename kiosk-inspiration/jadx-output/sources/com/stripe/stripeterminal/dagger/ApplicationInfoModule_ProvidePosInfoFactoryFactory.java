package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ApplicationInfoModule_ProvidePosInfoFactoryFactory implements Factory<PosInfoFactory> {
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final ApplicationInfoModule module;

    public ApplicationInfoModule_ProvidePosInfoFactoryFactory(ApplicationInfoModule applicationInfoModule, Provider<ApplicationInformationProvider> provider, Provider<LoggerFactory> provider2) {
        this.module = applicationInfoModule;
        this.applicationInformationProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public PosInfoFactory get() {
        return providePosInfoFactory(this.module, this.applicationInformationProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ApplicationInfoModule_ProvidePosInfoFactoryFactory create(ApplicationInfoModule applicationInfoModule, Provider<ApplicationInformationProvider> provider, Provider<LoggerFactory> provider2) {
        return new ApplicationInfoModule_ProvidePosInfoFactoryFactory(applicationInfoModule, provider, provider2);
    }

    public static PosInfoFactory providePosInfoFactory(ApplicationInfoModule applicationInfoModule, ApplicationInformationProvider applicationInformationProvider, LoggerFactory loggerFactory) {
        return (PosInfoFactory) Preconditions.checkNotNullFromProvides(applicationInfoModule.providePosInfoFactory(applicationInformationProvider, loggerFactory));
    }
}
