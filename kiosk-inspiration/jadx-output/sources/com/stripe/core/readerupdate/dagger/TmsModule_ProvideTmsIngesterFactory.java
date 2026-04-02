package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.updater.Ingester;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TmsModule_ProvideTmsIngesterFactory implements Factory<Ingester<ReaderVersion, UpdatePackage>> {
    @Override // javax.inject.Provider
    public Ingester<ReaderVersion, UpdatePackage> get() {
        return provideTmsIngester();
    }

    public static TmsModule_ProvideTmsIngesterFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Ingester<ReaderVersion, UpdatePackage> provideTmsIngester() {
        return (Ingester) Preconditions.checkNotNullFromProvides(TmsModule.INSTANCE.provideTmsIngester());
    }

    private static final class InstanceHolder {
        private static final TmsModule_ProvideTmsIngesterFactory INSTANCE = new TmsModule_ProvideTmsIngesterFactory();

        private InstanceHolder() {
        }
    }
}
