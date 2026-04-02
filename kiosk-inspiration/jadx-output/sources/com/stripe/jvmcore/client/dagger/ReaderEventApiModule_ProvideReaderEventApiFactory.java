package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.proto.event_channel.pub.api.ReaderEventApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ReaderEventApiModule_ProvideReaderEventApiFactory implements Factory<ReaderEventApi> {
    private final Provider<CrpcClient> crpcClientProvider;

    public ReaderEventApiModule_ProvideReaderEventApiFactory(Provider<CrpcClient> provider) {
        this.crpcClientProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReaderEventApi get() {
        return provideReaderEventApi(DoubleCheck.lazy(this.crpcClientProvider));
    }

    public static ReaderEventApiModule_ProvideReaderEventApiFactory create(Provider<CrpcClient> provider) {
        return new ReaderEventApiModule_ProvideReaderEventApiFactory(provider);
    }

    public static ReaderEventApi provideReaderEventApi(Lazy<CrpcClient> lazy) {
        return (ReaderEventApi) Preconditions.checkNotNullFromProvides(ReaderEventApiModule.INSTANCE.provideReaderEventApi(lazy));
    }
}
