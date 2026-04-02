package com.stripe.jvmcore.clientlogger.dagger;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: ClientLoggerDispatcherModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0004"}, d2 = {"DEFAULT_DISPATCH_INTERVAL_MILLIS", "", "DEFAULT_OBSERVABILITYDATA_FILE", "", "clientlogger"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ClientLoggerDispatcherModuleKt {
    private static final long DEFAULT_DISPATCH_INTERVAL_MILLIS = TimeUnit.SECONDS.toMillis(30);
    private static final String DEFAULT_OBSERVABILITYDATA_FILE = "observabilitydata_wire";
}
