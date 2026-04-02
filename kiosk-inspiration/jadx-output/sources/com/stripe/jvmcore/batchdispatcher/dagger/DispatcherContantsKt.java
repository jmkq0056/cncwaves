package com.stripe.jvmcore.batchdispatcher.dagger;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: DispatcherContants.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"DEFAULT_DISPATCH_INTERVAL_MILLIS", "", "getDEFAULT_DISPATCH_INTERVAL_MILLIS", "()J", "batchdispatcher"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DispatcherContantsKt {
    private static final long DEFAULT_DISPATCH_INTERVAL_MILLIS = TimeUnit.SECONDS.toMillis(30);

    public static final long getDEFAULT_DISPATCH_INTERVAL_MILLIS() {
        return DEFAULT_DISPATCH_INTERVAL_MILLIS;
    }
}
