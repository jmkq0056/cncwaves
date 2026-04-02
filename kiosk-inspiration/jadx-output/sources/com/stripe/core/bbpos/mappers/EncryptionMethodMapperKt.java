package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.sdk.EncryptionMethod;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EncryptionMethodMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"convert", "Lcom/bbpos/bbdevice/BBDeviceController$EncryptionMethod;", "Lcom/stripe/bbpos/sdk/EncryptionMethod;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class EncryptionMethodMapperKt {

    /* JADX INFO: compiled from: EncryptionMethodMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EncryptionMethod.values().length];
            try {
                iArr[EncryptionMethod.ENCRYPTION_METHOD_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EncryptionMethod.AES_CMAC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EncryptionMethod.MAC_ANSI_X9_19.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EncryptionMethod.TDES_ECB.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EncryptionMethod.TDES_CBC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EncryptionMethod.AES_ECB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EncryptionMethod.AES_CBC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EncryptionMethod.MAC_ANSI_X9_9.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EncryptionMethod.MAC_METHOD_1.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[EncryptionMethod.MAC_METHOD_2.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BBDeviceController.EncryptionMethod convert(EncryptionMethod encryptionMethod) {
        Intrinsics.checkNotNullParameter(encryptionMethod, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[encryptionMethod.ordinal()]) {
            case 1:
                return null;
            case 2:
                return BBDeviceController.EncryptionMethod.AES_CMAC;
            case 3:
                return BBDeviceController.EncryptionMethod.MAC_ANSI_X9_19;
            case 4:
                return BBDeviceController.EncryptionMethod.TDES_ECB;
            case 5:
                return BBDeviceController.EncryptionMethod.TDES_CBC;
            case 6:
                return BBDeviceController.EncryptionMethod.AES_ECB;
            case 7:
                return BBDeviceController.EncryptionMethod.AES_CBC;
            case 8:
                return BBDeviceController.EncryptionMethod.MAC_ANSI_X9_9;
            case 9:
                return BBDeviceController.EncryptionMethod.MAC_METHOD_1;
            case 10:
                return BBDeviceController.EncryptionMethod.MAC_METHOD_2;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
