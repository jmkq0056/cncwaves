package com.stripe.offlinemode.helpers;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
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
@DebugMetadata(c = "com.stripe.offlinemode.helpers.DefaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1", f = "DefaultOfflineDatabaseReaper.kt", i = {}, l = {WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super String>, String, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public DefaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1(Continuation continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super String> flowCollector, String str, Continuation<? super Unit> continuation) {
        DefaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1 defaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1 = new DefaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1(continuation);
        defaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1.L$1 = str;
        return defaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            DefaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1 defaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1 = this;
            String str = (String) this.L$1;
            String str2 = str;
            Flow flowEmptyFlow = (str2 == null || str2.length() == 0) ? FlowKt.emptyFlow() : FlowKt.flow(new DefaultOfflineDatabaseReaper$reaperTask$1$1$1(str, null));
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, flowEmptyFlow, defaultOfflineDatabaseReaper$reaperTask$1$invokeSuspend$$inlined$flatMapLatest$1) == coroutine_suspended) {
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
