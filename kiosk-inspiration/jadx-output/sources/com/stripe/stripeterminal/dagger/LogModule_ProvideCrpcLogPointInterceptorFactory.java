package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.stripeterminal.internal.common.crpc.CrpcLogPointInterceptor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideCrpcLogPointInterceptorFactory implements Factory<CustomCrpcInterceptor> {
    private final Provider<CrpcLogPointInterceptor> crpcLogPointInterceptorProvider;

    public LogModule_ProvideCrpcLogPointInterceptorFactory(Provider<CrpcLogPointInterceptor> provider) {
        this.crpcLogPointInterceptorProvider = provider;
    }

    @Override // javax.inject.Provider
    public CustomCrpcInterceptor get() {
        return provideCrpcLogPointInterceptor(this.crpcLogPointInterceptorProvider.get());
    }

    public static LogModule_ProvideCrpcLogPointInterceptorFactory create(Provider<CrpcLogPointInterceptor> provider) {
        return new LogModule_ProvideCrpcLogPointInterceptorFactory(provider);
    }

    public static CustomCrpcInterceptor provideCrpcLogPointInterceptor(CrpcLogPointInterceptor crpcLogPointInterceptor) {
        return (CustomCrpcInterceptor) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideCrpcLogPointInterceptor(crpcLogPointInterceptor));
    }
}
