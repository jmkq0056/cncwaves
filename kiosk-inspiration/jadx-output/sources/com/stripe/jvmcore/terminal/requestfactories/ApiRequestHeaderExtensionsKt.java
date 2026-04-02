package com.stripe.jvmcore.terminal.requestfactories;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApiRequestHeaderExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\u001a.\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0003*\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"STRIPE_ACCOUNT_HEADER", "", "withStripeAccountId", "", "stripeAccountId", "terminal-requestfactories"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ApiRequestHeaderExtensionsKt {
    public static final String STRIPE_ACCOUNT_HEADER = "Stripe-Account";

    public static final Map<String, String> withStripeAccountId(Map<String, String> map, String str) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (str != null) {
            map.put("Stripe-Account", str);
        }
        return map;
    }
}
