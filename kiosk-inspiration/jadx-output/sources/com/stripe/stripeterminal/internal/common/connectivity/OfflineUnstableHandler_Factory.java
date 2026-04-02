package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineUnstableHandler_Factory implements Factory<OfflineUnstableHandler> {
    @Override // javax.inject.Provider
    public OfflineUnstableHandler get() {
        return newInstance();
    }

    public static OfflineUnstableHandler_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OfflineUnstableHandler newInstance() {
        return new OfflineUnstableHandler();
    }

    private static final class InstanceHolder {
        private static final OfflineUnstableHandler_Factory INSTANCE = new OfflineUnstableHandler_Factory();

        private InstanceHolder() {
        }
    }
}
