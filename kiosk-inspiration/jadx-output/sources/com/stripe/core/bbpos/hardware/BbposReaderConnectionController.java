package com.stripe.core.bbpos.hardware;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: compiled from: BbposReaderConnectionController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000  2\u00020\u0001:\u0001 B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\rH\u0002J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0016\u001a\u00020\rH\u0002J\b\u0010\u0017\u001a\u00020\rH\u0002J\b\u0010\u0018\u001a\u00020\rH\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0014H\u0002J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;", "Lcom/stripe/core/hardware/ReaderConnectionController;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "usbManager", "Landroid/hardware/usb/UsbManager;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "connect", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "connectBluetooth", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "connectSerial", "connectUsb", "Lcom/stripe/core/hardware/Reader$UsbReader;", "disconnect", "disconnectBluetooth", "disconnectSerial", "disconnectUsb", "reboot", "resolveUsbReader", "usbReader", "setDebugLogEnabled", "enabled", "", "startSession", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposReaderConnectionController implements ReaderConnectionController {
    private static final Companion Companion = new Companion(null);
    private static final long SHOPIFY_SESSION_TOKEN_1 = 3164773023L;
    private static final int SHOPIFY_SESSION_TOKEN_2 = 1689864296;
    private final DeviceControllerWrapper deviceController;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final UsbManager usbManager;

    public BbposReaderConnectionController(DeviceControllerWrapper deviceController, UsbManager usbManager, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        Intrinsics.checkNotNullParameter(usbManager, "usbManager");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.deviceController = deviceController;
        this.usbManager = usbManager;
        this.logger = logger;
    }

    /* JADX INFO: compiled from: BbposReaderConnectionController.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController$Companion;", "", "()V", "SHOPIFY_SESSION_TOKEN_1", "", "SHOPIFY_SESSION_TOKEN_2", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.stripe.core.hardware.ReaderConnectionController
    public void connect(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.d("connect", TuplesKt.to(OfflineStorageConstantsKt.READER, reader));
        if (reader instanceof Reader.SerialReader) {
            connectSerial();
        } else if (reader instanceof Reader.BluetoothReader) {
            connectBluetooth((Reader.BluetoothReader) reader);
        } else if (reader instanceof Reader.UsbReader) {
            connectUsb((Reader.UsbReader) reader);
        }
    }

    @Override // com.stripe.core.hardware.ReaderConnectionController
    public void reboot(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.deviceController.resetDevice();
    }

    @Override // com.stripe.core.hardware.ReaderConnectionController
    public void disconnect(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.d("disconnect", TuplesKt.to(OfflineStorageConstantsKt.READER, reader));
        if (reader instanceof Reader.SerialReader) {
            disconnectSerial();
        } else if (reader instanceof Reader.BluetoothReader) {
            disconnectBluetooth();
        } else if (reader instanceof Reader.UsbReader) {
            disconnectUsb();
        }
    }

    @Override // com.stripe.core.hardware.ReaderConnectionController
    public void startSession(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        StringBuilder sb = new StringBuilder();
        String string = Long.toString(SHOPIFY_SESSION_TOKEN_1, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        StringBuilder sbAppend = sb.append(string);
        String string2 = Integer.toString(SHOPIFY_SESSION_TOKEN_2, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        this.deviceController.initSession(sbAppend.append(string2).toString());
    }

    @Override // com.stripe.core.hardware.ReaderConnectionController
    public void setDebugLogEnabled(boolean enabled) {
        this.deviceController.setDebugLogEnabled(enabled);
    }

    private final void connectSerial() {
        this.logger.i("connectSerial", new Pair[0]);
        this.deviceController.startSerial();
    }

    private final void connectBluetooth(Reader.BluetoothReader reader) {
        this.logger.i("connectBluetooth", new Pair[0]);
        this.deviceController.connectBt(reader.getDevice());
    }

    private final void connectUsb(Reader.UsbReader reader) {
        Unit unit;
        String deviceName;
        this.logger.i("connectUsb", new Pair[0]);
        UsbDevice device = resolveUsbReader(reader).getDevice();
        if (device == null || (deviceName = device.getDeviceName()) == null) {
            unit = null;
        } else {
            this.deviceController.startUsbWithDeviceName(deviceName);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            this.deviceController.startUsb();
        }
    }

    private final void disconnectSerial() {
        this.logger.i("disconnectSerial", new Pair[0]);
        this.deviceController.disconnectSerial();
    }

    private final void disconnectBluetooth() {
        this.logger.i("disconnectBluetooth", new Pair[0]);
        this.deviceController.disconnectBt();
    }

    private final void disconnectUsb() {
        this.logger.i("disconnectUsb", new Pair[0]);
        this.deviceController.stopUsb();
    }

    private final Reader.UsbReader resolveUsbReader(Reader.UsbReader usbReader) {
        Object next;
        UsbDevice device = usbReader.getDevice();
        HashMap<String, UsbDevice> deviceList = this.usbManager.getDeviceList();
        Intrinsics.checkNotNullExpressionValue(deviceList, "getDeviceList(...)");
        HashMap<String, UsbDevice> map = deviceList;
        if (!CollectionsKt.contains(map.keySet(), device != null ? device.getDeviceName() : null)) {
            Iterator<T> it = map.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Intrinsics.areEqual(((UsbDevice) next).getProductName(), device != null ? device.getProductName() : null)) {
                    break;
                }
            }
            UsbDevice usbDevice = (UsbDevice) next;
            if (usbDevice == null) {
                usbDevice = device;
            }
            if (usbDevice != null) {
                if (!Intrinsics.areEqual(usbDevice.getDeviceName(), device != null ? device.getDeviceName() : null)) {
                    SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
                    Pair<String, ? extends Object>[] pairArr = new Pair[3];
                    pairArr[0] = TuplesKt.to("oldDeviceName", device != null ? device.getDeviceName() : null);
                    pairArr[1] = TuplesKt.to("newDeviceName", usbDevice.getDeviceName());
                    pairArr[2] = TuplesKt.to("productName", usbDevice.getProductName());
                    simpleLogger.i("deviceName for reader has changed", pairArr);
                }
                device = usbDevice;
            } else {
                device = null;
            }
        }
        if (usbReader instanceof Reader.UsbReader.Chipper2xReader) {
            return new Reader.UsbReader.Chipper2xReader(device);
        }
        if (usbReader instanceof Reader.UsbReader.StripeM2Reader) {
            return new Reader.UsbReader.StripeM2Reader(device);
        }
        if (usbReader instanceof Reader.UsbReader.UnspecifiedUsbReader) {
            return Reader.UsbReader.UnspecifiedUsbReader.INSTANCE;
        }
        if (usbReader instanceof Reader.UsbReader.WisecubeReader) {
            return new Reader.UsbReader.WisecubeReader(device);
        }
        if (usbReader instanceof Reader.UsbReader.Wisepad3Reader) {
            return new Reader.UsbReader.Wisepad3Reader(device);
        }
        if (usbReader instanceof Reader.UsbReader.Wisepad3SReader) {
            return new Reader.UsbReader.Wisepad3SReader(device);
        }
        throw new NoWhenBranchMatchedException();
    }
}
