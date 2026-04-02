package com.stripe.stripeterminal.internal.common.makers;

import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;
import com.stripe.core.hardware.Reader;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.DiscoveredReader;
import com.stripe.proto.api.sdk.ReaderInfo;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.rest.ExpandedLocationReader;
import com.stripe.stripeterminal.external.models.Address;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.ExpandableLocation;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.LocationStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.CotsDescriptor;
import com.stripe.stripeterminal.internal.common.json.DeviceTypeJsonAdapter;
import com.stripe.stripeterminal.internal.common.json.NetworkStatusJsonAdapter;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ReaderMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007J\u0018\u0010\b\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u000e\u0010\u0005\u001a\n\u0018\u00010\u0017j\u0004\u0018\u0001`\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\n¨\u0006 "}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;", "", "()V", "fromBluetoothDevice", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "device", "Landroid/bluetooth/BluetoothDevice;", "Lcom/stripe/stripeterminal/external/models/BluetoothDevice;", "fromBluetoothDeviceOrNull", "fromCotsDescriptor", "Lcom/stripe/stripeterminal/external/models/Reader;", "cotsDescriptor", "Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;", "fromDiscoveredReader", "discoveredReader", "Lcom/stripe/proto/api/sdk/DiscoveredReader;", "fromReaderInfoSimulated", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "readerInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "fromUsbDeviceOrNull", "Lcom/stripe/core/hardware/Reader$UsbReader;", "Landroid/hardware/usb/UsbDevice;", "Lcom/stripe/stripeterminal/external/models/UsbDevice;", "simulatedLocation", "Lcom/stripe/stripeterminal/external/models/Location;", "toHardwareReader", "Lcom/stripe/core/hardware/Reader;", OfflineStorageConstantsKt.READER, "ReaderNamePrefixes", "UsbDeviceFilter", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderMaker {
    public static final ReaderMaker INSTANCE = new ReaderMaker();

    /* JADX INFO: compiled from: ReaderMaker.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UsbDeviceFilter.values().length];
            try {
                iArr[UsbDeviceFilter.CHIPPER_2X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UsbDeviceFilter.STRIPE_M2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UsbDeviceFilter.WISECUBE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UsbDeviceFilter.WISEPAD_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UsbDeviceFilter.WISEPAD_3S.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ReaderMaker() {
    }

    public final Reader fromDiscoveredReader(DiscoveredReader discoveredReader) {
        DeviceType deviceTypeFromJson;
        LocationStatus locationStatus;
        Intrinsics.checkNotNullParameter(discoveredReader, "discoveredReader");
        ExpandedLocationReader expandedLocationReader = discoveredReader.expandedLocationReader;
        if (expandedLocationReader == null) {
            return null;
        }
        DeviceTypeJsonAdapter deviceTypeJsonAdapter = new DeviceTypeJsonAdapter();
        NetworkStatusJsonAdapter networkStatusJsonAdapter = new NetworkStatusJsonAdapter();
        String str = expandedLocationReader.device_type;
        if (str == null || (deviceTypeFromJson = deviceTypeJsonAdapter.fromJson(str)) == null) {
            deviceTypeFromJson = DeviceType.UNKNOWN;
        }
        DeviceType deviceType = deviceTypeFromJson;
        ApiLocationPb apiLocationPb = expandedLocationReader.location;
        ExpandableLocation.Expanded expanded = apiLocationPb != null ? new ExpandableLocation.Expanded(ProtoConverter.INSTANCE.toSdkLocation(apiLocationPb)) : null;
        if (expanded != null) {
            locationStatus = LocationStatus.SET;
        } else {
            locationStatus = LocationStatus.NOT_SET;
        }
        LocationStatus locationStatus2 = locationStatus;
        ReaderInfo readerInfo = discoveredReader.readerInfo;
        com.stripe.hardware.status.ReaderInfo sdkReaderInfo = readerInfo != null ? ProtoConverter.INSTANCE.toSdkReaderInfo(readerInfo) : null;
        if (sdkReaderInfo != null) {
            ExpandableLocation.Expanded expanded2 = expanded;
            KmpReaderMaker kmpReaderMaker = KmpReaderMaker.INSTANCE;
            String str2 = expandedLocationReader.id;
            String str3 = expandedLocationReader.status;
            return kmpReaderMaker.withReaderInfo(sdkReaderInfo, deviceType, (32812 & 4) != 0 ? null : null, (32812 & 8) != 0 ? null : null, (32812 & 16) != 0 ? LocationStatus.UNKNOWN : locationStatus2, (32812 & 32) != 0 ? null : null, (32812 & 64) != 0 ? null : expanded2, (32812 & 128) != 0 ? null : str2, (32812 & 256) != 0 ? null : str3 != null ? networkStatusJsonAdapter.fromJson(str3) : null, (32812 & 512) != 0 ? null : expandedLocationReader.serial_number, (32812 & 1024) != 0 ? null : expandedLocationReader.label, (32812 & 2048) != 0 ? null : expandedLocationReader.device_sw_version, (32812 & 4096) != 0 ? null : expandedLocationReader.base_url, (32812 & 8192) != 0 ? null : expandedLocationReader.ip_address, (32812 & 16384) != 0 ? null : expandedLocationReader.livemode, (32812 & 32768) != 0 ? false : false);
        }
        ExpandableLocation.Expanded expanded3 = expanded;
        String str4 = expandedLocationReader.id;
        String str5 = expandedLocationReader.status;
        return new Reader(deviceType, expanded3, locationStatus2, str4, false, str5 != null ? networkStatusJsonAdapter.fromJson(str5) : null, expandedLocationReader.serial_number, expandedLocationReader.label, expandedLocationReader.device_sw_version, expandedLocationReader.base_url, expandedLocationReader.ip_address, expandedLocationReader.livemode, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -4080, 15, null);
    }

    public final Reader fromCotsDescriptor(CotsDescriptor cotsDescriptor) {
        Intrinsics.checkNotNullParameter(cotsDescriptor, "cotsDescriptor");
        return new Reader(DeviceType.TAP_TO_PAY_DEVICE, null, null, null, cotsDescriptor.isSimulated(), null, cotsDescriptor.getCotsUuid(), null, null, null, null, null, null, null, cotsDescriptor.isSimulated() ? simulatedLocation() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -16474, 15, null);
    }

    public final Reader fromReaderInfoSimulated(DeviceType deviceType, com.stripe.hardware.status.ReaderInfo readerInfo) {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(readerInfo, "readerInfo");
        return KmpReaderMaker.INSTANCE.withReaderInfo(readerInfo, deviceType, (32812 & 4) != 0 ? null : null, (32812 & 8) != 0 ? null : null, (32812 & 16) != 0 ? LocationStatus.UNKNOWN : null, (32812 & 32) != 0 ? null : simulatedLocation(), (32812 & 64) != 0 ? null : null, (32812 & 128) != 0 ? null : null, (32812 & 256) != 0 ? null : null, (32812 & 512) != 0 ? null : null, (32812 & 1024) != 0 ? null : null, (32812 & 2048) != 0 ? null : null, (32812 & 4096) != 0 ? null : null, (32812 & 8192) != 0 ? null : null, (32812 & 16384) != 0 ? null : null, (32812 & 32768) != 0 ? false : true);
    }

    public final Location simulatedLocation() {
        return new Location("tml_simulated", (Address) null, "Simulated Location", (Boolean) false, (Map) null, 18, (DefaultConstructorMarker) null);
    }

    public final com.stripe.core.hardware.Reader toHardwareReader(Reader reader) {
        BluetoothDevice bluetoothDevice;
        Reader.BluetoothReader bluetoothReaderFromBluetoothDevice;
        if (reader != null && (bluetoothDevice = reader.getBluetoothDevice()) != null && (bluetoothReaderFromBluetoothDevice = fromBluetoothDevice(bluetoothDevice)) != null) {
            return bluetoothReaderFromBluetoothDevice;
        }
        Reader.UsbReader usbReaderFromUsbDeviceOrNull = fromUsbDeviceOrNull(reader != null ? reader.getUsbDevice() : null);
        if (usbReaderFromUsbDeviceOrNull != null) {
            return usbReaderFromUsbDeviceOrNull;
        }
        return Reader.SerialReader.INSTANCE;
    }

    public final Reader.BluetoothReader fromBluetoothDevice(BluetoothDevice device) {
        Intrinsics.checkNotNullParameter(device, "device");
        Reader.BluetoothReader bluetoothReaderFromBluetoothDeviceOrNull = fromBluetoothDeviceOrNull(device);
        return bluetoothReaderFromBluetoothDeviceOrNull == null ? new Reader.BluetoothReader.Chipper2xReader(device) : bluetoothReaderFromBluetoothDeviceOrNull;
    }

    public final Reader.BluetoothReader fromBluetoothDeviceOrNull(BluetoothDevice device) {
        String strNameFromDevice;
        if (device == null || (strNameFromDevice = Reader.BluetoothReader.INSTANCE.nameFromDevice(device)) == null) {
            return null;
        }
        List<String> chipper1x = ReaderNamePrefixes.INSTANCE.getChipper1x();
        if (!(chipper1x instanceof Collection) || !chipper1x.isEmpty()) {
            Iterator<T> it = chipper1x.iterator();
            while (it.hasNext()) {
                if (StringsKt.startsWith$default(strNameFromDevice, (String) it.next(), false, 2, (Object) null)) {
                    return new Reader.BluetoothReader.Chipper1xReader(device);
                }
            }
        }
        List<String> chipper2x = ReaderNamePrefixes.INSTANCE.getChipper2x();
        if (!(chipper2x instanceof Collection) || !chipper2x.isEmpty()) {
            Iterator<T> it2 = chipper2x.iterator();
            while (it2.hasNext()) {
                if (StringsKt.startsWith$default(strNameFromDevice, (String) it2.next(), false, 2, (Object) null)) {
                    return new Reader.BluetoothReader.Chipper2xReader(device);
                }
            }
        }
        List<String> stripeM2 = ReaderNamePrefixes.INSTANCE.getStripeM2();
        if (!(stripeM2 instanceof Collection) || !stripeM2.isEmpty()) {
            Iterator<T> it3 = stripeM2.iterator();
            while (it3.hasNext()) {
                if (StringsKt.startsWith$default(strNameFromDevice, (String) it3.next(), false, 2, (Object) null)) {
                    return new Reader.BluetoothReader.StripeM2Reader(device);
                }
            }
        }
        List<String> wisecube = ReaderNamePrefixes.INSTANCE.getWisecube();
        if (!(wisecube instanceof Collection) || !wisecube.isEmpty()) {
            Iterator<T> it4 = wisecube.iterator();
            while (it4.hasNext()) {
                if (StringsKt.startsWith$default(strNameFromDevice, (String) it4.next(), false, 2, (Object) null)) {
                    return new Reader.BluetoothReader.WisecubeReader(device);
                }
            }
        }
        List<String> wisepad3 = ReaderNamePrefixes.INSTANCE.getWisepad3();
        if ((wisepad3 instanceof Collection) && wisepad3.isEmpty()) {
            return null;
        }
        Iterator<T> it5 = wisepad3.iterator();
        while (it5.hasNext()) {
            if (StringsKt.startsWith$default(strNameFromDevice, (String) it5.next(), false, 2, (Object) null)) {
                return new Reader.BluetoothReader.Wisepad3Reader(device);
            }
        }
        return null;
    }

    public final Reader.UsbReader fromUsbDeviceOrNull(UsbDevice device) {
        UsbDeviceFilter next;
        if (device == null) {
            return null;
        }
        Iterator<UsbDeviceFilter> it = UsbDeviceFilter.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next.matches(device)) {
                break;
            }
        }
        UsbDeviceFilter usbDeviceFilter = next;
        if (usbDeviceFilter == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[usbDeviceFilter.ordinal()];
        if (i == 1) {
            return new Reader.UsbReader.Chipper2xReader(device);
        }
        if (i == 2) {
            return new Reader.UsbReader.StripeM2Reader(device);
        }
        if (i == 3) {
            return new Reader.UsbReader.WisecubeReader(device);
        }
        if (i == 4) {
            return new Reader.UsbReader.Wisepad3Reader(device);
        }
        if (i == 5) {
            return new Reader.UsbReader.Wisepad3SReader(device);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderMaker.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;", "", "productId", "", "vendorId", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V", "matches", "", "device", "Landroid/hardware/usb/UsbDevice;", "Lcom/stripe/stripeterminal/external/models/UsbDevice;", "CHIPPER_2X", "STRIPE_M2", "WISECUBE", "WISEPAD_3", "WISEPAD_3S", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class UsbDeviceFilter {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UsbDeviceFilter[] $VALUES;
        public static final UsbDeviceFilter CHIPPER_2X = new UsbDeviceFilter("CHIPPER_2X", 0, 22352, 11369, DeviceType.CHIPPER_2X);
        public static final UsbDeviceFilter STRIPE_M2 = new UsbDeviceFilter("STRIPE_M2", 1, 257, 5538, DeviceType.STRIPE_M2);
        public static final UsbDeviceFilter WISECUBE = new UsbDeviceFilter("WISECUBE", 2, 257, 5538, DeviceType.WISECUBE);
        public static final UsbDeviceFilter WISEPAD_3 = new UsbDeviceFilter("WISEPAD_3", 3, 257, 5538, DeviceType.WISEPAD_3);
        public static final UsbDeviceFilter WISEPAD_3S = new UsbDeviceFilter("WISEPAD_3S", 4, 257, 5538, DeviceType.WISEPAD_3S);
        private final DeviceType deviceType;
        private final int productId;
        private final int vendorId;

        private static final /* synthetic */ UsbDeviceFilter[] $values() {
            return new UsbDeviceFilter[]{CHIPPER_2X, STRIPE_M2, WISECUBE, WISEPAD_3, WISEPAD_3S};
        }

        public static EnumEntries<UsbDeviceFilter> getEntries() {
            return $ENTRIES;
        }

        public static UsbDeviceFilter valueOf(String str) {
            return (UsbDeviceFilter) Enum.valueOf(UsbDeviceFilter.class, str);
        }

        public static UsbDeviceFilter[] values() {
            return (UsbDeviceFilter[]) $VALUES.clone();
        }

        private UsbDeviceFilter(String str, int i, int i2, int i3, DeviceType deviceType) {
            this.productId = i2;
            this.vendorId = i3;
            this.deviceType = deviceType;
        }

        static {
            UsbDeviceFilter[] usbDeviceFilterArr$values = $values();
            $VALUES = usbDeviceFilterArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(usbDeviceFilterArr$values);
        }

        public final boolean matches(UsbDevice device) {
            boolean z;
            Intrinsics.checkNotNullParameter(device, "device");
            boolean z2 = device.getProductId() == this.productId && device.getVendorId() == this.vendorId;
            boolean z3 = this == WISECUBE && device.getProductName() == null;
            List<String> serialPrefixes = this.deviceType.getSerialPrefixes();
            if ((serialPrefixes instanceof Collection) && serialPrefixes.isEmpty()) {
                z = false;
            } else {
                for (String str : serialPrefixes) {
                    String productName = device.getProductName();
                    if (productName == null) {
                        productName = "";
                    }
                    if (StringsKt.startsWith$default(productName, str, false, 2, (Object) null)) {
                        z = true;
                        break;
                    }
                }
                z = false;
            }
            return z2 && (z || z3);
        }
    }

    /* JADX INFO: compiled from: ReaderMaker.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000b\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;", "", "()V", "Chipper1x", "", "", "getChipper1x", "()Ljava/util/List;", "Chipper2x", "getChipper2x", "StripeM2", "getStripeM2", "Wisecube", "getWisecube", "Wisepad3", "getWisepad3", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReaderNamePrefixes {
        public static final ReaderNamePrefixes INSTANCE = new ReaderNamePrefixes();
        private static final List<String> Chipper1x = CollectionsKt.listOf((Object[]) new String[]{"Shopi", "CHB1"});
        private static final List<String> Chipper2x = CollectionsKt.listOf("CHB20");
        private static final List<String> StripeM2 = CollectionsKt.listOf((Object[]) new String[]{"CHB30", "CHB31", "STRM2", "Stripe M2"});
        private static final List<String> Wisecube = CollectionsKt.listOf((Object[]) new String[]{"Tap &", "CHB6"});
        private static final List<String> Wisepad3 = CollectionsKt.listOf("WPC3");

        private ReaderNamePrefixes() {
        }

        public final List<String> getChipper1x() {
            return Chipper1x;
        }

        public final List<String> getChipper2x() {
            return Chipper2x;
        }

        public final List<String> getStripeM2() {
            return StripeM2;
        }

        public final List<String> getWisecube() {
            return Wisecube;
        }

        public final List<String> getWisepad3() {
            return Wisepad3;
        }
    }
}
