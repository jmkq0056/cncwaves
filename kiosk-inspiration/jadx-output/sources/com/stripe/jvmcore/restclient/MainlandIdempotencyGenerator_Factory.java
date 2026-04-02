package com.stripe.jvmcore.restclient;

import com.stripe.device.DeviceInfoRepository;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class MainlandIdempotencyGenerator_Factory implements Factory<MainlandIdempotencyGenerator> {
    private final Provider<Clock> clockProvider;
    private final Provider<DeviceInfoRepository> deviceInfoRepositoryProvider;
    private final Provider<Random> randomProvider;

    public MainlandIdempotencyGenerator_Factory(Provider<Clock> provider, Provider<DeviceInfoRepository> provider2, Provider<Random> provider3) {
        this.clockProvider = provider;
        this.deviceInfoRepositoryProvider = provider2;
        this.randomProvider = provider3;
    }

    @Override // javax.inject.Provider
    public MainlandIdempotencyGenerator get() {
        return newInstance(this.clockProvider.get(), this.deviceInfoRepositoryProvider.get(), this.randomProvider.get());
    }

    public static MainlandIdempotencyGenerator_Factory create(Provider<Clock> provider, Provider<DeviceInfoRepository> provider2, Provider<Random> provider3) {
        return new MainlandIdempotencyGenerator_Factory(provider, provider2, provider3);
    }

    public static MainlandIdempotencyGenerator newInstance(Clock clock, DeviceInfoRepository deviceInfoRepository, Random random) {
        return new MainlandIdempotencyGenerator(clock, deviceInfoRepository, random);
    }
}
