package com.stripe.jvmcore.logging.terminal.dagger;

import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideGsonFactory implements Factory<Gson> {
    @Override // javax.inject.Provider
    public Gson get() {
        return provideGson();
    }

    public static JvmCoreLogModule_ProvideGsonFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Gson provideGson() {
        return (Gson) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideGson());
    }

    private static final class InstanceHolder {
        private static final JvmCoreLogModule_ProvideGsonFactory INSTANCE = new JvmCoreLogModule_ProvideGsonFactory();

        private InstanceHolder() {
        }
    }
}
