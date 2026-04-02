package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoteReaderAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9 extends FunctionReferenceImpl implements Function1<ReaderCollectedData, Unit> {
    final /* synthetic */ RemoteReaderAdapter.CollectPaymentMethodOperation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9(RemoteReaderAdapter.CollectPaymentMethodOperation collectPaymentMethodOperation) {
        super(1, Intrinsics.Kotlin.class, "convertToPaymentMethodData", "execute$convertToPaymentMethodData(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;Lcom/stripe/proto/model/rest/ReaderCollectedData;)V", 0);
        this.this$0 = collectPaymentMethodOperation;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ReaderCollectedData readerCollectedData) {
        invoke2(readerCollectedData);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ReaderCollectedData p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        RemoteReaderAdapter.CollectPaymentMethodOperation.execute$convertToPaymentMethodData(this.this$0, p0);
    }
}
