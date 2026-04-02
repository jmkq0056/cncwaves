package com.stripe.stripeterminal.internal.common.dagger;

import android.content.Context;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.SerialSupplier;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.stripeterminal.internal.common.appinfo.AppInfoParser;
import com.stripe.stripeterminal.internal.common.appinfo.DefaultAppInfoParser;
import com.stripe.stripeterminal.internal.common.appinfo.DefaultSdkApplicationInformationFactory;
import com.stripe.stripeterminal.internal.common.appinfo.SdkApplicationInformationFactory;
import com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidProvider;
import com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidSharedPrefsProvider;
import com.stripe.stripeterminal.internal.common.deviceinfo.DeviceUuidSharedPrefsProvider;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: compiled from: AppInfoModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J9\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001¢\u0006\u0002\b\u0012J\u0017\u0010\u0013\u001a\u00020\u000b2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0014J/\u0010\u0015\u001a\u00020\u00162\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0001¢\u0006\u0002\b\u001b¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;", "", "()V", "provideAppInfoParser", "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;", "context", "Landroid/content/Context;", "provideAppInfoParser$common_publish", "provideDeviceUuidProvider", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "deviceUuidSharedPrefsProvider", "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "provideDeviceUuidProvider$common_publish", "provideDeviceUuidSharedPrefsProvider", "provideDeviceUuidSharedPrefsProvider$common_publish", "provideSdkApplicationInformationFactory", "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;", "deviceUuidProvider", "appInfoParser", "buildValues", "Lcom/stripe/core/device/BuildValues;", "provideSdkApplicationInformationFactory$common_publish", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class AppInfoModule {
    @Provides
    @Reusable
    public final AppInfoParser provideAppInfoParser$common_publish(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new DefaultAppInfoParser(context);
    }

    @Provides
    @Reusable
    public final SdkApplicationInformationFactory provideSdkApplicationInformationFactory$common_publish(@ForApplication Context context, DeviceUuidProvider deviceUuidProvider, AppInfoParser appInfoParser, BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceUuidProvider, "deviceUuidProvider");
        Intrinsics.checkNotNullParameter(appInfoParser, "appInfoParser");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        return new DefaultSdkApplicationInformationFactory(context, deviceUuidProvider, appInfoParser, buildValues);
    }

    @Provides
    @Reusable
    public final DeviceUuidProvider provideDeviceUuidProvider$common_publish(DeviceUuidSharedPrefsProvider deviceUuidSharedPrefsProvider, @ForApplication Context context, @IO CoroutineDispatcher io2, HardwareManufacturer manufacturer, SerialSupplier serialSupplier) {
        Intrinsics.checkNotNullParameter(deviceUuidSharedPrefsProvider, "deviceUuidSharedPrefsProvider");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(serialSupplier, "serialSupplier");
        return new DefaultDeviceUuidProvider(deviceUuidSharedPrefsProvider, io2, manufacturer, serialSupplier);
    }

    @Provides
    @Reusable
    public final DeviceUuidSharedPrefsProvider provideDeviceUuidSharedPrefsProvider$common_publish(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new DefaultDeviceUuidSharedPrefsProvider(context);
    }
}
