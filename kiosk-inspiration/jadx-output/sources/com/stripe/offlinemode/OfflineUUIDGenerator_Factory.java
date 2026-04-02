package com.stripe.offlinemode;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineUUIDGenerator_Factory implements Factory<OfflineUUIDGenerator> {
    @Override // javax.inject.Provider
    public OfflineUUIDGenerator get() {
        return newInstance();
    }

    public static OfflineUUIDGenerator_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OfflineUUIDGenerator newInstance() {
        return new OfflineUUIDGenerator();
    }

    private static final class InstanceHolder {
        private static final OfflineUUIDGenerator_Factory INSTANCE = new OfflineUUIDGenerator_Factory();

        private InstanceHolder() {
        }
    }
}
