package com.stripe.core.hardware.reactive.emv;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class ReactiveConfigurationListener_Factory implements Factory<ReactiveConfigurationListener> {
    @Override // javax.inject.Provider
    public ReactiveConfigurationListener get() {
        return newInstance();
    }

    public static ReactiveConfigurationListener_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ReactiveConfigurationListener newInstance() {
        return new ReactiveConfigurationListener();
    }

    private static final class InstanceHolder {
        private static final ReactiveConfigurationListener_Factory INSTANCE = new ReactiveConfigurationListener_Factory();

        private InstanceHolder() {
        }
    }
}
