package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideLogRoleFactory implements Factory<String> {
    @Override // javax.inject.Provider
    public String get() {
        return provideLogRole();
    }

    public static LogModule_ProvideLogRoleFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static String provideLogRole() {
        return (String) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideLogRole());
    }

    private static final class InstanceHolder {
        private static final LogModule_ProvideLogRoleFactory INSTANCE = new LogModule_ProvideLogRoleFactory();

        private InstanceHolder() {
        }
    }
}
