package com.stripe.stripeterminal.dagger;

import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.device.PlatformDeviceInfo;
import com.stripe.stripeterminal.internal.common.deviceinfo.ReaderPlatformDeviceInfo;
import dagger.Binds;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkPlatformDeviceInfoModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/SdkPlatformDeviceInfoModule;", "", "provideEmbeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "readerPlatformDeviceInfo", "Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;", "providePlatformDeviceInfo", "Lcom/stripe/device/PlatformDeviceInfo;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public interface SdkPlatformDeviceInfoModule {
    @Binds
    EmbeddedSoftwareVersionProvider provideEmbeddedSoftwareVersionProvider(ReaderPlatformDeviceInfo readerPlatformDeviceInfo);

    @Binds
    PlatformDeviceInfo providePlatformDeviceInfo(ReaderPlatformDeviceInfo readerPlatformDeviceInfo);
}
