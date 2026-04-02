package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineStableHandler_Factory implements Factory<OfflineStableHandler> {
    @Override // javax.inject.Provider
    public OfflineStableHandler get() {
        return newInstance();
    }

    public static OfflineStableHandler_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OfflineStableHandler newInstance() {
        return new OfflineStableHandler();
    }

    private static final class InstanceHolder {
        private static final OfflineStableHandler_Factory INSTANCE = new OfflineStableHandler_Factory();

        private InstanceHolder() {
        }
    }
}
