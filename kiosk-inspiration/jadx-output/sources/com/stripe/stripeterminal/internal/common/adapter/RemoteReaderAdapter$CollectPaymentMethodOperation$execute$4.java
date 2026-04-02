package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoteReaderAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class RemoteReaderAdapter$CollectPaymentMethodOperation$execute$4 extends FunctionReferenceImpl implements Function1<TerminalException, Unit> {
    RemoteReaderAdapter$CollectPaymentMethodOperation$execute$4(Object obj) {
        super(1, obj, RemoteReaderAdapter.CollectPaymentMethodOperation.class, "setException", "setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TerminalException terminalException) {
        invoke2(terminalException);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(TerminalException p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((RemoteReaderAdapter.CollectPaymentMethodOperation) this.receiver).setException(p0);
    }
}
