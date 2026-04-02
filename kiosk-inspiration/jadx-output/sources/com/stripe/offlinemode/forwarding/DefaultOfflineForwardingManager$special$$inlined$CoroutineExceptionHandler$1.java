package com.stripe.offlinemode.forwarding;

import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: compiled from: CoroutineExceptionHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    final /* synthetic */ DefaultOfflineForwardingManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Companion companion, DefaultOfflineForwardingManager defaultOfflineForwardingManager) {
        super(companion);
        this.this$0 = defaultOfflineForwardingManager;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(CoroutineContext context, Throwable exception) {
        boolean z = exception instanceof HaltForwardingException;
        this.this$0.traceLogger.e("Forwarding stopped/halted.", exception, TuplesKt.to("NotifyIntegration", Boolean.valueOf(!z)));
        this.this$0.traceLogger.endSession();
        if (z) {
            return;
        }
        if (exception instanceof TerminalException) {
            this.this$0.listener.onForwardingFailure((TerminalException) exception);
        } else {
            this.this$0.listener.onForwardingFailure(DefaultOfflineForwardingManager.toTerminalException$default(this.this$0, exception, null, 2, null));
        }
    }
}
