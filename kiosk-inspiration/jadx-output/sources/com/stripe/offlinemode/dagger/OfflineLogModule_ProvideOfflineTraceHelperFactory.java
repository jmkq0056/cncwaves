package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.log.OfflineTraceHelper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideOfflineTraceHelperFactory implements Factory<OfflineTraceHelper> {
    @Override // javax.inject.Provider
    public OfflineTraceHelper get() {
        return provideOfflineTraceHelper();
    }

    public static OfflineLogModule_ProvideOfflineTraceHelperFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static OfflineTraceHelper provideOfflineTraceHelper() {
        return (OfflineTraceHelper) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideOfflineTraceHelper());
    }

    private static final class InstanceHolder {
        private static final OfflineLogModule_ProvideOfflineTraceHelperFactory INSTANCE = new OfflineLogModule_ProvideOfflineTraceHelperFactory();

        private InstanceHolder() {
        }
    }
}
