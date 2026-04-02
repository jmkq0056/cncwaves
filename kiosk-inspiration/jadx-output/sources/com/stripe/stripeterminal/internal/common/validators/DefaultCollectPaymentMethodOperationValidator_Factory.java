package com.stripe.stripeterminal.internal.common.validators;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultCollectPaymentMethodOperationValidator_Factory implements Factory<DefaultCollectPaymentMethodOperationValidator> {
    @Override // javax.inject.Provider
    public DefaultCollectPaymentMethodOperationValidator get() {
        return newInstance();
    }

    public static DefaultCollectPaymentMethodOperationValidator_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultCollectPaymentMethodOperationValidator newInstance() {
        return new DefaultCollectPaymentMethodOperationValidator();
    }

    private static final class InstanceHolder {
        private static final DefaultCollectPaymentMethodOperationValidator_Factory INSTANCE = new DefaultCollectPaymentMethodOperationValidator_Factory();

        private InstanceHolder() {
        }
    }
}
