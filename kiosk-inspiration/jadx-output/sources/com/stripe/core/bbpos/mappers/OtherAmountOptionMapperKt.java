package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.sdk.OtherAmountOption;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OtherAmountOptionMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"convert", "Lcom/bbpos/bbdevice/BBDeviceController$OtherAmountOption;", "Lcom/stripe/bbpos/sdk/OtherAmountOption;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class OtherAmountOptionMapperKt {

    /* JADX INFO: compiled from: OtherAmountOptionMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OtherAmountOption.values().length];
            try {
                iArr[OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OtherAmountOption.CURRENCY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OtherAmountOption.PERCENTAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BBDeviceController.OtherAmountOption convert(OtherAmountOption otherAmountOption) {
        Intrinsics.checkNotNullParameter(otherAmountOption, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[otherAmountOption.ordinal()];
        if (i == 1) {
            return null;
        }
        if (i == 2) {
            return BBDeviceController.OtherAmountOption.CURRENCY;
        }
        if (i == 3) {
            return BBDeviceController.OtherAmountOption.PERCENTAGE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
