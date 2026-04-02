package com.stripe.stripeterminal.internal.common.adapter.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class MposAdaptersModule_ProvidesMissingKeyHandlerFactory implements Factory<DeviceListenerWrapper> {
    @Override // javax.inject.Provider
    public DeviceListenerWrapper get() {
        return providesMissingKeyHandler();
    }

    public static MposAdaptersModule_ProvidesMissingKeyHandlerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DeviceListenerWrapper providesMissingKeyHandler() {
        return (DeviceListenerWrapper) Preconditions.checkNotNullFromProvides(MposAdaptersModule.INSTANCE.providesMissingKeyHandler());
    }

    private static final class InstanceHolder {
        private static final MposAdaptersModule_ProvidesMissingKeyHandlerFactory INSTANCE = new MposAdaptersModule_ProvidesMissingKeyHandlerFactory();

        private InstanceHolder() {
        }
    }
}
