package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation", f = "BbposUsbAdapter.kt", i = {0, 0}, l = {623}, m = "checkUsbPermission", n = {"this", "usbDevice"}, s = {"L$0", "L$1"})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BbposUsbAdapter.DiscoverUsbReadersOperation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1(BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1> continuation) {
        super(continuation);
        this.this$0 = discoverUsbReadersOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.checkUsbPermission(null, this);
    }
}
