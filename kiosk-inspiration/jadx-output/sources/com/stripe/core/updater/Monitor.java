package com.stripe.core.updater;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Monitor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u000e\u0010\u0003\u001a\u00028\u0000H¦@¢\u0006\u0002\u0010\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcom/stripe/core/updater/Monitor;", "Coordinates", "", "start", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updater_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Monitor<Coordinates> {
    Object start(Continuation<? super Coordinates> continuation);
}
