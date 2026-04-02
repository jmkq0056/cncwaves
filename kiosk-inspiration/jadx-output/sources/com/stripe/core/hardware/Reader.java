package com.stripe.core.hardware;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;
import com.stripe.hardware.emv.CheckForCardBehavior;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Reader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0013\u0014\u0015B9\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e\u0082\u0001\u0003\u0016\u0017\u0018¨\u0006\u0019"}, d2 = {"Lcom/stripe/core/hardware/Reader;", "", "firmwareCanHandleSelection", "", "checkForCardBehavior", "Lcom/stripe/hardware/emv/CheckForCardBehavior;", "needsOtaUpdate", "needsReconnectAfterConfigUpdate", "needsSplashScreenUpdate", "quickEmvAutoResponse", "(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V", "getCheckForCardBehavior", "()Lcom/stripe/hardware/emv/CheckForCardBehavior;", "getFirmwareCanHandleSelection", "()Z", "getNeedsOtaUpdate", "getNeedsReconnectAfterConfigUpdate", "getNeedsSplashScreenUpdate", "getQuickEmvAutoResponse", "BluetoothReader", "SerialReader", "UsbReader", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "Lcom/stripe/core/hardware/Reader$SerialReader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Reader {
    private final CheckForCardBehavior checkForCardBehavior;
    private final boolean firmwareCanHandleSelection;
    private final boolean needsOtaUpdate;
    private final boolean needsReconnectAfterConfigUpdate;
    private final boolean needsSplashScreenUpdate;
    private final boolean quickEmvAutoResponse;

    public /* synthetic */ Reader(boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, checkForCardBehavior, z2, z3, z4, z5);
    }

    private Reader(boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.firmwareCanHandleSelection = z;
        this.checkForCardBehavior = checkForCardBehavior;
        this.needsOtaUpdate = z2;
        this.needsReconnectAfterConfigUpdate = z3;
        this.needsSplashScreenUpdate = z4;
        this.quickEmvAutoResponse = z5;
    }

    public /* synthetic */ Reader(boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, checkForCardBehavior, z2, z3, z4, (i & 32) != 0 ? true : z5, null);
    }

    public final boolean getFirmwareCanHandleSelection() {
        return this.firmwareCanHandleSelection;
    }

    public final CheckForCardBehavior getCheckForCardBehavior() {
        return this.checkForCardBehavior;
    }

    public final boolean getNeedsOtaUpdate() {
        return this.needsOtaUpdate;
    }

    public final boolean getNeedsReconnectAfterConfigUpdate() {
        return this.needsReconnectAfterConfigUpdate;
    }

    public final boolean getNeedsSplashScreenUpdate() {
        return this.needsSplashScreenUpdate;
    }

    public final boolean getQuickEmvAutoResponse() {
        return this.quickEmvAutoResponse;
    }

    /* JADX INFO: compiled from: Reader.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00112\u00020\u0001:\u0006\u000f\u0010\u0011\u0012\u0013\u0014BA\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0005\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader;", "Lcom/stripe/core/hardware/Reader;", "device", "Landroid/bluetooth/BluetoothDevice;", "firmwareCanHandleSelection", "", "checkForCardBehavior", "Lcom/stripe/hardware/emv/CheckForCardBehavior;", "needsOtaUpdate", "needsReconnectAfterConfigUpdate", "needsSplashScreenUpdate", "quickEmvAutoResponse", "(Landroid/bluetooth/BluetoothDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V", "getDevice", "()Landroid/bluetooth/BluetoothDevice;", "Chipper1xReader", "Chipper2xReader", "Companion", "StripeM2Reader", "WisecubeReader", "Wisepad3Reader", "Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class BluetoothReader extends Reader {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final BluetoothDevice device;

        public /* synthetic */ BluetoothReader(BluetoothDevice bluetoothDevice, boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
            this(bluetoothDevice, z, checkForCardBehavior, z2, z3, z4, z5);
        }

        public /* synthetic */ BluetoothReader(BluetoothDevice bluetoothDevice, boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(bluetoothDevice, z, checkForCardBehavior, z2, z3, z4, (i & 64) != 0 ? true : z5, null);
        }

        public final BluetoothDevice getDevice() {
            return this.device;
        }

        private BluetoothReader(BluetoothDevice bluetoothDevice, boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5) {
            super(z, checkForCardBehavior, z2, z3, z4, z5, null);
            this.device = bluetoothDevice;
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "device", "Landroid/bluetooth/BluetoothDevice;", "(Landroid/bluetooth/BluetoothDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Chipper1xReader extends BluetoothReader {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Chipper1xReader(BluetoothDevice device) {
                super(device, false, CheckForCardBehavior.DO_NOT_POLL, true, false, false, false, 64, null);
                Intrinsics.checkNotNullParameter(device, "device");
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "device", "Landroid/bluetooth/BluetoothDevice;", "(Landroid/bluetooth/BluetoothDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Chipper2xReader extends BluetoothReader {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Chipper2xReader(BluetoothDevice device) {
                super(device, false, CheckForCardBehavior.DO_NOT_POLL, true, false, false, false, 64, null);
                Intrinsics.checkNotNullParameter(device, "device");
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "device", "Landroid/bluetooth/BluetoothDevice;", "(Landroid/bluetooth/BluetoothDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class StripeM2Reader extends BluetoothReader {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StripeM2Reader(BluetoothDevice device) {
                super(device, false, CheckForCardBehavior.DO_NOT_POLL, false, false, false, false, 64, null);
                Intrinsics.checkNotNullParameter(device, "device");
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "device", "Landroid/bluetooth/BluetoothDevice;", "(Landroid/bluetooth/BluetoothDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class WisecubeReader extends BluetoothReader {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public WisecubeReader(BluetoothDevice device) {
                super(device, false, CheckForCardBehavior.DO_NOT_POLL, true, false, false, false, null);
                Intrinsics.checkNotNullParameter(device, "device");
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "device", "Landroid/bluetooth/BluetoothDevice;", "(Landroid/bluetooth/BluetoothDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Wisepad3Reader extends BluetoothReader {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Wisepad3Reader(BluetoothDevice device) {
                super(device, true, CheckForCardBehavior.DO_NOT_POLL, false, false, true, false, 64, null);
                Intrinsics.checkNotNullParameter(device, "device");
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0012\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;", "", "()V", "bondStateFromDevice", "", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "createBondWithDevice", "", "nameFromAdapter", "", "bluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "nameFromDevice", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final String nameFromDevice(BluetoothDevice bluetoothDevice) {
                Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
                return bluetoothDevice.getName();
            }

            public final String nameFromAdapter(BluetoothAdapter bluetoothAdapter) {
                Intrinsics.checkNotNullParameter(bluetoothAdapter, "bluetoothAdapter");
                return bluetoothAdapter.getName();
            }

            public final int bondStateFromDevice(BluetoothDevice bluetoothDevice) {
                Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
                return bluetoothDevice.getBondState();
            }

            public final boolean createBondWithDevice(BluetoothDevice bluetoothDevice) {
                Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
                return bluetoothDevice.createBond();
            }
        }
    }

    /* JADX INFO: compiled from: Reader.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/hardware/Reader$SerialReader;", "Lcom/stripe/core/hardware/Reader;", "()V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SerialReader extends Reader {
        public static final SerialReader INSTANCE = new SerialReader();

        private SerialReader() {
            super(false, CheckForCardBehavior.POLL_FOR_CARD_REMOVAL, false, true, false, false, 32, null);
        }
    }

    /* JADX INFO: compiled from: Reader.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0014\u0015\u0016\u0017\u0018\u0019BE\b\u0004\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0006\u001a\u001b\u001c\u001d\u001e\u001f¨\u0006 "}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader;", "Lcom/stripe/core/hardware/Reader;", "device", "Landroid/hardware/usb/UsbDevice;", "firmwareCanHandleSelection", "", "checkForCardBehavior", "Lcom/stripe/hardware/emv/CheckForCardBehavior;", "needsOtaUpdate", "needsReconnectAfterConfigUpdate", "needsSplashScreenUpdate", "quickEmvAutoResponse", "(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V", "getDevice", "()Landroid/hardware/usb/UsbDevice;", "equals", "other", "", "hashCode", "", "Chipper2xReader", "StripeM2Reader", "UnspecifiedUsbReader", "WisecubeReader", "Wisepad3Reader", "Wisepad3SReader", "Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;", "Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;", "Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;", "Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;", "Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;", "Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class UsbReader extends Reader {
        private final UsbDevice device;

        public /* synthetic */ UsbReader(UsbDevice usbDevice, boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
            this(usbDevice, z, checkForCardBehavior, z2, z3, z4, z5);
        }

        public /* synthetic */ UsbReader(UsbDevice usbDevice, boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : usbDevice, z, checkForCardBehavior, z2, z3, z4, (i & 64) != 0 ? true : z5, null);
        }

        public final UsbDevice getDevice() {
            return this.device;
        }

        private UsbReader(UsbDevice usbDevice, boolean z, CheckForCardBehavior checkForCardBehavior, boolean z2, boolean z3, boolean z4, boolean z5) {
            super(z, checkForCardBehavior, z2, z3, z4, z5, null);
            this.device = usbDevice;
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "device", "Landroid/hardware/usb/UsbDevice;", "(Landroid/hardware/usb/UsbDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Chipper2xReader extends UsbReader {
            /* JADX WARN: Multi-variable type inference failed */
            public Chipper2xReader() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Chipper2xReader(UsbDevice usbDevice, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : usbDevice);
            }

            public Chipper2xReader(UsbDevice usbDevice) {
                super(usbDevice, false, CheckForCardBehavior.DO_NOT_POLL, true, false, false, false, 64, null);
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "device", "Landroid/hardware/usb/UsbDevice;", "(Landroid/hardware/usb/UsbDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class StripeM2Reader extends UsbReader {
            /* JADX WARN: Multi-variable type inference failed */
            public StripeM2Reader() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ StripeM2Reader(UsbDevice usbDevice, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : usbDevice);
            }

            public StripeM2Reader(UsbDevice usbDevice) {
                super(usbDevice, false, CheckForCardBehavior.DO_NOT_POLL, false, false, false, false, 64, null);
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "device", "Landroid/hardware/usb/UsbDevice;", "(Landroid/hardware/usb/UsbDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class WisecubeReader extends UsbReader {
            /* JADX WARN: Multi-variable type inference failed */
            public WisecubeReader() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ WisecubeReader(UsbDevice usbDevice, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : usbDevice);
            }

            public WisecubeReader(UsbDevice usbDevice) {
                super(usbDevice, false, CheckForCardBehavior.DO_NOT_POLL, true, false, false, false, null);
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "device", "Landroid/hardware/usb/UsbDevice;", "(Landroid/hardware/usb/UsbDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Wisepad3Reader extends UsbReader {
            /* JADX WARN: Multi-variable type inference failed */
            public Wisepad3Reader() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Wisepad3Reader(UsbDevice usbDevice, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : usbDevice);
            }

            public Wisepad3Reader(UsbDevice usbDevice) {
                super(usbDevice, true, CheckForCardBehavior.DO_NOT_POLL, false, false, true, false, 64, null);
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "device", "Landroid/hardware/usb/UsbDevice;", "(Landroid/hardware/usb/UsbDevice;)V", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Wisepad3SReader extends UsbReader {
            /* JADX WARN: Multi-variable type inference failed */
            public Wisepad3SReader() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Wisepad3SReader(UsbDevice usbDevice, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : usbDevice);
            }

            public Wisepad3SReader(UsbDevice usbDevice) {
                super(usbDevice, true, CheckForCardBehavior.DO_NOT_POLL, false, false, true, false, 64, null);
            }
        }

        /* JADX INFO: compiled from: Reader.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;", "Lcom/stripe/core/hardware/Reader$UsbReader;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnspecifiedUsbReader extends UsbReader {
            public static final UnspecifiedUsbReader INSTANCE = new UnspecifiedUsbReader();

            @Override // com.stripe.core.hardware.Reader.UsbReader
            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnspecifiedUsbReader)) {
                    return false;
                }
                return true;
            }

            @Override // com.stripe.core.hardware.Reader.UsbReader
            public int hashCode() {
                return -1896002345;
            }

            public String toString() {
                return "UnspecifiedUsbReader";
            }

            private UnspecifiedUsbReader() {
                super(null, false, CheckForCardBehavior.DO_NOT_POLL, true, false, false, false, 65, null);
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.stripe.core.hardware.Reader.UsbReader");
            UsbReader usbReader = (UsbReader) other;
            UsbDevice usbDevice = this.device;
            Integer numValueOf = usbDevice != null ? Integer.valueOf(usbDevice.getDeviceId()) : null;
            UsbDevice usbDevice2 = usbReader.device;
            if (!Intrinsics.areEqual(numValueOf, usbDevice2 != null ? Integer.valueOf(usbDevice2.getDeviceId()) : null)) {
                return false;
            }
            UsbDevice usbDevice3 = this.device;
            Integer numValueOf2 = usbDevice3 != null ? Integer.valueOf(usbDevice3.getVendorId()) : null;
            UsbDevice usbDevice4 = usbReader.device;
            if (!Intrinsics.areEqual(numValueOf2, usbDevice4 != null ? Integer.valueOf(usbDevice4.getVendorId()) : null)) {
                return false;
            }
            UsbDevice usbDevice5 = this.device;
            Integer numValueOf3 = usbDevice5 != null ? Integer.valueOf(usbDevice5.getProductId()) : null;
            UsbDevice usbDevice6 = usbReader.device;
            return Intrinsics.areEqual(numValueOf3, usbDevice6 != null ? Integer.valueOf(usbDevice6.getProductId()) : null);
        }

        public int hashCode() {
            UsbDevice usbDevice = this.device;
            if (usbDevice != null) {
                return usbDevice.hashCode();
            }
            return 0;
        }
    }
}
