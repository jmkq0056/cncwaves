package com.stripe.stripeterminal.dagger;

import com.scottyab.rootbeer.RootBeer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: RootAccessModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.dagger.RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1", f = "RootAccessModule.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onRootAccessDetectedHandler;
    final /* synthetic */ RootBeer $rootBeer;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1(RootBeer rootBeer, Function0<Unit> function0, Continuation<? super RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1> continuation) {
        super(2, continuation);
        this.$rootBeer = rootBeer;
        this.$onRootAccessDetectedHandler = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1(this.$rootBeer, this.$onRootAccessDetectedHandler, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (this.$rootBeer.isRooted()) {
            this.$onRootAccessDetectedHandler.invoke();
        }
        return Unit.INSTANCE;
    }
}
