package com.stripe.cots.common;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ExpiringValue.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007J\u001b\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u000fR\u0012\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0010"}, d2 = {"Lcom/stripe/cots/common/ExpiringValue;", "T", "", "value", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "clear", "", "expiresIn", "Lkotlinx/coroutines/Job;", TypedValues.TransitionType.S_DURATION, "Lkotlin/time/Duration;", "expiresIn-VtjQ1oo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getOrNull", "()Ljava/lang/Object;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExpiringValue<T> {
    private T value;

    public ExpiringValue(T t) {
        this.value = t;
    }

    /* JADX INFO: renamed from: expiresIn-VtjQ1oo, reason: not valid java name */
    public final Object m481expiresInVtjQ1oo(long j, Continuation<? super Job> continuation) {
        return CoroutineScopeKt.coroutineScope(new ExpiringValue$expiresIn$2(j, this, null), continuation);
    }

    public final T getOrNull() {
        return this.value;
    }

    public final void clear() {
        this.value = null;
    }
}
