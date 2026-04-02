package com.stripe.paymentcollection;

import com.stripe.hardware.ReaderConfiguration;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "types", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "(Ljava/util/Set;)V", "getTypes", "()Ljava/util/Set;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderTypeChangedEvent extends HardwareListenerEvent {
    private final Set<ReaderConfiguration.ReaderType> types;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReaderTypeChangedEvent copy$default(ReaderTypeChangedEvent readerTypeChangedEvent, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            set = readerTypeChangedEvent.types;
        }
        return readerTypeChangedEvent.copy(set);
    }

    public final Set<ReaderConfiguration.ReaderType> component1() {
        return this.types;
    }

    public final ReaderTypeChangedEvent copy(Set<? extends ReaderConfiguration.ReaderType> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        return new ReaderTypeChangedEvent(types);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReaderTypeChangedEvent) && Intrinsics.areEqual(this.types, ((ReaderTypeChangedEvent) other).types);
    }

    public int hashCode() {
        return this.types.hashCode();
    }

    public String toString() {
        return "ReaderTypeChangedEvent(types=" + this.types + ')';
    }

    public final Set<ReaderConfiguration.ReaderType> getTypes() {
        return this.types;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ReaderTypeChangedEvent(Set<? extends ReaderConfiguration.ReaderType> types) {
        super(null);
        Intrinsics.checkNotNullParameter(types, "types");
        this.types = types;
    }
}
