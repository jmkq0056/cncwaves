package com.stripe.core.connectivity;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: NetworkConnectionEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0004\u0007\b\t\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/connectivity/NetworkConnectionEvent;", "", "onConsumed", "Lkotlin/Function0;", "", "getOnConsumed", "()Lkotlin/jvm/functions/Function0;", "Lcom/stripe/core/connectivity/NetworkConnectionNotRegistered;", "Lcom/stripe/core/connectivity/NetworkConnectionSuccess;", "Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;", "Lcom/stripe/core/connectivity/PromptUserForAvailableRemoteNetwork;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NetworkConnectionEvent {
    Function0<Unit> getOnConsumed();
}
