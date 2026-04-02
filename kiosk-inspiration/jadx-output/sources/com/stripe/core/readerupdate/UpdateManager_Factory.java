package com.stripe.core.readerupdate;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class UpdateManager_Factory implements Factory<UpdateManager> {
    @Override // javax.inject.Provider
    public UpdateManager get() {
        return newInstance();
    }

    public static UpdateManager_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static UpdateManager newInstance() {
        return new UpdateManager();
    }

    private static final class InstanceHolder {
        private static final UpdateManager_Factory INSTANCE = new UpdateManager_Factory();

        private InstanceHolder() {
        }
    }
}
