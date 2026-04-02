package com.stripe.core.aidlrpc.dagger;

import com.stripe.core.aidlrpc.AidlServers;
import com.stripe.core.aidlrpc.AppPackageName;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AidlRpcModule_ProvideReaderAidlServer$aidlrpc_releaseFactory implements Factory<AidlServers.Reader> {
    private final Provider<AppPackageName.Reader> readerPackageNameProvider;

    public AidlRpcModule_ProvideReaderAidlServer$aidlrpc_releaseFactory(Provider<AppPackageName.Reader> provider) {
        this.readerPackageNameProvider = provider;
    }

    @Override // javax.inject.Provider
    public AidlServers.Reader get() {
        return provideReaderAidlServer$aidlrpc_release(this.readerPackageNameProvider.get());
    }

    public static AidlRpcModule_ProvideReaderAidlServer$aidlrpc_releaseFactory create(Provider<AppPackageName.Reader> provider) {
        return new AidlRpcModule_ProvideReaderAidlServer$aidlrpc_releaseFactory(provider);
    }

    public static AidlServers.Reader provideReaderAidlServer$aidlrpc_release(AppPackageName.Reader reader) {
        return (AidlServers.Reader) Preconditions.checkNotNullFromProvides(AidlRpcModule.INSTANCE.provideReaderAidlServer$aidlrpc_release(reader));
    }
}
