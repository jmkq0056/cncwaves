package com.stripe.device.dagger;

import com.stripe.device.DefaultDeviceInfoRepository;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.device.PlatformDeviceInfo;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceInfoModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0001¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/device/dagger/DeviceInfoModule;", "", "()V", "provideDeviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "platformDeviceInfoProvider", "Ljavax/inject/Provider;", "Lcom/stripe/device/PlatformDeviceInfo;", "provideDeviceInfoRepository$wiring", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class DeviceInfoModule {
    public static final DeviceInfoModule INSTANCE = new DeviceInfoModule();

    private DeviceInfoModule() {
    }

    @Provides
    @Reusable
    public final DeviceInfoRepository provideDeviceInfoRepository$wiring(Provider<PlatformDeviceInfo> platformDeviceInfoProvider) {
        Intrinsics.checkNotNullParameter(platformDeviceInfoProvider, "platformDeviceInfoProvider");
        return new DefaultDeviceInfoRepository(platformDeviceInfoProvider);
    }
}
