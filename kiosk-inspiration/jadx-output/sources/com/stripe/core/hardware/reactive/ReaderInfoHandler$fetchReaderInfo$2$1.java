package com.stripe.core.hardware.reactive;

import com.stripe.core.hardware.reactive.RxJavaHelper;
import com.stripe.hardware.status.ReaderException;
import com.stripe.hardware.status.ReaderInfo;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
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
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ReaderInfoHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/hardware/status/ReaderInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$2$1", f = "ReaderInfoHandler.kt", i = {}, l = {88}, m = "invokeSuspend", n = {}, s = {})
final class ReaderInfoHandler$fetchReaderInfo$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ReaderInfo>, Object> {
    final /* synthetic */ ReaderInfoHandler $this_runCatching;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReaderInfoHandler$fetchReaderInfo$2$1(ReaderInfoHandler readerInfoHandler, Continuation<? super ReaderInfoHandler$fetchReaderInfo$2$1> continuation) {
        super(2, continuation);
        this.$this_runCatching = readerInfoHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReaderInfoHandler$fetchReaderInfo$2$1(this.$this_runCatching, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ReaderInfo> continuation) {
        return ((ReaderInfoHandler$fetchReaderInfo$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            RxJavaHelper rxJavaHelper = RxJavaHelper.INSTANCE;
            Observable<ReaderInfo> readerInfoObservable = this.$this_runCatching.readerStatusListener.getReaderInfoObservable();
            Observable<ReaderException> readerExceptionObservable = this.$this_runCatching.readerStatusListener.getReaderExceptionObservable();
            Scheduler scheduler = this.$this_runCatching.io;
            final ReaderInfoHandler readerInfoHandler = this.$this_runCatching;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$2$1.1
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
                    readerInfoHandler.readerInfoController.requestReaderInfo();
                }
            };
            Observable observableFlatMap = Observable.merge(readerInfoObservable, readerExceptionObservable).flatMap(new Function() { // from class: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1
                @Override // io.reactivex.rxjava3.functions.Function
                public final ObservableSource<? extends T> apply(Object it) {
                    Observable observableError;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it instanceof ReaderInfo) {
                        observableError = Observable.just(it);
                    } else {
                        if (!(it instanceof ReaderException)) {
                            throw new IllegalStateException(("Observable emitted unexpected type: " + Reflection.getOrCreateKotlinClass(it.getClass())).toString());
                        }
                        observableError = Observable.error((Throwable) it);
                    }
                    return observableError;
                }
            });
            Intrinsics.checkNotNullExpressionValue(observableFlatMap, "flatMap(...)");
            this.label = 1;
            obj = rxJavaHelper.awaitFirstWithBlock(observableFlatMap, scheduler, new RxJavaHelper.AnonymousClass5(function0), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Intrinsics.checkNotNullExpressionValue(obj, "awaitFirstWithBlock(...)");
        return obj;
    }
}
