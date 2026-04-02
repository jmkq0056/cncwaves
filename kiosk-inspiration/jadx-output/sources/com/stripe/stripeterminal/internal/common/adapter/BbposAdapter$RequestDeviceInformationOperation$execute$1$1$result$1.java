package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.Optional;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.AnonymousClass2;
import com.sun.jna.platform.win32.WinError;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/hardware/status/ReaderInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1", f = "BbposAdapter.kt", i = {}, l = {WinError.ERROR_LOGON_FAILURE}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ReaderInfo>, Object> {
    int label;
    final /* synthetic */ BbposAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1(BbposAdapter bbposAdapter, Continuation<? super BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1> continuation) {
        super(2, continuation);
        this.this$0 = bbposAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ReaderInfo> continuation) {
        return ((BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            BbposAdapter bbposAdapter = this.this$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0.readerInfoController);
            Observable<R> map = this.this$0.readerStatusListener.getReaderInfoObservable().map(new Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1.2
                @Override // io.reactivex.rxjava3.functions.Function
                public final Optional<ReaderInfo> apply(ReaderInfo it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Optional.INSTANCE.of(it);
                }
            });
            final BbposAdapter bbposAdapter2 = this.this$0;
            Observable observableOnErrorReturn = map.doOnError(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1.3
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Throwable e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    bbposAdapter2.getLogger().w(e, "Failed to retrieve device information", new Pair[0]);
                }
            }).onErrorReturn(new Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1.4
                @Override // io.reactivex.rxjava3.functions.Function
                public final Optional<ReaderInfo> apply(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Optional.INSTANCE.absent();
                }
            });
            Intrinsics.checkNotNullExpressionValue(observableOnErrorReturn, "onErrorReturn(...)");
            this.label = 1;
            obj = FlowKt.first(FlowKt.callbackFlow(bbposAdapter.new AnonymousClass2(observableOnErrorReturn, anonymousClass1, null)), this);
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
            return (ReaderInfo) ((Optional) ((BbposAdapter.ReaderInteractionResult.Succeeded) readerInteractionResult).getValue()).getOrNull();
        }
        if ((readerInteractionResult instanceof BbposAdapter.ReaderInteractionResult.ReaderBusy) || (readerInteractionResult instanceof BbposAdapter.ReaderInteractionResult.ReaderFailed)) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<Unit> {
        AnonymousClass1(Object obj) {
            super(0, obj, ReaderInfoController.class, "requestReaderInfo", "requestReaderInfo()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((ReaderInfoController) this.receiver).requestReaderInfo();
        }
    }
}
