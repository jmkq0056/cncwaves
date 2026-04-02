package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperation;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideDefaultLogRepositoryFactory implements Factory<LogRepository<DefaultLogOperation>> {
    @Override // javax.inject.Provider
    public LogRepository<DefaultLogOperation> get() {
        return provideDefaultLogRepository();
    }

    public static JvmCoreLogModule_ProvideDefaultLogRepositoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static LogRepository<DefaultLogOperation> provideDefaultLogRepository() {
        return (LogRepository) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideDefaultLogRepository());
    }

    private static final class InstanceHolder {
        private static final JvmCoreLogModule_ProvideDefaultLogRepositoryFactory INSTANCE = new JvmCoreLogModule_ProvideDefaultLogRepositoryFactory();

        private InstanceHolder() {
        }
    }
}
