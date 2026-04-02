package com.stripe.core.bbpos.dagger;

import android.content.Context;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposSdkModule_ProvideBBDeviceControllerFactory implements Factory<BBDeviceController> {
    private final Provider<Context> contextProvider;
    private final Provider<BBDeviceController.BBDeviceControllerListener> listenerProvider;
    private final BbposSdkModule module;

    public BbposSdkModule_ProvideBBDeviceControllerFactory(BbposSdkModule bbposSdkModule, Provider<Context> provider, Provider<BBDeviceController.BBDeviceControllerListener> provider2) {
        this.module = bbposSdkModule;
        this.contextProvider = provider;
        this.listenerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BBDeviceController get() {
        return provideBBDeviceController(this.module, this.contextProvider.get(), this.listenerProvider.get());
    }

    public static BbposSdkModule_ProvideBBDeviceControllerFactory create(BbposSdkModule bbposSdkModule, Provider<Context> provider, Provider<BBDeviceController.BBDeviceControllerListener> provider2) {
        return new BbposSdkModule_ProvideBBDeviceControllerFactory(bbposSdkModule, provider, provider2);
    }

    public static BBDeviceController provideBBDeviceController(BbposSdkModule bbposSdkModule, Context context, BBDeviceController.BBDeviceControllerListener bBDeviceControllerListener) {
        return (BBDeviceController) Preconditions.checkNotNullFromProvides(bbposSdkModule.provideBBDeviceController(context, bBDeviceControllerListener));
    }
}
