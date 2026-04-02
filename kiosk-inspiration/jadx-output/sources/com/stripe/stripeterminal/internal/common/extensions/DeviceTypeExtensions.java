package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.stripeterminal.external.models.DeviceType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceTypeExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0007\u001a\u00020\u0004*\u00020\u0005J\n\u0010\b\u001a\u00020\u0004*\u00020\u0005J\n\u0010\t\u001a\u00020\u0004*\u00020\u0005J\n\u0010\n\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u000b\u001a\u00020\u0004*\u00020\u0005¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;", "", "()V", "isMposDevice", "", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "isShopifyDevice", "isSmartDevice", "supportsCollectData", "supportsEnableCustomerCancellation", "supportsOnReaderTipping", "supportsSurcharging", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTypeExtensions {
    public static final DeviceTypeExtensions INSTANCE = new DeviceTypeExtensions();

    /* JADX INFO: compiled from: DeviceTypeExtensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.CHIPPER_1X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.CHIPPER_2X.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceType.STRIPE_M2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceType.WISEPAD_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DeviceType.WISEPAD_3S.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DeviceType.WISECUBE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DeviceType.ETNA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DeviceType.TAP_TO_PAY_DEVICE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DeviceType.STRIPE_S700.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[DeviceType.STRIPE_S700_DEVKIT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[DeviceType.STRIPE_S710.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[DeviceType.STRIPE_S710_DEVKIT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[DeviceType.VERIFONE_P400.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[DeviceType.WISEPOS_E.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[DeviceType.WISEPOS_E_DEVKIT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[DeviceType.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private DeviceTypeExtensions() {
    }

    public final boolean isMposDevice(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return false;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean isSmartDevice(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
            case 16:
                return false;
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean isShopifyDevice(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 6:
            case 7:
                return true;
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return false;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean supportsOnReaderTipping(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 13:
            case 16:
                return false;
            case 4:
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
                return true;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean supportsEnableCustomerCancellation(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
            case 13:
            case 16:
                return false;
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
                return true;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean supportsCollectData(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
                return true;
            case 4:
            case 5:
            case 6:
            case 8:
            case 13:
            case 16:
                return false;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean supportsSurcharging(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 13:
            case 16:
                return false;
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
                return true;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
