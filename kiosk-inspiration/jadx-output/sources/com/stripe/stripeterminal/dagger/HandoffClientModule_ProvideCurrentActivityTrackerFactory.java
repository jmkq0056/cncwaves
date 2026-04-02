package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.CurrentActivityTracker;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class HandoffClientModule_ProvideCurrentActivityTrackerFactory implements Factory<CurrentActivityTracker> {
    private final HandoffClientModule module;

    public HandoffClientModule_ProvideCurrentActivityTrackerFactory(HandoffClientModule handoffClientModule) {
        this.module = handoffClientModule;
    }

    @Override // javax.inject.Provider
    public CurrentActivityTracker get() {
        return provideCurrentActivityTracker(this.module);
    }

    public static HandoffClientModule_ProvideCurrentActivityTrackerFactory create(HandoffClientModule handoffClientModule) {
        return new HandoffClientModule_ProvideCurrentActivityTrackerFactory(handoffClientModule);
    }

    public static CurrentActivityTracker provideCurrentActivityTracker(HandoffClientModule handoffClientModule) {
        return (CurrentActivityTracker) Preconditions.checkNotNullFromProvides(handoffClientModule.provideCurrentActivityTracker());
    }
}
