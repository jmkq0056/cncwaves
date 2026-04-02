package com.stripe.stripeterminal.internal.common.adapter.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class MposAdaptersModule_ProvidesEncryptionHandlerFactory implements Factory<DeviceListenerWrapper> {
    @Override // javax.inject.Provider
    public DeviceListenerWrapper get() {
        return providesEncryptionHandler();
    }

    public static MposAdaptersModule_ProvidesEncryptionHandlerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DeviceListenerWrapper providesEncryptionHandler() {
        return (DeviceListenerWrapper) Preconditions.checkNotNullFromProvides(MposAdaptersModule.INSTANCE.providesEncryptionHandler());
    }

    private static final class InstanceHolder {
        private static final MposAdaptersModule_ProvidesEncryptionHandlerFactory INSTANCE = new MposAdaptersModule_ProvidesEncryptionHandlerFactory();

        private InstanceHolder() {
        }
    }
}
