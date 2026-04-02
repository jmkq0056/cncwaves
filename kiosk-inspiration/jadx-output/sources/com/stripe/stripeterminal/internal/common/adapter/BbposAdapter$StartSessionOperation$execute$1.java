package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1", f = "BbposAdapter.kt", i = {}, l = {987, WinError.ERROR_IO_PENDING}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$StartSessionOperation$execute$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Reader $hardwareReader;
    int label;
    final /* synthetic */ BbposAdapter.StartSessionOperation this$0;
    final /* synthetic */ BbposAdapter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$StartSessionOperation$execute$1(BbposAdapter.StartSessionOperation startSessionOperation, Reader reader, BbposAdapter bbposAdapter, Continuation<? super BbposAdapter$StartSessionOperation$execute$1> continuation) {
        super(2, continuation);
        this.this$0 = startSessionOperation;
        this.$hardwareReader = reader;
        this.this$1 = bbposAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposAdapter$StartSessionOperation$execute$1(this.this$0, this.$hardwareReader, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$StartSessionOperation$execute$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.firstOrNull(kotlinx.coroutines.flow.FlowKt.m2361catch((kotlinx.coroutines.flow.Flow) r6, new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1.AnonymousClass1(r5.this$0, null)), r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4d
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L31
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation r6 = r5.this$0
            com.stripe.core.hardware.Reader r1 = r5.$hardwareReader
            r4 = r5
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r5.label = r3
            java.lang.Object r6 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.StartSessionOperation.access$startSession(r6, r1, r4)
            if (r6 != r0) goto L31
            goto L4c
        L31:
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1$1 r1 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1$1
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation r3 = r5.this$0
            r4 = 0
            r1.<init>(r3, r4)
            kotlin.jvm.functions.Function3 r1 = (kotlin.jvm.functions.Function3) r1
            kotlinx.coroutines.flow.Flow r6 = kotlinx.coroutines.flow.FlowKt.m2361catch(r6, r1)
            r1 = r5
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r5.label = r2
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r6, r1)
            if (r6 != r0) goto L4d
        L4c:
            return r0
        L4d:
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter r6 = r5.this$1
            com.stripe.core.readerconnection.ConnectionManager r6 = com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.access$getConnectionManager$p(r6)
            r6.endOperation()
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter r6 = r5.this$1
            r6.update()
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation r6 = r5.this$0
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r6.set(r0)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "e", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1$1", f = "BbposAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function3<FlowCollector<? super Unit>, Throwable, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ BbposAdapter.StartSessionOperation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BbposAdapter.StartSessionOperation startSessionOperation, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.this$0 = startSessionOperation;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super Unit> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = th;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.this$0.setException(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Session initialization failed", (Throwable) this.L$0, null, 8, null));
            return Unit.INSTANCE;
        }
    }
}
