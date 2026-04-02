package com.stripe.offlinemode.forwarding;

import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: DefaultOfflineForwardingDelayCalculator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u000e\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "random", "Lkotlin/random/Random;", "(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlin/random/Random;)V", "calculateExponentialDelay", "", "failureCount", "", "getConsecutiveForwardingJitter", "consecutiveSuccesses", "getMaxConsecutiveSuccesses", "getRandomForwardingJitter", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineForwardingDelayCalculator implements OfflineForwardingDelayCalculator {
    private static final double DELAY_BASE = 2.0d;
    private static final long DELAY_QUANTUM_MS = 1000;
    private static final int MAX_CONSECUTIVE_FAILURES = 16;
    private static final int MAX_CONSECUTIVE_SUCCESSES = 5;
    private static final long MAX_DELAY_MS = 300000;
    private final OfflineConfigHelper offlineConfigHelper;
    private final Random random;

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingDelayCalculator
    public int getMaxConsecutiveSuccesses() {
        return 5;
    }

    @Inject
    public DefaultOfflineForwardingDelayCalculator(OfflineConfigHelper offlineConfigHelper, Random random) {
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(random, "random");
        this.offlineConfigHelper = offlineConfigHelper;
        this.random = random;
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingDelayCalculator
    public long calculateExponentialDelay(int failureCount) {
        if (failureCount > 0) {
            return Math.min(((long) Math.pow(DELAY_BASE, Math.min(failureCount, 16))) * DELAY_QUANTUM_MS, MAX_DELAY_MS);
        }
        return 0L;
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingDelayCalculator
    public long getConsecutiveForwardingJitter(int consecutiveSuccesses) {
        if (consecutiveSuccesses <= 0 || consecutiveSuccesses % getMaxConsecutiveSuccesses() != 0) {
            return 0L;
        }
        return getRandomForwardingJitter();
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingDelayCalculator
    public long getRandomForwardingJitter() {
        if (this.offlineConfigHelper.getForwardingJitterMs() > 0) {
            return this.random.nextLong(this.offlineConfigHelper.getForwardingJitterMs());
        }
        return 0L;
    }
}
