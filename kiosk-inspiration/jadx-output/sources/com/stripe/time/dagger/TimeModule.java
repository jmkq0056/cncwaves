package com.stripe.time.dagger;

import com.stripe.time.Clock;
import com.stripe.time.DefaultClock;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: TimeModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/time/dagger/TimeModule;", "", "()V", "provideClock", "Lcom/stripe/time/Clock;", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class TimeModule {
    @Provides
    @Singleton
    public final Clock provideClock() {
        return new DefaultClock();
    }
}
