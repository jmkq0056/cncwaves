package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.offlinemode.log.OfflineForwardingLogOperation;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideOfflineLogRepositoryFactory implements Factory<LogRepository<OfflineForwardingLogOperation>> {
    @Override // javax.inject.Provider
    public LogRepository<OfflineForwardingLogOperation> get() {
        return provideOfflineLogRepository();
    }

    public static OfflineLogModule_ProvideOfflineLogRepositoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static LogRepository<OfflineForwardingLogOperation> provideOfflineLogRepository() {
        return (LogRepository) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideOfflineLogRepository());
    }

    private static final class InstanceHolder {
        private static final OfflineLogModule_ProvideOfflineLogRepositoryFactory INSTANCE = new OfflineLogModule_ProvideOfflineLogRepositoryFactory();

        private InstanceHolder() {
        }
    }
}
