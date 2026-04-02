package com.stripe.core.device.dagger;

import com.stripe.core.device.HardwareManufacturerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory implements Factory<HardwareManufacturerFactory> {
    private final BuildValuesModule module;

    public BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory(BuildValuesModule buildValuesModule) {
        this.module = buildValuesModule;
    }

    @Override // javax.inject.Provider
    public HardwareManufacturerFactory get() {
        return provideHardwareManufacturerFactory$device_release(this.module);
    }

    public static BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory create(BuildValuesModule buildValuesModule) {
        return new BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory(buildValuesModule);
    }

    public static HardwareManufacturerFactory provideHardwareManufacturerFactory$device_release(BuildValuesModule buildValuesModule) {
        return (HardwareManufacturerFactory) Preconditions.checkNotNullFromProvides(buildValuesModule.provideHardwareManufacturerFactory$device_release());
    }
}
