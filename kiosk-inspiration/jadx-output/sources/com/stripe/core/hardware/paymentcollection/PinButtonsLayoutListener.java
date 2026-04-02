package com.stripe.core.hardware.paymentcollection;

import android.graphics.Rect;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: PinButtonsLayoutListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/paymentcollection/PinButtonsLayoutListener;", "", "onPinButtonLayout", "", "pinButtons", "", "Lcom/stripe/core/hardware/paymentcollection/PinKey;", "Landroid/graphics/Rect;", "Lcom/stripe/core/hardware/paymentcollection/PinButtons;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PinButtonsLayoutListener {
    void onPinButtonLayout(Map<PinKey, Rect> pinButtons);
}
