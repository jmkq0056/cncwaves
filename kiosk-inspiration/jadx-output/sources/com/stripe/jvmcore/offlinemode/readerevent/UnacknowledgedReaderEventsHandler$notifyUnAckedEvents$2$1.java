package com.stripe.jvmcore.offlinemode.readerevent;

import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.proto.api.sdk.ReaderEvent;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: UnacknowledgedReaderEventsHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1", f = "UnacknowledgedReaderEventsHandler.kt", i = {}, l = {52, 54}, m = "invokeSuspend", n = {}, s = {})
final class UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ReaderEventContracts.Api $api;
    int label;
    final /* synthetic */ UnacknowledgedReaderEventsHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1(UnacknowledgedReaderEventsHandler unacknowledgedReaderEventsHandler, ReaderEventContracts.Api api, Continuation<? super UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1> continuation) {
        super(2, continuation);
        this.this$0 = unacknowledgedReaderEventsHandler;
        this.$api = api;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1(this.this$0, this.$api, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.m2361catch((kotlinx.coroutines.flow.Flow) r6, new com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1.AnonymousClass1(r5.this$0, null)).collect(new com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1.AnonymousClass2(r5.this$0.readerEventsListener), r5) == r0) goto L15;
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
            goto L5e
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L35
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler r6 = r5.this$0
            com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts$Fetcher r6 = com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler.access$getFetcher$p(r6)
            com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts$Api r1 = r5.$api
            r4 = r5
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r5.label = r3
            java.lang.Object r6 = r6.getEventsFlow(r1, r4)
            if (r6 != r0) goto L35
            goto L5d
        L35:
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$1 r1 = new com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$1
            com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler r3 = r5.this$0
            r4 = 0
            r1.<init>(r3, r4)
            kotlin.jvm.functions.Function3 r1 = (kotlin.jvm.functions.Function3) r1
            kotlinx.coroutines.flow.Flow r6 = kotlinx.coroutines.flow.FlowKt.m2361catch(r6, r1)
            com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler r1 = r5.this$0
            com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts$Listener r1 = com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler.access$getReaderEventsListener$p(r1)
            com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$2 r3 = new com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$2
            r3.<init>(r1)
            kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
            r1 = r5
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r5.label = r2
            java.lang.Object r6 = r6.collect(r3, r1)
            if (r6 != r0) goto L5e
        L5d:
            return r0
        L5e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: UnacknowledgedReaderEventsHandler.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "e", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$1", f = "UnacknowledgedReaderEventsHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function3<FlowCollector<? super ReaderEvent>, Throwable, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UnacknowledgedReaderEventsHandler this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UnacknowledgedReaderEventsHandler unacknowledgedReaderEventsHandler, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.this$0 = unacknowledgedReaderEventsHandler;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super ReaderEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
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
            this.this$0.logger.e("Error fetching reader events from the reader.", (Throwable) this.L$0, new Pair[0]);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: UnacknowledgedReaderEventsHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class AnonymousClass2 implements FlowCollector, FunctionAdapter {
        final /* synthetic */ ReaderEventContracts.Listener $tmp0;

        AnonymousClass2(ReaderEventContracts.Listener listener) {
            this.$tmp0 = listener;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(2, this.$tmp0, ReaderEventContracts.Listener.class, "onReaderEvent", "onReaderEvent(Lcom/stripe/proto/api/sdk/ReaderEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        public final Object emit(ReaderEvent readerEvent, Continuation<? super Unit> continuation) {
            Object objOnReaderEvent = this.$tmp0.onReaderEvent(readerEvent, continuation);
            return objOnReaderEvent == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnReaderEvent : Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((ReaderEvent) obj, (Continuation<? super Unit>) continuation);
        }
    }
}
