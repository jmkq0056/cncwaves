package com.stripe.stripeterminal.internal.common.adapter.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class MposAdaptersModule_ProvidesReaderStatusHandlerFactory implements Factory<DeviceListenerWrapper> {
    @Override // javax.inject.Provider
    public DeviceListenerWrapper get() {
        return providesReaderStatusHandler();
    }

    public static MposAdaptersModule_ProvidesReaderStatusHandlerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DeviceListenerWrapper providesReaderStatusHandler() {
        return (DeviceListenerWrapper) Preconditions.checkNotNullFromProvides(MposAdaptersModule.INSTANCE.providesReaderStatusHandler());
    }

    private static final class InstanceHolder {
        private static final MposAdaptersModule_ProvidesReaderStatusHandlerFactory INSTANCE = new MposAdaptersModule_ProvidesReaderStatusHandlerFactory();

        private InstanceHolder() {
        }
    }
}
