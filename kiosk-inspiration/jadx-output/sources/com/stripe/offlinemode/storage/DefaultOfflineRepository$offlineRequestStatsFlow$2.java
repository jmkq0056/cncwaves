package com.stripe.offlinemode.storage;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "error", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineRequestStatsFlow$2", f = "DefaultOfflineRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineRepository$offlineRequestStatsFlow$2 extends SuspendLambda implements Function3<FlowCollector<? super OfflineEntityStats>, Throwable, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$offlineRequestStatsFlow$2(DefaultOfflineRepository defaultOfflineRepository, Continuation<? super DefaultOfflineRepository$offlineRequestStatsFlow$2> continuation) {
        super(3, continuation);
        this.this$0 = defaultOfflineRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super OfflineEntityStats> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
        DefaultOfflineRepository$offlineRequestStatsFlow$2 defaultOfflineRepository$offlineRequestStatsFlow$2 = new DefaultOfflineRepository$offlineRequestStatsFlow$2(this.this$0, continuation);
        defaultOfflineRepository$offlineRequestStatsFlow$2.L$0 = th;
        return defaultOfflineRepository$offlineRequestStatsFlow$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.this$0.logger.w((Throwable) this.L$0, "Failed to get offline payments stats", new Pair[0]);
        return Unit.INSTANCE;
    }
}
