package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.device.ClientDeviceType;
import com.stripe.core.device.ClientDeviceTypeProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceTypeModule_ProvideClientDeviceTypeFactory implements Factory<ClientDeviceType> {
    private final Provider<ClientDeviceTypeProvider> clientDeviceTypeProvider;

    public DeviceTypeModule_ProvideClientDeviceTypeFactory(Provider<ClientDeviceTypeProvider> provider) {
        this.clientDeviceTypeProvider = provider;
    }

    @Override // javax.inject.Provider
    public ClientDeviceType get() {
        return provideClientDeviceType(this.clientDeviceTypeProvider.get());
    }

    public static DeviceTypeModule_ProvideClientDeviceTypeFactory create(Provider<ClientDeviceTypeProvider> provider) {
        return new DeviceTypeModule_ProvideClientDeviceTypeFactory(provider);
    }

    public static ClientDeviceType provideClientDeviceType(ClientDeviceTypeProvider clientDeviceTypeProvider) {
        return (ClientDeviceType) Preconditions.checkNotNullFromProvides(DeviceTypeModule.INSTANCE.provideClientDeviceType(clientDeviceTypeProvider));
    }
}
