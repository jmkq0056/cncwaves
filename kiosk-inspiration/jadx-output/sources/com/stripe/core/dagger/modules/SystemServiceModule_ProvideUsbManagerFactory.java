package com.stripe.core.dagger.modules;

import android.content.Context;
import android.hardware.usb.UsbManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideUsbManagerFactory implements Factory<UsbManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideUsbManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public UsbManager get() {
        return provideUsbManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideUsbManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideUsbManagerFactory(provider);
    }

    public static UsbManager provideUsbManager(Context context) {
        return (UsbManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideUsbManager(context));
    }
}
