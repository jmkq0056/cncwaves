package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.Reader;
import com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1", f = "BbposBluetoothAdapter.kt", i = {}, l = {532}, m = "invokeSuspend", n = {}, s = {})
final class BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Reader $btReader;
    int label;
    final /* synthetic */ BbposBluetoothAdapter this$0;
    final /* synthetic */ BbposBluetoothAdapter.ReconnectBluetoothReaderOperation this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1(BbposBluetoothAdapter bbposBluetoothAdapter, Reader reader, BbposBluetoothAdapter.ReconnectBluetoothReaderOperation reconnectBluetoothReaderOperation, Continuation<? super BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1> continuation) {
        super(2, continuation);
        this.this$0 = bbposBluetoothAdapter;
        this.$btReader = reader;
        this.this$1 = reconnectBluetoothReaderOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1(this.this$0, this.$btReader, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1", f = "BbposBluetoothAdapter.kt", i = {0, 0, 0, 0}, l = {521, 527}, m = "invokeSuspend", n = {"$this$callbackFlow", "reconnectAttempts", "connectedSubscription", "disconnectedSubscription"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<ProducerScope<? super Boolean>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Reader $btReader;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ BbposBluetoothAdapter this$0;
        final /* synthetic */ BbposBluetoothAdapter.ReconnectBluetoothReaderOperation this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BbposBluetoothAdapter bbposBluetoothAdapter, Reader reader, BbposBluetoothAdapter.ReconnectBluetoothReaderOperation reconnectBluetoothReaderOperation, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = bbposBluetoothAdapter;
            this.$btReader = reader;
            this.this$1 = reconnectBluetoothReaderOperation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$btReader, this.this$1, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super Boolean> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x00cc, code lost:
        
            if (kotlinx.coroutines.channels.ProduceKt.awaitClose(r6, new com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1.AnonymousClass1.C00571(), r10) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objFirst = FlowKt.first(FlowKt.callbackFlow(new AnonymousClass1(this.this$0, this.$btReader, this.this$1, null)), this);
        return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
    }
}
