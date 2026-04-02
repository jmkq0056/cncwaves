package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothSocket;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelUuid;
import android.os.Process;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ccc054zz;
import com.sun.jna.platform.win32.WinError;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
final class ccc055zz {
    static BluetoothSocket aaa066;
    final BBDeviceController aaa003;
    private final Context aaa004;
    private final BluetoothAdapter aaa005;
    private BroadcastReceiver aaa006;
    private BluetoothAdapter.LeScanCallback aaa007;
    BluetoothGatt aaa008;
    BluetoothGattCharacteristic aaa009;
    BluetoothGattCharacteristic aaa010;
    private aaa007zz aaa015;
    private aaa008zz aaa016;
    private aaa009zz aaa017;
    private InputStream aaa018;
    private OutputStream aaa019;
    private int aaa020;
    private int aaa021;
    boolean aaa023;
    private ccc062zz aaa025;
    private int aaa026;
    private aaa011zz aaa027;
    private aaa013zz aaa028;
    private aaa013zz aaa029;
    private String[] aaa030;
    private final ArrayList<ccc062zz> aaa031;
    private final Object aaa032;
    private aaa010zz aaa033;
    private aaa012zz aaa034;
    private aaa006zz aaa035;
    private boolean aaa036;
    private boolean aaa037;
    private PipedOutputStream aaa038;
    private int aaa039;
    private final Handler aaa040;
    private Runnable aaa041;
    private ScanSettings aaa042;
    private List<ScanFilter> aaa043;
    private BluetoothLeScanner aaa044;
    private ScanCallback aaa045;
    private int aaa046;
    private int aaa047;
    private Thread aaa048;
    private final ccc055zz aaa049;
    private static final Object aaa050 = new Object();
    private static final Object aaa051 = new Object();
    private static final Object aaa052 = new Object();
    private static final Object aaa053 = new Object();
    static final Object aaa054 = new Object();
    static final Object aaa055 = new Object();
    private static final Object aaa056 = new Object();
    private static final Object aaa057 = new Object();
    private static final Object aaa058 = new Object();
    private static final UUID aaa059 = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    private static final UUID aaa060 = UUID.fromString("00000000-DECA-FADE-DECA-DEAFDECACAFF");
    private static final UUID aaa061 = UUID.fromString("0000FFA0-0000-1000-8000-00805F9B34FB");
    private static final UUID aaa062 = UUID.fromString("0000FFA1-0000-1000-8000-00805F9B34FB");
    private static final UUID aaa063 = UUID.fromString("0000FFA2-0000-1000-8000-00805F9B34FB");
    private static final UUID aaa064 = UUID.fromString("0000FFA3-0000-1000-8000-00805F9B34FB");
    private static final UUID aaa065 = UUID.fromString("00002902-0000-1000-8000-00805F9B34FB");
    static BluetoothDevice aaa067 = null;
    private static final String aaa068 = ccc055zz.class.getName();
    boolean aaa000 = false;
    boolean aaa001 = false;
    final Object aaa002 = new Object();
    private List<BluetoothDevice> aaa011 = new ArrayList();
    private List<BluetoothDevice> aaa012 = new ArrayList();
    private List<BluetoothDevice> aaa013 = new ArrayList();
    private boolean aaa014 = true;
    boolean aaa022 = false;
    private BluetoothDevice aaa024 = null;

