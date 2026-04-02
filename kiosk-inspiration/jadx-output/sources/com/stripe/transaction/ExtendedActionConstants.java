package com.stripe.transaction;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: ExtendedActionConstants.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/transaction/ExtendedActionConstants;", "", "()V", "ERROR_CODES_REQUIRING_EXTENDED_ACTION", "", "", "MOBILE_DEVICE_AUTH_REQUIRED", "OFFLINE_PIN_REQUIRED", "ONLINE_OR_OFFLINE_PIN_REQUIRED", "isExtendedActionError", "", "code", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExtendedActionConstants {
    public static final ExtendedActionConstants INSTANCE = new ExtendedActionConstants();
    public static final String MOBILE_DEVICE_AUTH_REQUIRED = "mobile_device_authentication_required";
    public static final String OFFLINE_PIN_REQUIRED = "offline_pin_required";
    public static final String ONLINE_OR_OFFLINE_PIN_REQUIRED = "online_or_offline_pin_required";
    private static final List<String> ERROR_CODES_REQUIRING_EXTENDED_ACTION = CollectionsKt.listOf((Object[]) new String[]{MOBILE_DEVICE_AUTH_REQUIRED, OFFLINE_PIN_REQUIRED, ONLINE_OR_OFFLINE_PIN_REQUIRED});

    private ExtendedActionConstants() {
    }

    public final boolean isExtendedActionError(String code) {
        return CollectionsKt.contains(ERROR_CODES_REQUIRING_EXTENDED_ACTION, code);
    }
}
