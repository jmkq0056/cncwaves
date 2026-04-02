package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoteReaderAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class RemoteReaderAdapter$CollectPaymentMethodOperation$execute$1 extends FunctionReferenceImpl implements Function1<PaymentMethodData, Unit> {
    RemoteReaderAdapter$CollectPaymentMethodOperation$execute$1(Object obj) {
        super(1, obj, RemoteReaderAdapter.CollectPaymentMethodOperation.class, "set", "set(Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(PaymentMethodData paymentMethodData) {
        invoke2(paymentMethodData);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(PaymentMethodData p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((RemoteReaderAdapter.CollectPaymentMethodOperation) this.receiver).set(p0);
    }
}
