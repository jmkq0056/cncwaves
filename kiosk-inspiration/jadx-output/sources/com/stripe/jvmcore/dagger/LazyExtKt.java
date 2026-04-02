package com.stripe.jvmcore.dagger;

import dagger.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LazyExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a6\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u0005¨\u0006\u0006"}, d2 = {"lazilyMap", "Ldagger/Lazy;", "U", "T", "block", "Lkotlin/Function1;", "dagger"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LazyExtKt {
    public static final <T, U> Lazy<U> lazilyMap(Lazy<T> lazy, Function1<? super T, ? extends U> block) {
        Intrinsics.checkNotNullParameter(lazy, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return new LazyMapper(lazy, block);
    }
}
