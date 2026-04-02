package com.stripe.core.readerupdate;

import com.stripe.core.hardware.Reader;
import com.stripe.hardware.status.DisconnectCause;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1", f = "BbposAssetInstallProcessor.kt", i = {}, l = {201}, m = "invokeSuspend", n = {}, s = {})
final class DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ConnectableObservable<DisconnectCause> $disconnectReplayObservable;
    final /* synthetic */ boolean $needsReconnect;
    final /* synthetic */ Reader $reader;
    int label;
    final /* synthetic */ DefaultBbposAssetInstallProcessor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1(boolean z, DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor, ConnectableObservable<DisconnectCause> connectableObservable, Reader reader, Continuation<? super DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1> continuation) {
        super(2, continuation);
        this.$needsReconnect = z;
        this.this$0 = defaultBbposAssetInstallProcessor;
        this.$disconnectReplayObservable = connectableObservable;
        this.$reader = reader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1(this.$needsReconnect, this.this$0, this.$disconnectReplayObservable, this.$reader, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$needsReconnect) {
                DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor = this.this$0;
                Observable<Reader> readerConnectObservable = defaultBbposAssetInstallProcessor.statusListener.getReaderConnectObservable();
                Observable<DisconnectCause> observableObserveOn = this.$disconnectReplayObservable.observeOn(this.this$0.scheduler);
                Intrinsics.checkNotNullExpressionValue(observableObserveOn, "observeOn(...)");
                this.label = 1;
                if (defaultBbposAssetInstallProcessor.waitForReconnect(readerConnectObservable, observableObserveOn, this.$reader, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
