package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PinEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;", "", "pinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "incorrectPinEntered", "", "(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Z)V", "getIncorrectPinEntered", "()Z", "getPinPadTouchEvent", "()Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PinEntryAccessibilityData {
    private final boolean incorrectPinEntered;
    private final AccessiblePinPadTouchEvent pinPadTouchEvent;

    public static /* synthetic */ PinEntryAccessibilityData copy$default(PinEntryAccessibilityData pinEntryAccessibilityData, AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            accessiblePinPadTouchEvent = pinEntryAccessibilityData.pinPadTouchEvent;
        }
        if ((i & 2) != 0) {
            z = pinEntryAccessibilityData.incorrectPinEntered;
        }
        return pinEntryAccessibilityData.copy(accessiblePinPadTouchEvent, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AccessiblePinPadTouchEvent getPinPadTouchEvent() {
        return this.pinPadTouchEvent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIncorrectPinEntered() {
        return this.incorrectPinEntered;
    }

    public final PinEntryAccessibilityData copy(AccessiblePinPadTouchEvent pinPadTouchEvent, boolean incorrectPinEntered) {
        return new PinEntryAccessibilityData(pinPadTouchEvent, incorrectPinEntered);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PinEntryAccessibilityData)) {
            return false;
        }
        PinEntryAccessibilityData pinEntryAccessibilityData = (PinEntryAccessibilityData) other;
        return Intrinsics.areEqual(this.pinPadTouchEvent, pinEntryAccessibilityData.pinPadTouchEvent) && this.incorrectPinEntered == pinEntryAccessibilityData.incorrectPinEntered;
    }

    public int hashCode() {
        AccessiblePinPadTouchEvent accessiblePinPadTouchEvent = this.pinPadTouchEvent;
        return ((accessiblePinPadTouchEvent == null ? 0 : accessiblePinPadTouchEvent.hashCode()) * 31) + Boolean.hashCode(this.incorrectPinEntered);
    }

    public String toString() {
        return "PinEntryAccessibilityData(pinPadTouchEvent=" + this.pinPadTouchEvent + ", incorrectPinEntered=" + this.incorrectPinEntered + ')';
    }

    public PinEntryAccessibilityData(AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, boolean z) {
        this.pinPadTouchEvent = accessiblePinPadTouchEvent;
        this.incorrectPinEntered = z;
    }

    public final AccessiblePinPadTouchEvent getPinPadTouchEvent() {
        return this.pinPadTouchEvent;
    }

    public final boolean getIncorrectPinEntered() {
        return this.incorrectPinEntered;
    }
}
