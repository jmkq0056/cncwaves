package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ReaderInfoHandler_Factory implements Factory<ReaderInfoHandler> {
    private final Provider<ReaderInfoRepository> readerInfoRepositoryProvider;

    public ReaderInfoHandler_Factory(Provider<ReaderInfoRepository> provider) {
        this.readerInfoRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReaderInfoHandler get() {
        return newInstance(this.readerInfoRepositoryProvider.get());
    }

    public static ReaderInfoHandler_Factory create(Provider<ReaderInfoRepository> provider) {
        return new ReaderInfoHandler_Factory(provider);
    }

    public static ReaderInfoHandler newInstance(ReaderInfoRepository readerInfoRepository) {
        return new ReaderInfoHandler(readerInfoRepository);
    }
}
