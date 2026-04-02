package com.stripe.time;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlinx.datetime.Clock;

/* JADX INFO: compiled from: DefaultClock.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u0006X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000b"}, d2 = {"Lcom/stripe/time/DefaultClock;", "Lcom/stripe/time/Clock;", "()V", "systemClock", "Lkotlinx/datetime/Clock$System;", "timeMark", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "J", "currentTimeMillis", "", "elapsedTimeMillis", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultClock implements Clock {
    private final Clock.System systemClock = Clock.System.INSTANCE;
    private final long timeMark = TimeSource.Monotonic.INSTANCE.m2292markNowz9LOYto();

    @Override // com.stripe.time.Clock
    public long currentTimeMillis() {
        return this.systemClock.now().toEpochMilliseconds();
    }

    @Override // com.stripe.time.Clock
    public long elapsedTimeMillis() {
        return Duration.m2190getInWholeMillisecondsimpl(TimeSource.Monotonic.ValueTimeMark.m2297elapsedNowUwyO8pc(this.timeMark));
    }
}
