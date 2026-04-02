package com.stripe.jvmcore.observability;

import kotlin.Metadata;

/* JADX INFO: compiled from: SdkHeaders.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/jvmcore/observability/SdkHeaders;", "", "()V", "ACCOUNT_ID", "", "ACTION_ID", "SESSION_ID", "SESSION_TOKEN", "observability"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkHeaders {
    public static final String ACCOUNT_ID = "Stripe-Account";
    public static final String ACTION_ID = "X-Stripe-Action-Id";
    public static final SdkHeaders INSTANCE = new SdkHeaders();
    public static final String SESSION_ID = "X-Stripe-Session-Id";
    public static final String SESSION_TOKEN = "X-Stripe-Session-Token";

    private SdkHeaders() {
    }
}
