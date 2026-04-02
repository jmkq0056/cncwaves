package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.Reader;
import com.stripe.hardware.status.ReaderException;
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
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$startSession$2", f = "BbposAdapter.kt", i = {}, l = {1017}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$StartSessionOperation$startSession$2 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Reader $reader;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$StartSessionOperation$startSession$2(BbposAdapter bbposAdapter, Reader reader, Continuation<? super BbposAdapter$StartSessionOperation$startSession$2> continuation) {
        super(2, continuation);
        this.this$0 = bbposAdapter;
        this.$reader = reader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposAdapter$StartSessionOperation$startSession$2 bbposAdapter$StartSessionOperation$startSession$2 = new BbposAdapter$StartSessionOperation$startSession$2(this.this$0, this.$reader, continuation);
        bbposAdapter$StartSessionOperation$startSession$2.L$0 = obj;
        return bbposAdapter$StartSessionOperation$startSession$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$StartSessionOperation$startSession$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final Disposable disposableSubscribe = this.this$0.readerStatusListener.getSessionInitializedObservable().subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$startSession$2$successSubscription$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Unit it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ChannelsKt.trySendBlocking(producerScope, Unit.INSTANCE);
                    SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "subscribe(...)");
            final Disposable disposableSubscribe2 = this.this$0.readerStatusListener.getSessionExceptionObservable().subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$startSession$2$errorSubscription$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(ReaderException it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    CoroutineScopeKt.cancel(producerScope, ExceptionsKt.CancellationException(it.getMessage(), it));
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe2, "subscribe(...)");
            this.this$0.connectionManager.startSession(this.$reader);
            this.this$0.update();
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$startSession$2.1
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
                    disposableSubscribe2.dispose();
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
