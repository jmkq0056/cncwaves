package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.reactive.emv.ClientConfigData;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1", f = "BbposAdapter.kt", i = {}, l = {WinError.ERROR_DISK_REPAIR_DISABLED, WinError.ERROR_DISK_REPAIR_DISABLED}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ClientConfigData $data;
    int label;
    final /* synthetic */ BbposAdapter.CheckForUpdateOperation this$0;
    final /* synthetic */ BbposAdapter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1(BbposAdapter.CheckForUpdateOperation checkForUpdateOperation, ClientConfigData clientConfigData, BbposAdapter bbposAdapter, Continuation<? super BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1> continuation) {
        super(2, continuation);
        this.this$0 = checkForUpdateOperation;
        this.$data = clientConfigData;
        this.this$1 = bbposAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1(this.this$0, this.$data, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c2, code lost:
    
        if (r13 == r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
