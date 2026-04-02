package com.stripe.core.dagger.modules;

import android.app.ActivityManager;
import android.app.Application;
import android.app.NotificationManager;
import android.app.admin.DevicePolicyManager;
import android.app.usage.NetworkStatsManager;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraManager;
import android.hardware.usb.UsbManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.HardwarePropertiesManager;
import android.os.PowerManager;
import android.telephony.TelephonyManager;
import com.stripe.jvmcore.dagger.ForApplication;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SystemServiceModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0013\u001a\u00020\u00142\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0015\u001a\u00020\u00162\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0012\u0010\u001b\u001a\u00020\u001c2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u001d\u001a\u00020\u001e2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u001f\u001a\u00020 2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010!\u001a\u00020\"2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006#"}, d2 = {"Lcom/stripe/core/dagger/modules/SystemServiceModule;", "", "()V", "provideActivityManager", "Landroid/app/ActivityManager;", "context", "Landroid/content/Context;", "provideAudioManager", "Landroid/media/AudioManager;", "provideBluetoothManager", "Landroid/bluetooth/BluetoothManager;", "provideCameraManager", "Landroid/hardware/camera2/CameraManager;", "provideConnectivityManager", "Landroid/net/ConnectivityManager;", "provideDevicePolicyManager", "Landroid/app/admin/DevicePolicyManager;", "provideHardwarePropertiesManager", "Landroid/os/HardwarePropertiesManager;", "provideNetworkStatsManager", "Landroid/app/usage/NetworkStatsManager;", "provideNotificationManager", "Landroid/app/NotificationManager;", "providePackageManager", "Landroid/content/pm/PackageManager;", "app", "Landroid/app/Application;", "providePowerManager", "Landroid/os/PowerManager;", "provideTelephonyManager", "Landroid/telephony/TelephonyManager;", "provideUsbManager", "Landroid/hardware/usb/UsbManager;", "provideWifiManager", "Landroid/net/wifi/WifiManager;", "dagger_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class SystemServiceModule {
    public static final SystemServiceModule INSTANCE = new SystemServiceModule();

    private SystemServiceModule() {
    }

    @Provides
    @Reusable
    public final ConnectivityManager provideConnectivityManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return (ConnectivityManager) systemService;
    }

    @Provides
    @Reusable
    public final DevicePolicyManager provideDevicePolicyManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("device_policy");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.admin.DevicePolicyManager");
        return (DevicePolicyManager) systemService;
    }

    @Provides
    @Reusable
    public final PackageManager providePackageManager(Application app) {
        Intrinsics.checkNotNullParameter(app, "app");
        PackageManager packageManager = app.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
        return packageManager;
    }

    @Provides
    @Reusable
    public final NotificationManager provideNotificationManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    @Provides
    @Reusable
    public final WifiManager provideWifiManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("wifi");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        return (WifiManager) systemService;
    }

    @Provides
    @Reusable
    public final TelephonyManager provideTelephonyManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("phone");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        return (TelephonyManager) systemService;
    }

    @Provides
    @Reusable
    public final ActivityManager provideActivityManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        return (ActivityManager) systemService;
    }

    @Provides
    @Reusable
    public final PowerManager providePowerManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return (PowerManager) systemService;
    }

    @Provides
    @Reusable
    public final BluetoothManager provideBluetoothManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("bluetooth");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.bluetooth.BluetoothManager");
        return (BluetoothManager) systemService;
    }

    @Provides
    @Reusable
    public final AudioManager provideAudioManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("audio");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        return (AudioManager) systemService;
    }

    @Provides
    @Reusable
    public final UsbManager provideUsbManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("usb");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
        return (UsbManager) systemService;
    }

    @Provides
    @Reusable
    public final HardwarePropertiesManager provideHardwarePropertiesManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("hardware_properties");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.HardwarePropertiesManager");
        return (HardwarePropertiesManager) systemService;
    }

    @Provides
    @Reusable
    public final NetworkStatsManager provideNetworkStatsManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("netstats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.NetworkStatsManager");
        return (NetworkStatsManager) systemService;
    }

    @Provides
    @Reusable
    public final CameraManager provideCameraManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("camera");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.camera2.CameraManager");
        return (CameraManager) systemService;
    }
}
