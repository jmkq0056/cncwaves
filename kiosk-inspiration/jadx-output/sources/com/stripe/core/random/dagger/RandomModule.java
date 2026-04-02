package com.stripe.core.random.dagger;

import com.stripe.core.random.RandomUtil;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: RandomModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/random/dagger/RandomModule;", "", "()V", "provideRandom", "Lkotlin/random/Random;", "provideRandomUtil", "Lcom/stripe/core/random/RandomUtil;", "random", "random_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class RandomModule {
    public static final RandomModule INSTANCE = new RandomModule();

    private RandomModule() {
    }

    @Provides
    @Singleton
    public final Random provideRandom() {
        return Random.INSTANCE;
    }

    @Provides
    @Reusable
    public final RandomUtil provideRandomUtil(Random random) {
        Intrinsics.checkNotNullParameter(random, "random");
        return new RandomUtil(random);
    }
}
