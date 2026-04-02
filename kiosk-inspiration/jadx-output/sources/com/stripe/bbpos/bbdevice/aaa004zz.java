package com.stripe.bbpos.bbdevice;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.os.Handler;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class aaa004zz {
    static int aaa026 = 1155;
    static int aaa027 = 22352;
    private final Context aaa000;
    private final aaa003zz aaa001;
    private PendingIntent aaa002;
    private UsbManager aaa003;
    private UsbDevice aaa004;
    private UsbDeviceConnection aaa005;
    private UsbInterface aaa006;
    private UsbEndpoint aaa007;
    private UsbEndpoint aaa008;
    private ccc016zz aaa022;
    private static final Object aaa025 = new Object();
    private static aaa002zz aaa028 = aaa002zz.CONTROL_ENDPOINT;
    private static int aaa029 = 128;
    private final Object aaa009 = new Object();
    private final Object aaa010 = new Object();
    private Thread aaa011 = null;
    private int aaa012 = 40;
    private boolean aaa013 = true;
    private boolean aaa014 = true;
    private int aaa015 = 65;
    private int aaa016 = 64;
    private byte[] aaa019 = null;
    private final Handler aaa020 = new Handler();
    private final BroadcastReceiver aaa023 = new aaa000zz();
    private Runnable aaa024 = new aaa001zz();
    private ByteArrayOutputStream aaa017 = new ByteArrayOutputStream();
    private byte[] aaa018 = new byte[0];
    private final Runnable aaa021 = new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa004zz$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.aaa004();
        }
    };

    class aaa000zz extends BroadcastReceiver {
        aaa000zz() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!"com.stripe.bbpos.usbhost.USB_PERMISSION".equals(action)) {
                if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
                    aaa004zz.this.aaa001("[onReceive] USB Device " + ((UsbDevice) intent.getParcelableExtra("device")).getDeviceId() + " attached");
                    return;
                } else {
                    if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action)) {
                        aaa004zz.this.aaa001("[onReceive] USB Device " + ((UsbDevice) intent.getParcelableExtra("device")).getDeviceId() + " detached");
                        return;
                    }
                    return;
                }
            }
            synchronized (this) {
                UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
                if (intent.getBooleanExtra("permission", false)) {
                    if (usbDevice != null) {
                        aaa004zz.this.aaa001("[onReceive] USB EmvSwipe can connect");
                        aaa004zz.this.aaa000(usbDevice, aaa004zz.this.aaa000(usbDevice));
                    }
                    try {
                        context.unregisterReceiver(aaa004zz.this.aaa023);
                    } catch (IllegalArgumentException unused) {
                    }
                } else {
                    aaa004zz.this.aaa001("[onReceive] permission denied for device " + usbDevice);
                    try {
                        context.unregisterReceiver(aaa004zz.this.aaa023);
                    } catch (IllegalArgumentException unused2) {
                    }
                    aaa004zz.this.aaa001.aaa000(aaa003zz.aaa002zz.USB_DEVICE_PERMISSION_DENIED, "");
                }
            }
        }
    }

    class aaa001zz implements Runnable {
        aaa001zz() {
        }

        /* JADX WARN: Removed duplicated region for block: B:120:0x02f5 A[Catch: Exception -> 0x030d, TryCatch #1 {Exception -> 0x030d, blocks: (B:65:0x01bc, B:67:0x01c5, B:73:0x0202, B:75:0x0234, B:78:0x0241, B:80:0x0245, B:82:0x024d, B:83:0x0254, B:85:0x025c, B:87:0x0260, B:118:0x02f1, B:120:0x02f5, B:103:0x02ae, B:105:0x02b6, B:107:0x02ba, B:109:0x02be, B:111:0x02cb, B:112:0x02d4, B:113:0x02d6, B:115:0x02e4, B:116:0x02ed, B:117:0x02ef, B:122:0x02fe, B:124:0x0307), top: B:137:0x01bc }] */
        /* JADX WARN: Removed duplicated region for block: B:122:0x02fe A[Catch: Exception -> 0x030d, TryCatch #1 {Exception -> 0x030d, blocks: (B:65:0x01bc, B:67:0x01c5, B:73:0x0202, B:75:0x0234, B:78:0x0241, B:80:0x0245, B:82:0x024d, B:83:0x0254, B:85:0x025c, B:87:0x0260, B:118:0x02f1, B:120:0x02f5, B:103:0x02ae, B:105:0x02b6, B:107:0x02ba, B:109:0x02be, B:111:0x02cb, B:112:0x02d4, B:113:0x02d6, B:115:0x02e4, B:116:0x02ed, B:117:0x02ef, B:122:0x02fe, B:124:0x0307), top: B:137:0x01bc }] */
        /* JADX WARN: Removed duplicated region for block: B:168:0x018c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:171:0x015b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0202 A[Catch: Exception -> 0x030d, TRY_ENTER, TryCatch #1 {Exception -> 0x030d, blocks: (B:65:0x01bc, B:67:0x01c5, B:73:0x0202, B:75:0x0234, B:78:0x0241, B:80:0x0245, B:82:0x024d, B:83:0x0254, B:85:0x025c, B:87:0x0260, B:118:0x02f1, B:120:0x02f5, B:103:0x02ae, B:105:0x02b6, B:107:0x02ba, B:109:0x02be, B:111:0x02cb, B:112:0x02d4, B:113:0x02d6, B:115:0x02e4, B:116:0x02ed, B:117:0x02ef, B:122:0x02fe, B:124:0x0307), top: B:137:0x01bc }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 818
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.aaa004zz.aaa001zz.run():void");
        }
    }

    enum aaa002zz {
        INTERRUPT_ENDPOINT,
        CONTROL_ENDPOINT
    }

    aaa004zz(Context context, aaa003zz aaa003zzVar) {
        this.aaa000 = context;
        this.aaa001 = aaa003zzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaa001(String str) {
    }

    static /* synthetic */ int aaa011(aaa004zz aaa004zzVar) {
        int i = aaa004zzVar.aaa012;
        aaa004zzVar.aaa012 = i - 1;
        return i;
    }

    private boolean aaa002(byte[] bArr) {
        byte[] bArr2;
        int iControlTransfer;
        UsbDeviceConnection usbDeviceConnection;
        try {
            if (aaa003() != aaa002zz.CONTROL_ENDPOINT) {
                UsbEndpoint usbEndpoint = this.aaa007;
                if (usbEndpoint == null) {
                    return true;
                }
                usbEndpoint.getMaxPacketSize();
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.aaa015);
                ccc030zz ccc030zzVar = new ccc030zz();
                byteBufferAllocate.put(bArr);
                ccc030zzVar.initialize(this.aaa005, this.aaa007);
                ccc030zzVar.queue(byteBufferAllocate, bArr.length);
                return true;
            }
            synchronized (this.aaa009) {
                UsbDeviceConnection usbDeviceConnection2 = this.aaa005;
                if (usbDeviceConnection2 != null) {
                    bArr2 = bArr;
                    iControlTransfer = usbDeviceConnection2.controlTransfer(33, 9, 768, 0, bArr2, bArr.length, 1000);
                } else {
                    bArr2 = bArr;
                    iControlTransfer = -1;
                }
                if (iControlTransfer < 0 && (usbDeviceConnection = this.aaa005) != null) {
                    usbDeviceConnection.controlTransfer(33, 9, 768, 0, bArr2, bArr2.length, 1000);
                }
                synchronized (this.aaa010) {
                    this.aaa012 = 40;
                    this.aaa010.notifyAll();
                }
            }
            return true;
        } catch (Exception e) {
            aaa001("[sendInterruptTransfer] Usb Write exception : " + e.getMessage());
            return false;
        }
    }

    static aaa002zz aaa003() {
        return aaa028;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa004() {
        aaa003zz aaa003zzVar = this.aaa001;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa085();
        }
    }

    synchronized void aaa005() {
        aaa001("[Stop]");
        this.aaa020.removeCallbacks(this.aaa021);
        try {
            this.aaa000.unregisterReceiver(this.aaa023);
        } catch (IllegalArgumentException unused) {
        }
        this.aaa014 = false;
        aaa001();
        boolean zAaa002 = aaa002();
        aaa001("[Stop] Ready controller.onUsbDisconnected()");
        if (zAaa002) {
            this.aaa001.aaa069();
        }
        aaa001("[Stop] End");
    }

    private void aaa001() {
        Thread thread = this.aaa011;
        if (thread != null) {
            this.aaa013 = false;
            thread.interrupt();
            this.aaa011 = null;
            return;
        }
        aaa001("[StopReadingThread] No reading thread to stop");
    }

    static void aaa003(byte[] bArr) {
        aaa029 = 128;
        int i = 0;
        boolean z = false;
        while (i < bArr.length) {
            byte b = bArr[i];
            int i2 = b & 252;
            if (i2 == 176) {
                z = true;
            } else {
                if (i2 == 192) {
                    break;
                }
                if (i2 == 148) {
                    if ((b & 3) == 1) {
                        aaa029 = bArr[i + 1] & 255;
                    } else {
                        aaa029 = (bArr[i + 1] & 255) | ((bArr[i + 2] << 8) & 255);
                    }
                }
            }
            i += (b & 3) + 1;
        }
        if (z) {
            aaa028 = aaa002zz.CONTROL_ENDPOINT;
        } else {
            aaa028 = aaa002zz.INTERRUPT_ENDPOINT;
        }
    }

    private static void aaa000(int i, int i2) {
        aaa026 = i;
        aaa027 = i2;
    }

    synchronized boolean aaa000(String str) {
        this.aaa003 = (UsbManager) this.aaa000.getSystemService("usb");
        this.aaa002 = PendingIntent.getBroadcast(this.aaa000, 0, new Intent("com.stripe.bbpos.usbhost.USB_PERMISSION").setPackage(this.aaa000.getPackageName()), 33554432);
        IntentFilter intentFilter = new IntentFilter("com.stripe.bbpos.usbhost.USB_PERMISSION");
        if (Build.VERSION.SDK_INT >= 34) {
            this.aaa000.registerReceiver(this.aaa023, intentFilter, null, null, 2);
        } else {
            this.aaa000.registerReceiver(this.aaa023, intentFilter, null, null);
        }
        boolean z = !str.equalsIgnoreCase("");
        for (UsbDevice usbDevice : this.aaa003.getDeviceList().values()) {
            if ((usbDevice.getVendorId() == 5538 && usbDevice.getProductId() == 257) || ((usbDevice.getVendorId() == 1155 && usbDevice.getProductId() == 22352) || ((usbDevice.getVendorId() == 11369 && usbDevice.getProductId() == 22352) || ((usbDevice.getVendorId() == 1155 && usbDevice.getProductId() == 22353) || ((usbDevice.getVendorId() == 11369 && usbDevice.getProductId() == 22353) || (usbDevice.getVendorId() == 11369 && usbDevice.getProductId() == 257)))))) {
                if (z) {
                    if (usbDevice.getDeviceName().equalsIgnoreCase(str)) {
                        aaa000(usbDevice.getVendorId(), usbDevice.getProductId());
                        this.aaa003.requestPermission(usbDevice, this.aaa002);
                        aaa001("[connect] BBPOS device USB found");
                        return true;
                    }
                } else {
                    aaa000(usbDevice.getVendorId(), usbDevice.getProductId());
                    this.aaa003.requestPermission(usbDevice, this.aaa002);
                    aaa001("[connect] BBPOS device USB found");
                    return true;
                }
            }
        }
        try {
            this.aaa000.unregisterReceiver(this.aaa023);
        } catch (IllegalArgumentException unused) {
        }
        return false;
    }

    void aaa001(byte[] bArr) {
        int i;
        int i2;
        this.aaa017.write(bArr, 0, bArr.length);
        byte[] byteArray = this.aaa017.toByteArray();
        if (byteArray.length != 0 && byteArray.length >= 4 && byteArray.length >= (i2 = (i = ((byteArray[2] & 255) << 8) | (byteArray[3] & 255)) + 5)) {
            int i3 = i + 4;
            byte[] bArr2 = new byte[i3];
            System.arraycopy(byteArray, 0, bArr2, 0, i3);
            aaa001("[dataReceived] BBUsbManager Received command : " + ccc071zz.aaa000(bArr2));
            this.aaa017.reset();
            this.aaa017.write(byteArray, i + 5, (byteArray.length - i3) - 1);
            if (aaa007zz.aaa000(bArr2) == byteArray[i3]) {
                Arrays.fill(this.aaa018, (byte) 0);
                this.aaa018[0] = 1;
                if (aaa003() == aaa002zz.CONTROL_ENDPOINT) {
                    this.aaa018[0] = 3;
                }
                int i4 = 1;
                for (int i5 = 1; i5 < this.aaa015; i5++) {
                    int i6 = i5 - 1;
                    if (i6 < i2 && i6 < byteArray.length) {
                        this.aaa018[i4] = byteArray[i6];
                    } else {
                        this.aaa018[i4] = 0;
                    }
                    i4++;
                    byte[] bArr3 = this.aaa018;
                    if (i4 >= bArr3.length) {
                        aaa002(bArr3);
                        Arrays.fill(this.aaa018, (byte) 0);
                        i4 = 0;
                    }
                }
                if (i4 > 0) {
                    byte[] bArr4 = this.aaa019;
                    if (bArr4 != null && bArr4.length == i4) {
                        Arrays.fill(bArr4, (byte) 0);
                    } else {
                        this.aaa019 = new byte[i4];
                    }
                    byte[] bArr5 = this.aaa018;
                    byte[] bArr6 = this.aaa019;
                    System.arraycopy(bArr5, 0, bArr6, 0, bArr6.length);
                    aaa002(this.aaa019);
                }
            } else {
                this.aaa001.aaa009("CRC error (8)");
            }
            if (this.aaa017.size() > 0) {
                aaa001(new byte[0]);
            }
        }
    }

    private boolean aaa002() {
        aaa001("[close] Close USB device connection");
        synchronized (aaa025) {
            if (this.aaa005 == null) {
                return false;
            }
            aaa001("Close USB device connection. Release interface");
            this.aaa005.releaseInterface(this.aaa006);
            this.aaa005.close();
            this.aaa005 = null;
            return true;
        }
    }

    UsbInterface aaa000(UsbDevice usbDevice) {
        int interfaceCount = usbDevice.getInterfaceCount();
        aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface count : " + interfaceCount);
        for (int i = 0; i < interfaceCount; i++) {
            UsbInterface usbInterface = usbDevice.getInterface(i);
            int interfaceClass = usbInterface.getInterfaceClass();
            if (interfaceClass == 3) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class HID");
                return usbInterface;
            }
            if (interfaceClass == 255) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Vender spec");
            } else if (interfaceClass == 254) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class App spec");
            } else if (interfaceClass == 1) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Audio");
            } else if (interfaceClass == 10) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class CDC data");
            } else if (interfaceClass == 2) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Comm");
            } else if (interfaceClass == 13) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Content sec");
            } else if (interfaceClass == 11) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class CSCID");
            } else if (interfaceClass == 9) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class HUB");
            } else if (interfaceClass == 8) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Mass storage");
            } else if (interfaceClass == 239) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Misc");
            } else if (interfaceClass == 0) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Per interface");
            } else if (interfaceClass == 5) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Physica");
            } else if (interfaceClass == 7) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Printer");
            } else if (interfaceClass == 6) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Still image");
            } else if (interfaceClass == 14) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Video");
            } else if (interfaceClass == 224) {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class Wireless controller");
            } else {
                aaa001("[findHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Class other");
            }
        }
        return null;
    }

    synchronized boolean aaa000(UsbDevice usbDevice, UsbInterface usbInterface) {
        aaa001("[setHIDInterface] device : " + usbDevice + ", intf : " + usbInterface);
        synchronized (aaa025) {
            UsbDeviceConnection usbDeviceConnection = this.aaa005;
            if (usbDeviceConnection != null) {
                UsbInterface usbInterface2 = this.aaa006;
                if (usbInterface2 != null) {
                    usbDeviceConnection.releaseInterface(usbInterface2);
                    this.aaa006 = null;
                }
                this.aaa005.close();
                this.aaa004 = null;
                this.aaa005 = null;
                this.aaa007 = null;
                this.aaa008 = null;
            }
            if (usbDevice != null && usbInterface != null) {
                int endpointCount = usbInterface.getEndpointCount();
                aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  End point count : " + endpointCount);
                UsbEndpoint usbEndpoint = null;
                UsbEndpoint usbEndpoint2 = null;
                for (int i = 0; i < endpointCount; i++) {
                    UsbEndpoint endpoint = usbInterface.getEndpoint(i);
                    if (endpoint.getType() == 2) {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : USB_ENDPOINT_XFER_BULK");
                    } else if (endpoint.getType() == 1) {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : USB_ENDPOINT_XFER_ISOC");
                    } else if (endpoint.getType() == 0) {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : USB_ENDPOINT_XFER_CONTROL");
                    } else if (endpoint.getType() == 3) {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : USB_ENDPOINT_XFER_INT");
                        if (endpoint.getDirection() == 128) {
                            aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " (object : " + endpoint + ")");
                            usbEndpoint = endpoint;
                        } else {
                            aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " (object : " + endpoint + ")");
                            usbEndpoint2 = endpoint;
                        }
                    }
                    if (endpoint.getDirection() == 128) {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : Input direction");
                    } else {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : Output direction");
                    }
                    aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + ",  Interface  EndPoint " + endpoint.getEndpointNumber() + " : Max packet size " + endpoint.getMaxPacketSize());
                }
                UsbManager usbManager = this.aaa003;
                UsbDeviceConnection usbDeviceConnectionOpenDevice = usbManager != null ? usbManager.openDevice(usbDevice) : null;
                if (usbDeviceConnectionOpenDevice != null) {
                    aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + " Open succeeded");
                    if (usbDeviceConnectionOpenDevice.claimInterface(usbInterface, true)) {
                        aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + " Claim interface succeeded");
                        this.aaa004 = usbDevice;
                        this.aaa005 = usbDeviceConnectionOpenDevice;
                        this.aaa006 = usbInterface;
                        this.aaa007 = usbEndpoint2;
                        this.aaa008 = usbEndpoint;
                        aaa001("[setHIDInterface] Device connection RAW descriptors : " + ccc071zz.aaa000(this.aaa005.getRawDescriptors()));
                        this.aaa015 = 128;
                        UsbEndpoint usbEndpoint3 = this.aaa007;
                        if (usbEndpoint3 != null) {
                            this.aaa018 = new byte[usbEndpoint3.getMaxPacketSize()];
                            aaa001("[setHIDInterface] mEpWriteInt.getMaxPacketSize() " + this.aaa007.getMaxPacketSize());
                        }
                        synchronized (this.aaa009) {
                            byte[] bArr = new byte[100];
                            int iControlTransfer = this.aaa005.controlTransfer(129, 6, 8704, 0, bArr, 100, 1000);
                            aaa001("[setHIDInterface] transferResult : " + iControlTransfer);
                            if (iControlTransfer < 0) {
                                int iControlTransfer2 = this.aaa005.controlTransfer(129, 6, 8704, 0, bArr, 100, 1000);
                                aaa001("[setHIDInterface] Retry transferResult : " + iControlTransfer2);
                                if (iControlTransfer2 < 0) {
                                    usbDeviceConnectionOpenDevice.close();
                                    this.aaa001.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_USB, "USB controlTransfer timeout");
                                    return false;
                                }
                            }
                            aaa001("[setHIDInterface] Get report Descriptor : " + ccc071zz.aaa000(bArr));
                            aaa003(bArr);
                            aaa001("[setHIDInterface] usbEndPointType : " + aaa028 + ", hidReportDescriptorReportCount : " + aaa029);
                            if (aaa003() == aaa002zz.CONTROL_ENDPOINT) {
                                int i2 = aaa029;
                                if (i2 > 64) {
                                    this.aaa015 = i2 + 1;
                                } else {
                                    this.aaa015 = 129;
                                }
                                aaa001("[setHIDInterface] HID report size : " + this.aaa015);
                                this.aaa018 = new byte[this.aaa015];
                            } else {
                                this.aaa015 = aaa029 + 1;
                                aaa001("[setHIDInterface] HID report size : " + this.aaa015);
                                this.aaa018 = new byte[this.aaa015];
                            }
                            aaa001("USB Device " + usbDevice.getDeviceId() + " Call start");
                            aaa000();
                            this.aaa017 = new ByteArrayOutputStream();
                            this.aaa014 = true;
                            this.aaa001.aaa088();
                            return true;
                        }
                    }
                    aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + " Claim interface failed");
                    usbDeviceConnectionOpenDevice.close();
                    this.aaa001.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_USB, "USB Device Claim interface failed");
                    return false;
                }
                aaa001("[setHIDInterface] USB Device " + usbDevice.getDeviceId() + " Open failed");
                this.aaa001.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_USB, "Open device failed");
                return false;
            }
            this.aaa001.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_USB, "USB device is null or interface is null");
            return false;
        }
    }

    private void aaa000() {
        if (this.aaa011 == null) {
            Thread thread = new Thread(this.aaa024);
            this.aaa011 = thread;
            thread.start();
            return;
        }
        aaa001("[StartReadingThread] Reading thread already started");
    }

    void aaa000(ccc016zz ccc016zzVar) {
        this.aaa022 = ccc016zzVar;
    }

    void aaa000(byte[] bArr) {
        aaa001(bArr);
    }
}
