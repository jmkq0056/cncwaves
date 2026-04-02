package com.stripe.stripeterminal.internal.common;

import android.content.Context;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LocationHandler_Factory implements Factory<LocationHandler> {
    private final Provider<Context> contextProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public LocationHandler_Factory(Provider<Context> provider, Provider<LoggerFactory> provider2) {
        this.contextProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public LocationHandler get() {
        return newInstance(this.contextProvider.get(), this.loggerFactoryProvider.get());
    }

    public static LocationHandler_Factory create(Provider<Context> provider, Provider<LoggerFactory> provider2) {
        return new LocationHandler_Factory(provider, provider2);
    }

    public static LocationHandler newInstance(Context context, LoggerFactory loggerFactory) {
        return new LocationHandler(context, loggerFactory);
    }
}
