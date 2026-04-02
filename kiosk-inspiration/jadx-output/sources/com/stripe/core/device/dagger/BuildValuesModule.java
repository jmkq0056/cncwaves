package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.BuildValuesFactory;
import com.stripe.core.device.DefaultBuildValuesFactory;
import com.stripe.core.device.DefaultHardwareManufacturerFactory;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.HardwareManufacturerFactory;
import com.stripe.core.device.SdkInt;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BuildValuesModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0015\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u000fJ\r\u0010\u0010\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/device/dagger/BuildValuesModule;", "", "()V", "provideBuildValues", "Lcom/stripe/core/device/BuildValues;", "buildValuesFactory", "Lcom/stripe/core/device/BuildValuesFactory;", "provideBuildValuesFactory", "hardwareManufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "sdkInt", "Lcom/stripe/core/device/SdkInt;", "provideHardwareManufacturer", "hardwareManufacturerFactory", "Lcom/stripe/core/device/HardwareManufacturerFactory;", "provideHardwareManufacturer$device_release", "provideHardwareManufacturerFactory", "provideHardwareManufacturerFactory$device_release", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {SdkIntModule.class})
public final class BuildValuesModule {
    @Provides
    @Reusable
    public final BuildValuesFactory provideBuildValuesFactory(HardwareManufacturer hardwareManufacturer, SdkInt sdkInt) {
        Intrinsics.checkNotNullParameter(hardwareManufacturer, "hardwareManufacturer");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        return new DefaultBuildValuesFactory(hardwareManufacturer, sdkInt);
    }

    @Provides
    @Reusable
    public final BuildValues provideBuildValues(BuildValuesFactory buildValuesFactory) {
        Intrinsics.checkNotNullParameter(buildValuesFactory, "buildValuesFactory");
        return buildValuesFactory.create();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Provides
    @Reusable
    public final HardwareManufacturerFactory provideHardwareManufacturerFactory$device_release() {
        return new DefaultHardwareManufacturerFactory(null, 1, 0 == true ? 1 : 0);
    }

    @Provides
    @Reusable
    public final HardwareManufacturer provideHardwareManufacturer$device_release(HardwareManufacturerFactory hardwareManufacturerFactory) {
        Intrinsics.checkNotNullParameter(hardwareManufacturerFactory, "hardwareManufacturerFactory");
        return hardwareManufacturerFactory.create();
    }
}
