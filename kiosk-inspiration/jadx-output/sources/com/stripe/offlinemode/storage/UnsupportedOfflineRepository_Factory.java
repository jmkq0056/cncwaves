package com.stripe.offlinemode.storage;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class UnsupportedOfflineRepository_Factory implements Factory<UnsupportedOfflineRepository> {
    @Override // javax.inject.Provider
    public UnsupportedOfflineRepository get() {
        return newInstance();
    }

    public static UnsupportedOfflineRepository_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static UnsupportedOfflineRepository newInstance() {
        return new UnsupportedOfflineRepository();
    }

    private static final class InstanceHolder {
        private static final UnsupportedOfflineRepository_Factory INSTANCE = new UnsupportedOfflineRepository_Factory();

        private InstanceHolder() {
        }
    }
}
