package com.stripe.core.readerupdate;

import com.stripe.core.hardware.Reader;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1", f = "BbposAssetInstallProcessor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ Reader $reader;
    int label;
    final /* synthetic */ DefaultBbposAssetInstallProcessor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1(DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor, Reader reader, Continuation<? super DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1> continuation) {
        super(1, continuation);
        this.this$0 = defaultBbposAssetInstallProcessor;
        this.$reader = reader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1(this.this$0, this.$reader, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.readerConnectionController.connect(this.$reader);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
