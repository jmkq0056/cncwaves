package com.stripe.stripeterminal.internal.common.usb;

import android.content.Context;
import android.hardware.usb.UsbManager;
import com.stripe.core.device.BuildValues;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class UsbPermissionReceiverManager_Factory implements Factory<UsbPermissionReceiverManager> {
    private final Provider<BuildValues> buildValuesProvider;
    private final Provider<Context> contextProvider;
    private final Provider<UsbManager> usbManagerProvider;

    public UsbPermissionReceiverManager_Factory(Provider<Context> provider, Provider<UsbManager> provider2, Provider<BuildValues> provider3) {
        this.contextProvider = provider;
        this.usbManagerProvider = provider2;
        this.buildValuesProvider = provider3;
    }

    @Override // javax.inject.Provider
    public UsbPermissionReceiverManager get() {
        return newInstance(this.contextProvider.get(), this.usbManagerProvider.get(), this.buildValuesProvider.get());
    }

    public static UsbPermissionReceiverManager_Factory create(Provider<Context> provider, Provider<UsbManager> provider2, Provider<BuildValues> provider3) {
        return new UsbPermissionReceiverManager_Factory(provider, provider2, provider3);
    }

    public static UsbPermissionReceiverManager newInstance(Context context, UsbManager usbManager, BuildValues buildValues) {
        return new UsbPermissionReceiverManager(context, usbManager, buildValues);
    }
}
