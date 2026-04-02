package com.stripe.core.hardware.paymentcollection;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class PinButtonsRepository_Factory implements Factory<PinButtonsRepository> {
    @Override // javax.inject.Provider
    public PinButtonsRepository get() {
        return newInstance();
    }

    public static PinButtonsRepository_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static PinButtonsRepository newInstance() {
        return new PinButtonsRepository();
    }

    private static final class InstanceHolder {
        private static final PinButtonsRepository_Factory INSTANCE = new PinButtonsRepository_Factory();

        private InstanceHolder() {
        }
    }
}
