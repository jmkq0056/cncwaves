package com.stripe.stripeterminal.internal.common.crpc;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class CrpcLogPointInterceptor_Factory implements Factory<CrpcLogPointInterceptor> {
    @Override // javax.inject.Provider
    public CrpcLogPointInterceptor get() {
        return newInstance();
    }

    public static CrpcLogPointInterceptor_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CrpcLogPointInterceptor newInstance() {
        return new CrpcLogPointInterceptor();
    }

    private static final class InstanceHolder {
        private static final CrpcLogPointInterceptor_Factory INSTANCE = new CrpcLogPointInterceptor_Factory();

        private InstanceHolder() {
        }
    }
}
