package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.sdk.AmountInputType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AmountInputTypeMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"convert", "Lcom/bbpos/bbdevice/BBDeviceController$AmountInputType;", "Lcom/stripe/bbpos/sdk/AmountInputType;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class AmountInputTypeMapperKt {

    /* JADX INFO: compiled from: AmountInputTypeMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AmountInputType.values().length];
            try {
                iArr[AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AmountInputType.AMOUNT_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AmountInputType.AMOUNT_AND_CASHBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AmountInputType.CASHBACK_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AmountInputType.TIPS_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AmountInputType.AMOUNT_AND_TIPS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AmountInputType.AMOUNT_AND_TIPS_IN_PERCENTAGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BBDeviceController.AmountInputType convert(AmountInputType amountInputType) {
        Intrinsics.checkNotNullParameter(amountInputType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[amountInputType.ordinal()]) {
            case 1:
                return null;
            case 2:
                return BBDeviceController.AmountInputType.AMOUNT_ONLY;
            case 3:
                return BBDeviceController.AmountInputType.AMOUNT_AND_CASHBACK;
            case 4:
                return BBDeviceController.AmountInputType.CASHBACK_ONLY;
            case 5:
                return BBDeviceController.AmountInputType.TIPS_ONLY;
            case 6:
                return BBDeviceController.AmountInputType.AMOUNT_AND_TIPS;
            case 7:
                return BBDeviceController.AmountInputType.AMOUNT_AND_TIPS_IN_PERCENTAGE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
