package com.stripe.core.bbpos.dagger;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.bbpos.mappers.DeviceInfoCache;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory implements Factory<BbposDeviceControllerImpl> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<BBDeviceController> controllerProvider;
    private final Provider<DeviceInfoCache> deviceInfoCacheProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final BbposSdkModule module;

    public BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory(BbposSdkModule bbposSdkModule, Provider<CoroutineScope> provider, Provider<BBDeviceController> provider2, Provider<DeviceInfoCache> provider3, Provider<LoggerFactory> provider4) {
        this.module = bbposSdkModule;
        this.appScopeProvider = provider;
        this.controllerProvider = provider2;
        this.deviceInfoCacheProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BbposDeviceControllerImpl get() {
        return provideBbposDeviceController$sdk_release(this.module, this.appScopeProvider.get(), this.controllerProvider.get(), this.deviceInfoCacheProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory create(BbposSdkModule bbposSdkModule, Provider<CoroutineScope> provider, Provider<BBDeviceController> provider2, Provider<DeviceInfoCache> provider3, Provider<LoggerFactory> provider4) {
        return new BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory(bbposSdkModule, provider, provider2, provider3, provider4);
    }

    public static BbposDeviceControllerImpl provideBbposDeviceController$sdk_release(BbposSdkModule bbposSdkModule, CoroutineScope coroutineScope, BBDeviceController bBDeviceController, DeviceInfoCache deviceInfoCache, LoggerFactory loggerFactory) {
        return (BbposDeviceControllerImpl) Preconditions.checkNotNullFromProvides(bbposSdkModule.provideBbposDeviceController$sdk_release(coroutineScope, bBDeviceController, deviceInfoCache, loggerFactory));
    }
}
