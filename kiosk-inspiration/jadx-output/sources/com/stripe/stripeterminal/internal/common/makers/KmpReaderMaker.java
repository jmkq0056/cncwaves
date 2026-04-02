package com.stripe.stripeterminal.internal.common.makers;

import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.ExpandableLocation;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.LocationStatus;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpReaderMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JË\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0010\b\u0002\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b2\u0010\b\u0002\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u001f¢\u0006\u0002\u0010!¨\u0006\""}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;", "", "()V", "withReaderInfo", "Lcom/stripe/stripeterminal/external/models/Reader;", "readerInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;", "usbDevice", "Landroid/hardware/usb/UsbDevice;", "Lcom/stripe/stripeterminal/external/models/UsbDevice;", "locationStatus", "Lcom/stripe/stripeterminal/external/models/LocationStatus;", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/stripeterminal/external/models/Location;", "locationRaw", "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;", OfflineStorageConstantsKt.ID, "", "networkStatus", "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;", "rawSerialNumber", "label", "deviceSwVersion", "baseUrl", "ipAddress", "livemode", "", "isSimulated", "(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/stripe/stripeterminal/external/models/Reader;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KmpReaderMaker {
    public static final KmpReaderMaker INSTANCE = new KmpReaderMaker();

    private KmpReaderMaker() {
    }

    public final Reader withReaderInfo(ReaderInfo readerInfo, DeviceType deviceType, BluetoothDevice bluetoothDevice, UsbDevice usbDevice, LocationStatus locationStatus, Location location, ExpandableLocation locationRaw, String id, Reader.NetworkStatus networkStatus, String rawSerialNumber, String label, String deviceSwVersion, String baseUrl, String ipAddress, Boolean livemode, boolean isSimulated) {
        Intrinsics.checkNotNullParameter(readerInfo, "readerInfo");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(locationStatus, "locationStatus");
        return new Reader(deviceType, locationRaw, locationStatus, id, isSimulated, networkStatus, rawSerialNumber, label, deviceSwVersion, baseUrl, ipAddress, livemode, bluetoothDevice, usbDevice, location, readerInfo.getBatteryLevel(), readerInfo.getConfigVersion(), readerInfo.getDeviceSettingVersion(), readerInfo.getFirmwareVersion(), readerInfo.getHardwareVersion(), readerInfo.getPinKeyProfileId(), readerInfo.getMacKeyProfileId(), readerInfo.getTrackKeyProfileId(), readerInfo.getEmvKeyProfileId(), readerInfo.getPinKeysetId(), readerInfo.getMacKeysetId(), readerInfo.getTrackKeysetId(), readerInfo.getEmvKeysetId(), readerInfo.getSerial(), readerInfo.isDebug(), readerInfo.getRawReaderData(), readerInfo.isCharging(), readerInfo.isDevKit(), readerInfo.getFirmwareId(), readerInfo.getCoinCellBatteryVoltage(), readerInfo.isUsbConnected());
    }
}
