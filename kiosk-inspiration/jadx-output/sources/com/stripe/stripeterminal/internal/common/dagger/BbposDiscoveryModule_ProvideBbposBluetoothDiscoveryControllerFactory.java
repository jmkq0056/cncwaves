package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryFilter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory implements Factory<BbposBluetoothDiscoveryController> {
    private final Provider<DeviceControllerWrapper> bbposDeviceControllerProvider;
    private final Provider<BbposBluetoothDiscoveryFilter> discoveryFilterProvider;

    public BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory(Provider<DeviceControllerWrapper> provider, Provider<BbposBluetoothDiscoveryFilter> provider2) {
        this.bbposDeviceControllerProvider = provider;
        this.discoveryFilterProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BbposBluetoothDiscoveryController get() {
        return provideBbposBluetoothDiscoveryController(this.bbposDeviceControllerProvider.get(), this.discoveryFilterProvider.get());
    }

    public static BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory create(Provider<DeviceControllerWrapper> provider, Provider<BbposBluetoothDiscoveryFilter> provider2) {
        return new BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory(provider, provider2);
    }

    public static BbposBluetoothDiscoveryController provideBbposBluetoothDiscoveryController(DeviceControllerWrapper deviceControllerWrapper, BbposBluetoothDiscoveryFilter bbposBluetoothDiscoveryFilter) {
        return (BbposBluetoothDiscoveryController) Preconditions.checkNotNullFromProvides(BbposDiscoveryModule.INSTANCE.provideBbposBluetoothDiscoveryController(deviceControllerWrapper, bbposBluetoothDiscoveryFilter));
    }
}
