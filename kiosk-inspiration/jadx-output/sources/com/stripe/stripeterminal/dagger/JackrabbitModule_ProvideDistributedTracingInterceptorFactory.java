package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes4.dex */
public final class JackrabbitModule_ProvideDistributedTracingInterceptorFactory implements Factory<Interceptor> {
    private final Provider<TraceManager> traceManagerProvider;

    public JackrabbitModule_ProvideDistributedTracingInterceptorFactory(Provider<TraceManager> provider) {
        this.traceManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public Interceptor get() {
        return provideDistributedTracingInterceptor(this.traceManagerProvider.get());
    }

    public static JackrabbitModule_ProvideDistributedTracingInterceptorFactory create(Provider<TraceManager> provider) {
        return new JackrabbitModule_ProvideDistributedTracingInterceptorFactory(provider);
    }

    public static Interceptor provideDistributedTracingInterceptor(TraceManager traceManager) {
        return (Interceptor) Preconditions.checkNotNullFromProvides(JackrabbitModule.INSTANCE.provideDistributedTracingInterceptor(traceManager));
    }
}
