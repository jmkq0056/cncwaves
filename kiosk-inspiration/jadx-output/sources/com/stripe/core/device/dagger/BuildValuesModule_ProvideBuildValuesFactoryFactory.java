package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValuesFactory;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.SdkInt;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildValuesModule_ProvideBuildValuesFactoryFactory implements Factory<BuildValuesFactory> {
    private final Provider<HardwareManufacturer> hardwareManufacturerProvider;
    private final BuildValuesModule module;
    private final Provider<SdkInt> sdkIntProvider;

    public BuildValuesModule_ProvideBuildValuesFactoryFactory(BuildValuesModule buildValuesModule, Provider<HardwareManufacturer> provider, Provider<SdkInt> provider2) {
        this.module = buildValuesModule;
        this.hardwareManufacturerProvider = provider;
        this.sdkIntProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BuildValuesFactory get() {
        return provideBuildValuesFactory(this.module, this.hardwareManufacturerProvider.get(), this.sdkIntProvider.get());
    }

    public static BuildValuesModule_ProvideBuildValuesFactoryFactory create(BuildValuesModule buildValuesModule, Provider<HardwareManufacturer> provider, Provider<SdkInt> provider2) {
        return new BuildValuesModule_ProvideBuildValuesFactoryFactory(buildValuesModule, provider, provider2);
    }

    public static BuildValuesFactory provideBuildValuesFactory(BuildValuesModule buildValuesModule, HardwareManufacturer hardwareManufacturer, SdkInt sdkInt) {
        return (BuildValuesFactory) Preconditions.checkNotNullFromProvides(buildValuesModule.provideBuildValuesFactory(hardwareManufacturer, sdkInt));
    }
}
