package com.stripe.stripeterminal.internal.common.bluetooth;

import android.content.Context;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class BluetoothBondStateReceiverManager_Factory implements Factory<BluetoothBondStateReceiverManager> {
    private final Provider<Context> contextProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public BluetoothBondStateReceiverManager_Factory(Provider<Context> provider, Provider<LoggerFactory> provider2) {
        this.contextProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BluetoothBondStateReceiverManager get() {
        return newInstance(this.contextProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BluetoothBondStateReceiverManager_Factory create(Provider<Context> provider, Provider<LoggerFactory> provider2) {
        return new BluetoothBondStateReceiverManager_Factory(provider, provider2);
    }

    public static BluetoothBondStateReceiverManager newInstance(Context context, LoggerFactory loggerFactory) {
        return new BluetoothBondStateReceiverManager(context, loggerFactory);
    }
}
