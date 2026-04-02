package com.stripe.paymentcollection;

import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.TlvMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"interfaceTypeFromTlv", "Lcom/stripe/hardware/emv/InterfaceType;", "blob", "", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionStateHandlersKt {
    public static final InterfaceType interfaceTypeFromTlv(String blob) {
        Intrinsics.checkNotNullParameter(blob, "blob");
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(blob);
        if (tlvMap != null) {
            return tlvMap.getInterfaceType();
        }
        return null;
    }
}
