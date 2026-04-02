package com.stripe.stripeterminal.internal.common.deviceinfo;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.device.BuildValues;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.device.MainlandDeviceType;
import com.stripe.device.PlatformDeviceInfo;
import com.stripe.proto.model.common.BBPosHardware;
import com.stripe.proto.model.common.COTSHardware;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.model.common.MobileOS;
import com.stripe.proto.model.common.MorphHardware;
import com.stripe.proto.model.common.SimulatedHardware;
import com.stripe.proto.model.common.SunmiHardware;
import com.stripe.proto.model.common.UnknownHardware;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import dagger.Reusable;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: ReaderPlatformDeviceInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Reusable
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0017\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000bH\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\b\u0010\u0016\u001a\u00020\u000bH\u0016J\b\u0010\u0017\u001a\u00020\u000bH\u0016J\b\u0010\u0018\u001a\u00020\u000bH\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\f\u0010\u001b\u001a\u00020\u000f*\u00020\u001cH\u0002J\f\u0010\u001d\u001a\u00020\u000f*\u00020\u001cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;", "Lcom/stripe/device/PlatformDeviceInfo;", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/device/BuildValues;)V", "createCotsHardware", "Lcom/stripe/proto/model/common/COTSHardware;", "getConfigVersion", "", "getEmvKeyProfileId", "getFirmwareVersion", "getHardwareModel", "Lcom/stripe/proto/model/common/HardwareModel;", "getHardwareVersion", "getMacKeyProfileId", "getMainlandDeviceType", "Lcom/stripe/device/MainlandDeviceType;", "getPinKeyProfileId", "getPinKeysetId", "getSerialNumber", "getSettingsVersion", "getSoftwareVersion", "isSimulated", "", "getRealHardwareModel", "Lcom/stripe/stripeterminal/external/models/Reader;", "getSimulatedHardwareModel", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderPlatformDeviceInfo implements PlatformDeviceInfo, EmbeddedSoftwareVersionProvider {
    private static final Companion Companion = new Companion(null);
    private static final String NO_CONNECTED_READER = "No connected reader";
    private static final String UNKNOWN = "unknown";
    private static final String UNKNOWN_READER_CONNECTED = "Unknown reader connected";
    private final BuildValues buildValues;
    private final TerminalStatusManager statusManager;

    /* JADX INFO: compiled from: ReaderPlatformDeviceInfo.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.TAP_TO_PAY_DEVICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceType.CHIPPER_1X.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceType.CHIPPER_2X.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DeviceType.STRIPE_M2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DeviceType.VERIFONE_P400.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DeviceType.WISECUBE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DeviceType.WISEPAD_3.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DeviceType.WISEPAD_3S.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[DeviceType.WISEPOS_E.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[DeviceType.WISEPOS_E_DEVKIT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[DeviceType.ETNA.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[DeviceType.STRIPE_S700.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[DeviceType.STRIPE_S700_DEVKIT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[DeviceType.STRIPE_S710.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[DeviceType.STRIPE_S710_DEVKIT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Inject
    public ReaderPlatformDeviceInfo(TerminalStatusManager statusManager, BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        this.statusManager = statusManager;
        this.buildValues = buildValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.device.PlatformDeviceInfo
    public HardwareModel getHardwareModel() {
        HardwareModel realHardwareModel;
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader != null) {
            if (connectedReader.getIsSimulated()) {
                realHardwareModel = getSimulatedHardwareModel(connectedReader);
            } else {
                realHardwareModel = getRealHardwareModel(connectedReader);
            }
            if (realHardwareModel != null) {
                return realHardwareModel;
            }
        }
        ByteString byteString = null;
        BBPosHardware bBPosHardware = null;
        SimulatedHardware simulatedHardware = null;
        COTSHardware cOTSHardware = null;
        SunmiHardware sunmiHardware = null;
        MorphHardware morphHardware = null;
        ByteString byteString2 = null;
        return new HardwareModel(new UnknownHardware(NO_CONNECTED_READER, byteString, 2, 0 == true ? 1 : 0), null, 0 == true ? 1 : 0, bBPosHardware, simulatedHardware, cOTSHardware, sunmiHardware, morphHardware, byteString2, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final HardwareModel getRealHardwareModel(Reader reader) {
        DeviceType deviceType = reader.getDeviceType();
        switch (WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()]) {
            case 1:
                return new HardwareModel(null, null, null, null, null, createCotsHardware(), null, null, null, 479, null);
            case 2:
                ByteString byteString = null;
                BBPosHardware bBPosHardware = null;
                SimulatedHardware simulatedHardware = null;
                COTSHardware cOTSHardware = null;
                SunmiHardware sunmiHardware = null;
                MorphHardware morphHardware = null;
                ByteString byteString2 = null;
                return new HardwareModel(new UnknownHardware(UNKNOWN_READER_CONNECTED, byteString, 2, 0 == true ? 1 : 0), null, 0 == true ? 1 : 0, bBPosHardware, simulatedHardware, cOTSHardware, sunmiHardware, morphHardware, byteString2, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
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
            case 14:
            case 15:
            case 16:
                return deviceType.getHardwareModel();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final HardwareModel getSimulatedHardwareModel(Reader reader) {
        SimulatedHardware simulatedHardware;
        switch (WhenMappings.$EnumSwitchMapping$0[reader.getDeviceType().ordinal()]) {
            case 1:
                simulatedHardware = new SimulatedHardware(null, null, createCotsHardware(), null, 11, null);
                break;
            case 2:
                simulatedHardware = new SimulatedHardware(null, BBPosHardware.BBPOS_MODEL_NOT_SET, null, null, 13, null);
                break;
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
            case 14:
            case 15:
            case 16:
                simulatedHardware = reader.getDeviceType().getSimulatedHardware();
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return new HardwareModel(null, null, null, null, simulatedHardware, null, null, null, null, 495, null);
    }

    private final COTSHardware createCotsHardware() {
        return new COTSHardware(null, this.buildValues.getModel(), this.buildValues.getManufacturer().getValue(), MobileOS.ANDROID, null, 17, null);
    }

    @Override // com.stripe.device.PlatformDeviceInfo
    public String getHardwareVersion() {
        String hardwareVersion;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (hardwareVersion = connectedReader.getHardwareVersion()) == null) ? "unknown" : hardwareVersion;
    }

    @Override // com.stripe.device.PlatformDeviceInfo
    public MainlandDeviceType getMainlandDeviceType() {
        String deviceName;
        DeviceType deviceType;
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader == null || (deviceType = connectedReader.getDeviceType()) == null || (deviceName = deviceType.getDeviceName()) == null) {
            deviceName = "unknown";
        }
        return new MainlandDeviceType(deviceName);
    }

    @Override // com.stripe.device.PlatformDeviceInfo
    public String getSerialNumber() {
        String serialNumber;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (serialNumber = connectedReader.getSerialNumber()) == null) ? "unknown" : serialNumber;
    }

    @Override // com.stripe.device.PlatformDeviceInfo
    public String getSoftwareVersion() {
        String softwareVersion;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (softwareVersion = connectedReader.getSoftwareVersion()) == null) ? "unknown" : softwareVersion;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getFirmwareVersion() {
        String firmwareVersion;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (firmwareVersion = connectedReader.getFirmwareVersion()) == null) ? "unknown" : firmwareVersion;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getConfigVersion() {
        String configVersion;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (configVersion = connectedReader.getConfigVersion()) == null) ? "unknown" : configVersion;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getPinKeyProfileId() {
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader != null) {
            return connectedReader.getPinKeyProfileId();
        }
        return null;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getMacKeyProfileId() {
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader != null) {
            return connectedReader.getMacKeyProfileId();
        }
        return null;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getEmvKeyProfileId() {
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader != null) {
            return connectedReader.getEmvKeyProfileId();
        }
        return null;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getPinKeysetId() {
        String pinKeysetId;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (pinKeysetId = connectedReader.getPinKeysetId()) == null) ? "unknown" : pinKeysetId;
    }

    @Override // com.stripe.device.PlatformDeviceInfo
    public boolean isSimulated() {
        Reader connectedReader = this.statusManager.getConnectedReader();
        if (connectedReader != null) {
            return connectedReader.getIsSimulated();
        }
        return false;
    }

    @Override // com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider
    public String getSettingsVersion() {
        String settingsVersion;
        Reader connectedReader = this.statusManager.getConnectedReader();
        return (connectedReader == null || (settingsVersion = connectedReader.getSettingsVersion()) == null) ? "unknown" : settingsVersion;
    }

    /* JADX INFO: compiled from: ReaderPlatformDeviceInfo.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$Companion;", "", "()V", "NO_CONNECTED_READER", "", "UNKNOWN", "UNKNOWN_READER_CONNECTED", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
