package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.Optional;
import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.hardware.status.ReaderException;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.makers.ReaderSoftwareUpdateMaker;
import io.reactivex.rxjava3.core.Observable;
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

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2", f = "BbposAdapter.kt", i = {}, l = {843}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2 extends SuspendLambda implements Function2<ProducerScope<? super ReaderSoftwareUpdate>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Reader $reader;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposAdapter this$0;
    final /* synthetic */ BbposAdapter.CheckForUpdateOperation this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2(BbposAdapter bbposAdapter, Reader reader, BbposAdapter.CheckForUpdateOperation checkForUpdateOperation, Continuation<? super BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2> continuation) {
        super(2, continuation);
        this.this$0 = bbposAdapter;
        this.$reader = reader;
        this.this$1 = checkForUpdateOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2 bbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2 = new BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2(this.this$0, this.$reader, this.this$1, continuation);
        bbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2.L$0 = obj;
        return bbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super ReaderSoftwareUpdate> producerScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            Observable<Optional<ReaderVersion>> readerTargetVersionObservable = this.this$0.updateListener.getReaderTargetVersionObservable();
            final BbposAdapter bbposAdapter = this.this$0;
            final Reader reader = this.$reader;
            final BbposAdapter.CheckForUpdateOperation checkForUpdateOperation = this.this$1;
            final Disposable disposableSubscribe = readerTargetVersionObservable.subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Optional<ReaderVersion> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (bbposAdapter.getOperationInProgress() instanceof BbposAdapter.CheckForUpdateOperation) {
                        if (it instanceof Optional.Present) {
                            ChannelsKt.trySendBlocking(producerScope, ReaderSoftwareUpdateMaker.INSTANCE.create(reader, (ReaderVersion) ((Optional.Present) it).getValue(), bbposAdapter.getLogger()));
                        } else if (it instanceof Optional.Absent) {
                            checkForUpdateOperation.setException(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "No target version returned", null, null, 12, null));
                        }
                    }
                    SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "subscribe(...)");
            final Disposable disposableSubscribe2 = this.this$0.readerStatusListener.getReaderExceptionObservable().subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$exceptionSubscription$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(ReaderException it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ChannelsKt.trySendBlocking(producerScope, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe2, "subscribe(...)");
            this.this$0.readerUpdateController.checkForUpdates();
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2.1
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
