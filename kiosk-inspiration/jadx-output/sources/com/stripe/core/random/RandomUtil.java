package com.stripe.core.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.time.LocalTime;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: RandomUtil.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/core/random/RandomUtil;", "", "random", "Lkotlin/random/Random;", "(Lkotlin/random/Random;)V", "computeLocalTimeInRange", "Ljava/time/LocalTime;", "localTime", "durationInSeconds", "", "computeRandomLongInRange", "start", TypedValues.TransitionType.S_DURATION, "random_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RandomUtil {
    private final Random random;

    public RandomUtil(Random random) {
        Intrinsics.checkNotNullParameter(random, "random");
        this.random = random;
    }

    public final long computeRandomLongInRange(long start, long duration) {
        return start + this.random.nextLong(duration);
    }

    public final LocalTime computeLocalTimeInRange(LocalTime localTime, long durationInSeconds) {
        Intrinsics.checkNotNullParameter(localTime, "localTime");
        LocalTime localTimePlusSeconds = localTime.plusSeconds(this.random.nextLong(durationInSeconds));
        Intrinsics.checkNotNullExpressionValue(localTimePlusSeconds, "plusSeconds(...)");
        return localTimePlusSeconds;
    }
}
