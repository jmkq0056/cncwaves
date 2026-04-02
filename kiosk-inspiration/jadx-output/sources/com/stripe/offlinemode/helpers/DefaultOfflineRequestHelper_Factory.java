package com.stripe.offlinemode.helpers;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultOfflineRequestHelper_Factory implements Factory<DefaultOfflineRequestHelper> {
    @Override // javax.inject.Provider
    public DefaultOfflineRequestHelper get() {
        return newInstance();
    }

    public static DefaultOfflineRequestHelper_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultOfflineRequestHelper newInstance() {
        return new DefaultOfflineRequestHelper();
    }

    private static final class InstanceHolder {
        private static final DefaultOfflineRequestHelper_Factory INSTANCE = new DefaultOfflineRequestHelper_Factory();

        private InstanceHolder() {
        }
    }
}
