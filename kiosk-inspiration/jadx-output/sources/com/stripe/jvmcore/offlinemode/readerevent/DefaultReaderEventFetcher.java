package com.stripe.jvmcore.offlinemode.readerevent;

import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.proto.api.sdk.ReaderEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: DefaultReaderEventFetcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0096@¢\u0006\u0002\u0010\bJ:\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0082@¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;", "()V", "getEventsFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "api", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchAndEmitReaderEvents", "", "Lkotlinx/coroutines/flow/FlowCollector;", "afterId", "", "idsToAck", "", "(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultReaderEventFetcher implements ReaderEventContracts.Fetcher {

    /* JADX INFO: renamed from: com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultReaderEventFetcher.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher", f = "DefaultReaderEventFetcher.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {30, 33, 40}, m = "fetchAndEmitReaderEvents", n = {"this", "$this$fetchAndEmitReaderEvents", "api", "this", "$this$fetchAndEmitReaderEvents", "api", "events"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultReaderEventFetcher.this.fetchAndEmitReaderEvents(null, null, 0L, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher$getEventsFlow$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultReaderEventFetcher.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/proto/api/sdk/ReaderEvent;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher$getEventsFlow$2", f = "DefaultReaderEventFetcher.kt", i = {}, l = {17}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<FlowCollector<? super ReaderEvent>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReaderEventContracts.Api $api;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ReaderEventContracts.Api api, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$api = api;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = DefaultReaderEventFetcher.this.new AnonymousClass2(this.$api, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super ReaderEvent> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                this.label = 1;
                if (DefaultReaderEventFetcher.fetchAndEmitReaderEvents$default(DefaultReaderEventFetcher.this, flowCollector, this.$api, 0L, null, this, 6, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts.Fetcher
    public Object getEventsFlow(ReaderEventContracts.Api api, Continuation<? super Flow<ReaderEvent>> continuation) {
        return FlowKt.flow(new AnonymousClass2(api, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e7, code lost:
    
        if (r1.fetchAndEmitReaderEvents(r11, r3, r4, r6, r7) == r0) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchAndEmitReaderEvents(kotlinx.coroutines.flow.FlowCollector<? super com.stripe.proto.api.sdk.ReaderEvent> r9, com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts.Api r10, long r11, java.util.List<java.lang.Long> r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher.fetchAndEmitReaderEvents(kotlinx.coroutines.flow.FlowCollector, com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts$Api, long, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object fetchAndEmitReaderEvents$default(DefaultReaderEventFetcher defaultReaderEventFetcher, FlowCollector flowCollector, ReaderEventContracts.Api api, long j, List list, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            list = CollectionsKt.emptyList();
        }
        return defaultReaderEventFetcher.fetchAndEmitReaderEvents(flowCollector, api, j2, list, continuation);
    }
}
