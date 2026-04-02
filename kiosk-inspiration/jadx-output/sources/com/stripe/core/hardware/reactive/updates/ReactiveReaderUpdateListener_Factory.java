package com.stripe.core.hardware.reactive.updates;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class ReactiveReaderUpdateListener_Factory implements Factory<ReactiveReaderUpdateListener> {
    @Override // javax.inject.Provider
    public ReactiveReaderUpdateListener get() {
        return newInstance();
    }

    public static ReactiveReaderUpdateListener_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ReactiveReaderUpdateListener newInstance() {
        return new ReactiveReaderUpdateListener();
    }

    private static final class InstanceHolder {
        private static final ReactiveReaderUpdateListener_Factory INSTANCE = new ReactiveReaderUpdateListener_Factory();

        private InstanceHolder() {
        }
    }
}
