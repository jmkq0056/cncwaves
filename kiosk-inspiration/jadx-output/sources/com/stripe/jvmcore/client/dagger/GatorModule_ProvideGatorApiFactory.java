package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.api.gator.GatorApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorModule_ProvideGatorApiFactory implements Factory<GatorApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public GatorModule_ProvideGatorApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public GatorApi get() {
        return provideGatorApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static GatorModule_ProvideGatorApiFactory create(Provider<CrpcClient> provider) {
        return new GatorModule_ProvideGatorApiFactory(provider);
    }

    public static GatorApi provideGatorApi(Lazy<CrpcClient> lazy) {
        return (GatorApi) Preconditions.checkNotNullFromProvides(GatorModule.INSTANCE.provideGatorApi(lazy));
    }
}
