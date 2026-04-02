package com.stripe.core.hardware.reactive.emv;

import com.stripe.hardware.emv.ReaderSettings;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConfigurationHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/hardware/emv/ReaderSettings;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readTerminalSetting$2$ret$1$1", f = "ConfigurationHandler.kt", i = {}, l = {338}, m = "invokeSuspend", n = {}, s = {})
final class ConfigurationHandler$readTerminalSetting$2$ret$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ReaderSettings>, Object> {
    final /* synthetic */ CompletableDeferred<ReaderSettings> $it;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigurationHandler$readTerminalSetting$2$ret$1$1(CompletableDeferred<ReaderSettings> completableDeferred, Continuation<? super ConfigurationHandler$readTerminalSetting$2$ret$1$1> continuation) {
        super(2, continuation);
        this.$it = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConfigurationHandler$readTerminalSetting$2$ret$1$1(this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ReaderSettings> continuation) {
        return ((ConfigurationHandler$readTerminalSetting$2$ret$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objAwait = this.$it.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
