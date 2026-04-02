package com.stripe.core.logginginterceptors;

import com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener;
import com.stripe.loggingmodels.Tag;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpTimingTag.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toHttpTimingTag", "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;", "logging-interceptors_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class HttpTimingTagKt {
    public static final Tag.HttpTimingTag toHttpTimingTag(HttpTimingLoggerEventListener.Tag tag) {
        Intrinsics.checkNotNullParameter(tag, "<this>");
        String lowerCase = tag.getName().toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return new Tag.HttpTimingTag(lowerCase, tag.getValue());
    }
}
