package com.stripe.hardware.dagger;

import com.stripe.hardware.emv.DefaultDomesticDebitAidsParser;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory implements Factory<DefaultDomesticDebitAidsParser> {
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory(Provider<LoggerFactory> provider) {
        this.loggerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultDomesticDebitAidsParser get() {
        return provideDefaultDomesticDebitAidsParser$wiring(this.loggerFactoryProvider.get());
    }

    public static EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory create(Provider<LoggerFactory> provider) {
        return new EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory(provider);
    }

    public static DefaultDomesticDebitAidsParser provideDefaultDomesticDebitAidsParser$wiring(LoggerFactory loggerFactory) {
        return (DefaultDomesticDebitAidsParser) Preconditions.checkNotNullFromProvides(EmvModule.INSTANCE.provideDefaultDomesticDebitAidsParser$wiring(loggerFactory));
    }
}
