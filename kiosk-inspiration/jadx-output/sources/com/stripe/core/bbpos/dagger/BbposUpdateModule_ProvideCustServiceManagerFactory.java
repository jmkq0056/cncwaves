package com.stripe.core.bbpos.dagger;

import android.content.Context;
import android.stripe.bbpos.CustServiceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposUpdateModule_ProvideCustServiceManagerFactory implements Factory<CustServiceManager> {
    private final Provider<Context> contextProvider;

    public BbposUpdateModule_ProvideCustServiceManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public CustServiceManager get() {
        return provideCustServiceManager(this.contextProvider.get());
    }

    public static BbposUpdateModule_ProvideCustServiceManagerFactory create(Provider<Context> provider) {
        return new BbposUpdateModule_ProvideCustServiceManagerFactory(provider);
    }

    public static CustServiceManager provideCustServiceManager(Context context) {
        return (CustServiceManager) Preconditions.checkNotNullFromProvides(BbposUpdateModule.INSTANCE.provideCustServiceManager(context));
    }
}
