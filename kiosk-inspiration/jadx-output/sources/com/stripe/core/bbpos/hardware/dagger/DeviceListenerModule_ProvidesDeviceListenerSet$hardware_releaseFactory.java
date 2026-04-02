package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory implements Factory<Set<DeviceListenerWrapper>> {
    @Override // javax.inject.Provider
    public Set<DeviceListenerWrapper> get() {
        return providesDeviceListenerSet$hardware_release();
    }

    public static DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Set<DeviceListenerWrapper> providesDeviceListenerSet$hardware_release() {
        return (Set) Preconditions.checkNotNullFromProvides(DeviceListenerModule.INSTANCE.providesDeviceListenerSet$hardware_release());
    }

    /* JADX INFO: compiled from: DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory.java */
    private static final class InstanceHolder {
        private static final DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory INSTANCE = new DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory();

        private InstanceHolder() {
        }
    }
}
