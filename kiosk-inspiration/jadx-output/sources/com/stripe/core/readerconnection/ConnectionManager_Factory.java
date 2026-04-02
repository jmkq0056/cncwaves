package com.stripe.core.readerconnection;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectionManager_Factory implements Factory<ConnectionManager> {
    @Override // javax.inject.Provider
    public ConnectionManager get() {
        return newInstance();
    }

    public static ConnectionManager_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ConnectionManager newInstance() {
        return new ConnectionManager();
    }

    private static final class InstanceHolder {
        private static final ConnectionManager_Factory INSTANCE = new ConnectionManager_Factory();

        private InstanceHolder() {
        }
    }
}
