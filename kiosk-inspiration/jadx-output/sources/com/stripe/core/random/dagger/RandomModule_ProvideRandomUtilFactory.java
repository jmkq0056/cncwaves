package com.stripe.core.random.dagger;

import com.stripe.core.random.RandomUtil;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class RandomModule_ProvideRandomUtilFactory implements Factory<RandomUtil> {
    private final Provider<Random> randomProvider;

    public RandomModule_ProvideRandomUtilFactory(Provider<Random> provider) {
        this.randomProvider = provider;
    }

    @Override // javax.inject.Provider
    public RandomUtil get() {
        return provideRandomUtil(this.randomProvider.get());
    }

    public static RandomModule_ProvideRandomUtilFactory create(Provider<Random> provider) {
        return new RandomModule_ProvideRandomUtilFactory(provider);
    }

    public static RandomUtil provideRandomUtil(Random random) {
        return (RandomUtil) Preconditions.checkNotNullFromProvides(RandomModule.INSTANCE.provideRandomUtil(random));
    }
}
