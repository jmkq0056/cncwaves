package com.stripe.time.dagger;

import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class TimeModule_ProvideClockFactory implements Factory<Clock> {
    private final TimeModule module;

    public TimeModule_ProvideClockFactory(TimeModule timeModule) {
        this.module = timeModule;
    }

    @Override // javax.inject.Provider
    public Clock get() {
        return provideClock(this.module);
    }

    public static TimeModule_ProvideClockFactory create(TimeModule timeModule) {
        return new TimeModule_ProvideClockFactory(timeModule);
    }

    public static Clock provideClock(TimeModule timeModule) {
        return (Clock) Preconditions.checkNotNullFromProvides(timeModule.provideClock());
    }
}
