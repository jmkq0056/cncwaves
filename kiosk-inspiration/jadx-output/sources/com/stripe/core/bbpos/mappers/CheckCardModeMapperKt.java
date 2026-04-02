package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.sdk.CheckCardMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CheckCardModeMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"convert", "Lcom/bbpos/bbdevice/BBDeviceController$CheckCardMode;", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CheckCardModeMapperKt {

    /* JADX INFO: compiled from: CheckCardModeMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CheckCardMode.values().length];
            try {
                iArr[CheckCardMode.CHECK_CARD_MODE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckCardMode.SWIPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckCardMode.INSERT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CheckCardMode.TAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CheckCardMode.SWIPE_OR_INSERT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CheckCardMode.SWIPE_OR_TAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CheckCardMode.SWIPE_OR_INSERT_OR_TAP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CheckCardMode.INSERT_OR_TAP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[CheckCardMode.MANUAL_PAN_ENTRY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[CheckCardMode.QR_CODE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BBDeviceController.CheckCardMode convert(CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[checkCardMode.ordinal()]) {
            case 1:
                return null;
            case 2:
                return BBDeviceController.CheckCardMode.SWIPE;
            case 3:
                return BBDeviceController.CheckCardMode.INSERT;
            case 4:
                return BBDeviceController.CheckCardMode.TAP;
            case 5:
                return BBDeviceController.CheckCardMode.SWIPE_OR_INSERT;
            case 6:
                return BBDeviceController.CheckCardMode.SWIPE_OR_TAP;
            case 7:
                return BBDeviceController.CheckCardMode.SWIPE_OR_INSERT_OR_TAP;
            case 8:
                return BBDeviceController.CheckCardMode.INSERT_OR_TAP;
            case 9:
                return BBDeviceController.CheckCardMode.MANUAL_PAN_ENTRY;
            case 10:
                return BBDeviceController.CheckCardMode.QR_CODE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
