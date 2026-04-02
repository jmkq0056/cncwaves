package com.stripe.core.hardware.reactive;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: RxJavaHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JV\u0010\u0003\u001a\u0002H\u0004\"\n\b\u0000\u0010\u0004\u0018\u0001*\u00020\u0001\"\n\b\u0001\u0010\u0005\u0018\u0001*\u00020\u0006*\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\t\u001a\u00020\n2\u000e\b\b\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0086H¢\u0006\u0002\u0010\u000eJH\u0010\u0003\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u0001*\b\u0012\u0004\u0012\u0002H\u00040\u00072\u0006\u0010\t\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000fH\u0086@¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/core/hardware/reactive/RxJavaHelper;", "", "()V", "awaitFirstWithBlock", "T", "V", "", "Lio/reactivex/rxjava3/core/Observable;", "exceptionObservable", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "block", "Lkotlin/Function0;", "", "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RxJavaHelper {
    public static final RxJavaHelper INSTANCE = new RxJavaHelper();

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.RxJavaHelper$awaitFirstWithBlock$1, reason: invalid class name */
    /* JADX INFO: compiled from: RxJavaHelper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.RxJavaHelper", f = "RxJavaHelper.kt", i = {0, 0, 0, 1}, l = {19, 20}, m = "awaitFirstWithBlock", n = {"scheduler", "it", "disposable", "disposable"}, s = {"L$0", "L$1", "L$2", "L$0"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RxJavaHelper.this.awaitFirstWithBlock(null, null, null, this);
        }
    }

    private RxJavaHelper() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        if (r9 == r1) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v0, types: [io.reactivex.rxjava3.core.Observable, io.reactivex.rxjava3.core.Observable<T>] */
    /* JADX WARN: Type inference failed for: r6v1, types: [io.reactivex.rxjava3.disposables.Disposable] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object awaitFirstWithBlock(io.reactivex.rxjava3.core.Observable<T> r6, io.reactivex.rxjava3.core.Scheduler r7, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r8, kotlin.coroutines.Continuation<? super T> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.stripe.core.hardware.reactive.RxJavaHelper.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.core.hardware.reactive.RxJavaHelper$awaitFirstWithBlock$1 r0 = (com.stripe.core.hardware.reactive.RxJavaHelper.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.core.hardware.reactive.RxJavaHelper$awaitFirstWithBlock$1 r0 = new com.stripe.core.hardware.reactive.RxJavaHelper$awaitFirstWithBlock$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$0
            io.reactivex.rxjava3.disposables.Disposable r6 = (io.reactivex.rxjava3.disposables.Disposable) r6
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L49
            goto L88
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            java.lang.Object r6 = r0.L$2
            io.reactivex.rxjava3.disposables.Disposable r6 = (io.reactivex.rxjava3.disposables.Disposable) r6
            java.lang.Object r7 = r0.L$1
            io.reactivex.rxjava3.observables.ConnectableObservable r7 = (io.reactivex.rxjava3.observables.ConnectableObservable) r7
            java.lang.Object r8 = r0.L$0
            io.reactivex.rxjava3.core.Scheduler r8 = (io.reactivex.rxjava3.core.Scheduler) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L49
            goto L6d
        L49:
            r7 = move-exception
            goto L93
        L4b:
            kotlin.ResultKt.throwOnFailure(r9)
            io.reactivex.rxjava3.observables.ConnectableObservable r6 = r6.replay()
            io.reactivex.rxjava3.disposables.Disposable r9 = r6.connect()
            java.lang.String r2 = "connect(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r2)
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L91
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L91
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L91
            r0.label = r4     // Catch: java.lang.Throwable -> L91
            java.lang.Object r8 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L91
            if (r8 != r1) goto L6a
            goto L87
        L6a:
            r8 = r7
            r7 = r6
            r6 = r9
        L6d:
            io.reactivex.rxjava3.core.Observable r7 = r7.observeOn(r8)     // Catch: java.lang.Throwable -> L49
            java.lang.String r8 = "observeOn(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r8)     // Catch: java.lang.Throwable -> L49
            io.reactivex.rxjava3.core.ObservableSource r7 = (io.reactivex.rxjava3.core.ObservableSource) r7     // Catch: java.lang.Throwable -> L49
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L49
            r8 = 0
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L49
            r0.L$2 = r8     // Catch: java.lang.Throwable -> L49
            r0.label = r3     // Catch: java.lang.Throwable -> L49
            java.lang.Object r9 = kotlinx.coroutines.rx3.RxAwaitKt.awaitFirst(r7, r0)     // Catch: java.lang.Throwable -> L49
            if (r9 != r1) goto L88
        L87:
            return r1
        L88:
            r6.dispose()
            java.lang.String r6 = "let(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r6)
            return r9
        L91:
            r7 = move-exception
            r6 = r9
        L93:
            r6.dispose()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.RxJavaHelper.awaitFirstWithBlock(io.reactivex.rxjava3.core.Observable, io.reactivex.rxjava3.core.Scheduler, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final /* synthetic */ <T, V extends Throwable> Object awaitFirstWithBlock(Observable<T> observable, Observable<V> observable2, Scheduler scheduler, Function0<Unit> function0, Continuation<? super T> continuation) {
        Observable observableMerge = Observable.merge(observable, observable2);
        Intrinsics.needClassReification();
        Observable<T> observableFlatMap = observableMerge.flatMap(new Function() { // from class: com.stripe.core.hardware.reactive.RxJavaHelper.awaitFirstWithBlock.4
            @Override // io.reactivex.rxjava3.functions.Function
            public final ObservableSource<? extends T> apply(Object it) {
                Observable observableError;
                Intrinsics.checkNotNullParameter(it, "it");
                Intrinsics.reifiedOperationMarker(3, "T");
                if (it instanceof Object) {
                    observableError = Observable.just(it);
                } else {
                    Intrinsics.reifiedOperationMarker(3, "V");
                    if (!(it instanceof Throwable)) {
                        throw new IllegalStateException(("Observable emitted unexpected type: " + Reflection.getOrCreateKotlinClass(it.getClass())).toString());
                    }
                    observableError = Observable.error((Throwable) it);
                }
                return observableError;
            }
        });
        Intrinsics.checkNotNullExpressionValue(observableFlatMap, "flatMap(...)");
        Object objAwaitFirstWithBlock = awaitFirstWithBlock(observableFlatMap, scheduler, new AnonymousClass5(function0), continuation);
        Intrinsics.checkNotNullExpressionValue(objAwaitFirstWithBlock, "awaitFirstWithBlock(...)");
        return objAwaitFirstWithBlock;
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.RxJavaHelper$awaitFirstWithBlock$5, reason: invalid class name */
    /* JADX INFO: compiled from: RxJavaHelper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 176)
    public /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<Continuation<? super Unit>, Object>, SuspendFunction {
        public AnonymousClass5(Object obj) {
            super(1, obj, Intrinsics.Kotlin.class, "suspendConversion0", "awaitFirstWithBlock$suspendConversion0(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return RxJavaHelper.awaitFirstWithBlock$suspendConversion0((Function0) this.receiver, continuation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object awaitFirstWithBlock$suspendConversion0(Function0 function0, Continuation continuation) {
        function0.invoke();
        return Unit.INSTANCE;
    }
}
