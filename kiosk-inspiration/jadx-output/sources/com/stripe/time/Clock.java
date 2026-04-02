package com.stripe.time;

import kotlin.Metadata;

/* JADX INFO: compiled from: Clock.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/time/Clock;", "", "currentTimeMillis", "", "currentTimeSeconds", "elapsedTimeMillis", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Clock {
    long currentTimeMillis();

    long elapsedTimeMillis();

    default long currentTimeSeconds() {
        return currentTimeMillis() / ((long) 1000);
    }
}
