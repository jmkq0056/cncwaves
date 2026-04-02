package com.stripe.jvmcore.featureflag.dagger;

import com.stripe.jvmcore.factoryimage.FactoryImageNotSupportedHelper;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.storage.SharedPrefs;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FactoryImageNotSupportedFeatureFlagRepositoryModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;", "", "()V", "provideFactoryNotSupportedFeatureFlagRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "featureflag"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class FactoryImageNotSupportedFeatureFlagRepositoryModule {
    @Provides
    @Singleton
    public final FeatureFlagsRepository provideFactoryNotSupportedFeatureFlagRepository(SharedPrefs sharedPrefs) {
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        return new FeatureFlagsRepository(sharedPrefs, new FactoryImageNotSupportedHelper());
    }
}
