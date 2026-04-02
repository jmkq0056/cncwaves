package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.terminalauth.pub.api.AuthenticationApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AuthenticationApiModule_ProvideAuthenticationApiFactory implements Factory<AuthenticationApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public AuthenticationApiModule_ProvideAuthenticationApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public AuthenticationApi get() {
        return provideAuthenticationApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static AuthenticationApiModule_ProvideAuthenticationApiFactory create(Provider<CrpcClient> provider) {
        return new AuthenticationApiModule_ProvideAuthenticationApiFactory(provider);
    }

    public static AuthenticationApi provideAuthenticationApi(Lazy<CrpcClient> lazy) {
        return (AuthenticationApi) Preconditions.checkNotNullFromProvides(AuthenticationApiModule.INSTANCE.provideAuthenticationApi(lazy));
    }
}
