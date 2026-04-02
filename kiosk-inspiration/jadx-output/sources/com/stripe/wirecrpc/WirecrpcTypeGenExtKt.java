package com.stripe.wirecrpc;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: WirecrpcTypeGenExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\u0003"}, d2 = {"wrapWith", "", "context", "codegen-utils"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class WirecrpcTypeGenExtKt {
    public static final String wrapWith(String str, String context) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return context.length() == 0 ? str : context + AbstractJsonLexerKt.BEGIN_LIST + str + AbstractJsonLexerKt.END_LIST;
    }
}
