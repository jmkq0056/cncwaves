package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;", "", "()V", "DynamicCurrencyConversionSelected", "NotRequested", "Requested", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$DynamicCurrencyConversionSelected;", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$NotRequested;", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$Requested;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class DynamicCurrencyConversionSelectionStatus {
    public /* synthetic */ DynamicCurrencyConversionSelectionStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$NotRequested;", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotRequested extends DynamicCurrencyConversionSelectionStatus {
        public static final NotRequested INSTANCE = new NotRequested();

        private NotRequested() {
            super(null);
        }
    }

    private DynamicCurrencyConversionSelectionStatus() {
    }

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$Requested;", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Requested extends DynamicCurrencyConversionSelectionStatus {
        public static final Requested INSTANCE = new Requested();

        private Requested() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaymentCollectionData.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$DynamicCurrencyConversionSelected;", "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;", "selected", "", "(Z)V", "getSelected", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class DynamicCurrencyConversionSelected extends DynamicCurrencyConversionSelectionStatus {
        private final boolean selected;

        public static /* synthetic */ DynamicCurrencyConversionSelected copy$default(DynamicCurrencyConversionSelected dynamicCurrencyConversionSelected, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = dynamicCurrencyConversionSelected.selected;
            }
            return dynamicCurrencyConversionSelected.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getSelected() {
            return this.selected;
        }

        public final DynamicCurrencyConversionSelected copy(boolean selected) {
            return new DynamicCurrencyConversionSelected(selected);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DynamicCurrencyConversionSelected) && this.selected == ((DynamicCurrencyConversionSelected) other).selected;
        }

        public int hashCode() {
            return Boolean.hashCode(this.selected);
        }

        public String toString() {
            return "DynamicCurrencyConversionSelected(selected=" + this.selected + ')';
        }

        public DynamicCurrencyConversionSelected(boolean z) {
            super(null);
            this.selected = z;
        }

        public final boolean getSelected() {
            return this.selected;
        }
    }
}
