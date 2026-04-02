package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.hardware.status.ReaderRebootAttempt;
import com.stripe.hardware.status.RebootCause;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.AnonymousClass2;
import com.sun.jna.platform.win32.WinError;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Predicate;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RebootReaderOperation$execute$1", f = "BbposAdapter.kt", i = {}, l = {WinError.ERROR_LOGON_FAILURE}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$RebootReaderOperation$execute$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BbposAdapter this$0;
    final /* synthetic */ BbposAdapter.RebootReaderOperation this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$RebootReaderOperation$execute$1(BbposAdapter bbposAdapter, BbposAdapter.RebootReaderOperation rebootReaderOperation, Continuation<? super BbposAdapter$RebootReaderOperation$execute$1> continuation) {
        super(2, continuation);
        this.this$0 = bbposAdapter;
        this.this$1 = rebootReaderOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposAdapter$RebootReaderOperation$execute$1(this.this$0, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$RebootReaderOperation$execute$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            BbposAdapter bbposAdapter = this.this$0;
            final BbposAdapter bbposAdapter2 = this.this$0;
            final BbposAdapter.RebootReaderOperation rebootReaderOperation = this.this$1;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RebootReaderOperation$execute$1$rebootAttemptResult$1
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
                    bbposAdapter2.connectionManager.startReboot(rebootReaderOperation.reader);
                    bbposAdapter2.update();
                }
            };
            Observable<ReaderRebootAttempt> observableObserveOn = this.this$0.readerStatusListener.getReaderRebootAttemptObservable().filter(new Predicate() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RebootReaderOperation$execute$1$rebootAttemptResult$2
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(ReaderRebootAttempt it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCause() == RebootCause.SDK_REQUESTED_REBOOT;
                }
            }).observeOn(this.this$0.scheduler);
            Intrinsics.checkNotNullExpressionValue(observableObserveOn, "observeOn(...)");
            this.label = 1;
            obj = FlowKt.first(FlowKt.callbackFlow(bbposAdapter.new AnonymousClass2(observableObserveOn, function0, null)), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        BbposAdapter.ReaderInteractionResult readerInteractionResult = (BbposAdapter.ReaderInteractionResult) obj;
        if (readerInteractionResult instanceof BbposAdapter.ReaderInteractionResult.Succeeded) {
            if (((ReaderRebootAttempt) ((BbposAdapter.ReaderInteractionResult.Succeeded) readerInteractionResult).getValue()).getSuccess()) {
                this.this$1.set(null);
            } else {
                this.this$1.setException(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Reboot attempt failed", null, null, 12, null));
            }
        } else if (readerInteractionResult instanceof BbposAdapter.ReaderInteractionResult.ReaderBusy) {
            this.this$1.setException(new TerminalException(TerminalErrorCode.READER_BUSY, "Reader is busy", null, null, 12, null));
        } else if (readerInteractionResult instanceof BbposAdapter.ReaderInteractionResult.ReaderFailed) {
            String message = ((BbposAdapter.ReaderInteractionResult.ReaderFailed) readerInteractionResult).getException().getMessage();
            if (message == null) {
                message = "Reboot attempt failed";
            }
            this.this$1.setException(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, message, null, null, 12, null));
        }
        return Unit.INSTANCE;
    }
}
