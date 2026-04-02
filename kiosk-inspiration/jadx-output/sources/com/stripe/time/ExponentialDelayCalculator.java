package com.stripe.time;

import kotlin.Metadata;

/* JADX INFO: compiled from: ExponentialDelayCalculator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0015\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0002\u0082\u0002\u0011\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/time/ExponentialDelayCalculator;", "", "getDelayAndComputeNextDelay", "Lkotlin/time/Duration;", "getDelayAndComputeNextDelay-UwyO8pc", "()J", "resetDelay", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ExponentialDelayCalculator {
    /* JADX INFO: renamed from: getDelayAndComputeNextDelay-UwyO8pc, reason: not valid java name */
    long mo513getDelayAndComputeNextDelayUwyO8pc();

    void resetDelay();
}
