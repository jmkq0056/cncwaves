package com.stripe.device;

import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultDeviceInfoRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/device/DefaultDeviceInfoRepository;", "Lcom/stripe/device/DeviceInfoRepository;", "platformDeviceInfoProvider", "Ljavax/inject/Provider;", "Lcom/stripe/device/PlatformDeviceInfo;", "(Ljavax/inject/Provider;)V", "getPlatformDeviceInfo", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDeviceInfoRepository implements DeviceInfoRepository {
    private final Provider<PlatformDeviceInfo> platformDeviceInfoProvider;

    public DefaultDeviceInfoRepository(Provider<PlatformDeviceInfo> platformDeviceInfoProvider) {
        Intrinsics.checkNotNullParameter(platformDeviceInfoProvider, "platformDeviceInfoProvider");
        this.platformDeviceInfoProvider = platformDeviceInfoProvider;
    }

    @Override // com.stripe.device.DeviceInfoRepository
    public PlatformDeviceInfo getPlatformDeviceInfo() {
        PlatformDeviceInfo platformDeviceInfo = this.platformDeviceInfoProvider.get();
        Intrinsics.checkNotNullExpressionValue(platformDeviceInfo, "get(...)");
        return platformDeviceInfo;
    }
}
