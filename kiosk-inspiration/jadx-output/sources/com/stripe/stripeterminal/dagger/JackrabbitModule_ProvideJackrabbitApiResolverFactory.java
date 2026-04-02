package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import com.stripe.proto.api.sdk.JackRabbitApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class JackrabbitModule_ProvideJackrabbitApiResolverFactory implements Factory<CrpcServiceResolver<JackRabbitApi>> {
    private final Provider<CrpcClient.Builder> crpcClientBuilderProvider;

    public JackrabbitModule_ProvideJackrabbitApiResolverFactory(Provider<CrpcClient.Builder> provider) {
        this.crpcClientBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcServiceResolver<JackRabbitApi> get() {
        return provideJackrabbitApiResolver(DoubleCheck.lazy(this.crpcClientBuilderProvider));
    }

    public static JackrabbitModule_ProvideJackrabbitApiResolverFactory create(Provider<CrpcClient.Builder> provider) {
        return new JackrabbitModule_ProvideJackrabbitApiResolverFactory(provider);
    }

    public static CrpcServiceResolver<JackRabbitApi> provideJackrabbitApiResolver(Lazy<CrpcClient.Builder> lazy) {
        return (CrpcServiceResolver) Preconditions.checkNotNullFromProvides(JackrabbitModule.INSTANCE.provideJackrabbitApiResolver(lazy));
    }
}
