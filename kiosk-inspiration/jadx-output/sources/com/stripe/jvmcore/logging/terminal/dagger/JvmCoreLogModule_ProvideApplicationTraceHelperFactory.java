package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideApplicationTraceHelperFactory implements Factory<LoggerHelper<ApplicationTrace, ApplicationTraceResult>> {
    @Override // javax.inject.Provider
    public LoggerHelper<ApplicationTrace, ApplicationTraceResult> get() {
        return provideApplicationTraceHelper();
    }

    public static JvmCoreLogModule_ProvideApplicationTraceHelperFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static LoggerHelper<ApplicationTrace, ApplicationTraceResult> provideApplicationTraceHelper() {
        return (LoggerHelper) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideApplicationTraceHelper());
    }

    private static final class InstanceHolder {
        private static final JvmCoreLogModule_ProvideApplicationTraceHelperFactory INSTANCE = new JvmCoreLogModule_ProvideApplicationTraceHelperFactory();

        private InstanceHolder() {
        }
    }
}
