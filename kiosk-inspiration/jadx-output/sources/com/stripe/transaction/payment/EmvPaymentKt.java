package com.stripe.transaction.payment;

import com.stripe.hardware.emv.EmvTransactionType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmvPayment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toEmvProcessingMethod", "", "Lcom/stripe/hardware/emv/EmvTransactionType;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class EmvPaymentKt {

    /* JADX INFO: compiled from: EmvPayment.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EmvTransactionType.values().length];
            try {
                iArr[EmvTransactionType.QUICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EmvTransactionType.TRADITIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String toEmvProcessingMethod(EmvTransactionType emvTransactionType) {
        Intrinsics.checkNotNullParameter(emvTransactionType, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[emvTransactionType.ordinal()];
        if (i == 1) {
            return "quick_chip";
        }
        if (i == 2) {
            return "traditional";
        }
        throw new NoWhenBranchMatchedException();
    }
}