    class aaa000zz extends BroadcastReceiver {
        aaa000zz() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (action.equalsIgnoreCase("android.bluetooth.device.action.FOUND")) {
                    synchronized (ccc055zz.aaa052) {
                        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                        String address = bluetoothDevice.getAddress();
                        String name = bluetoothDevice.getName();
                        if (name != null && address != null) {
                            if (name.endsWith("LE")) {
                                return;
                            }
                            if (bluetoothDevice.getType() == 1 || bluetoothDevice.getType() == 3 || bluetoothDevice.getType() == 0) {
                                if (ccc055zz.this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                                    if (bluetoothDevice.getType() == 1 || bluetoothDevice.getType() == 3) {
                                        synchronized (ccc055zz.aaa053) {
                                            for (int i = 0; i < ccc055zz.this.aaa011.size(); i++) {
                                                ccc055zz ccc055zzVar = ccc055zz.this;
                                                if (ccc055zzVar.aaa000((BluetoothDevice) ccc055zzVar.aaa011.get(i), bluetoothDevice)) {
                                                    return;
                                                }
                                            }
                                            if (ccc055zz.this.aaa013 == null) {
                                                ccc055zz.this.aaa013 = new ArrayList();
                                            }
                                            int i2 = 0;
                                            while (i2 < ccc055zz.this.aaa013.size()) {
                                                ccc055zz ccc055zzVar2 = ccc055zz.this;
                                                if (ccc055zzVar2.aaa000((BluetoothDevice) ccc055zzVar2.aaa013.get(i2), bluetoothDevice)) {
                                                    ccc055zz.this.aaa013.remove(i2);
                                                    i2--;
                                                }
                                                i2++;
                                            }
                                            if (ccc055zz.this.aaa030 != null && ccc055zz.this.aaa030.length != 0) {
                                                for (int i3 = 0; i3 < ccc055zz.this.aaa030.length; i3++) {
                                                    Locale locale = Locale.ENGLISH;
                                                    if (name.toLowerCase(locale).contains(ccc055zz.this.aaa030[i3].toLowerCase(locale))) {
                                                        if (ccc055zz.this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                                                            ccc055zz.this.aaa011.add(bluetoothDevice);
                                                            ccc055zz.this.aaa013.add(bluetoothDevice);
                                                            ccc055zz ccc055zzVar3 = ccc055zz.this;
                                                            ccc055zzVar3.aaa003.aaa003(ccc055zzVar3.aaa013);
                                                        }
                                                        return;
                                                    }
                                                }
                                            }
                                            if (ccc055zz.this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                                                ccc055zz.this.aaa011.add(bluetoothDevice);
                                                ccc055zz.this.aaa013.add(bluetoothDevice);
                                                ccc055zz ccc055zzVar4 = ccc055zz.this;
                                                ccc055zzVar4.aaa003.aaa003(ccc055zzVar4.aaa013);
                                            }
                                            return;
                                        }
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                if (action.equalsIgnoreCase("android.bluetooth.adapter.action.DISCOVERY_FINISHED")) {
                    if (ccc055zz.this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                        synchronized (ccc055zz.aaa053) {
                            for (int size = ccc055zz.this.aaa013.size() - 1; size >= 0; size--) {
                                BluetoothDevice bluetoothDevice2 = (BluetoothDevice) ccc055zz.this.aaa013.get(size);
                                if ((ccc055zz.this.aaa011 == null || !ccc055zz.this.aaa011.contains(bluetoothDevice2)) && (ccc055zz.this.aaa012 == null || !ccc055zz.this.aaa012.contains(bluetoothDevice2))) {
                                    ccc055zz.this.aaa013.remove(size);
                                }
                            }
                            ccc055zz.this.aaa011 = new ArrayList();
                            ccc055zz.this.aaa012 = new ArrayList();
                        }
                        ccc055zz.this.aaa005.startDiscovery();
                        return;
                    }
                    return;
                }
                if (action.equalsIgnoreCase("android.bluetooth.adapter.action.STATE_CHANGED")) {
                    if (ccc055zz.this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                        if (ccc055zz.this.aaa005.getState() == 10 || ccc055zz.this.aaa005.getState() == 13 || ccc055zz.this.aaa005.getState() == 0) {
                            ccc055zz.this.aaa036();
                            ccc055zz.this.aaa015();
                            ccc055zz ccc055zzVar5 = ccc055zz.this;
                            ccc055zzVar5.aaa001(ccc055zzVar5.aaa030, ccc055zz.this.aaa039);
                            return;
                        }
                        return;
                    }
                    if (ccc055zz.this.aaa005.getState() == 10 || ccc055zz.this.aaa005.getState() == 13 || ccc055zz.this.aaa005.getState() == 0) {
                        aaa013zz aaa013zzVar = ccc055zz.this.aaa028;
                        ccc055zz.this.aaa001(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
                        ccc055zz.this.aaa015();
                        if (ccc055zz.this.aaa005.getState() == 13) {
                            ccc055zz ccc055zzVar6 = ccc055zz.this;
                            if (ccc055zzVar6.aaa008 != null) {
                                ccc055zzVar6.aaa003.aaa020.aaa000("Android/iOS Bluetooth is off (3151)", false);
                                ccc055zz.this.aaa032();
                                if (aaa013zzVar == aaa013zz.STATE_CONNECTING) {
                                    ccc055zz.this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3025)");
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (action.equalsIgnoreCase("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                    BluetoothDevice bluetoothDevice3 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    BluetoothDevice bluetoothDevice4 = ccc055zz.aaa067;
                    if (bluetoothDevice4 == null || !bluetoothDevice4.getAddress().equalsIgnoreCase(bluetoothDevice3.getAddress()) || ccc055zz.this.aaa028 == aaa013zz.STATE_STOPPING || ccc055zz.this.aaa028 == aaa013zz.STATE_NONE) {
                        return;
                    }
                    ccc055zz.this.aaa001(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
                    ccc055zz.this.aaa015();
                    ccc055zz.this.aaa003.aaa020.aaa000("Connection drop (3059)", false);
                    return;
                }
                if (action.equalsIgnoreCase("android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED")) {
                    if (ccc055zz.this.aaa028 == aaa013zz.STATE_STOPPING || ccc055zz.this.aaa028 == aaa013zz.STATE_NONE) {
                        return;
                    }
                    ccc055zz.this.aaa001(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
                    ccc055zz.this.aaa015();
                    ccc055zz.this.aaa003.aaa020.aaa000("Connection drop (3060)", false);
                    return;
                }
                if (!action.equalsIgnoreCase("android.bluetooth.device.action.BOND_STATE_CHANGED")) {
                    if (action.equalsIgnoreCase("android.bluetooth.device.action.UUID")) {
                        return;
                    }
                    return;
                }
                int intExtra = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", -1);
                int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", -1);
                if (intExtra == 11) {
                    if (intExtra2 == 12 || intExtra2 == 10) {
                        synchronized (ccc055zz.aaa051) {
                            ccc055zz.this.aaa000 = true;
                            ccc055zz.aaa051.notifyAll();
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    class aaa001zz implements Runnable {
        final /* synthetic */ String[] aaa000;
        final /* synthetic */ int aaa001;

        class aaa000zz extends ScanCallback {
            aaa000zz() {
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onBatchScanResults(List<ScanResult> list) {
                for (ScanResult scanResult : list) {
                    ccc055zz.this.aaa000(scanResult.getDevice(), scanResult.getScanRecord().getBytes());
                }
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onScanFailed(int i) {
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onScanResult(int i, ScanResult scanResult) {
                ccc055zz.this.aaa000(scanResult.getDevice(), scanResult.getScanRecord().getBytes());
            }
        }

        aaa001zz(String[] strArr, int i) {
            this.aaa000 = strArr;
            this.aaa001 = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa000(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            ccc055zz.this.aaa000(bluetoothDevice, bArr);
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            synchronized (ccc055zz.this.aaa049) {
                try {
                    try {
                        ccc055zz.this.aaa000(aaa013zz.STATE_SCANNING_ONLY);
                        ccc055zz.this.aaa030 = this.aaa000;
                        ccc055zz.this.aaa017();
                        synchronized (ccc055zz.aaa058) {
                            try {
                                ccc055zz.aaa058.wait(1000L);
                            } catch (Exception unused) {
                            }
                        }
                        ccc055zz.this.aaa012 = new ArrayList();
                        if (ccc055zz.this.aaa044 == null) {
                            ccc055zz ccc055zzVar = ccc055zz.this;
                            ccc055zzVar.aaa044 = ccc055zzVar.aaa005.getBluetoothLeScanner();
                        }
                        ccc055zz.this.aaa045 = new aaa000zz();
                        ccc055zz.this.aaa023();
                        ccc055zz.this.aaa022();
                        ccc055zz.this.aaa044.startScan(ccc055zz.this.aaa043, ccc055zz.this.aaa042, ccc055zz.this.aaa045);
                        ccc055zz.this.aaa016 = new aaa008zz(ccc055zz.this, this.aaa001, null);
                        ccc055zz.this.aaa016.start();
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    ccc055zz.this.aaa036();
                    ccc055zz.this.aaa037();
                    ccc055zz.this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3036)");
                }
            }
        }
    }

    class aaa002zz implements Runnable {
        final /* synthetic */ BluetoothDevice aaa000;

        aaa002zz(BluetoothDevice bluetoothDevice) {
            this.aaa000 = bluetoothDevice;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            String str = Build.MANUFACTURER;
            if (str.equalsIgnoreCase("samsung") || str.equalsIgnoreCase("Google")) {
                try {
                    int bondState = this.aaa000.getBondState();
                    if (bondState == 10 || bondState == 11) {
                        this.aaa000.getClass().getMethod("createBond", null).invoke(this.aaa000, null);
                        synchronized (ccc055zz.aaa051) {
                            ccc055zz.this.aaa000 = false;
                            while (!ccc055zz.this.aaa000) {
                                try {
                                    ccc055zz.aaa051.wait();
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            ccc055zz.this.aaa024 = this.aaa000;
            if (ccc055zz.this.aaa017 != null) {
                ccc055zz.this.aaa017.aaa000();
                ccc055zz.this.aaa017 = null;
            }
            ccc055zz ccc055zzVar = ccc055zz.this;
            ccc055zzVar.aaa023 = true;
            ccc055zzVar.aaa001(aaa013zz.STATE_CONNECTING);
            ccc055zz.this.aaa046 = 0;
            ccc055zz.this.aaa017 = ccc055zz.this.new aaa009zz(this.aaa000);
            ccc055zz.this.aaa017.start();
        }
    }

    class aaa003zz extends BluetoothGattCallback {
        ByteArrayOutputStream aaa000 = new ByteArrayOutputStream();
        final /* synthetic */ BluetoothDevice aaa001;

        aaa003zz(BluetoothDevice bluetoothDevice) {
            this.aaa001 = bluetoothDevice;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa000() {
            ccc055zz.this.aaa032();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa001() {
            for (int i = 0; i < 50; i++) {
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
                if (!ccc055zz.this.aaa037) {
                    return;
                }
            }
            if (ccc055zz.this.aaa037) {
                ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                BBDeviceController bBDeviceController = ccc055zz.this.aaa003;
                bBDeviceController.aaa014 = false;
                bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "BLE initialization no responsed");
                ccc055zz.this.aaa016();
                ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            boolean z;
            try {
                byte[] value = bluetoothGattCharacteristic.getValue();
                ccc055zz ccc055zzVar = ccc055zz.this;
                if (ccc055zzVar.aaa003.aaa014) {
                    ccc055zzVar.aaa038.write(value, 0, value.length);
                    ccc055zz.this.aaa038.flush();
                    return;
                }
                this.aaa000.write(value, 0, value.length);
                byte[] byteArray = this.aaa000.toByteArray();
                if (!ccc055zz.this.aaa023) {
                    while (byteArray != null && byteArray.length >= 7) {
                        if (byteArray[0] == 0 && byteArray[1] == 0) {
                            int i = ((byteArray[2] & 255) << 8) | (byteArray[3] & 255);
                            int i2 = i + 5;
                            if (byteArray.length >= i2) {
                                int i3 = i + 4;
                                byte[] bArr = new byte[i3];
                                System.arraycopy(byteArray, 0, bArr, 0, i3);
                                if (ccc056zz.aaa000(bArr) == byteArray[i3]) {
                                    this.aaa000.reset();
                                    int i4 = i + 5;
                                    if (i4 < byteArray.length) {
                                        this.aaa000.write(byteArray, i4, (byteArray.length - i3) - 1);
                                    }
                                    byte[] bArr2 = new byte[i2];
                                    System.arraycopy(byteArray, 0, bArr2, 0, i2);
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    byteArrayOutputStream.write(WinError.ERROR_BUSY);
                                    for (int i5 = 0; i5 < i2; i5++) {
                                        byte b = bArr2[i5];
                                        if (b == -86 || b == -69 || b == -52) {
                                            byteArrayOutputStream.write(HttpStatus.SC_NO_CONTENT);
                                        }
                                        byteArrayOutputStream.write(bArr2[i5]);
                                    }
                                    byteArrayOutputStream.write(WinError.ERROR_SEM_NOT_FOUND);
                                    ccc055zz.this.aaa003(byteArrayOutputStream.toByteArray());
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        int i6 = 0;
                        while (i6 < byteArray.length && byteArray[i6] != -86) {
                            i6++;
                        }
                        if (i6 > 0) {
                            this.aaa000.reset();
                            this.aaa000.write(byteArray, i6, byteArray.length - i6);
                            byteArray = this.aaa000.toByteArray();
                        }
                        int i7 = 1;
                        while (true) {
                            if (i7 >= byteArray.length) {
                                z = false;
                                break;
                            }
                            if (byteArray[i7] == -69) {
                                int i8 = 0;
                                for (int i9 = i7 - 1; i9 >= 0 && byteArray[i9] == -52; i9--) {
                                    i8++;
                                }
                                if (i8 % 2 == 0) {
                                    int i10 = i7 + 1;
                                    byte[] bArr3 = new byte[i10];
                                    System.arraycopy(byteArray, 0, bArr3, 0, i10);
                                    ccc055zz.this.aaa000(bArr3);
                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                    this.aaa000 = byteArrayOutputStream2;
                                    if (byteArray.length == i10) {
                                        byteArray = null;
                                    } else {
                                        byteArrayOutputStream2.write(byteArray, i10, byteArray.length - i10);
                                        byteArray = this.aaa000.toByteArray();
                                    }
                                    z = true;
                                }
                            }
                            i7++;
                        }
                        if (!z) {
                            return;
                        }
                    }
                    return;
                }
                if (byteArray.length <= 1) {
                    return;
                }
                while (true) {
                    int i11 = (byteArray[1] & 255) + 3;
                    if (i11 > byteArray.length) {
                        return;
                    }
                    byte[] bArr4 = new byte[i11];
                    System.arraycopy(byteArray, 0, bArr4, 0, i11);
                    ccc055zz.this.aaa000(bArr4);
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    this.aaa000 = byteArrayOutputStream3;
                    if (byteArray.length == i11) {
                        return;
                    }
                    byteArrayOutputStream3.write(byteArray, i11, byteArray.length - i11);
                    byteArray = this.aaa000.toByteArray();
                }
            } catch (Exception unused) {
                ccc055zz ccc055zzVar2 = ccc055zz.this;
                if (ccc055zzVar2.aaa022) {
                    ccc055zzVar2.aaa022 = false;
                    new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc055zz$aaa003zz$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.aaa000();
                        }
                    }).start();
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            synchronized (ccc055zz.this.aaa002) {
                ccc055zz ccc055zzVar = ccc055zz.this;
                ccc055zzVar.aaa001 = true;
                ccc055zzVar.aaa002.notifyAll();
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
            if (i2 == 2) {
                if (ccc055zz.this.aaa028 != aaa013zz.STATE_CONNECTING) {
                    ccc055zz.this.aaa016();
                    ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                    ccc055zz.this.aaa029();
                    return;
                }
                if (i == 0) {
                    ccc055zz ccc055zzVar = ccc055zz.this;
                    ccc055zzVar.aaa022 = true;
                    ccc055zzVar.aaa001(aaa013zz.STATE_CONNECTED);
                    ccc055zz.this.aaa024 = this.aaa001;
                    bluetoothGatt.discoverServices();
                    return;
                }
                ccc055zz.this.aaa016();
                ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                ccc055zz.this.aaa029();
                BBDeviceController bBDeviceController = ccc055zz.this.aaa003;
                bBDeviceController.aaa014 = false;
                bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3018)");
                return;
            }
            if (i2 == 0) {
                ccc055zz ccc055zzVar2 = ccc055zz.this;
                if (ccc055zzVar2.aaa003.aaa014 && ccc055zzVar2.aaa028 != aaa013zz.STATE_NONE) {
                    ccc055zz.this.aaa003.aaa010.aaa015();
                }
                ccc055zz.this.aaa016();
                ccc055zz ccc055zzVar3 = ccc055zz.this;
                ccc055zzVar3.aaa022 = false;
                synchronized (ccc055zzVar3.aaa002) {
                    ccc055zz ccc055zzVar4 = ccc055zz.this;
                    ccc055zzVar4.aaa001 = true;
                    ccc055zzVar4.aaa002.notifyAll();
                }
                synchronized (ccc055zz.this.aaa032) {
                    ccc055zz.this.aaa032.notify();
                }
                synchronized (ccc055zz.aaa056) {
                    ccc055zz.this.aaa035 = null;
                }
                ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                ccc055zz.this.aaa029();
                ccc055zz.this.aaa001(BBDeviceController.aaa005zz.NotifySkip);
                BBDeviceController bBDeviceController2 = ccc055zz.this.aaa003;
                if (bBDeviceController2.aaa022.aaa000 != ccc054zz.aaa000zz.NO_ERROR) {
                    bBDeviceController2.aaa081();
                    return;
                }
                if (bBDeviceController2.aaa013() != BBDeviceController.aaa002zz.CONNECTING) {
                    ccc055zz.this.aaa003.aaa020.aaa000("Unknown BT disconnection (3150)", false);
                    ccc055zz.this.aaa003.aaa080();
                    return;
                }
                ccc055zz ccc055zzVar5 = ccc055zz.this;
                ccc055zzVar5.aaa003.aaa014 = false;
                if (i != 133 || ccc055zzVar5.aaa047 >= 5 || !ccc055zz.this.aaa005.isEnabled()) {
                    ccc055zz.this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3020)(BLE status : " + i + ", newState : " + i2 + ")");
                    return;
                }
                ccc055zz.aaa019(ccc055zz.this);
                try {
                    Thread.sleep(3000L);
                } catch (Exception unused) {
                }
                ccc055zz ccc055zzVar6 = ccc055zz.this;
                ccc055zzVar6.aaa000(ccc055zzVar6.aaa024, false);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorWrite(final BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
            Process.setThreadPriority(-16);
            ccc055zz.this.aaa020 = 0;
            ccc055zz.this.aaa021 = -1;
            aaa000zz aaa000zzVar = null;
            ccc055zz.this.aaa034 = new aaa012zz(ccc055zz.this, aaa000zzVar);
            ccc055zz.this.aaa034.start();
            synchronized (ccc055zz.aaa056) {
                ccc055zz.this.aaa035 = new aaa006zz(ccc055zz.this, aaa000zzVar);
                ccc055zz.this.aaa035.start();
            }
            ccc055zz.this.aaa037 = true;
            new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc055zz$aaa003zz$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa000(bluetoothGatt);
                }
            }).start();
            new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc055zz$aaa003zz$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa001();
                }
            }).start();
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
            Object obj = ccc055zz.aaa055;
            synchronized (obj) {
                obj.notify();
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onReliableWriteCompleted(BluetoothGatt bluetoothGatt, int i) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
            BluetoothGattService service = bluetoothGatt.getService(ccc055zz.aaa061);
            if (service == null) {
                ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                BBDeviceController bBDeviceController = ccc055zz.this.aaa003;
                bBDeviceController.aaa014 = false;
                bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3021)");
                ccc055zz.this.aaa016();
                ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                ccc055zz.this.aaa029();
                return;
            }
            BluetoothGattCharacteristic characteristic = service.getCharacteristic(ccc055zz.aaa062);
            if (characteristic == null) {
                ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                BBDeviceController bBDeviceController2 = ccc055zz.this.aaa003;
                bBDeviceController2.aaa014 = false;
                bBDeviceController2.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3022)");
                ccc055zz.this.aaa016();
                ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                ccc055zz.this.aaa029();
                return;
            }
            ccc055zz.this.aaa014 = true;
            ccc055zz.this.aaa009 = service.getCharacteristic(ccc055zz.aaa063);
            ccc055zz.this.aaa010 = service.getCharacteristic(ccc055zz.aaa064);
            BluetoothGattDescriptor descriptor = characteristic.getDescriptor(ccc055zz.aaa065);
            if (descriptor == null) {
                ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                BBDeviceController bBDeviceController3 = ccc055zz.this.aaa003;
                bBDeviceController3.aaa014 = false;
                bBDeviceController3.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3023)");
                ccc055zz.this.aaa016();
                ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                ccc055zz.this.aaa029();
                return;
            }
            bluetoothGatt.setCharacteristicNotification(characteristic, true);
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            if (bluetoothGatt.writeDescriptor(descriptor)) {
                return;
            }
            ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
            BBDeviceController bBDeviceController4 = ccc055zz.this.aaa003;
            bBDeviceController4.aaa014 = false;
            bBDeviceController4.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3024)");
            ccc055zz.this.aaa016();
            ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
            ccc055zz.this.aaa029();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa000(BluetoothGatt bluetoothGatt) {
            try {
                Thread.sleep(200L);
            } catch (Exception unused) {
            }
            ccc055zz.this.aaa009.setValue(ccc071zz.aaa005("5507003F0000000101B8"));
            bluetoothGatt.requestConnectionPriority(1);
            bluetoothGatt.writeCharacteristic(ccc055zz.this.aaa009);
        }
    }

    class aaa004zz implements Runnable {
        aaa004zz() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            synchronized (ccc055zz.aaa058) {
                try {
                    ccc055zz.aaa058.wait(1000L);
                } catch (InterruptedException unused) {
                    return;
                }
            }
            if (ccc055zz.this.aaa037) {
                ccc055zz.this.aaa004(ccc071zz.aaa005("5507003F0000000101B8"));
            }
            synchronized (ccc055zz.aaa058) {
                try {
                    ccc055zz.aaa058.wait(4000L);
                } catch (InterruptedException unused2) {
                    return;
                }
            }
            if (ccc055zz.this.aaa037) {
                ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                ccc055zz.this.aaa001(BBDeviceController.aaa005zz.NotifyOnError);
                ccc055zz.this.aaa024 = null;
            }
        }
    }

    static class aaa005zz {
        int aaa000;
        int aaa001;
        byte[] aaa002;

        aaa005zz(int i, int i2, byte[] bArr) {
            this.aaa000 = i;
            this.aaa001 = i2;
            this.aaa002 = bArr;
        }

        protected static List<aaa005zz> aaa000(byte[] bArr) {
            byte b;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < bArr.length) {
                int i2 = i + 1;
                byte b2 = bArr[i];
                if (b2 == 0 || (b = bArr[i2]) == 0) {
                    break;
                }
                int i3 = i2 + b2;
                arrayList.add(new aaa005zz(b2, b, Arrays.copyOfRange(bArr, i + 2, i3)));
                i = i3;
            }
            return arrayList;
        }
    }

    private class aaa006zz extends Thread {
        List<byte[]> aaa000;

        private aaa006zz() {
            this.aaa000 = new ArrayList();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public synchronized void run() {
            while (ccc055zz.this.aaa022) {
                while (this.aaa000.size() <= 0) {
                    ccc055zz ccc055zzVar = ccc055zz.this;
                    if (!ccc055zzVar.aaa022) {
                        break;
                    }
                    synchronized (ccc055zzVar.aaa002) {
                        try {
                            ccc055zz.this.aaa001 = false;
                            while (true) {
                                ccc055zz ccc055zzVar2 = ccc055zz.this;
                                if (ccc055zzVar2.aaa001) {
                                    break;
                                } else {
                                    ccc055zzVar2.aaa002.wait();
                                }
                            }
                        } catch (InterruptedException unused) {
                        }
                    }
                }
                if (ccc055zz.this.aaa022) {
                    byte[] bArrRemove = this.aaa000.remove(0);
                    if (ccc055zz.this.aaa014) {
                        if (ccc057zz.aaa006) {
                            synchronized (ccc055zz.aaa058) {
                                try {
                                    ccc055zz.aaa058.wait(150L);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        ccc055zz.this.aaa009.setValue(bArrRemove);
                        ccc055zz ccc055zzVar3 = ccc055zz.this;
                        ccc055zzVar3.aaa008.writeCharacteristic(ccc055zzVar3.aaa009);
                        synchronized (ccc055zz.this.aaa002) {
                            try {
                                ccc055zz.this.aaa001 = false;
                                while (true) {
                                    ccc055zz ccc055zzVar4 = ccc055zz.this;
                                    if (ccc055zzVar4.aaa001) {
                                        break;
                                    } else {
                                        ccc055zzVar4.aaa002.wait();
                                    }
                                }
                            } catch (InterruptedException unused2) {
                            }
                        }
                    } else {
                        for (int i = 0; i < bArrRemove.length; i += 18) {
                            int iMin = Math.min(18, bArrRemove.length - i);
                            byte[] bArr = new byte[iMin];
                            System.arraycopy(bArrRemove, i, bArr, 0, iMin);
                            ccc055zz.this.aaa009.setValue(bArr);
                            ccc055zz ccc055zzVar5 = ccc055zz.this;
                            ccc055zzVar5.aaa008.writeCharacteristic(ccc055zzVar5.aaa009);
                            synchronized (ccc055zz.aaa058) {
                                try {
                                    ccc055zz.aaa058.wait(2L);
                                } catch (Exception unused3) {
                                }
                            }
                        }
                    }
                }
            }
        }

        /* synthetic */ aaa006zz(ccc055zz ccc055zzVar, aaa000zz aaa000zzVar) {
            this();
        }
    }

    class aaa007zz extends Thread {
        private final int aaa000;
        private boolean aaa001;

        /* synthetic */ aaa007zz(ccc055zz ccc055zzVar, int i, aaa000zz aaa000zzVar) {
            this(i);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.aaa000 <= 0) {
                return;
            }
            for (int i = 0; i < this.aaa000 * 10 && !this.aaa001; i++) {
                synchronized (ccc055zz.aaa058) {
                    try {
                        ccc055zz.aaa058.wait(100L);
                    } catch (Exception unused) {
                    }
                }
            }
            if (this.aaa001) {
                return;
            }
            ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
            ccc055zz.this.aaa014();
            ccc055zz.this.aaa003.aaa079();
        }

        private aaa007zz(int i) {
            this.aaa001 = false;
            this.aaa000 = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void aaa000() {
            this.aaa001 = true;
        }
    }

    class aaa008zz extends Thread {
        private final int aaa000;
        private boolean aaa001;

        /* synthetic */ aaa008zz(ccc055zz ccc055zzVar, int i, aaa000zz aaa000zzVar) {
            this(i);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.aaa000 <= 0) {
                return;
            }
            for (int i = 0; i < (this.aaa000 - 5) * 10 && !this.aaa001; i++) {
                synchronized (ccc055zz.aaa058) {
                    try {
                        ccc055zz.aaa058.wait(100L);
                    } catch (Exception unused) {
                    }
                }
            }
            if (this.aaa001) {
                return;
            }
            ccc055zz.this.aaa040.removeCallbacks(ccc055zz.this.aaa041);
            ccc055zz.this.aaa000(aaa013zz.STATE_NONE);
            synchronized (ccc055zz.aaa057) {
                if (ccc055zz.this.aaa045 != null) {
                    ccc055zz.this.aaa017();
                    if (ccc055zz.this.aaa044 != null) {
                        try {
                            ccc055zz.this.aaa044.stopScan(ccc055zz.this.aaa045);
                        } catch (Exception unused2) {
                        }
                    }
                    ccc055zz.this.aaa045 = null;
                }
            }
            ccc055zz.this.aaa003.aaa083();
        }

        private aaa008zz(int i) {
            this.aaa001 = false;
            this.aaa000 = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void aaa000() {
            this.aaa001 = true;
        }
    }

    class aaa009zz extends Thread {
        private BluetoothSocket aaa000;
        private BluetoothDevice aaa001;
        private boolean aaa002 = false;

        public aaa009zz(BluetoothDevice bluetoothDevice) {
            this.aaa001 = bluetoothDevice;
            try {
                if (ccc055zz.this.aaa046 == 0) {
                    this.aaa000 = bluetoothDevice.createRfcommSocketToServiceRecord(ccc055zz.aaa059);
                } else {
                    this.aaa000 = bluetoothDevice.createRfcommSocketToServiceRecord(ccc055zz.aaa060);
                }
            } catch (IOException | Exception unused) {
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (ccc055zz.this.aaa005.isDiscovering()) {
                ccc055zz.this.aaa005.cancelDiscovery();
            }
            try {
                if (this.aaa002) {
                    return;
                }
                this.aaa000.connect();
                if (this.aaa002) {
                    this.aaa000.close();
                    return;
                }
                ccc055zz.this.aaa001(aaa013zz.STATE_CONNECTING_STEP2);
                if (Build.MODEL.equalsIgnoreCase("T-Mobile myTouch Q")) {
                    synchronized (ccc055zz.aaa058) {
                        try {
                            ccc055zz.aaa058.wait(3000L);
                        } catch (Exception unused) {
                        }
                    }
                }
                synchronized (ccc055zz.aaa050) {
                    ccc055zz.this.aaa017 = null;
                }
                synchronized (ccc055zz.aaa057) {
                    if (ccc055zz.this.aaa028 == aaa013zz.STATE_CONNECTING_STEP2) {
                        ccc055zz.this.aaa000(this.aaa000);
                    } else {
                        try {
                            this.aaa000.close();
                        } catch (IOException | Exception unused2) {
                        }
                    }
                }
            } catch (Exception unused3) {
                synchronized (ccc055zz.aaa054) {
                    if (this.aaa002) {
                        return;
                    }
                    if (ccc055zz.this.aaa046 != 0) {
                        ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                        ccc055zz.this.aaa001(BBDeviceController.aaa005zz.NotifySkip);
                        ccc055zz.this.aaa024 = null;
                        synchronized (BBDeviceController.aaa024) {
                            BBDeviceController bBDeviceController = ccc055zz.this.aaa003;
                            bBDeviceController.aaa014 = false;
                            bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3029)");
                            synchronized (ccc055zz.aaa050) {
                                ccc055zz.this.aaa017 = null;
                                return;
                            }
                        }
                    }
                    ccc055zz.this.aaa046 = 1;
                    try {
                        InputStream inputStream = this.aaa000.getInputStream();
                        OutputStream outputStream = this.aaa000.getOutputStream();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        this.aaa000.close();
                    } catch (Exception unused4) {
                    }
                    ccc055zz ccc055zzVar = ccc055zz.this;
                    ccc055zzVar.aaa017 = ccc055zzVar.new aaa009zz(this.aaa001);
                    ccc055zz.this.aaa017.start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void aaa000() {
            BluetoothSocket bluetoothSocket = this.aaa000;
            if (bluetoothSocket != null) {
                try {
                    this.aaa002 = true;
                    bluetoothSocket.close();
                } catch (IOException | Exception unused) {
                }
            }
        }
    }

    class aaa011zz extends Thread {
        private boolean aaa000 = false;

        aaa011zz() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BBDeviceController bBDeviceController;
            int i = 0;
            while (!this.aaa000) {
                synchronized (ccc055zz.aaa058) {
                    try {
                        ccc055zz.aaa058.wait(100L);
                    } catch (Exception unused) {
                    }
                }
                i++;
                if (ccc057zz.aaa006) {
                    if (i * 100 >= 9000) {
                        break;
                    }
                } else if (i * 100 >= 1000) {
                    break;
                }
            }
            if (this.aaa000 || ccc055zz.this.aaa025 == null) {
                return;
            }
            if (ccc055zz.this.aaa026 < 4 && ccc055zz.this.aaa025 != null) {
                ccc055zz.aaa029(ccc055zz.this);
                ccc055zz ccc055zzVar = ccc055zz.this;
                ccc055zzVar.aaa000(ccc055zzVar.aaa025);
            } else if (ccc055zz.this.aaa025 != null) {
                if (ccc055zz.this.aaa003.aaa013() == BBDeviceController.aaa002zz.CONNECTING) {
                    ccc055zz.this.aaa016();
                    ccc055zz.this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                    ccc055zz.this.aaa001(aaa013zz.STATE_NONE);
                    ccc055zz.this.aaa029();
                    synchronized (BBDeviceController.aaa024) {
                        bBDeviceController = ccc055zz.this.aaa003;
                        bBDeviceController.aaa014 = false;
                    }
                    bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Initialization no response");
                } else {
                    ccc055zz.this.aaa003.aaa003(BBDeviceController.Error.COMM_ERROR, "Bluetooth (error code - 3033)");
                }
                ccc055zz.this.aaa015();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void aaa000() {
            this.aaa000 = true;
        }
    }

    private class aaa012zz extends Thread {
        private aaa012zz() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x004f, code lost:
        
            r0 = r3.aaa000;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
        
            if (r0.aaa022 == false) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0055, code lost:
        
            r0 = r0.aaa031;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0059, code lost:
        
            monitor-enter(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x005a, code lost:
        
            r1 = (com.stripe.bbpos.bbdevice.ccc062zz) r3.aaa000.aaa031.remove(0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0067, code lost:
        
            monitor-exit(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0068, code lost:
        
            r3.aaa000.aaa000(r1);
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x002b A[Catch: all -> 0x0073, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0013, B:9:0x0019, B:11:0x001f, B:13:0x0025, B:34:0x004f, B:36:0x0055, B:37:0x0059, B:40:0x0068, B:44:0x0070, B:15:0x002b, B:17:0x0031, B:18:0x0035, B:33:0x004e, B:19:0x0036, B:21:0x003c, B:24:0x003f, B:25:0x0046, B:29:0x004a, B:38:0x005a, B:39:0x0067), top: B:50:0x0001, inners: #1, #3 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized void run() {
            /*
                r3 = this;
                monitor-enter(r3)
            L1:
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                boolean r0 = r0.aaa022     // Catch: java.lang.Throwable -> L73
                if (r0 == 0) goto L71
            L7:
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                java.util.ArrayList r0 = com.stripe.bbpos.bbdevice.ccc055zz.aaa025(r0)     // Catch: java.lang.Throwable -> L73
                int r0 = r0.size()     // Catch: java.lang.Throwable -> L73
                if (r0 <= 0) goto L2b
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                boolean r1 = r0.aaa023     // Catch: java.lang.Throwable -> L73
                if (r1 == 0) goto L1f
                boolean r0 = com.stripe.bbpos.bbdevice.ccc055zz.aaa026(r0)     // Catch: java.lang.Throwable -> L73
                if (r0 != 0) goto L2b
            L1f:
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                boolean r1 = r0.aaa023     // Catch: java.lang.Throwable -> L73
                if (r1 != 0) goto L4f
                com.stripe.bbpos.bbdevice.ccc062zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.aaa027(r0)     // Catch: java.lang.Throwable -> L73
                if (r0 == 0) goto L4f
            L2b:
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                boolean r1 = r0.aaa022     // Catch: java.lang.Throwable -> L73
                if (r1 == 0) goto L4f
                java.lang.Object r0 = com.stripe.bbpos.bbdevice.ccc055zz.aaa016(r0)     // Catch: java.lang.Throwable -> L73
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L73
                com.stripe.bbpos.bbdevice.ccc055zz r1 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L48 java.lang.InterruptedException -> L4a
                boolean r2 = r1.aaa022     // Catch: java.lang.Throwable -> L48 java.lang.InterruptedException -> L4a
                if (r2 != 0) goto L3f
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L48
                monitor-exit(r3)
                return
            L3f:
                java.lang.Object r1 = com.stripe.bbpos.bbdevice.ccc055zz.aaa016(r1)     // Catch: java.lang.Throwable -> L48 java.lang.InterruptedException -> L4a
                r1.wait()     // Catch: java.lang.Throwable -> L48 java.lang.InterruptedException -> L4a
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L48
                goto L7
            L48:
                r1 = move-exception
                goto L4d
            L4a:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L48
                monitor-exit(r3)
                return
            L4d:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L48
                throw r1     // Catch: java.lang.Throwable -> L73
            L4f:
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                boolean r1 = r0.aaa022     // Catch: java.lang.Throwable -> L73
                if (r1 == 0) goto L1
                java.util.ArrayList r0 = com.stripe.bbpos.bbdevice.ccc055zz.aaa025(r0)     // Catch: java.lang.Throwable -> L73
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L73
                com.stripe.bbpos.bbdevice.ccc055zz r1 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L6e
                java.util.ArrayList r1 = com.stripe.bbpos.bbdevice.ccc055zz.aaa025(r1)     // Catch: java.lang.Throwable -> L6e
                r2 = 0
                java.lang.Object r1 = r1.remove(r2)     // Catch: java.lang.Throwable -> L6e
                com.stripe.bbpos.bbdevice.ccc062zz r1 = (com.stripe.bbpos.bbdevice.ccc062zz) r1     // Catch: java.lang.Throwable -> L6e
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L6e
                com.stripe.bbpos.bbdevice.ccc055zz r0 = com.stripe.bbpos.bbdevice.ccc055zz.this     // Catch: java.lang.Throwable -> L73
                com.stripe.bbpos.bbdevice.ccc055zz.aaa000(r0, r1)     // Catch: java.lang.Throwable -> L73
                goto L1
            L6e:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L6e
                throw r1     // Catch: java.lang.Throwable -> L73
            L71:
                monitor-exit(r3)
                return
            L73:
                r0 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L73
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc055zz.aaa012zz.run():void");
        }

        /* synthetic */ aaa012zz(ccc055zz ccc055zzVar, aaa000zz aaa000zzVar) {
            this();
        }
    }

    enum aaa013zz {
        STATE_NONE,
        STATE_SCANNING_ONLY,
        STATE_PAIRING,
        STATE_CONNECTING,
        STATE_CONNECTING_STEP2,
        STATE_CONNECTED,
        STATE_INITIALIZED,
        STATE_STOPPING
    }

    ccc055zz(Context context, BBDeviceController bBDeviceController) {
        aaa000zz aaa000zzVar = null;
        aaa013zz aaa013zzVar = aaa013zz.STATE_NONE;
        this.aaa028 = aaa013zzVar;
        this.aaa029 = aaa013zzVar;
        this.aaa031 = new ArrayList<>();
        this.aaa032 = new Object();
        this.aaa033 = new aaa010zz(this, aaa000zzVar);
        this.aaa034 = new aaa012zz(this, aaa000zzVar);
        this.aaa036 = false;
        this.aaa037 = false;
        this.aaa041 = null;
        this.aaa046 = 0;
        this.aaa049 = this;
        this.aaa003 = bBDeviceController;
        this.aaa004 = context;
        this.aaa040 = new Handler(context.getMainLooper());
        BluetoothAdapter adapter = ((BluetoothManager) context.getSystemService("bluetooth")).getAdapter();
        this.aaa005 = adapter;
        if (bBDeviceController.aaa002() && adapter != null) {
            this.aaa044 = adapter.getBluetoothLeScanner();
            aaa023();
            aaa022();
        }
        this.aaa047 = 0;
    }

    static /* synthetic */ int aaa019(ccc055zz ccc055zzVar) {
        int i = ccc055zzVar.aaa047;
        ccc055zzVar.aaa047 = i + 1;
        return i;
    }

    static /* synthetic */ int aaa029(ccc055zz ccc055zzVar) {
        int i = ccc055zzVar.aaa026 + 1;
        ccc055zzVar.aaa026 = i;
        return i;
    }

    void aaa037() {
        synchronized (aaa057) {
            Runnable runnable = this.aaa041;
            if (runnable != null) {
                this.aaa040.removeCallbacks(runnable);
                this.aaa041 = null;
            }
            if (this.aaa005 == null) {
                return;
            }
            aaa033();
            if (this.aaa029 == aaa013zz.STATE_SCANNING_ONLY) {
                aaa000(aaa013zz.STATE_NONE);
                if (this.aaa045 != null) {
                    aaa017();
                    BluetoothLeScanner bluetoothLeScanner = this.aaa044;
                    if (bluetoothLeScanner != null) {
                        try {
                            bluetoothLeScanner.stopScan(this.aaa045);
                        } catch (Exception unused) {
                        }
                    }
                    this.aaa045 = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void aaa014() {
        if (this.aaa005.isDiscovering()) {
            this.aaa005.cancelDiscovery();
        }
    }

    private void aaa021() {
        synchronized (aaa057) {
            this.aaa020 = (this.aaa020 + 1) % 65536;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaa022() {
        if (this.aaa043 == null) {
            this.aaa043 = new ArrayList();
            ScanFilter.Builder builder = new ScanFilter.Builder();
            builder.setServiceUuid(ParcelUuid.fromString(aaa061.toString()));
            this.aaa043.add(builder.build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaa023() {
        if (this.aaa042 == null) {
            this.aaa042 = new ScanSettings.Builder().setScanMode(0).build();
        }
    }

    private void aaa024() {
        synchronized (aaa057) {
            this.aaa020 = 0;
            this.aaa021 = -1;
            aaa000zz aaa000zzVar = null;
            aaa010zz aaa010zzVar = new aaa010zz(this, aaa000zzVar);
            this.aaa033 = aaa010zzVar;
            aaa010zzVar.start();
            aaa012zz aaa012zzVar = new aaa012zz(this, aaa000zzVar);
            this.aaa034 = aaa012zzVar;
            aaa012zzVar.start();
            aaa004(ccc071zz.aaa005("5507013F0000000101B8"));
            Thread thread = new Thread(new aaa004zz());
            this.aaa048 = thread;
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa025() {
        aaa000(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa026() {
        aaa035();
        int i = this.aaa026;
        if (i >= 4) {
            this.aaa003.aaa003(BBDeviceController.Error.COMM_ERROR, "Bluetooth (error code - 3032)");
            aaa015();
            return;
        }
        this.aaa026 = i + 1;
        ccc062zz ccc062zzVar = this.aaa025;
        if (ccc062zzVar != null) {
            aaa000(ccc062zzVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void aaa029() {
        this.aaa037 = false;
        Thread thread = this.aaa048;
        if (thread != null) {
            thread.interrupt();
            try {
                this.aaa048.join(1000L);
            } catch (Exception unused) {
            }
            this.aaa048 = null;
        }
    }

    private synchronized void aaa030() {
        aaa035();
        aaa011zz aaa011zzVar = new aaa011zz();
        this.aaa027 = aaa011zzVar;
        aaa011zzVar.start();
    }

    synchronized void aaa015() {
        this.aaa025 = null;
        aaa035();
    }

    void aaa016() {
        BluetoothGatt bluetoothGatt = this.aaa008;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
            this.aaa008.close();
            this.aaa008 = null;
        }
    }

    void aaa017() {
        synchronized (aaa057) {
            BluetoothAdapter bluetoothAdapter = this.aaa005;
            if (bluetoothAdapter == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                return;
            }
            if (!bluetoothAdapter.isEnabled()) {
                this.aaa005.enable();
                int i = 0;
                while (!this.aaa005.isEnabled() && i < 600) {
                    Object obj = aaa058;
                    synchronized (obj) {
                        try {
                            obj.wait(100L);
                            i++;
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    PipedInputStream aaa018() {
        PipedInputStream pipedInputStream;
        synchronized (aaa057) {
            try {
                try {
                    this.aaa038 = new PipedOutputStream();
                    pipedInputStream = new PipedInputStream(this.aaa038);
                } catch (Exception unused) {
                    BBDeviceController bBDeviceController = this.aaa003;
                    bBDeviceController.aaa014 = false;
                    bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3027)");
                    aaa016();
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return pipedInputStream;
    }

    aaa013zz aaa019() {
        aaa013zz aaa013zzVar;
        synchronized (aaa057) {
            aaa013zzVar = this.aaa028;
        }
        return aaa013zzVar;
    }

    byte aaa020() {
        synchronized (aaa057) {
            ccc062zz ccc062zzVar = this.aaa025;
            if (ccc062zzVar == null) {
                return (byte) -1;
            }
            return ccc062zzVar.aaa002();
        }
    }

    void aaa027() {
        synchronized (aaa057) {
            BroadcastReceiver broadcastReceiver = this.aaa006;
            if (broadcastReceiver != null) {
                try {
                    this.aaa004.unregisterReceiver(broadcastReceiver);
                } catch (Exception unused) {
                }
            }
            this.aaa006 = new aaa000zz();
            IntentFilter intentFilter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.FOUND");
            intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED");
            intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
            int i = this.aaa004.getApplicationInfo().targetSdkVersion;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 31 || i < 31) {
                this.aaa004.registerReceiver(this.aaa006, intentFilter, "android.permission.BLUETOOTH", null);
            } else if (i2 >= 34) {
                this.aaa004.registerReceiver(this.aaa006, intentFilter, "android.permission.BLUETOOTH_CONNECT", null, 2);
            } else {
                this.aaa004.registerReceiver(this.aaa006, intentFilter, "android.permission.BLUETOOTH_CONNECT", null);
            }
        }
    }

    void aaa028() {
        synchronized (aaa057) {
            new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc055zz$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa026();
                }
            }).start();
        }
    }

    void aaa031() {
        synchronized (aaa057) {
            aaa007zz aaa007zzVar = this.aaa015;
            if (aaa007zzVar != null) {
                aaa007zzVar.aaa000();
                this.aaa015.interrupt();
                try {
                    this.aaa015.join(500L);
                } catch (InterruptedException unused) {
                }
                this.aaa015 = null;
            }
        }
    }

    void aaa032() {
        synchronized (aaa057) {
            this.aaa022 = false;
            aaa001(aaa013zz.STATE_NONE);
            BluetoothGatt bluetoothGatt = this.aaa008;
            if (bluetoothGatt != null) {
                bluetoothGatt.disconnect();
            }
        }
    }

    synchronized void aaa033() {
        aaa008zz aaa008zzVar = this.aaa016;
        if (aaa008zzVar != null) {
            aaa008zzVar.aaa000();
            this.aaa016.interrupt();
            try {
                this.aaa016.join(500L);
            } catch (InterruptedException unused) {
            }
            this.aaa016 = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void aaa034() {
        /*
            r5 = this;
            java.lang.Object r0 = com.stripe.bbpos.bbdevice.ccc055zz.aaa057
            monitor-enter(r0)
            android.content.BroadcastReceiver r1 = r5.aaa006     // Catch: java.lang.Throwable -> L68
            r2 = 0
            if (r1 == 0) goto Lf
            android.content.Context r3 = r5.aaa004     // Catch: java.lang.Exception -> Lf java.lang.Throwable -> L68
            r3.unregisterReceiver(r1)     // Catch: java.lang.Exception -> Lf java.lang.Throwable -> L68
            r5.aaa006 = r2     // Catch: java.lang.Exception -> Lf java.lang.Throwable -> L68
        Lf:
            java.lang.Object r1 = r5.aaa032     // Catch: java.lang.Throwable -> L68
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L68
            r3 = 0
            r5.aaa022 = r3     // Catch: java.lang.Throwable -> L65
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L65
            com.stripe.bbpos.bbdevice.ccc055zz$aaa013zz r1 = com.stripe.bbpos.bbdevice.ccc055zz.aaa013zz.STATE_STOPPING     // Catch: java.lang.Throwable -> L68
            r5.aaa001(r1)     // Catch: java.lang.Throwable -> L68
            com.stripe.bbpos.bbdevice.ccc055zz$aaa010zz r1 = r5.aaa033     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L29
            r1.join()     // Catch: java.lang.Exception -> L23 java.lang.Throwable -> L68
            goto L27
        L23:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L68
        L27:
            r5.aaa033 = r2     // Catch: java.lang.Throwable -> L68
        L29:
            java.lang.Object r1 = r5.aaa032     // Catch: java.lang.Throwable -> L68
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L68
            java.lang.Object r3 = r5.aaa032     // Catch: java.lang.Throwable -> L62
            r3.notify()     // Catch: java.lang.Throwable -> L62
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L62
            com.stripe.bbpos.bbdevice.ccc055zz$aaa012zz r1 = r5.aaa034     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L42
            r1.interrupt()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L68
            com.stripe.bbpos.bbdevice.ccc055zz$aaa012zz r1 = r5.aaa034     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L68
            r3 = 2000(0x7d0, double:9.88E-321)
            r1.join(r3)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L68
        L40:
            r5.aaa034 = r2     // Catch: java.lang.Throwable -> L68
        L42:
            java.lang.String r1 = android.os.Build.MODEL     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = "T-Mobile myTouch Q"
            boolean r1 = r1.equalsIgnoreCase(r2)     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L5b
            java.lang.Object r1 = com.stripe.bbpos.bbdevice.ccc055zz.aaa058     // Catch: java.lang.Throwable -> L68
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L68
            r2 = 1000(0x3e8, double:4.94E-321)
            r1.wait(r2)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
            goto L57
        L55:
            r2 = move-exception
            goto L59
        L57:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L55
            goto L5b
        L59:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L55
            throw r2     // Catch: java.lang.Throwable -> L68
        L5b:
            com.stripe.bbpos.bbdevice.ccc055zz$aaa013zz r1 = com.stripe.bbpos.bbdevice.ccc055zz.aaa013zz.STATE_NONE     // Catch: java.lang.Throwable -> L68
            r5.aaa001(r1)     // Catch: java.lang.Throwable -> L68
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L68
            return
        L62:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L62
            throw r2     // Catch: java.lang.Throwable -> L68
        L65:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L65
            throw r2     // Catch: java.lang.Throwable -> L68
        L68:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L68
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc055zz.aaa034():void");
    }

    synchronized void aaa035() {
        aaa011zz aaa011zzVar = this.aaa027;
        if (aaa011zzVar != null) {
            aaa011zzVar.aaa000();
            this.aaa027.interrupt();
            try {
                this.aaa027.join(300L);
            } catch (InterruptedException unused) {
            }
            this.aaa027 = null;
        }
    }

    void aaa036() {
        synchronized (aaa057) {
            if (this.aaa005 == null) {
                return;
            }
            aaa031();
            if (this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                aaa001(aaa013zz.STATE_NONE);
                aaa014();
            }
            aaa001(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class aaa010zz extends Thread {
        ByteArrayOutputStream aaa000;

        private aaa010zz() {
            this.aaa000 = new ByteArrayOutputStream();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa000() {
            ccc055zz.this.aaa000(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
            ccc055zz.this.aaa032();
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00e4  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized void run() {
            /*
                Method dump skipped, instruction units count: 384
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc055zz.aaa010zz.run():void");
        }

        /* synthetic */ aaa010zz(ccc055zz ccc055zzVar, aaa000zz aaa000zzVar) {
            this();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0090 A[Catch: Exception -> 0x0118, all -> 0x0172, TryCatch #1 {, blocks: (B:4:0x0003, B:5:0x000a, B:7:0x000e, B:17:0x0029, B:15:0x001e, B:16:0x0026, B:18:0x002b, B:20:0x0039, B:22:0x003d, B:24:0x004a, B:39:0x008a, B:41:0x0090, B:43:0x00bf, B:44:0x00ec, B:49:0x011e, B:51:0x0122, B:53:0x0131, B:55:0x0148, B:56:0x0162, B:57:0x0170, B:26:0x0051, B:28:0x0059, B:30:0x005d, B:32:0x006d, B:34:0x007b, B:36:0x0083), top: B:66:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0122 A[Catch: all -> 0x0172, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:5:0x000a, B:7:0x000e, B:17:0x0029, B:15:0x001e, B:16:0x0026, B:18:0x002b, B:20:0x0039, B:22:0x003d, B:24:0x004a, B:39:0x008a, B:41:0x0090, B:43:0x00bf, B:44:0x00ec, B:49:0x011e, B:51:0x0122, B:53:0x0131, B:55:0x0148, B:56:0x0162, B:57:0x0170, B:26:0x0051, B:28:0x0059, B:30:0x005d, B:32:0x006d, B:34:0x007b, B:36:0x0083), top: B:66:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void aaa003(byte[] r15) {
        /*
            Method dump skipped, instruction units count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc055zz.aaa003(byte[]):void");
    }

    void aaa004(byte[] bArr) {
        List<byte[]> list;
        synchronized (aaa057) {
            try {
                if (this.aaa003.aaa017() == BBDeviceController.aaa001zz.BLUETOOTH_2) {
                    this.aaa019.write(bArr, 0, bArr.length);
                    this.aaa019.flush();
                } else if (this.aaa003.aaa017() == BBDeviceController.aaa001zz.BLUETOOTH_4) {
                    synchronized (aaa056) {
                        aaa006zz aaa006zzVar = this.aaa035;
                        if (aaa006zzVar != null && (list = aaa006zzVar.aaa000) != null) {
                            list.add(bArr);
                        }
                    }
                    synchronized (this.aaa002) {
                        this.aaa001 = true;
                        this.aaa002.notify();
                    }
                }
            } catch (Exception unused) {
                aaa000(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
            }
        }
    }

    void aaa005(byte[] bArr) {
        synchronized (aaa057) {
            this.aaa036 = true;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (this.aaa023) {
                byteArrayOutputStream.write(85);
                byteArrayOutputStream.write((byte) (bArr.length + 14));
                byteArrayOutputStream.write(0);
                byteArrayOutputStream.write(67);
                byteArrayOutputStream.write((byte) (this.aaa020 >> 8));
                byteArrayOutputStream.write((byte) this.aaa020);
                byteArrayOutputStream.write(0);
                byteArrayOutputStream.write(1);
                byteArrayOutputStream.write(-107);
                byteArrayOutputStream.write(25);
                byteArrayOutputStream.write((byte) (bArr.length + 8));
                byteArrayOutputStream.write(27);
                byteArrayOutputStream.write(18);
                byteArrayOutputStream.write(-126);
                byteArrayOutputStream.write((byte) bArr.length);
                byteArrayOutputStream.write(bArr, 0, bArr.length);
                byteArrayOutputStream.write(aaa002(bArr));
                byteArrayOutputStream.write(aaa001(byteArrayOutputStream.toByteArray()));
                aaa004(byteArrayOutputStream.toByteArray());
            } else {
                aaa004(bArr);
            }
        }
    }

    void aaa002(String[] strArr, int i) {
        synchronized (aaa057) {
            try {
                try {
                    Runnable runnable = this.aaa041;
                    if (runnable != null) {
                        Handler handler = this.aaa040;
                        if (handler != null) {
                            handler.removeCallbacks(runnable);
                        }
                        this.aaa041 = null;
                    }
                } catch (Exception unused) {
                    aaa036();
                    aaa037();
                    this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3035)");
                }
            } catch (Exception unused2) {
            }
            if (this.aaa005 == null) {
                this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3008)");
                return;
            }
            if (this.aaa029 == aaa013zz.STATE_NONE) {
                if (this.aaa045 != null) {
                    aaa033();
                    aaa017();
                    BluetoothLeScanner bluetoothLeScanner = this.aaa044;
                    if (bluetoothLeScanner != null) {
                        try {
                            bluetoothLeScanner.stopScan(this.aaa045);
                        } catch (Exception unused3) {
                        }
                    }
                    this.aaa045 = null;
                }
                aaa001zz aaa001zzVar = new aaa001zz(strArr, i);
                this.aaa041 = aaa001zzVar;
                Handler handler2 = this.aaa040;
                if (handler2 != null) {
                    handler2.postDelayed(aaa001zzVar, 2000L);
                }
            }
        }
    }

    synchronized void aaa001(BBDeviceController.aaa005zz aaa005zzVar) {
        aaa000(aaa005zzVar);
        try {
            this.aaa004.unregisterReceiver(this.aaa006);
            this.aaa006 = null;
        } catch (Exception unused) {
        }
    }

    void aaa001(aaa013zz aaa013zzVar) {
        synchronized (aaa057) {
            this.aaa028 = aaa013zzVar;
        }
    }

    synchronized BluetoothDevice aaa001(BluetoothDevice bluetoothDevice) {
        synchronized (aaa053) {
            if (this.aaa013 != null) {
                for (int i = 0; i < this.aaa013.size(); i++) {
                    if (aaa000(this.aaa013.get(i), bluetoothDevice) && (this.aaa013.get(i).getType() == 1 || this.aaa013.get(i).getType() == 3 || this.aaa013.get(i).getType() == 0)) {
                        return this.aaa013.get(i);
                    }
                }
            }
            try {
                for (BluetoothDevice bluetoothDevice2 : BluetoothAdapter.getDefaultAdapter().getBondedDevices()) {
                    if (aaa000(bluetoothDevice2, bluetoothDevice)) {
                        return bluetoothDevice2;
                    }
                }
            } catch (Exception unused) {
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void aaa000(aaa013zz aaa013zzVar) {
        this.aaa029 = aaa013zzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(String[] strArr, int i) {
        synchronized (aaa057) {
            aaa027();
            this.aaa030 = strArr;
            aaa017();
            if (this.aaa005.isDiscovering()) {
                this.aaa005.cancelDiscovery();
            }
            this.aaa005.startDiscovery();
            aaa031();
            aaa007zz aaa007zzVar = new aaa007zz(this, i, null);
            this.aaa015 = aaa007zzVar;
            aaa007zzVar.start();
        }
    }

    void aaa000(BluetoothDevice bluetoothDevice, byte[] bArr) {
        synchronized (aaa057) {
            if (bluetoothDevice.getType() != 2) {
                return;
            }
            synchronized (aaa052) {
                List<aaa005zz> listAaa000 = aaa005zz.aaa000(bArr);
                if (listAaa000 != null) {
                    int i = 0;
                    boolean z = false;
                    for (int i2 = 0; i2 < listAaa000.size(); i2++) {
                        if (listAaa000.get(i2).aaa001 == 2 && listAaa000.get(i2).aaa002[0] == -96 && listAaa000.get(i2).aaa002[1] == -1) {
                            z = true;
                        }
                    }
                    if (z) {
                        boolean z2 = false;
                        for (int i3 = 0; i3 < listAaa000.size(); i3++) {
                            for (int i4 = 0; i4 < listAaa000.size(); i4++) {
                                if (listAaa000.get(i3).aaa001 == listAaa000.get(i4).aaa001 && i3 != i4 && listAaa000.get(i3).aaa001 != 9) {
                                    z2 = true;
                                }
                            }
                        }
                        if (z2) {
                            return;
                        }
                        for (int i5 = 0; i5 < listAaa000.size(); i5++) {
                            if (listAaa000.get(i5).aaa001 == -1 && listAaa000.get(i5).aaa000 >= 3) {
                                byte b = listAaa000.get(i5).aaa002[2];
                                if ((b & 2) == 2) {
                                    return;
                                }
                                if ((b & 3) == 3) {
                                    return;
                                }
                                if ((b & 16) != 16) {
                                    return;
                                }
                            }
                        }
                        synchronized (aaa053) {
                            if (this.aaa012 == null) {
                                this.aaa012 = new ArrayList();
                            }
                            for (int i6 = 0; i6 < this.aaa012.size(); i6++) {
                                if (aaa000(this.aaa012.get(i6), bluetoothDevice)) {
                                    return;
                                }
                            }
                            String[] strArr = this.aaa030;
                            if (strArr != null && strArr.length != 0) {
                                for (int i7 = 0; i7 < this.aaa030.length; i7++) {
                                    if (bluetoothDevice != null && bluetoothDevice.getName() != null) {
                                        String name = bluetoothDevice.getName();
                                        Locale locale = Locale.ENGLISH;
                                        if (name.toLowerCase(locale).contains(this.aaa030[i7].toLowerCase(locale))) {
                                            this.aaa012.add(bluetoothDevice);
                                            if (this.aaa013 == null) {
                                                this.aaa013 = new ArrayList();
                                            }
                                            while (true) {
                                                if (i < this.aaa013.size()) {
                                                    if (aaa000(this.aaa013.get(i), bluetoothDevice)) {
                                                        break;
                                                    } else {
                                                        i++;
                                                    }
                                                } else {
                                                    this.aaa013.add(bluetoothDevice);
                                                    if (this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                                                        this.aaa003.aaa004(this.aaa013);
                                                    }
                                                }
                                            }
                                            return;
                                        }
                                    }
                                }
                                return;
                            }
                            this.aaa012.add(bluetoothDevice);
                            if (this.aaa013 == null) {
                                this.aaa013 = new ArrayList();
                            }
                            while (true) {
                                if (i < this.aaa013.size()) {
                                    if (aaa000(this.aaa013.get(i), bluetoothDevice)) {
                                        break;
                                    } else {
                                        i++;
                                    }
                                } else {
                                    this.aaa013.add(bluetoothDevice);
                                    if (this.aaa028 == aaa013zz.STATE_SCANNING_ONLY) {
                                        this.aaa003.aaa004(this.aaa013);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    void aaa001(final String[] strArr, final int i) {
        synchronized (aaa057) {
            if (this.aaa005 == null) {
                this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3006)");
                return;
            }
            if (this.aaa028 == aaa013zz.STATE_NONE) {
                aaa001(aaa013zz.STATE_SCANNING_ONLY);
                this.aaa039 = i;
                this.aaa011 = new ArrayList();
                this.aaa013 = new ArrayList();
                new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc055zz$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa000(strArr, i);
                    }
                }).start();
            }
        }
    }

    synchronized boolean aaa001(ccc062zz ccc062zzVar) {
        if (this.aaa025 != null && (ccc062zzVar instanceof ccc057zz)) {
            return false;
        }
        aaa035();
        this.aaa026 = 0;
        synchronized (this.aaa031) {
            this.aaa031.add(ccc062zzVar);
        }
        synchronized (this.aaa032) {
            this.aaa032.notify();
        }
        return true;
    }

    synchronized byte aaa001(byte[] bArr) {
        int i;
        i = 0;
        for (byte b : bArr) {
            i += b;
        }
        return (byte) ((85 - (i & 255)) & 255);
    }

    private synchronized byte aaa002(byte[] bArr) {
        int i;
        i = 0;
        for (byte b : bArr) {
            i += b;
        }
        return (byte) ((117 - ((i + (bArr.length + bArr.length)) & 255)) & 255);
    }

    synchronized boolean aaa000(BluetoothDevice bluetoothDevice, BluetoothDevice bluetoothDevice2) {
        String address = bluetoothDevice.getAddress();
        String address2 = bluetoothDevice2.getAddress();
        if (address != null && address2 != null && address.equalsIgnoreCase(address2)) {
            return true;
        }
        String name = bluetoothDevice.getName();
        String name2 = bluetoothDevice2.getName();
        if (name != null && name.endsWith("-LE")) {
            name = name.substring(0, name.length() - 3);
        }
        if (name2 != null && name2.endsWith("-LE")) {
            name2 = name2.substring(0, name2.length() - 3);
        }
        if (name != null && name2 != null) {
            if (name.equalsIgnoreCase(name2)) {
                return true;
            }
        }
        return false;
    }

    void aaa000(BluetoothDevice bluetoothDevice) {
        synchronized (aaa057) {
            if (this.aaa005 == null) {
                this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3010)");
                return;
            }
            aaa017();
            try {
                int iIntValue = ((Integer) bluetoothDevice.getClass().getMethod("getType", null).invoke(bluetoothDevice, null)).intValue();
                if (iIntValue != 1 && iIntValue != 3 && iIntValue != 0) {
                    this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3011)");
                    this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                    return;
                }
            } catch (Exception unused) {
            }
            aaa001(aaa013zz.STATE_PAIRING);
            aaa031();
            if (this.aaa005.isDiscovering()) {
                this.aaa005.cancelDiscovery();
            }
            if (this.aaa006 == null) {
                aaa027();
            }
            new Thread(new aaa002zz(bluetoothDevice)).start();
        }
    }

    void aaa000(BluetoothDevice bluetoothDevice, boolean z) {
        synchronized (aaa057) {
            if (this.aaa005 == null) {
                this.aaa003.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Cannot get the bluetooth adapter");
                return;
            }
            aaa017();
            aaa016();
            if (this.aaa006 == null) {
                aaa027();
            }
            aaa001(aaa013zz.STATE_CONNECTING);
            this.aaa022 = false;
            aaa029();
            this.aaa023 = true;
            aaa003zz aaa003zzVar = new aaa003zz(bluetoothDevice);
            if (z) {
                this.aaa047 = 0;
            }
            this.aaa024 = bluetoothDevice;
            this.aaa008 = bluetoothDevice.connectGatt(this.aaa004, false, aaa003zzVar, 2);
        }
    }

    void aaa000(BluetoothSocket bluetoothSocket) {
        synchronized (aaa057) {
            aaa009zz aaa009zzVar = this.aaa017;
            if (aaa009zzVar != null) {
                aaa009zzVar.aaa000();
                this.aaa017 = null;
            }
            try {
                aaa066 = bluetoothSocket;
                this.aaa018 = bluetoothSocket.getInputStream();
                this.aaa019 = bluetoothSocket.getOutputStream();
                this.aaa022 = true;
                this.aaa037 = true;
                aaa001(aaa013zz.STATE_CONNECTED);
                aaa024();
            } catch (Exception unused) {
                this.aaa003.aaa001(BBDeviceController.aaa001zz.NONE);
                aaa001(BBDeviceController.aaa005zz.NotifyOnBTv2Disconnected);
                this.aaa024 = null;
                BBDeviceController bBDeviceController = this.aaa003;
                bBDeviceController.aaa014 = false;
                bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, "Bluetooth (error code - 3026)");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void aaa000(ccc062zz ccc062zzVar) {
        if (ccc062zzVar == null) {
            return;
        }
        byte[] bArrAaa001 = ccc062zzVar.aaa001();
        if (ccc062zzVar instanceof ccc057zz) {
            this.aaa025 = (ccc057zz) ccc062zzVar;
            aaa030();
        }
        aaa005(bArrAaa001);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005a A[Catch: all -> 0x00cf, TryCatch #10 {, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0014, B:11:0x0019, B:14:0x0020, B:16:0x0027, B:17:0x002a, B:19:0x002e, B:20:0x0031, B:22:0x0035, B:26:0x003d, B:27:0x003f, B:29:0x0043, B:31:0x004f, B:33:0x0053, B:34:0x0056, B:36:0x005a, B:37:0x005f, B:39:0x0069, B:40:0x006b, B:48:0x0075, B:49:0x0076, B:51:0x0081, B:53:0x0085, B:55:0x0089, B:56:0x008d, B:58:0x0091, B:59:0x009b, B:61:0x009f, B:62:0x00ab, B:64:0x00af, B:65:0x00b1, B:30:0x004d, B:25:0x003a, B:69:0x00b5, B:70:0x00b6, B:72:0x00c0, B:73:0x00c2, B:81:0x00cc, B:82:0x00cd, B:41:0x006c, B:45:0x0072, B:12:0x001a, B:13:0x001f, B:74:0x00c3, B:78:0x00c9), top: B:111:0x0004, inners: #0, #3, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069 A[Catch: all -> 0x00cf, TryCatch #10 {, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0014, B:11:0x0019, B:14:0x0020, B:16:0x0027, B:17:0x002a, B:19:0x002e, B:20:0x0031, B:22:0x0035, B:26:0x003d, B:27:0x003f, B:29:0x0043, B:31:0x004f, B:33:0x0053, B:34:0x0056, B:36:0x005a, B:37:0x005f, B:39:0x0069, B:40:0x006b, B:48:0x0075, B:49:0x0076, B:51:0x0081, B:53:0x0085, B:55:0x0089, B:56:0x008d, B:58:0x0091, B:59:0x009b, B:61:0x009f, B:62:0x00ab, B:64:0x00af, B:65:0x00b1, B:30:0x004d, B:25:0x003a, B:69:0x00b5, B:70:0x00b6, B:72:0x00c0, B:73:0x00c2, B:81:0x00cc, B:82:0x00cd, B:41:0x006c, B:45:0x0072, B:12:0x001a, B:13:0x001f, B:74:0x00c3, B:78:0x00c9), top: B:111:0x0004, inners: #0, #3, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0081 A[Catch: all -> 0x00cf, TryCatch #10 {, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0014, B:11:0x0019, B:14:0x0020, B:16:0x0027, B:17:0x002a, B:19:0x002e, B:20:0x0031, B:22:0x0035, B:26:0x003d, B:27:0x003f, B:29:0x0043, B:31:0x004f, B:33:0x0053, B:34:0x0056, B:36:0x005a, B:37:0x005f, B:39:0x0069, B:40:0x006b, B:48:0x0075, B:49:0x0076, B:51:0x0081, B:53:0x0085, B:55:0x0089, B:56:0x008d, B:58:0x0091, B:59:0x009b, B:61:0x009f, B:62:0x00ab, B:64:0x00af, B:65:0x00b1, B:30:0x004d, B:25:0x003a, B:69:0x00b5, B:70:0x00b6, B:72:0x00c0, B:73:0x00c2, B:81:0x00cc, B:82:0x00cd, B:41:0x006c, B:45:0x0072, B:12:0x001a, B:13:0x001f, B:74:0x00c3, B:78:0x00c9), top: B:111:0x0004, inners: #0, #3, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void aaa000(com.stripe.bbpos.bbdevice.BBDeviceController.aaa005zz r9) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc055zz.aaa000(com.stripe.bbpos.bbdevice.BBDeviceController$aaa005zz):void");
    }

    void aaa000(ccc065zz ccc065zzVar) {
        synchronized (aaa057) {
            if (this.aaa025 != null && ccc065zzVar.aaa002() == this.aaa025.aaa002()) {
                aaa015();
            }
        }
    }

    void aaa000(byte[] bArr) {
        synchronized (aaa057) {
            try {
                if (this.aaa023) {
                    int length = bArr.length - 1;
                    byte[] bArr2 = new byte[length];
                    System.arraycopy(bArr, 0, bArr2, 0, length);
                    if (aaa001(bArr2) != bArr[length]) {
                        return;
                    }
                }
                if (!this.aaa023) {
                    aaa003(bArr);
                    synchronized (this.aaa032) {
                        this.aaa032.notify();
                    }
                } else {
                    byte b = bArr[0];
                    if (b == 102) {
                        aaa015();
                        aaa029();
                        this.aaa003.aaa013("This is dual mode module");
                        aaa001(aaa013zz.STATE_INITIALIZED);
                        aaa067 = this.aaa024;
                        this.aaa024 = null;
                        this.aaa023 = false;
                        this.aaa026 = 0;
                        aaa000(new ccc057zz((byte) 80, new byte[]{16, 0, -6, -33, -123, 44, 1, 0}));
                    } else if (b == 119) {
                        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc055zz$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.aaa025();
                            }
                        }).start();
                    } else {
                        byte b2 = bArr[3];
                        if (b2 == 2) {
                            aaa015();
                            aaa029();
                            if (this.aaa003.aaa017() == BBDeviceController.aaa001zz.BLUETOOTH_2) {
                                this.aaa003.aaa004(this.aaa024);
                            } else if (this.aaa003.aaa017() == BBDeviceController.aaa001zz.BLUETOOTH_4) {
                                this.aaa003.aaa006(this.aaa024);
                            }
                            this.aaa003.aaa013("This is NOT dual mode module");
                            aaa001(aaa013zz.STATE_INITIALIZED);
                            aaa067 = this.aaa024;
                            this.aaa024 = null;
                        } else if (b2 == 65) {
                            if (((bArr[5] & 255) | ((bArr[4] & 255) << 8)) == this.aaa020) {
                                this.aaa036 = false;
                                aaa021();
                                if (this.aaa037) {
                                    aaa029();
                                    if (this.aaa003.aaa017() == BBDeviceController.aaa001zz.BLUETOOTH_2) {
                                        this.aaa003.aaa004(this.aaa024);
                                    } else if (this.aaa003.aaa017() == BBDeviceController.aaa001zz.BLUETOOTH_4) {
                                        this.aaa003.aaa006(this.aaa024);
                                    }
                                    this.aaa003.aaa013("This is NOT dual mode module");
                                    aaa001(aaa013zz.STATE_INITIALIZED);
                                    aaa067 = this.aaa024;
                                    this.aaa024 = null;
                                }
                                synchronized (this.aaa032) {
                                    this.aaa032.notify();
                                }
                            }
                        } else if (b2 == 66) {
                            int i = bArr[15] & 255;
                            int i2 = ((bArr[4] & 255) << 8) | (bArr[5] & 255);
                            byte[] bArr3 = new byte[i];
                            System.arraycopy(bArr, 16, bArr3, 0, i);
                            if (aaa002(bArr3) == bArr[i + 16]) {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                byteArrayOutputStream.write(85);
                                byteArrayOutputStream.write(6);
                                byteArrayOutputStream.write(0);
                                byteArrayOutputStream.write(2);
                                byteArrayOutputStream.write(bArr[4]);
                                byteArrayOutputStream.write(bArr[5]);
                                byteArrayOutputStream.write(0);
                                byteArrayOutputStream.write(66);
                                byteArrayOutputStream.write(aaa001(byteArrayOutputStream.toByteArray()));
                                aaa004(byteArrayOutputStream.toByteArray());
                                if (this.aaa021 != i2) {
                                    this.aaa021 = i2;
                                    aaa003(bArr3);
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }
}
