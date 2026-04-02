package com.stripe.offlinemode.storage;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1", f = "DefaultOfflineRepository.kt", i = {}, l = {WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends OfflineApiRequestEntity>>, String, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1(Continuation continuation, DefaultOfflineRepository defaultOfflineRepository) {
        super(3, continuation);
        this.this$0 = defaultOfflineRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super List<? extends OfflineApiRequestEntity>> flowCollector, String str, Continuation<? super Unit> continuation) {
        DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1 defaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1 = new DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1(continuation, this.this$0);
        defaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1.L$1 = str;
        return defaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1 defaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1 = this;
            String str = (String) this.L$1;
            Flow flowFlowOf = str == null ? FlowKt.flowOf(CollectionsKt.emptyList()) : FlowKt.merge(this.this$0.offlineApiRequestDao.fetchUnconfirmedOfflineIntents(str), this.this$0.manuallyFetchedUnprocessedOfflinePaymentsFlow);
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, flowFlowOf, defaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1) == coroutine_suspended) {
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
