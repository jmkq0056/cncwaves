package com.stripe.stripeterminal.internal.common.validators;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultTipEligibleValidator_Factory implements Factory<DefaultTipEligibleValidator> {
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public DefaultTipEligibleValidator_Factory(Provider<LoggerFactory> provider) {
        this.loggerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultTipEligibleValidator get() {
        return newInstance(this.loggerFactoryProvider.get());
    }

    public static DefaultTipEligibleValidator_Factory create(Provider<LoggerFactory> provider) {
        return new DefaultTipEligibleValidator_Factory(provider);
    }

    public static DefaultTipEligibleValidator newInstance(LoggerFactory loggerFactory) {
        return new DefaultTipEligibleValidator(loggerFactory);
    }
}
