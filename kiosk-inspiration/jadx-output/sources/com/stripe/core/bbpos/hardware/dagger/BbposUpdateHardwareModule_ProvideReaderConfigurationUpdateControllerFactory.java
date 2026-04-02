package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposUpdateHardwareModule_ProvideReaderConfigurationUpdateControllerFactory implements Factory<ReaderConfigurationUpdateController> {
    private final Provider<DeviceControllerWrapper> deviceControllerProvider;

    public BbposUpdateHardwareModule_ProvideReaderConfigurationUpdateControllerFactory(Provider<DeviceControllerWrapper> provider) {
        this.deviceControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReaderConfigurationUpdateController get() {
        return provideReaderConfigurationUpdateController(this.deviceControllerProvider.get());
    }

    public static BbposUpdateHardwareModule_ProvideReaderConfigurationUpdateControllerFactory create(Provider<DeviceControllerWrapper> provider) {
        return new BbposUpdateHardwareModule_ProvideReaderConfigurationUpdateControllerFactory(provider);
    }

    public static ReaderConfigurationUpdateController provideReaderConfigurationUpdateController(DeviceControllerWrapper deviceControllerWrapper) {
        return (ReaderConfigurationUpdateController) Preconditions.checkNotNullFromProvides(BbposUpdateHardwareModule.INSTANCE.provideReaderConfigurationUpdateController(deviceControllerWrapper));
    }
}
