package com.stripe.offlinemode.dagger;

import com.squareup.moshi.Moshi;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineForwardingModule_Companion_ProvideMoshiFactory implements Factory<Moshi> {
    @Override // javax.inject.Provider
    public Moshi get() {
        return provideMoshi();
    }

    public static OfflineForwardingModule_Companion_ProvideMoshiFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Moshi provideMoshi() {
        return (Moshi) Preconditions.checkNotNullFromProvides(OfflineForwardingModule.INSTANCE.provideMoshi());
    }

    private static final class InstanceHolder {
        private static final OfflineForwardingModule_Companion_ProvideMoshiFactory INSTANCE = new OfflineForwardingModule_Companion_ProvideMoshiFactory();

        private InstanceHolder() {
        }
    }
}
