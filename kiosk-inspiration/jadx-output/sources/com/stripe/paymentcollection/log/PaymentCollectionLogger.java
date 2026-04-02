package com.stripe.paymentcollection.log;

import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001JE\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052.\u0010\u0006\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b0\u0007\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\bH&¢\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&JE\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052.\u0010\u0006\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b0\u0007\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\bH&¢\u0006\u0002\u0010\tJ\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "", "d", "", "message", "", "keyValuePairs", "", "Lkotlin/Pair;", "(Ljava/lang/String;[Lkotlin/Pair;)V", "e", "i", "w", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentCollectionLogger {
    void d(String message, Pair<String, ? extends Object>... keyValuePairs);

    void e(String message);

    void i(String message, Pair<String, ? extends Object>... keyValuePairs);

    void w(String message);
}
