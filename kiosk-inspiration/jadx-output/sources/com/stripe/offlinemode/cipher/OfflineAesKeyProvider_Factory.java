package com.stripe.offlinemode.cipher;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineAesKeyProvider_Factory implements Factory<OfflineAesKeyProvider> {
    @Override // javax.inject.Provider
    public OfflineAesKeyProvider get() {
        return newInstance();
    }

    public static OfflineAesKeyProvider_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OfflineAesKeyProvider newInstance() {
        return new OfflineAesKeyProvider();
    }

    private static final class InstanceHolder {
        private static final OfflineAesKeyProvider_Factory INSTANCE = new OfflineAesKeyProvider_Factory();

        private InstanceHolder() {
        }
    }
}
