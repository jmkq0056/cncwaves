package com.stripe.jvmcore.restclient;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;

/* JADX INFO: compiled from: IdempotencyHeader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/jvmcore/restclient/IdempotencyHeader;", "", "generator", "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;", "(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)V", "headerEntry", "Lkotlin/Pair;", "", "key", "Companion", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IdempotencyHeader {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String IDEMPOTENCY_KEY_HEADER_NAME = "Idempotency-Key";
    private final IdempotencyGenerator generator;

    public IdempotencyHeader(IdempotencyGenerator generator) {
        Intrinsics.checkNotNullParameter(generator, "generator");
        this.generator = generator;
    }

    public static /* synthetic */ Pair headerEntry$default(IdempotencyHeader idempotencyHeader, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = idempotencyHeader.generator.generateKey();
        }
        return idempotencyHeader.headerEntry(str);
    }

    public final Pair<String, String> headerEntry(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return TuplesKt.to(IDEMPOTENCY_KEY_HEADER_NAME, key);
    }

    /* JADX INFO: compiled from: IdempotencyHeader.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/jvmcore/restclient/IdempotencyHeader$Companion;", "", "()V", "IDEMPOTENCY_KEY_HEADER_NAME", "", "hasIdempotencyKey", "", "Lokhttp3/Headers;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean hasIdempotencyKey(Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "<this>");
            return headers.names().contains(IdempotencyHeader.IDEMPOTENCY_KEY_HEADER_NAME);
        }
    }
}
