package com.stripe.stripeterminal.internal.common.connectandupdate;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class EmptyHandler_Factory implements Factory<EmptyHandler> {
    @Override // javax.inject.Provider
    public EmptyHandler get() {
        return newInstance();
    }

    public static EmptyHandler_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static EmptyHandler newInstance() {
        return new EmptyHandler();
    }

    private static final class InstanceHolder {
        private static final EmptyHandler_Factory INSTANCE = new EmptyHandler_Factory();

        private InstanceHolder() {
        }
    }
}
