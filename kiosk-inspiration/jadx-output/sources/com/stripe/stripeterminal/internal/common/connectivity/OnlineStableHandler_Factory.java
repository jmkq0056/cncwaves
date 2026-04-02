package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class OnlineStableHandler_Factory implements Factory<OnlineStableHandler> {
    @Override // javax.inject.Provider
    public OnlineStableHandler get() {
        return newInstance();
    }

    public static OnlineStableHandler_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OnlineStableHandler newInstance() {
        return new OnlineStableHandler();
    }

    private static final class InstanceHolder {
        private static final OnlineStableHandler_Factory INSTANCE = new OnlineStableHandler_Factory();

        private InstanceHolder() {
        }
    }
}
