package com.stripe.currency;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class CurrencyFormatter_Factory implements Factory<CurrencyFormatter> {
    @Override // javax.inject.Provider
    public CurrencyFormatter get() {
        return newInstance();
    }

    public static CurrencyFormatter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CurrencyFormatter newInstance() {
        return new CurrencyFormatter();
    }

    private static final class InstanceHolder {
        private static final CurrencyFormatter_Factory INSTANCE = new CurrencyFormatter_Factory();

        private InstanceHolder() {
        }
    }
}
