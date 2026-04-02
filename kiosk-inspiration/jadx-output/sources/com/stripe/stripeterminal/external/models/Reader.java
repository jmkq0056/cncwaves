package com.stripe.stripeterminal.external.models;

import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.config.BBPOSConfig;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.stripeterminal.external.json.ReaderSerializer;
import com.stripe.stripeterminal.external.models.ExpandableLocation;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.sun.jna.platform.win32.WinError;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.datetime.Clock;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.internal.EnumsKt;
import okio.ByteString;

/* JADX INFO: compiled from: Reader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\t\n\u0002\bV\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 ¯\u00012\u00060\u0001j\u0002`\u0002:\u0004¯\u0001°\u0001BÇ\u0003\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u0017\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\f\u0012\u0016\b\u0002\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010.\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u00100\u001a\u00020\f\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u00104J/\u0010¤\u0001\u001a\u00030¥\u00012\t\u0010¦\u0001\u001a\u0004\u0018\u00010\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010N¢\u0006\u0003\u0010§\u0001J*\u0010;\u001a\u00030¥\u00012\t\u0010¨\u0001\u001a\u0004\u0018\u00010\n2\t\u0010©\u0001\u001a\u0004\u0018\u00010\n2\t\u0010ª\u0001\u001a\u0004\u0018\u00010\nH\u0007J\b\u0010«\u0001\u001a\u00030¬\u0001J\t\u0010\u00ad\u0001\u001a\u00020\nH\u0016J\u0011\u0010®\u0001\u001a\u00030¥\u00012\u0007\u0010®\u0001\u001a\u000206R&\u00105\u001a\u0004\u0018\u0001068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R2\u0010@\u001a\u0004\u0018\u00010\u001e2\b\u0010?\u001a\u0004\u0018\u00010\u001e8\u0006@GX\u0087\u000e¢\u0006\u0016\n\u0002\u0010F\u0012\u0004\bA\u00108\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER$\u0010\u0015\u001a\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u00178\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bG\u00108\u001a\u0004\bH\u0010IR\u001e\u0010J\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bK\u00108\u001a\u0004\bL\u0010>R(\u0010M\u001a\u0004\u0018\u00010N8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010T\u0012\u0004\bO\u00108\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR \u00102\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010F\u0012\u0004\bU\u00108\u001a\u0004\bV\u0010CR*\u0010W\u001a\u0004\u0018\u00010\n2\b\u0010?\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\bX\u00108\u001a\u0004\bY\u0010>R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010>R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u0010\\R\u001e\u0010&\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b]\u00108\u001a\u0004\b^\u0010>R\u001e\u0010*\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b_\u00108\u001a\u0004\b`\u0010>R\u001e\u00101\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u00108\u001a\u0004\bb\u0010>R*\u0010c\u001a\u0004\u0018\u00010\n2\b\u0010?\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\bd\u00108\u001a\u0004\be\u0010>R\u001e\u0010f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bg\u00108\u001a\u0004\bh\u0010>R\"\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010?\u001a\u0004\u0018\u00010\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bi\u0010>R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\bj\u0010>R \u0010/\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010m\u0012\u0004\bk\u00108\u001a\u0004\b/\u0010lR\u001a\u0010,\u001a\u0004\u0018\u00010\f8\u0002X\u0083\u0004¢\u0006\n\n\u0002\u0010m\u0012\u0004\bn\u00108R\u0016\u00100\u001a\u00020\f8\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\bo\u00108R\u001c\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bp\u00108\u001a\u0004\b\u000b\u0010qR \u00103\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010m\u0012\u0004\br\u00108\u001a\u0004\b3\u0010lR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\bs\u0010>R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010m\u001a\u0004\bt\u0010lR*\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010?\u001a\u0004\u0018\u00010\u001c8\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\bu\u00108\u001a\u0004\bv\u0010wR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bx\u00108\u001a\u0004\by\u0010zR$\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b{\u00108\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR \u0010$\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0080\u0001\u00108\u001a\u0005\b\u0081\u0001\u0010>R \u0010(\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0082\u0001\u00108\u001a\u0005\b\u0083\u0001\u0010>R!\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b\u0084\u0001\u00108\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R \u0010#\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0087\u0001\u00108\u001a\u0005\b\u0088\u0001\u0010>R-\u0010\u0089\u0001\u001a\u0004\u0018\u00010\n2\b\u0010?\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e¢\u0006\u0010\n\u0000\u0012\u0005\b\u008a\u0001\u00108\u001a\u0005\b\u008b\u0001\u0010>R-\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010.8\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b\u008c\u0001\u00108\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R \u0010\u000f\u001a\u0004\u0018\u00010\n8\u0000X\u0081\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u008f\u0001\u00108\u001a\u0005\b\u0090\u0001\u0010>R \u0010+\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0091\u0001\u00108\u001a\u0005\b\u0092\u0001\u0010>R!\u0010\u0093\u0001\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0094\u0001\u00108\u001a\u0005\b\u0095\u0001\u0010>R*\u0010 \u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0000\u0012\u0005\b\u0096\u0001\u00108\u001a\u0005\b\u0097\u0001\u0010>\"\u0006\b\u0098\u0001\u0010\u0099\u0001R)\u0010\u009a\u0001\u001a\u00020\n2\u0006\u0010?\u001a\u00020\n8\u0006@BX\u0087\u000e¢\u0006\u0010\n\u0000\u0012\u0005\b\u009b\u0001\u00108\u001a\u0005\b\u009c\u0001\u0010>R \u0010%\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u009d\u0001\u00108\u001a\u0005\b\u009e\u0001\u0010>R \u0010)\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u009f\u0001\u00108\u001a\u0005\b \u0001\u0010>R'\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a8\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b¡\u0001\u00108\u001a\u0006\b¢\u0001\u0010£\u0001¨\u0006±\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Reader;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "locationRaw", "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;", "locationStatus", "Lcom/stripe/stripeterminal/external/models/LocationStatus;", OfflineStorageConstantsKt.ID, "", "isSimulated", "", "networkStatus", "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;", "rawSerialNumber", "label", "deviceSwVersion", "baseUrl", "ipAddress", "livemode", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;", "usbDevice", "Landroid/hardware/usb/UsbDevice;", "Lcom/stripe/stripeterminal/external/models/UsbDevice;", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/stripeterminal/external/models/Location;", "readerInfoBatteryLevel", "", "readerInfoConfigVersion", "settingsVersion", "readerInfoFirmwareVersion", "readerInfoHardwareVersion", "pinKeyProfileId", "macKeyProfileId", "trackKeyProfileId", "emvKeyProfileId", "readerInfoPinKeysetId", "macKeysetId", "trackKeysetId", "emvKeysetId", "serial", "isDebug", "rawReaderData", "", "isCharging", "isDevKit", "firmwareId", "coinCellBatteryVoltage", "isUsbConnected", "(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;)V", "availableUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "getAvailableUpdate$annotations", "()V", "getAvailableUpdate", "()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "setAvailableUpdate", "(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V", "getBaseUrl", "()Ljava/lang/String;", "<set-?>", "batteryLevel", "getBatteryLevel$annotations", "getBatteryLevel", "()Ljava/lang/Float;", "setBatteryLevel", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "getBluetoothDevice$annotations", "getBluetoothDevice", "()Landroid/bluetooth/BluetoothDevice;", "bootloaderVersion", "getBootloaderVersion$annotations", "getBootloaderVersion", "canonicalReaderVersion", "", "getCanonicalReaderVersion$annotations", "getCanonicalReaderVersion", "()Ljava/lang/Long;", "setCanonicalReaderVersion", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getCoinCellBatteryVoltage$annotations", "getCoinCellBatteryVoltage", "configVersion", "getConfigVersion$annotations", "getConfigVersion", "getDeviceSwVersion$public_release", "getDeviceType", "()Lcom/stripe/stripeterminal/external/models/DeviceType;", "getEmvKeyProfileId$annotations", "getEmvKeyProfileId", "getEmvKeysetId$annotations", "getEmvKeysetId", "getFirmwareId$annotations", "getFirmwareId", "firmwareVersion", "getFirmwareVersion$annotations", "getFirmwareVersion", "hardwareVersion", "getHardwareVersion$annotations", "getHardwareVersion", "getId", "getIpAddress", "isCharging$annotations", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "isDebug$annotations", "isDevKit$annotations", "isSimulated$annotations", "()Z", "isUsbConnected$annotations", "getLabel", "getLivemode", "getLocation$annotations", "getLocation", "()Lcom/stripe/stripeterminal/external/models/Location;", "getLocationRaw$public_release$annotations", "getLocationRaw$public_release", "()Lcom/stripe/stripeterminal/external/models/ExpandableLocation;", "getLocationStatus$annotations", "getLocationStatus", "()Lcom/stripe/stripeterminal/external/models/LocationStatus;", "setLocationStatus", "(Lcom/stripe/stripeterminal/external/models/LocationStatus;)V", "getMacKeyProfileId$annotations", "getMacKeyProfileId", "getMacKeysetId$annotations", "getMacKeysetId", "getNetworkStatus$annotations", "getNetworkStatus", "()Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;", "getPinKeyProfileId$annotations", "getPinKeyProfileId", "pinKeysetId", "getPinKeysetId$annotations", "getPinKeysetId", "getRawReaderData$annotations", "getRawReaderData", "()Ljava/util/Map;", "getRawSerialNumber$public_release$annotations", "getRawSerialNumber$public_release", "getSerial$annotations", "getSerial", "serialNumber", "getSerialNumber$annotations", "getSerialNumber", "getSettingsVersion$annotations", "getSettingsVersion", "setSettingsVersion", "(Ljava/lang/String;)V", "softwareVersion", "getSoftwareVersion$annotations", "getSoftwareVersion", "getTrackKeyProfileId$annotations", "getTrackKeyProfileId", "getTrackKeysetId$annotations", "getTrackKeysetId", "getUsbDevice$annotations", "getUsbDevice", "()Landroid/hardware/usb/UsbDevice;", RemoteConfigComponent.ACTIVATE_FILE_NAME, "", "readerId", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Long;)V", "targetKey", "targetConfig", "targetFirmware", "toDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "toString", "update", "Companion", "NetworkStatus", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = ReaderSerializer.class)
public final class Reader implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private ReaderSoftwareUpdate availableUpdate;
    private final String baseUrl;
    private Float batteryLevel;
    private final BluetoothDevice bluetoothDevice;
    private final String bootloaderVersion;
    private Long canonicalReaderVersion;
    private final Float coinCellBatteryVoltage;
    private String configVersion;
    private final String deviceSwVersion;
    private final DeviceType deviceType;
    private final String emvKeyProfileId;
    private final String emvKeysetId;
    private final String firmwareId;
    private String firmwareVersion;
    private final String hardwareVersion;
    private /* synthetic */ String id;
    private final String ipAddress;
    private final Boolean isCharging;
    private final Boolean isDebug;
    private final boolean isDevKit;
    private final boolean isSimulated;
    private final Boolean isUsbConnected;
    private final String label;
    private final Boolean livemode;
    private Location location;
    private final ExpandableLocation locationRaw;
    private LocationStatus locationStatus;
    private final String macKeyProfileId;
    private final String macKeysetId;
    private final NetworkStatus networkStatus;
    private final String pinKeyProfileId;
    private String pinKeysetId;
    private final Map<String, String> rawReaderData;
    private final String rawSerialNumber;
    private final String serial;
    private final String serialNumber;
    private String settingsVersion;
    private String softwareVersion;
    private final String trackKeyProfileId;
    private final String trackKeysetId;
    private final UsbDevice usbDevice;

    public Reader() {
        this(null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -1, 15, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType) {
        this(deviceType, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -2, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation) {
        this(deviceType, expandableLocation, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -4, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus) {
        this(deviceType, expandableLocation, locationStatus, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -8, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str) {
        this(deviceType, expandableLocation, locationStatus, str, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -16, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z) {
        this(deviceType, expandableLocation, locationStatus, str, z, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -32, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -64, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -128, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, InputDeviceCompat.SOURCE_ANY, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -512, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -1024, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -2048, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -4096, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -8192, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -16384, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -32768, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, SupportMenu.CATEGORY_MASK, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -131072, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -262144, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -524288, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -1048576, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -2097152, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -4194304, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, null, null, null, null, null, null, null, null, null, false, null, null, null, -8388608, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, null, null, null, null, null, null, null, null, false, null, null, null, -16777216, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, null, null, null, null, null, null, null, false, null, null, null, -33554432, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, null, null, null, null, null, null, false, null, null, null, -67108864, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, null, null, null, null, null, false, null, null, null, -134217728, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, null, null, null, null, false, null, null, null, -268435456, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, null, null, null, false, null, null, null, -536870912, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, bool2, null, null, false, null, null, null, -1073741824, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map<String, String> map) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, bool2, map, null, false, null, null, null, Integer.MIN_VALUE, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map<String, String> map, Boolean bool3) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, bool2, map, bool3, false, null, null, null, 0, 15, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map<String, String> map, Boolean bool3, boolean z2) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, bool2, map, bool3, z2, null, null, null, 0, 14, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map<String, String> map, Boolean bool3, boolean z2, String str20) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, bool2, map, bool3, z2, str20, null, null, 0, 12, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map<String, String> map, Boolean bool3, boolean z2, String str20, Float f2) {
        this(deviceType, expandableLocation, locationStatus, str, z, networkStatus, str2, str3, str4, str5, str6, bool, bluetoothDevice, usbDevice, location, f, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, bool2, map, bool3, z2, str20, f2, null, 0, 8, null);
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
    }

    @Transient
    public static /* synthetic */ void getAvailableUpdate$annotations() {
    }

    @Transient
    public static /* synthetic */ void getBatteryLevel$annotations() {
    }

    @Transient
    public static /* synthetic */ void getBluetoothDevice$annotations() {
    }

    @Transient
    public static /* synthetic */ void getBootloaderVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getCanonicalReaderVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getCoinCellBatteryVoltage$annotations() {
    }

    @Transient
    public static /* synthetic */ void getConfigVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getEmvKeyProfileId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getEmvKeysetId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getFirmwareId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getFirmwareVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getHardwareVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getLocation$annotations() {
    }

    @SerialName(FirebaseAnalytics.Param.LOCATION)
    public static /* synthetic */ void getLocationRaw$public_release$annotations() {
    }

    @Transient
    public static /* synthetic */ void getLocationStatus$annotations() {
    }

    @Transient
    public static /* synthetic */ void getMacKeyProfileId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getMacKeysetId$annotations() {
    }

    @SerialName(NotificationCompat.CATEGORY_STATUS)
    public static /* synthetic */ void getNetworkStatus$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPinKeyProfileId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPinKeysetId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getRawReaderData$annotations() {
    }

    @SerialName("serialNumber")
    public static /* synthetic */ void getRawSerialNumber$public_release$annotations() {
    }

    @Transient
    public static /* synthetic */ void getSerial$annotations() {
    }

    @Transient
    public static /* synthetic */ void getSerialNumber$annotations() {
    }

    @Transient
    public static /* synthetic */ void getSettingsVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getSoftwareVersion$annotations() {
    }

    @Transient
    public static /* synthetic */ void getTrackKeyProfileId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getTrackKeysetId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getUsbDevice$annotations() {
    }

    @Transient
    public static /* synthetic */ void isCharging$annotations() {
    }

    @Transient
    private static /* synthetic */ void isDebug$annotations() {
    }

    @Transient
    private static /* synthetic */ void isDevKit$annotations() {
    }

    @Transient
    public static /* synthetic */ void isSimulated$annotations() {
    }

    @Transient
    public static /* synthetic */ void isUsbConnected$annotations() {
    }

    public Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map<String, String> map, Boolean bool3, boolean z2, String str20, Float f2, Boolean bool4) {
        Location location2;
        String str21;
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
        this.deviceType = deviceType;
        this.locationRaw = expandableLocation;
        this.locationStatus = locationStatus;
        this.isSimulated = z;
        this.networkStatus = networkStatus;
        this.rawSerialNumber = str2;
        this.label = str3;
        this.deviceSwVersion = str4;
        this.baseUrl = str5;
        this.ipAddress = str6;
        this.livemode = bool;
        this.bluetoothDevice = bluetoothDevice;
        this.usbDevice = usbDevice;
        this.settingsVersion = str8;
        this.pinKeyProfileId = str11;
        this.macKeyProfileId = str12;
        this.trackKeyProfileId = str13;
        this.emvKeyProfileId = str14;
        this.macKeysetId = str16;
        this.trackKeysetId = str17;
        this.emvKeysetId = str18;
        this.serial = str19;
        this.isDebug = bool2;
        this.rawReaderData = map;
        this.isCharging = bool3;
        this.isDevKit = z2;
        this.firmwareId = str20;
        this.coinCellBatteryVoltage = f2;
        this.isUsbConnected = bool4;
        this.id = str;
        String serialNumber = null;
        if (location == null) {
            location2 = expandableLocation instanceof ExpandableLocation.Expanded ? ((ExpandableLocation.Expanded) expandableLocation).getLocation() : null;
        } else {
            location2 = location;
        }
        this.location = location2;
        this.batteryLevel = f;
        if (str2 != null) {
            serialNumber = str2;
        } else if (str19 != null) {
            serialNumber = str19;
        } else {
            String strNameFromBluetoothDevice = INSTANCE.nameFromBluetoothDevice(bluetoothDevice);
            if (strNameFromBluetoothDevice != null) {
                serialNumber = strNameFromBluetoothDevice;
            } else if (usbDevice != null) {
                serialNumber = usbDevice.getSerialNumber();
            }
        }
        this.serialNumber = serialNumber;
        if (str4 != null) {
            str21 = str4;
        } else if (str9 == null && str7 == null && str15 == null) {
            str21 = "unknown";
        } else {
            str21 = str9 + '-' + str7 + '-' + str15;
        }
        this.softwareVersion = str21;
        this.configVersion = str7;
        this.firmwareVersion = str9;
        this.hardwareVersion = str10 != null ? str10 : "unknown";
        this.pinKeysetId = str15;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Reader(DeviceType deviceType, ExpandableLocation expandableLocation, LocationStatus locationStatus, String str, boolean z, NetworkStatus networkStatus, String str2, String str3, String str4, String str5, String str6, Boolean bool, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, Location location, Float f, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, Boolean bool2, Map map, Boolean bool3, boolean z2, String str20, Float f2, Boolean bool4, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        DeviceType deviceType2 = (i & 1) != 0 ? DeviceType.UNKNOWN : deviceType;
        ExpandableLocation expandableLocation2 = (i & 2) != 0 ? null : expandableLocation;
        LocationStatus locationStatus2 = (i & 4) != 0 ? LocationStatus.UNKNOWN : locationStatus;
        String str21 = (i & 8) != 0 ? null : str;
        boolean z3 = (i & 16) != 0 ? false : z;
        NetworkStatus networkStatus2 = (i & 32) != 0 ? null : networkStatus;
        String str22 = (i & 64) != 0 ? null : str2;
        String str23 = (i & 128) != 0 ? null : str3;
        String str24 = (i & 256) != 0 ? null : str4;
        String str25 = (i & 512) != 0 ? null : str5;
        String str26 = (i & 1024) != 0 ? null : str6;
        Boolean bool5 = (i & 2048) != 0 ? null : bool;
        BluetoothDevice bluetoothDevice2 = (i & 4096) != 0 ? null : bluetoothDevice;
        UsbDevice usbDevice2 = (i & 8192) != 0 ? null : usbDevice;
        this(deviceType2, expandableLocation2, locationStatus2, str21, z3, networkStatus2, str22, str23, str24, str25, str26, bool5, bluetoothDevice2, usbDevice2, (i & 16384) != 0 ? null : location, (i & 32768) != 0 ? null : f, (i & 65536) != 0 ? null : str7, (i & 131072) != 0 ? null : str8, (i & 262144) != 0 ? null : str9, (i & 524288) != 0 ? null : str10, (i & 1048576) != 0 ? null : str11, (i & 2097152) != 0 ? null : str12, (i & 4194304) != 0 ? null : str13, (i & 8388608) != 0 ? null : str14, (i & 16777216) != 0 ? null : str15, (i & 33554432) != 0 ? null : str16, (i & 67108864) != 0 ? null : str17, (i & 134217728) != 0 ? null : str18, (i & 268435456) != 0 ? null : str19, (i & 536870912) != 0 ? false : bool2, (i & 1073741824) != 0 ? null : map, (i & Integer.MIN_VALUE) != 0 ? null : bool3, (i2 & 1) != 0 ? false : z2, (i2 & 2) != 0 ? null : str20, (i2 & 4) != 0 ? null : f2, (i2 & 8) != 0 ? null : bool4);
    }

    public final DeviceType getDeviceType() {
        return this.deviceType;
    }

    /* JADX INFO: renamed from: getLocationRaw$public_release, reason: from getter */
    public final ExpandableLocation getLocationRaw() {
        return this.locationRaw;
    }

    public final LocationStatus getLocationStatus() {
        return this.locationStatus;
    }

    public final void setLocationStatus(LocationStatus locationStatus) {
        Intrinsics.checkNotNullParameter(locationStatus, "<set-?>");
        this.locationStatus = locationStatus;
    }

    /* JADX INFO: renamed from: isSimulated, reason: from getter */
    public final boolean getIsSimulated() {
        return this.isSimulated;
    }

    public final NetworkStatus getNetworkStatus() {
        return this.networkStatus;
    }

    /* JADX INFO: renamed from: getRawSerialNumber$public_release, reason: from getter */
    public final String getRawSerialNumber() {
        return this.rawSerialNumber;
    }

    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: getDeviceSwVersion$public_release, reason: from getter */
    public final String getDeviceSwVersion() {
        return this.deviceSwVersion;
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final Boolean getLivemode() {
        return this.livemode;
    }

    public final BluetoothDevice getBluetoothDevice() {
        return this.bluetoothDevice;
    }

    public final UsbDevice getUsbDevice() {
        return this.usbDevice;
    }

    public final String getSettingsVersion() {
        return this.settingsVersion;
    }

    public final void setSettingsVersion(String str) {
        this.settingsVersion = str;
    }

    public final String getPinKeyProfileId() {
        return this.pinKeyProfileId;
    }

    public final String getMacKeyProfileId() {
        return this.macKeyProfileId;
    }

    public final String getTrackKeyProfileId() {
        return this.trackKeyProfileId;
    }

    public final String getEmvKeyProfileId() {
        return this.emvKeyProfileId;
    }

    public final String getMacKeysetId() {
        return this.macKeysetId;
    }

    public final String getTrackKeysetId() {
        return this.trackKeysetId;
    }

    public final String getEmvKeysetId() {
        return this.emvKeysetId;
    }

    public final String getSerial() {
        return this.serial;
    }

    public final Map<String, String> getRawReaderData() {
        return this.rawReaderData;
    }

    /* JADX INFO: renamed from: isCharging, reason: from getter */
    public final Boolean getIsCharging() {
        return this.isCharging;
    }

    public final String getFirmwareId() {
        return this.firmwareId;
    }

    public final Float getCoinCellBatteryVoltage() {
        return this.coinCellBatteryVoltage;
    }

    /* JADX INFO: renamed from: isUsbConnected, reason: from getter */
    public final Boolean getIsUsbConnected() {
        return this.isUsbConnected;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Reader.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;", "", NotificationCompat.CATEGORY_STATUS, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getStatus", "()Ljava/lang/String;", "ONLINE", "OFFLINE", "UNKNOWN", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final class NetworkStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ NetworkStatus[] $VALUES;
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final String status;

        @SerialName("online")
        public static final NetworkStatus ONLINE = new NetworkStatus("ONLINE", 0, "online");

        @SerialName("offline")
        public static final NetworkStatus OFFLINE = new NetworkStatus("OFFLINE", 1, "offline");

        @SerialName("unknown")
        public static final NetworkStatus UNKNOWN = new NetworkStatus("UNKNOWN", 2, "unknown");

        private static final /* synthetic */ NetworkStatus[] $values() {
            return new NetworkStatus[]{ONLINE, OFFLINE, UNKNOWN};
        }

        public static EnumEntries<NetworkStatus> getEntries() {
            return $ENTRIES;
        }

        public static NetworkStatus valueOf(String str) {
            return (NetworkStatus) Enum.valueOf(NetworkStatus.class, str);
        }

        public static NetworkStatus[] values() {
            return (NetworkStatus[]) $VALUES.clone();
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) NetworkStatus.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<NetworkStatus> serializer() {
                return get$cachedSerializer();
            }
        }

        private NetworkStatus(String str, int i, String str2) {
            this.status = str2;
        }

        public final String getStatus() {
            return this.status;
        }

        static {
            NetworkStatus[] networkStatusArr$values = $values();
            $VALUES = networkStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(networkStatusArr$values);
            INSTANCE = new Companion(null);
            $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.Reader.NetworkStatus.Companion.1
                @Override // kotlin.jvm.functions.Function0
                public final KSerializer<Object> invoke() {
                    return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.Reader.NetworkStatus", NetworkStatus.values(), new String[]{"online", "offline", "unknown"}, new Annotation[][]{null, null, null}, null);
                }
            });
        }
    }

    public final String getId() {
        return this.id;
    }

    public final Location getLocation() {
        return this.location;
    }

    public final Float getBatteryLevel() {
        return this.batteryLevel;
    }

    public final void setBatteryLevel(Float f) {
        this.batteryLevel = f;
    }

    public final String getSerialNumber() {
        return this.serialNumber;
    }

    public final ReaderSoftwareUpdate getAvailableUpdate() {
        return this.availableUpdate;
    }

    public final void setAvailableUpdate(ReaderSoftwareUpdate readerSoftwareUpdate) {
        this.availableUpdate = readerSoftwareUpdate;
    }

    public final String getSoftwareVersion() {
        return this.softwareVersion;
    }

    public final String getConfigVersion() {
        return this.configVersion;
    }

    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public final String getHardwareVersion() {
        return this.hardwareVersion;
    }

    public final String getBootloaderVersion() {
        return this.bootloaderVersion;
    }

    public final String getPinKeysetId() {
        return this.pinKeysetId;
    }

    public final Long getCanonicalReaderVersion() {
        return this.canonicalReaderVersion;
    }

    public final void setCanonicalReaderVersion(Long l) {
        this.canonicalReaderVersion = l;
    }

    public static /* synthetic */ void activate$default(Reader reader, String str, Location location, Long l, int i, Object obj) {
        if ((i & 4) != 0) {
            l = null;
        }
        reader.activate(str, location, l);
    }

    public final /* synthetic */ void activate(String readerId, Location location, Long canonicalReaderVersion) {
        this.location = location;
        this.locationStatus = location != null ? LocationStatus.SET : LocationStatus.UNKNOWN;
        if (this.id == null) {
            this.id = readerId;
        }
        this.canonicalReaderVersion = canonicalReaderVersion;
    }

    public final void setAvailableUpdate(String targetKey, String targetConfig, String targetFirmware) {
        ReaderSoftwareUpdate.UpdateDurationEstimate updateDurationEstimate;
        ClientVersionSpecPb clientVersionSpecPb;
        ClientVersionSpecPb clientVersionSpecPb2;
        String str = targetConfig;
        String str2 = (targetFirmware == null || StringsKt.equals(targetFirmware, this.firmwareVersion, true)) ? null : targetFirmware;
        if (str == null || StringsKt.equals(str, this.configVersion, true)) {
            str = null;
        }
        String str3 = (targetKey == null || StringsKt.equals(targetKey, this.pinKeysetId, true)) ? null : targetKey;
        String str4 = (str2 == null ? this.firmwareVersion : str2) + '-' + (str == null ? this.configVersion : str) + '-' + (str3 == null ? this.pinKeysetId : str3);
        if (str2 != null) {
            updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.FIVE_TO_FIFTEEN_MINUTES;
        } else if (str != null) {
            if (str3 != null) {
                updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.TWO_TO_FIVE_MINUTES;
            } else {
                updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.ONE_TO_TWO_MINUTES;
            }
        } else if (str3 != null) {
            updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.LESS_THAN_ONE_MINUTE;
        } else {
            this.availableUpdate = null;
            return;
        }
        if (str2 != null) {
            clientVersionSpecPb = new ClientVersionSpecPb(new VersionInfoPb(VersionInfoPb.ClientType.BBPOS_FIRMWARE, str2, 0, null, 12, null), null, null, null, null, null, null, null, WinError.ERROR_INVALID_EA_NAME, null);
        } else {
            clientVersionSpecPb = null;
        }
        if (str != null) {
            DefaultConstructorMarker defaultConstructorMarker = null;
            ByteString byteString = null;
            clientVersionSpecPb2 = new ClientVersionSpecPb(new VersionInfoPb(VersionInfoPb.ClientType.BBPOS_CONFIGURATION, str, 0, byteString, 12, defaultConstructorMarker), null, null, null, null, null, null, byteString, WinError.ERROR_INVALID_EA_NAME, defaultConstructorMarker);
        } else {
            clientVersionSpecPb2 = null;
        }
        this.availableUpdate = new ReaderSoftwareUpdate(0L, updateDurationEstimate, str4, clientVersionSpecPb2, clientVersionSpecPb, str3, null, null, null);
    }

    public final /* synthetic */ void update(ReaderSoftwareUpdate update) {
        VersionInfoPb versionInfoPb;
        String str;
        VersionInfoPb versionInfoPb2;
        String str2;
        BBPOSConfig bBPOSConfig;
        Intrinsics.checkNotNullParameter(update, "update");
        if (!update.getOnlyInstallRequiredUpdates() || update.getRequiredAtMs() < Clock.System.INSTANCE.now().toEpochMilliseconds()) {
            if (update.getHasKeyUpdate()) {
                MobileClientConfig config = update.getConfig();
                this.pinKeysetId = (config == null || (bBPOSConfig = config.bbpos_config) == null) ? null : bBPOSConfig.key_profile_pek0;
            }
            ClientVersionSpecPb configSpec = update.getConfigSpec();
            if (configSpec != null && (versionInfoPb2 = configSpec.version_info) != null && (str2 = versionInfoPb2.client_version) != null) {
                this.configVersion = str2;
            }
            ClientVersionSpecPb firmwareSpec = update.getFirmwareSpec();
            if (firmwareSpec != null && (versionInfoPb = firmwareSpec.version_info) != null && (str = versionInfoPb.client_version) != null) {
                this.firmwareVersion = str;
            }
            String settingsVersion = update.getSettingsVersion();
            if (settingsVersion != null) {
                this.settingsVersion = settingsVersion;
            }
            this.softwareVersion = this.firmwareVersion + '-' + this.configVersion + '-' + this.pinKeysetId;
        }
    }

    public final DeviceInfo toDeviceInfo() {
        return ReaderKtxKt.createDeviceInfo(this, this.isDebug, Boolean.valueOf(this.isDevKit));
    }

    public String toString() {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        if (this.deviceSwVersion != null) {
            listCreateListBuilder.add("deviceSwVersion=" + this.deviceSwVersion);
        }
        listCreateListBuilder.add("deviceType=" + this.deviceType);
        if (this.id != null) {
            listCreateListBuilder.add("id=" + this.id);
        }
        if (this.label != null) {
            listCreateListBuilder.add("label=" + this.label);
        }
        if (this.livemode != null) {
            listCreateListBuilder.add("livemode=" + this.livemode);
        }
        if (this.location != null) {
            listCreateListBuilder.add("location=" + this.location);
        }
        if (this.networkStatus != null) {
            listCreateListBuilder.add("networkStatus=" + this.networkStatus);
        }
        if (this.serialNumber != null) {
            listCreateListBuilder.add("serialNumber=" + this.serialNumber);
        }
        return CollectionsKt.joinToString$default(CollectionsKt.build(listCreateListBuilder), ", ", "Reader{", "}", 0, null, null, 56, null);
    }

    /* JADX INFO: compiled from: Reader.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Reader$Companion;", "", "()V", "nameFromBluetoothDevice", "", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Reader;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Reader> serializer() {
            return ReaderSerializer.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String nameFromBluetoothDevice(BluetoothDevice bluetoothDevice) {
            if (bluetoothDevice != null) {
                return bluetoothDevice.getName();
            }
            return null;
        }
    }
}
