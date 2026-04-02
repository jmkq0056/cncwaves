package com.stripe.core.hardware.paymentcollection;

import android.graphics.Rect;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: PinButtonsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J$\u0010\r\u001a\u00020\u000e2\u001a\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\bH\u0016R(\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\b0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\t\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;", "Lcom/stripe/core/hardware/paymentcollection/PinButtonsLayoutListener;", "()V", "_pinButtonsFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lcom/stripe/core/hardware/paymentcollection/PinKey;", "Landroid/graphics/Rect;", "Lcom/stripe/core/hardware/paymentcollection/PinButtons;", "pinButtonsFlow", "Lkotlinx/coroutines/flow/Flow;", "getPinButtonsFlow", "()Lkotlinx/coroutines/flow/Flow;", "onPinButtonLayout", "", "pinButtons", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinButtonsRepository implements PinButtonsLayoutListener {
    private final MutableStateFlow<Map<PinKey, Rect>> _pinButtonsFlow;
    private final Flow<Map<PinKey, Rect>> pinButtonsFlow;

    @Inject
    public PinButtonsRepository() {
        MutableStateFlow<Map<PinKey, Rect>> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._pinButtonsFlow = MutableStateFlow;
        this.pinButtonsFlow = FlowKt.asStateFlow(MutableStateFlow);
    }

    public final Flow<Map<PinKey, Rect>> getPinButtonsFlow() {
        return this.pinButtonsFlow;
    }

    @Override // com.stripe.core.hardware.paymentcollection.PinButtonsLayoutListener
    public void onPinButtonLayout(Map<PinKey, Rect> pinButtons) {
        this._pinButtonsFlow.setValue(pinButtons);
    }
}
