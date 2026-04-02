package com.stripe.offlinemode.storage;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$flatMapLatest$1", f = "DefaultOfflineRepository.kt", i = {}, l = {WinError.ERROR_NESTING_NOT_ALLOWED, WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultOfflineRepository$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super Boolean>, Long, Continuation<? super Unit>, Object> {
    final /* synthetic */ DefaultOfflineRepository $receiver$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultOfflineRepository$special$$inlined$flatMapLatest$1(Continuation continuation, DefaultOfflineRepository defaultOfflineRepository) {
        super(3, continuation);
        this.$receiver$inlined = defaultOfflineRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super Boolean> flowCollector, Long l, Continuation<? super Unit> continuation) {
        DefaultOfflineRepository$special$$inlined$flatMapLatest$1 defaultOfflineRepository$special$$inlined$flatMapLatest$1 = new DefaultOfflineRepository$special$$inlined$flatMapLatest$1(continuation, this.$receiver$inlined);
        defaultOfflineRepository$special$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultOfflineRepository$special$$inlined$flatMapLatest$1.L$1 = l;
        return defaultOfflineRepository$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r1, (kotlinx.coroutines.flow.Flow) r6, r5) == r0) goto L15;
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
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4f
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            java.lang.Object r1 = r5.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3e
        L22:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r5.L$0
            r1 = r6
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            java.lang.Object r6 = r5.L$1
            r4 = r5
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            java.lang.Long r6 = (java.lang.Long) r6
            com.stripe.offlinemode.storage.DefaultOfflineRepository r4 = r5.$receiver$inlined
            r5.L$0 = r1
            r5.label = r3
            java.lang.Object r6 = com.stripe.offlinemode.storage.DefaultOfflineRepository.access$getActiveReaderOfflineEnabledFlow(r4, r6, r5)
            if (r6 != r0) goto L3e
            goto L4e
        L3e:
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            r3 = r5
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r4 = 0
            r5.L$0 = r4
            r5.label = r2
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.emitAll(r1, r6, r3)
            if (r6 != r0) goto L4f
        L4e:
            return r0
        L4f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$flatMapLatest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
