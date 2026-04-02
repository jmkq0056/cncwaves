package com.stripe.time;

import kotlin.Metadata;
import kotlin.ranges.RangesKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: SimpleExponentialDelayCalculator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\r"}, d2 = {"Lcom/stripe/time/SimpleExponentialDelayCalculator;", "Lcom/stripe/time/ExponentialDelayCalculator;", "initialDelayInSeconds", "", "maxDelayInSeconds", "(JJ)V", "currentDelay", "getDelayAndComputeNextDelay", "Lkotlin/time/Duration;", "getDelayAndComputeNextDelay-UwyO8pc", "()J", "resetDelay", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimpleExponentialDelayCalculator implements ExponentialDelayCalculator {
    private long currentDelay;
    private final long initialDelayInSeconds;
    private final long maxDelayInSeconds;

    public SimpleExponentialDelayCalculator(long j, long j2) {
        this.initialDelayInSeconds = j;
        this.maxDelayInSeconds = j2;
        this.currentDelay = j;
    }

    @Override // com.stripe.time.ExponentialDelayCalculator
    /* JADX INFO: renamed from: getDelayAndComputeNextDelay-UwyO8pc */
    public long mo513getDelayAndComputeNextDelayUwyO8pc() {
        Duration.Companion companion = Duration.INSTANCE;
        long duration = DurationKt.toDuration(this.currentDelay, DurationUnit.SECONDS);
        this.currentDelay = RangesKt.coerceAtMost(this.currentDelay * ((long) 2), this.maxDelayInSeconds);
        return duration;
    }

    @Override // com.stripe.time.ExponentialDelayCalculator
    public void resetDelay() {
        this.currentDelay = this.initialDelayInSeconds;
    }
}
