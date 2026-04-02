package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposReaderInfoController;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory implements Factory<BbposReaderInfoController> {
    private final Provider<DeviceControllerWrapper> deviceControllerProvider;

    public BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory(Provider<DeviceControllerWrapper> provider) {
        this.deviceControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public BbposReaderInfoController get() {
        return provideBbposReaderInfoController(this.deviceControllerProvider.get());
    }

    public static BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory create(Provider<DeviceControllerWrapper> provider) {
        return new BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory(provider);
    }

    public static BbposReaderInfoController provideBbposReaderInfoController(DeviceControllerWrapper deviceControllerWrapper) {
        return (BbposReaderInfoController) Preconditions.checkNotNullFromProvides(BbposConnectionAndInfoModule.INSTANCE.provideBbposReaderInfoController(deviceControllerWrapper));
    }
}
