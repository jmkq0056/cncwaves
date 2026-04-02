package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideObservabilityClientFailuresInterceptorFactory implements Factory<CustomCrpcInterceptor> {
    @Override // javax.inject.Provider
    public CustomCrpcInterceptor get() {
        return provideObservabilityClientFailuresInterceptor();
    }

    public static LogModule_ProvideObservabilityClientFailuresInterceptorFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CustomCrpcInterceptor provideObservabilityClientFailuresInterceptor() {
        return LogModule.INSTANCE.provideObservabilityClientFailuresInterceptor();
    }

    private static final class InstanceHolder {
        private static final LogModule_ProvideObservabilityClientFailuresInterceptorFactory INSTANCE = new LogModule_ProvideObservabilityClientFailuresInterceptorFactory();

        private InstanceHolder() {
        }
    }
}
