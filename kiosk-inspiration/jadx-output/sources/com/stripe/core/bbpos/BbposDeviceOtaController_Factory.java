package com.stripe.core.bbpos;

import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposDeviceOtaController_Factory implements Factory<BbposDeviceOtaController> {
    private final Provider<BBDeviceOTAController> controllerProvider;

    public BbposDeviceOtaController_Factory(Provider<BBDeviceOTAController> provider) {
        this.controllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public BbposDeviceOtaController get() {
        return newInstance(this.controllerProvider.get());
    }

    public static BbposDeviceOtaController_Factory create(Provider<BBDeviceOTAController> provider) {
        return new BbposDeviceOtaController_Factory(provider);
    }

    public static BbposDeviceOtaController newInstance(BBDeviceOTAController bBDeviceOTAController) {
        return new BbposDeviceOtaController(bBDeviceOTAController);
    }
}
