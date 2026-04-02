package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.external.models.DisconnectReason;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class TerminalSession$ConnectReaderOperation$execute$connectedReader$2 extends FunctionReferenceImpl implements Function1<DisconnectReason, Unit> {
    TerminalSession$ConnectReaderOperation$execute$connectedReader$2(Object obj) {
        super(1, obj, TerminalSession.class, "enqueueReconnectReaderOperation", "enqueueReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DisconnectReason disconnectReason) {
        invoke2(disconnectReason);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DisconnectReason p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((TerminalSession) this.receiver).enqueueReconnectReaderOperation(p0);
    }
}
