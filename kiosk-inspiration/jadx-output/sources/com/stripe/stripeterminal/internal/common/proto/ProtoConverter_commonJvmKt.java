package com.stripe.stripeterminal.internal.common.proto;

import kotlin.Metadata;

/* JADX INFO: compiled from: ProtoConverter.commonJvm.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001¨\u0006\u0002"}, d2 = {"jsonSerializer", "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ProtoConverter_commonJvmKt {
    public static final JsonSerializer jsonSerializer() {
        return MoshiKotlinxInterOpSerializer.INSTANCE;
    }
}
