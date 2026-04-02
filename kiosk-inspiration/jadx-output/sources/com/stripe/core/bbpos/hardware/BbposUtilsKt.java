package com.stripe.core.bbpos.hardware;

import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.hardware.emv.AccountType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\u0005"}, d2 = {"selectAccountType", "", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "accountType", "Lcom/stripe/hardware/emv/AccountType;", "hardware_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class BbposUtilsKt {

    /* JADX INFO: compiled from: BbposUtils.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccountType.values().length];
            try {
                iArr[AccountType.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccountType.SAVINGS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccountType.CHECKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AccountType.CREDIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void selectAccountType(DeviceControllerWrapper deviceControllerWrapper, AccountType accountType) {
        Intrinsics.checkNotNullParameter(deviceControllerWrapper, "<this>");
        Intrinsics.checkNotNullParameter(accountType, "accountType");
        int i = WhenMappings.$EnumSwitchMapping$0[accountType.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            i2 = 3;
            if (i == 3) {
                i2 = 2;
            } else if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        deviceControllerWrapper.selectAccountType(i2);
    }
}
