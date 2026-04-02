package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class UnknownHandler_Factory implements Factory<UnknownHandler> {
    @Override // javax.inject.Provider
    public UnknownHandler get() {
        return newInstance();
    }

    public static UnknownHandler_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static UnknownHandler newInstance() {
        return new UnknownHandler();
    }

    private static final class InstanceHolder {
        private static final UnknownHandler_Factory INSTANCE = new UnknownHandler_Factory();

        private InstanceHolder() {
        }
    }
}
