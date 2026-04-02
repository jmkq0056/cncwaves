package com.stripe.core.bbpos.hardware;

import android.graphics.Rect;
import com.stripe.core.hardware.paymentcollection.PinKey;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposPaymentCollector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.bbpos.hardware.BbposPaymentCollector$setPinEntryButtons$1$1", f = "BbposPaymentCollector.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
final class BbposPaymentCollector$setPinEntryButtons$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BbposPaymentCollector this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposPaymentCollector$setPinEntryButtons$1$1(BbposPaymentCollector bbposPaymentCollector, Continuation<? super BbposPaymentCollector$setPinEntryButtons$1$1> continuation) {
        super(2, continuation);
        this.this$0 = bbposPaymentCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposPaymentCollector$setPinEntryButtons$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposPaymentCollector$setPinEntryButtons$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow flowFilterNotNull = FlowKt.filterNotNull(FlowKt.distinctUntilChanged(this.this$0.pinButtonsRepository.getPinButtonsFlow()));
            final BbposPaymentCollector bbposPaymentCollector = this.this$0;
            this.label = 1;
            if (flowFilterNotNull.collect(new FlowCollector() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector$setPinEntryButtons$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((Map<PinKey, Rect>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(Map<PinKey, Rect> map, Continuation<? super Unit> continuation) {
                    bbposPaymentCollector.getController().setPinPadButtons((Rect) MapsKt.getValue(map, PinKey.ZERO), (Rect) MapsKt.getValue(map, PinKey.ONE), (Rect) MapsKt.getValue(map, PinKey.TWO), (Rect) MapsKt.getValue(map, PinKey.THREE), (Rect) MapsKt.getValue(map, PinKey.FOUR), (Rect) MapsKt.getValue(map, PinKey.FIVE), (Rect) MapsKt.getValue(map, PinKey.SIX), (Rect) MapsKt.getValue(map, PinKey.SEVEN), (Rect) MapsKt.getValue(map, PinKey.EIGHT), (Rect) MapsKt.getValue(map, PinKey.NINE), (Rect) MapsKt.getValue(map, PinKey.BACKSPACE), (Rect) MapsKt.getValue(map, PinKey.CANCEL), (Rect) MapsKt.getValue(map, PinKey.ENTER));
                    return Unit.INSTANCE;
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
