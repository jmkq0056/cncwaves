package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.core.device.BuildValues;
import com.stripe.cots.common.NfcAntennaLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_ProvideNfcAntennaLoggerFactory implements Factory<NfcAntennaLogger> {
    private final Provider<Context> applicationContextProvider;
    private final Provider<BuildValues> buildValuesProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final CotsModule module;

    public CotsModule_ProvideNfcAntennaLoggerFactory(CotsModule cotsModule, Provider<Context> provider, Provider<BuildValues> provider2, Provider<LoggerFactory> provider3) {
        this.module = cotsModule;
        this.applicationContextProvider = provider;
        this.buildValuesProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public NfcAntennaLogger get() {
        return provideNfcAntennaLogger(this.module, this.applicationContextProvider.get(), this.buildValuesProvider.get(), this.loggerFactoryProvider.get());
    }

    public static CotsModule_ProvideNfcAntennaLoggerFactory create(CotsModule cotsModule, Provider<Context> provider, Provider<BuildValues> provider2, Provider<LoggerFactory> provider3) {
        return new CotsModule_ProvideNfcAntennaLoggerFactory(cotsModule, provider, provider2, provider3);
    }

    public static NfcAntennaLogger provideNfcAntennaLogger(CotsModule cotsModule, Context context, BuildValues buildValues, LoggerFactory loggerFactory) {
        return (NfcAntennaLogger) Preconditions.checkNotNullFromProvides(cotsModule.provideNfcAntennaLogger(context, buildValues, loggerFactory));
    }
}
