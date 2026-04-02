package com.stripe.core.device.dagger;

import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.HardwareManufacturerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory implements Factory<HardwareManufacturer> {
    private final Provider<HardwareManufacturerFactory> hardwareManufacturerFactoryProvider;
    private final BuildValuesModule module;

    public BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory(BuildValuesModule buildValuesModule, Provider<HardwareManufacturerFactory> provider) {
        this.module = buildValuesModule;
        this.hardwareManufacturerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public HardwareManufacturer get() {
        return provideHardwareManufacturer$device_release(this.module, this.hardwareManufacturerFactoryProvider.get());
    }

    public static BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory create(BuildValuesModule buildValuesModule, Provider<HardwareManufacturerFactory> provider) {
        return new BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory(buildValuesModule, provider);
    }

    public static HardwareManufacturer provideHardwareManufacturer$device_release(BuildValuesModule buildValuesModule, HardwareManufacturerFactory hardwareManufacturerFactory) {
        return (HardwareManufacturer) Preconditions.checkNotNullFromProvides(buildValuesModule.provideHardwareManufacturer$device_release(hardwareManufacturerFactory));
    }
}
