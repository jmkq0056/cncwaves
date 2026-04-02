package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideTraceManagerFactory implements Factory<TraceManager> {
    @Override // javax.inject.Provider
    public TraceManager get() {
        return provideTraceManager();
    }

    public static JvmCoreLogModule_ProvideTraceManagerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static TraceManager provideTraceManager() {
        return (TraceManager) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideTraceManager());
    }

    private static final class InstanceHolder {
        private static final JvmCoreLogModule_ProvideTraceManagerFactory INSTANCE = new JvmCoreLogModule_ProvideTraceManagerFactory();

        private InstanceHolder() {
        }
    }
}
