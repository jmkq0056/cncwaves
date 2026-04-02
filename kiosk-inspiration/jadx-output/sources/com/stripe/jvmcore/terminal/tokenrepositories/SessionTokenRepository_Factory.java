package com.stripe.jvmcore.terminal.tokenrepositories;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionTokenRepository_Factory implements Factory<SessionTokenRepository> {
    @Override // javax.inject.Provider
    public SessionTokenRepository get() {
        return newInstance();
    }

    public static SessionTokenRepository_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static SessionTokenRepository newInstance() {
        return new SessionTokenRepository();
    }

    private static final class InstanceHolder {
        private static final SessionTokenRepository_Factory INSTANCE = new SessionTokenRepository_Factory();

        private InstanceHolder() {
        }
    }
}
