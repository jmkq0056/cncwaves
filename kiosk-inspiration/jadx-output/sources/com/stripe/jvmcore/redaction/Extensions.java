package com.stripe.jvmcore.redaction;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.squareup.wire.RedactingJsonAdapterKt;
import com.squareup.wire.WireJsonAdapterFactory;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Extensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u0004\u0018\u00010\u0004\"\u0010\b\u0000\u0010\u0005*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006*\u0002H\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/redaction/Extensions;", "", "()V", "toLogJson", "", "M", "Lcom/squareup/wire/Message;", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "moshi", "Lcom/squareup/moshi/Moshi;", "(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;", "redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Extensions {
    public static final Extensions INSTANCE = new Extensions();

    private Extensions() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String toLogJson$default(Extensions extensions, Message message, CustomMessageRedactor customMessageRedactor, Moshi moshi, int i, Object obj) {
        Map map = null;
        Object[] objArr = 0;
        if ((i & 1) != 0) {
            customMessageRedactor = null;
        }
        if ((i & 2) != 0) {
            moshi = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(map, false, 3, objArr == true ? 1 : 0)).build();
            Intrinsics.checkNotNullExpressionValue(moshi, "build(...)");
        }
        return extensions.toLogJson(message, customMessageRedactor, moshi);
    }

    public final <M extends Message<?, ?>> String toLogJson(M m, CustomMessageRedactor customMessageRedactor, Moshi moshi) {
        Intrinsics.checkNotNullParameter(m, "<this>");
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        Message<?, ?> redactedMessage = customMessageRedactor != null ? customMessageRedactor.toRedactedMessage(m) : m;
        if (redactedMessage == null) {
            return null;
        }
        JsonAdapter jsonAdapterAdapter = moshi.adapter((Class) m.getClass());
        Intrinsics.checkNotNullExpressionValue(jsonAdapterAdapter, "adapter(...)");
        return RedactingJsonAdapterKt.redacting(jsonAdapterAdapter).toJson(redactedMessage);
    }
}
