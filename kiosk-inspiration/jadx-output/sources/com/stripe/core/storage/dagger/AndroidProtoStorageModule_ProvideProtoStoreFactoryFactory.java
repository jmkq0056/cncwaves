package com.stripe.core.storage.dagger;

import android.app.Application;
import com.stripe.core.storage.ProtoStoreFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidProtoStorageModule_ProvideProtoStoreFactoryFactory implements Factory<ProtoStoreFactory> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<Application> applicationProvider;

    public AndroidProtoStorageModule_ProvideProtoStoreFactoryFactory(Provider<Application> applicationProvider, Provider<CoroutineScope> appScopeProvider) {
        this.applicationProvider = applicationProvider;
        this.appScopeProvider = appScopeProvider;
    }

    @Override // javax.inject.Provider
    public ProtoStoreFactory get() {
        return provideProtoStoreFactory(this.applicationProvider.get(), this.appScopeProvider.get());
    }

    public static AndroidProtoStorageModule_ProvideProtoStoreFactoryFactory create(Provider<Application> applicationProvider, Provider<CoroutineScope> appScopeProvider) {
        return new AndroidProtoStorageModule_ProvideProtoStoreFactoryFactory(applicationProvider, appScopeProvider);
    }

    public static ProtoStoreFactory provideProtoStoreFactory(Application application, CoroutineScope appScope) {
        return (ProtoStoreFactory) Preconditions.checkNotNullFromProvides(AndroidProtoStorageModule.INSTANCE.provideProtoStoreFactory(application, appScope));
    }
}
