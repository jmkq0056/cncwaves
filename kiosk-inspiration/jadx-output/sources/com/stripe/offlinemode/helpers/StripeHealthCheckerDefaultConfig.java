package com.stripe.offlinemode.helpers;

import kotlin.Metadata;

/* JADX INFO: compiled from: StripeHealthCheckerDefaultConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/offlinemode/helpers/StripeHealthCheckerDefaultConfig;", "", "()V", "ATTEMPT_TIMEOUT_MS", "", "OFFLINE_MAX_ATTEMPTS", "", "OFFLINE_STABLE_RETRY_DELAY_MS", "ONLINE_MAX_ATTEMPTS", "ONLINE_STABLE_RETRY_DELAY_MS", "SUCCESSIVE_CALL_DELAY_MS", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StripeHealthCheckerDefaultConfig {
    public static final long ATTEMPT_TIMEOUT_MS = 5000;
    public static final StripeHealthCheckerDefaultConfig INSTANCE = new StripeHealthCheckerDefaultConfig();
    public static final int OFFLINE_MAX_ATTEMPTS = 3;
    public static final long OFFLINE_STABLE_RETRY_DELAY_MS = 30000;
    public static final int ONLINE_MAX_ATTEMPTS = 3;
    public static final long ONLINE_STABLE_RETRY_DELAY_MS = 60000;
    public static final long SUCCESSIVE_CALL_DELAY_MS = 5000;

    private StripeHealthCheckerDefaultConfig() {
    }
}
