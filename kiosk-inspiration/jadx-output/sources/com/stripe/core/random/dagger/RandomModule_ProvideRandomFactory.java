package com.stripe.core.random.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class RandomModule_ProvideRandomFactory implements Factory<Random> {
    @Override // javax.inject.Provider
    public Random get() {
        return provideRandom();
    }

    public static RandomModule_ProvideRandomFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Random provideRandom() {
        return (Random) Preconditions.checkNotNullFromProvides(RandomModule.INSTANCE.provideRandom());
    }

    private static final class InstanceHolder {
        private static final RandomModule_ProvideRandomFactory INSTANCE = new RandomModule_ProvideRandomFactory();

        private InstanceHolder() {
        }
    }
}
