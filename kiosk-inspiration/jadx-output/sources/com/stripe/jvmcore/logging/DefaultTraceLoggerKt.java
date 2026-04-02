package com.stripe.jvmcore.logging;

import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.stripe.jvmcore.redaction.Extensions;
import com.stripe.jvmcore.redaction.terminal.TerminalMessageRedactor;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultTraceLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0002*\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0005H\u0000\u001a+\u0010\u0006\u001a\u00020\u0002\"\u0010\b\u0000\u0010\u0007*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\b*\u0002H\u00072\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\u0010\u000b\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0002X\u0080T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"REDACTED_HEADERS", "", "", "REDACTED_JSON", "toKeyValuePairsString", "", "toTraceJson", "M", "Lcom/squareup/wire/Message;", "moshi", "Lcom/squareup/moshi/Moshi;", "(Lcom/squareup/wire/Message;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;", "logging"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DefaultTraceLoggerKt {
    private static final Set<String> REDACTED_HEADERS = SetsKt.setOf("Authorization");
    public static final String REDACTED_JSON = "{\"redacted\":true}";

    public static final String toKeyValuePairsString(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return CollectionsKt.joinToString$default(map.entrySet(), null, null, null, 0, null, new Function1<Map.Entry<? extends String, ? extends String>, CharSequence>() { // from class: com.stripe.jvmcore.logging.DefaultTraceLoggerKt.toKeyValuePairsString.1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final CharSequence invoke2(Map.Entry<String, String> entry) {
                Intrinsics.checkNotNullParameter(entry, "<name for destructuring parameter 0>");
                String key = entry.getKey();
                String value = entry.getValue();
                if (DefaultTraceLoggerKt.REDACTED_HEADERS.contains(key)) {
                    return key + "=██";
                }
                return key + '=' + value;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends String> entry) {
                return invoke2((Map.Entry<String, String>) entry);
            }
        }, 31, null);
    }

    public static final <M extends Message<?, ?>> String toTraceJson(M m, Moshi moshi) {
        Intrinsics.checkNotNullParameter(m, "<this>");
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        String logJson = Extensions.INSTANCE.toLogJson(m, TerminalMessageRedactor.INSTANCE, moshi);
        return logJson == null ? REDACTED_JSON : logJson;
    }
}
