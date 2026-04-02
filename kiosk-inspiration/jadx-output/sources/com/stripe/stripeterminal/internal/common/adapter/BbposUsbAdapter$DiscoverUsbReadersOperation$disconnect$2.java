package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.hardware.status.DisconnectCause;
import com.sun.jna.platform.win32.WinError;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2", f = "BbposUsbAdapter.kt", i = {}, l = {WinError.ERROR_DRIVER_CANCEL_TIMEOUT}, m = "invokeSuspend", n = {}, s = {})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposUsbAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2(BbposUsbAdapter bbposUsbAdapter, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2> continuation) {
        super(2, continuation);
        this.this$0 = bbposUsbAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2 bbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2 = new BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2(this.this$0, continuation);
        bbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2.L$0 = obj;
        return bbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final Disposable disposableSubscribe = this.this$0.readerStatusListener.getReaderDisconnectObservable().subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2$subscription$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(DisconnectCause it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ChannelsKt.trySendBlocking(producerScope, Unit.INSTANCE);
                    SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "subscribe(...)");
            this.this$0.removeReaderDisconnectHandler();
            this.this$0.deviceController.stopUsb();
            final BbposUsbAdapter bbposUsbAdapter = this.this$0;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    disposableSubscribe.dispose();
                    bbposUsbAdapter.registerReaderDisconnectHandler();
                }
            }, this) == coroutine_suspended) {
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
