package com.stripe.core.serialnumber;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DeviceSerialNumber.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"isUnknown", "", "Lcom/stripe/core/serialnumber/DeviceSerialNumber;", "isUnknown-wDMJIJk", "(Ljava/lang/String;)Z", "serial-number_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DeviceSerialNumberKt {
    /* JADX INFO: renamed from: isUnknown-wDMJIJk, reason: not valid java name */
    public static final boolean m480isUnknownwDMJIJk(String isUnknown) {
        Intrinsics.checkNotNullParameter(isUnknown, "$this$isUnknown");
        return StringsKt.isBlank(isUnknown) || Intrinsics.areEqual(isUnknown, "unknown");
    }
}
