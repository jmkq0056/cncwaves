package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class OnlineUnstableHandler_Factory implements Factory<OnlineUnstableHandler> {
    @Override // javax.inject.Provider
    public OnlineUnstableHandler get() {
        return newInstance();
    }

    public static OnlineUnstableHandler_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OnlineUnstableHandler newInstance() {
        return new OnlineUnstableHandler();
    }

    private static final class InstanceHolder {
        private static final OnlineUnstableHandler_Factory INSTANCE = new OnlineUnstableHandler_Factory();

        private InstanceHolder() {
        }
    }
}
