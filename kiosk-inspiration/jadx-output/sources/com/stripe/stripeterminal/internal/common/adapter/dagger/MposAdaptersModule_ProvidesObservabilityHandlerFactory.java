package com.stripe.stripeterminal.internal.common.adapter.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class MposAdaptersModule_ProvidesObservabilityHandlerFactory implements Factory<DeviceListenerWrapper> {
    @Override // javax.inject.Provider
    public DeviceListenerWrapper get() {
        return providesObservabilityHandler();
    }

    public static MposAdaptersModule_ProvidesObservabilityHandlerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DeviceListenerWrapper providesObservabilityHandler() {
        return (DeviceListenerWrapper) Preconditions.checkNotNullFromProvides(MposAdaptersModule.INSTANCE.providesObservabilityHandler());
    }

    private static final class InstanceHolder {
        private static final MposAdaptersModule_ProvidesObservabilityHandlerFactory INSTANCE = new MposAdaptersModule_ProvidesObservabilityHandlerFactory();

        private InstanceHolder() {
        }
    }
}
