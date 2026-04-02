package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory implements Factory<CustomCrpcInterceptor> {
    private final Provider<CustomCrpcInterceptor> traceLoggingInterceptorProvider;

    public ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory(Provider<CustomCrpcInterceptor> provider) {
        this.traceLoggingInterceptorProvider = provider;
    }

    @Override // javax.inject.Provider
    public CustomCrpcInterceptor get() {
        return provideTraceLoggingInterceptor(this.traceLoggingInterceptorProvider.get());
    }

    public static ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory create(Provider<CustomCrpcInterceptor> provider) {
        return new ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory(provider);
    }

    public static CustomCrpcInterceptor provideTraceLoggingInterceptor(CustomCrpcInterceptor customCrpcInterceptor) {
        return (CustomCrpcInterceptor) Preconditions.checkNotNullFromProvides(ArmadaCrpcClientModule.INSTANCE.provideTraceLoggingInterceptor(customCrpcInterceptor));
    }
}
