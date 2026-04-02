package com.stripe.offlinemode.cipher;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineCipherProvider_Factory implements Factory<OfflineCipherProvider> {
    @Override // javax.inject.Provider
    public OfflineCipherProvider get() {
        return newInstance();
    }

    public static OfflineCipherProvider_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OfflineCipherProvider newInstance() {
        return new OfflineCipherProvider();
    }

    private static final class InstanceHolder {
        private static final OfflineCipherProvider_Factory INSTANCE = new OfflineCipherProvider_Factory();

        private InstanceHolder() {
        }
    }
}
