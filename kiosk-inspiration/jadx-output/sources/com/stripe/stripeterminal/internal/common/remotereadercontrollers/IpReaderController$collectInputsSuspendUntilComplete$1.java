package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.apache.http.HttpStatus;

/* JADX INFO: compiled from: IpReaderController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController", f = "IpReaderController.kt", i = {0}, l = {HttpStatus.SC_NO_CONTENT}, m = "collectInputsSuspendUntilComplete$common_publish", n = {"this"}, s = {"L$0"})
final class IpReaderController$collectInputsSuspendUntilComplete$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ IpReaderController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    IpReaderController$collectInputsSuspendUntilComplete$1(IpReaderController ipReaderController, Continuation<? super IpReaderController$collectInputsSuspendUntilComplete$1> continuation) {
        super(continuation);
        this.this$0 = ipReaderController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collectInputsSuspendUntilComplete$common_publish(null, this);
    }
}
