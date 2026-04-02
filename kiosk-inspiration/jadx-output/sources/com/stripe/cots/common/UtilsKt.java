package com.stripe.cots.common;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"isApplicationUnsupported", "", "Landroid/content/Context;", "common_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UtilsKt {
    public static final boolean isApplicationUnsupported(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (context.getApplicationInfo().flags & 2) != 0;
    }
}
