package com.stripe.core.bbpos.dagger;

import android.content.Context;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.core.bbpos.BbposOtaListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposUpdateModule_ProvideBBDeviceOTAControllerFactory implements Factory<BBDeviceOTAController> {
    private final Provider<Context> contextProvider;
    private final Provider<BBDeviceController> deviceControllerProvider;
    private final Provider<BbposOtaListener> listenerProvider;

    public BbposUpdateModule_ProvideBBDeviceOTAControllerFactory(Provider<Context> provider, Provider<BbposOtaListener> provider2, Provider<BBDeviceController> provider3) {
        this.contextProvider = provider;
        this.listenerProvider = provider2;
        this.deviceControllerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BBDeviceOTAController get() {
        return provideBBDeviceOTAController(this.contextProvider.get(), this.listenerProvider.get(), this.deviceControllerProvider.get());
    }

    public static BbposUpdateModule_ProvideBBDeviceOTAControllerFactory create(Provider<Context> provider, Provider<BbposOtaListener> provider2, Provider<BBDeviceController> provider3) {
        return new BbposUpdateModule_ProvideBBDeviceOTAControllerFactory(provider, provider2, provider3);
    }

    public static BBDeviceOTAController provideBBDeviceOTAController(Context context, BbposOtaListener bbposOtaListener, BBDeviceController bBDeviceController) {
        return (BBDeviceOTAController) Preconditions.checkNotNullFromProvides(BbposUpdateModule.INSTANCE.provideBBDeviceOTAController(context, bbposOtaListener, bBDeviceController));
    }
}
