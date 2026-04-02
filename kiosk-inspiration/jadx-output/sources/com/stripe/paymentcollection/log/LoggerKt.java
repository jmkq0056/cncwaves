package com.stripe.paymentcollection.log;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\b¨\u0006\u0004"}, d2 = {"create", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "T", "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LoggerKt {
    public static final /* synthetic */ <T> PaymentCollectionLogger create(PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionLoggerFactory, "<this>");
        Intrinsics.reifiedOperationMarker(4, "T");
        return paymentCollectionLoggerFactory.create(Reflection.getOrCreateKotlinClass(Object.class));
    }
}
