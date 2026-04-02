package com.stripe.core.readerupdate;

import com.stripe.core.updater.Applicator;
import com.stripe.core.updater.Ingester;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class UpdateInstaller_Factory implements Factory<UpdateInstaller> {
    private final Provider<Applicator<UpdatePackage, Flow<ProgressStatus>>> applicatorProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<Ingester<UpdateSummary, UpdatePackage>> ingesterProvider;

    public UpdateInstaller_Factory(Provider<CoroutineDispatcher> provider, Provider<Applicator<UpdatePackage, Flow<ProgressStatus>>> provider2, Provider<Ingester<UpdateSummary, UpdatePackage>> provider3) {
        this.dispatcherProvider = provider;
        this.applicatorProvider = provider2;
        this.ingesterProvider = provider3;
    }

    @Override // javax.inject.Provider
    public UpdateInstaller get() {
        return newInstance(this.dispatcherProvider.get(), this.applicatorProvider.get(), this.ingesterProvider.get());
    }

    public static UpdateInstaller_Factory create(Provider<CoroutineDispatcher> provider, Provider<Applicator<UpdatePackage, Flow<ProgressStatus>>> provider2, Provider<Ingester<UpdateSummary, UpdatePackage>> provider3) {
        return new UpdateInstaller_Factory(provider, provider2, provider3);
    }

    public static UpdateInstaller newInstance(CoroutineDispatcher coroutineDispatcher, Applicator<UpdatePackage, Flow<ProgressStatus>> applicator, Ingester<UpdateSummary, UpdatePackage> ingester) {
        return new UpdateInstaller(coroutineDispatcher, applicator, ingester);
    }
}
