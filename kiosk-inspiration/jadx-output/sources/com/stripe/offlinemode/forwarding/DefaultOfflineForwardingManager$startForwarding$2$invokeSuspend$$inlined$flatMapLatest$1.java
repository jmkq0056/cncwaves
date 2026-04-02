package com.stripe.offlinemode.forwarding;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.offlinemode.models.OfflineForwardingResponse;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1", f = "DefaultOfflineForwardingManager.kt", i = {0, 0}, l = {227, WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {"consecutiveSuccesses", "pendingTimer"}, s = {"L$1", "L$2"})
public final class DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super OfflineForwardingResponse>, Pair<? extends Boolean, ? extends String>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ DefaultOfflineForwardingManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1(Continuation continuation, DefaultOfflineForwardingManager defaultOfflineForwardingManager) {
        super(3, continuation);
        this.this$0 = defaultOfflineForwardingManager;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super OfflineForwardingResponse> flowCollector, Pair<? extends Boolean, ? extends String> pair, Continuation<? super Unit> continuation) {
        DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1 defaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1 = new DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1(continuation, this.this$0);
        defaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1.L$1 = pair;
        return defaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0100, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r5, r12, r11) != r0) goto L26;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
