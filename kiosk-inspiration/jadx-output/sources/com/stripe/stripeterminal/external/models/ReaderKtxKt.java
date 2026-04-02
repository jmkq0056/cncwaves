package com.stripe.stripeterminal.external.models;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.proto.model.common.ApplicationModel;
import com.stripe.proto.model.common.BBPosHardware;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.model.common.SimulatedHardware;
import com.stripe.proto.model.common.UnknownHardware;
import com.stripe.proto.model.common.VerifoneHardware;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderKtx.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a%\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\u0010\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"FIRMWARE_CONFIG_KEY", "", "createDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "Lcom/stripe/stripeterminal/external/models/Reader;", "isDebug", "", "isDevKit", "(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/stripe/proto/model/common/DeviceInfo;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ReaderKtxKt {
    private static final String FIRMWARE_CONFIG_KEY = "firmware-config-key";

    /* JADX INFO: compiled from: ReaderKtx.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.WISEPOS_E.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.WISEPOS_E_DEVKIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceType.ETNA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceType.STRIPE_S700.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DeviceType.STRIPE_S700_DEVKIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DeviceType.STRIPE_S710.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DeviceType.STRIPE_S710_DEVKIT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DeviceType.CHIPPER_1X.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DeviceType.CHIPPER_2X.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[DeviceType.STRIPE_M2.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[DeviceType.WISECUBE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[DeviceType.WISEPAD_3.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[DeviceType.WISEPAD_3S.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[DeviceType.VERIFONE_P400.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[DeviceType.TAP_TO_PAY_DEVICE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[DeviceType.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final DeviceInfo createDeviceInfo(Reader reader, Boolean bool, Boolean bool2) {
        BBPosHardware bBPosHardware;
        HardwareModel hardwareModel;
        DeviceInfo deviceInfo;
        HardwareModel hardwareModel2;
        Address address;
        String country;
        Intrinsics.checkNotNullParameter(reader, "<this>");
        DeviceInfo.DeviceClass deviceClass = DeviceInfo.DeviceClass.READER;
        String serialNumber = reader.getSerialNumber();
        String str = serialNumber == null ? "" : serialNumber;
        String hardwareVersion = reader.getHardwareVersion();
        String str2 = hardwareVersion == null ? "" : hardwareVersion;
        Location location = reader.getLocation();
        int i = 2;
        com.stripe.proto.model.common.Location location2 = (location == null || (address = location.getAddress()) == null || (country = address.getCountry()) == null) ? null : new com.stripe.proto.model.common.Location(country, null, i, null == true ? 1 : 0);
        ApplicationModel applicationModel = new ApplicationModel(null, reader.getSoftwareVersion(), null, 5, null);
        String ipAddress = reader.getIpAddress();
        DeviceInfo deviceInfo2 = new DeviceInfo(deviceClass, str, null, applicationModel, ipAddress == null ? "" : ipAddress, str2, null, null, null, null, null, null, null, null, location2, null, 49092, null);
        switch (WhenMappings.$EnumSwitchMapping$0[reader.getDeviceType().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                String pinKeysetId = reader.getPinKeysetId();
                String str3 = pinKeysetId == null ? "" : pinKeysetId;
                String configVersion = reader.getConfigVersion();
                String str4 = configVersion == null ? "" : configVersion;
                String firmwareVersion = reader.getFirmwareVersion();
                String str5 = firmwareVersion == null ? "" : firmwareVersion;
                String settingsVersion = reader.getSettingsVersion();
                String str6 = settingsVersion == null ? "" : settingsVersion;
                ApplicationModel applicationModel2 = deviceInfo2.app_model;
                DeviceInfo deviceInfoCopy$default = DeviceInfo.copy$default(deviceInfo2, null, null, null, applicationModel2 != null ? ApplicationModel.copy$default(applicationModel2, FIRMWARE_CONFIG_KEY, null, null, 6, null) : null, null, null, null, null, null, str5, str4, str3, null, str6, null, null, 53751, null);
                switch (WhenMappings.$EnumSwitchMapping$0[reader.getDeviceType().ordinal()]) {
                    case 1:
                        if (Intrinsics.areEqual((Object) bool2, (Object) true)) {
                            bBPosHardware = BBPosHardware.WISEPOS_E_DEVKIT;
                        } else if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                            bBPosHardware = BBPosHardware.WISEPOS_E_DEBUG;
                        } else {
                            bBPosHardware = BBPosHardware.WISEPOS_E;
                        }
                        break;
                    case 2:
                        bBPosHardware = BBPosHardware.WISEPOS_E_DEVKIT;
                        break;
                    case 3:
                        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                            bBPosHardware = BBPosHardware.SHOPIFY_ETNA_DEBUG;
                        } else {
                            bBPosHardware = BBPosHardware.SHOPIFY_ETNA;
                        }
                        break;
                    case 4:
                        if (Intrinsics.areEqual((Object) bool2, (Object) true)) {
                            bBPosHardware = BBPosHardware.STRIPE_S700_DEVKIT;
                        } else if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                            bBPosHardware = BBPosHardware.STRIPE_S700_DEBUG;
                        } else {
                            bBPosHardware = BBPosHardware.STRIPE_S700;
                        }
                        break;
                    case 5:
                        bBPosHardware = BBPosHardware.STRIPE_S700_DEVKIT;
                        break;
                    case 6:
                        if (Intrinsics.areEqual((Object) bool2, (Object) true)) {
                            bBPosHardware = BBPosHardware.STRIPE_S710_DEVKIT;
                        } else if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                            bBPosHardware = BBPosHardware.STRIPE_S710_DEBUG;
                        } else {
                            bBPosHardware = BBPosHardware.STRIPE_S710;
                        }
                        break;
                    case 7:
                        bBPosHardware = BBPosHardware.STRIPE_S710_DEVKIT;
                        break;
                    default:
                        bBPosHardware = reader.getDeviceType().getHardwareModel().bbpos_hardware;
                        break;
                }
                BBPosHardware bBPosHardware2 = bBPosHardware;
                if (reader.getIsSimulated()) {
                    Object[] objArr = null == true ? 1 : 0;
                    hardwareModel = new HardwareModel(null == true ? 1 : 0, null, objArr, null, new SimulatedHardware(null, bBPosHardware2, null, null, 13, null), null, null, null, null, 495, null);
                } else {
                    hardwareModel = new HardwareModel(null, null, null, bBPosHardware2, null, null, null, null, null, 503, null);
                }
                deviceInfo = deviceInfoCopy$default;
                return DeviceInfo.copy$default(deviceInfo, null, null, hardwareModel, null, null, null, null, null, null, null, null, null, null, null, null, null, 65531, null);
            case 14:
                if (reader.getIsSimulated()) {
                    Object[] objArr2 = null == true ? 1 : 0;
                    hardwareModel = new HardwareModel(null, null, null == true ? 1 : 0, null == true ? 1 : 0, new SimulatedHardware(VerifoneHardware.P400, null, null, null, 14, null), null, objArr2, null, null, 495, null);
                    deviceInfo = deviceInfo2;
                    return DeviceInfo.copy$default(deviceInfo, null, null, hardwareModel, null, null, null, null, null, null, null, null, null, null, null, null, null, 65531, null);
                }
                hardwareModel2 = new HardwareModel(null, VerifoneHardware.P400, null, null, null, null, null, null, null, 509, null);
                deviceInfo = deviceInfo2;
                hardwareModel = hardwareModel2;
                return DeviceInfo.copy$default(deviceInfo, null, null, hardwareModel, null, null, null, null, null, null, null, null, null, null, null, null, null, 65531, null);
            case 15:
                deviceInfo = deviceInfo2;
                hardwareModel = new HardwareModel(null, null, null, null, null, ReaderKtx_androidKt.cotsHardware(), null, null, null, 479, null);
                return DeviceInfo.copy$default(deviceInfo, null, null, hardwareModel, null, null, null, null, null, null, null, null, null, null, null, null, null, 65531, null);
            case 16:
                hardwareModel2 = new HardwareModel(new UnknownHardware("Unknown hardware", null == true ? 1 : 0, i, null == true ? 1 : 0), null, null, null, null, null, null, null, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
                deviceInfo = deviceInfo2;
                hardwareModel = hardwareModel2;
                return DeviceInfo.copy$default(deviceInfo, null, null, hardwareModel, null, null, null, null, null, null, null, null, null, null, null, null, null, 65531, null);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
