package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothSocket;
import android.os.Build;
import android.os.Process;
import com.google.common.primitives.SignedBytes;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.WinError;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
final class aaa009zz {
    private static final int aaa035 = Runtime.getRuntime().availableProcessors();
    private static final TimeUnit aaa036 = TimeUnit.SECONDS;
    private static final Object aaa037 = new Object();
    static final Hashtable<aaa003zz.aaa005zz, Integer> aaa038;
    private static final Hashtable<aaa003zz.aaa005zz, Integer> aaa039;
    static boolean aaa040;
    static boolean aaa041;
    private static byte[] aaa042;
    static boolean aaa043;
    static byte[] aaa044;
    private static final String aaa045;
    final aaa003zz.aaa005zz aaa009;
    private final aaa011zz aaa010;
    ccc018zz aaa011;
    private ccc011zz aaa012;
    private BluetoothSocket aaa013;
    private BluetoothGatt aaa014;
    ByteArrayOutputStream aaa015;
    private Object aaa016;
    private aaa000zz aaa017;
    ccc026zz aaa018;
    private final BlockingQueue<Runnable> aaa019;
    private final ThreadPoolExecutor aaa020;
    ccc031zz aaa021;
    private final BlockingQueue<Runnable> aaa022;
    private final ThreadPoolExecutor aaa023;
    aaa003zz aaa024;
    private boolean aaa025;
    boolean aaa026;
    private int aaa031;
    private int aaa032;
    int aaa033;
    int aaa034;
    final Object aaa000 = new Object();
    boolean aaa001 = false;
    final Object aaa002 = new Object();
    private final Object aaa003 = new Object();
    final Object aaa004 = new Object();
    private final Object aaa005 = new Object();
    boolean aaa006 = false;
    final Object aaa007 = new Object();
    final Object aaa008 = new Object();
    private final List<aaa010zz> aaa027 = new ArrayList();
    private List<byte[]> aaa028 = null;
    private List<byte[]> aaa029 = null;
    private List<byte[]> aaa030 = null;

    class aaa000zz extends Thread {
        private boolean aaa000 = false;

        aaa000zz() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            aaa010zz aaa010zzVar;
            Process.setThreadPriority(-16);
            while (!this.aaa000) {
                while (!this.aaa000 && (aaa009zz.this.aaa027.size() <= 0 || aaa009zz.this.aaa025)) {
                    synchronized (aaa009zz.this.aaa000) {
                        if (!this.aaa000 && (aaa009zz.this.aaa027.size() <= 0 || aaa009zz.this.aaa025)) {
                            try {
                                aaa009zz.this.aaa000.wait();
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
                synchronized (aaa009zz.this.aaa003) {
                    if (!this.aaa000) {
                        synchronized (aaa009zz.this.aaa005) {
                            aaa010zzVar = (aaa009zz.this.aaa027 == null || aaa009zz.this.aaa027.size() <= 0) ? null : (aaa010zz) aaa009zz.this.aaa027.remove(0);
                        }
                        if (aaa010zzVar != null && !aaa010zzVar.aaa005()) {
                            synchronized (aaa009zz.this.aaa007) {
                                aaa009zz.this.aaa001(aaa010zzVar);
                                try {
                                    aaa009zz.this.aaa006 = false;
                                    while (true) {
                                        aaa009zz aaa009zzVar = aaa009zz.this;
                                        if (aaa009zzVar.aaa006) {
                                            break;
                                        } else {
                                            aaa009zzVar.aaa007.wait();
                                        }
                                    }
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void aaa000() {
            synchronized (aaa009zz.this.aaa003) {
                this.aaa000 = true;
            }
        }
    }

    static {
        Hashtable<aaa003zz.aaa005zz, Integer> hashtable = new Hashtable<>();
        aaa038 = hashtable;
        Hashtable<aaa003zz.aaa005zz, Integer> hashtable2 = new Hashtable<>();
        aaa039 = hashtable2;
        aaa040 = false;
        aaa041 = false;
        aaa042 = new byte[0];
        aaa043 = false;
        aaa044 = new byte[0];
        aaa045 = aaa009zz.class.getName();
        aaa003zz.aaa005zz aaa005zzVar = aaa003zz.aaa005zz.NONE;
        hashtable2.put(aaa005zzVar, 0);
        aaa003zz.aaa005zz aaa005zzVar2 = aaa003zz.aaa005zz.BLUETOOTH_2;
        hashtable2.put(aaa005zzVar2, 2000);
        aaa003zz.aaa005zz aaa005zzVar3 = aaa003zz.aaa005zz.BLUETOOTH_4;
        hashtable2.put(aaa005zzVar3, 2000);
        aaa003zz.aaa005zz aaa005zzVar4 = aaa003zz.aaa005zz.SERIAL;
        hashtable2.put(aaa005zzVar4, 2000);
        aaa003zz.aaa005zz aaa005zzVar5 = aaa003zz.aaa005zz.USB;
        hashtable2.put(aaa005zzVar5, 3000);
        aaa003zz.aaa005zz aaa005zzVar6 = aaa003zz.aaa005zz.TEST_CHANNEL;
        hashtable2.put(aaa005zzVar6, 2000);
        hashtable.put(aaa005zzVar, 0);
        hashtable.put(aaa005zzVar2, 65535);
        hashtable.put(aaa005zzVar3, 256);
        hashtable.put(aaa005zzVar4, 65535);
        hashtable.put(aaa005zzVar5, 128);
        hashtable.put(aaa005zzVar6, 65535);
        if (Build.MODEL.equalsIgnoreCase("MI PAD")) {
            hashtable.put(aaa005zzVar3, 40);
        }
    }

    aaa009zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar, aaa003zz.aaa005zz aaa005zzVar, BluetoothSocket bluetoothSocket, BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, PipedInputStream pipedInputStream, Object obj, InputStream inputStream, OutputStream outputStream, Object obj2, BluetoothGattCharacteristic bluetoothGattCharacteristic2, aaa004zz aaa004zzVar) {
        aaa001("[ChannelLayerHandler]");
        this.aaa024 = aaa003zzVar;
        this.aaa010 = aaa011zzVar;
        this.aaa009 = aaa005zzVar;
        this.aaa026 = false;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.aaa019 = linkedBlockingQueue;
        int i = aaa035;
        TimeUnit timeUnit = aaa036;
        this.aaa020 = new ThreadPoolExecutor(i, i, 1L, timeUnit, linkedBlockingQueue);
        LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        this.aaa022 = linkedBlockingQueue2;
        this.aaa023 = new ThreadPoolExecutor(i, i, 1L, timeUnit, linkedBlockingQueue2);
        if (aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_2) {
            if (bluetoothSocket == null) {
                aaa003zzVar.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                aaa003zzVar.aaa014();
                return;
            }
            try {
                OutputStream outputStream2 = bluetoothSocket.getOutputStream();
                InputStream inputStream2 = bluetoothSocket.getInputStream();
                this.aaa013 = bluetoothSocket;
                this.aaa015 = new ByteArrayOutputStream();
                this.aaa011 = new ccc019zz(this, outputStream2);
                ccc012zz ccc012zzVar = new ccc012zz(this, inputStream2);
                this.aaa012 = ccc012zzVar;
                ccc012zzVar.aaa000();
            } catch (Exception unused) {
                aaa003zzVar.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_BTV2, "Bluetooth error code - 3031");
                aaa011zzVar.aaa000(aaa005zzVar);
                return;
            }
        } else if (aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_4) {
            if (bluetoothGatt == null || bluetoothGattCharacteristic == null || pipedInputStream == null) {
                aaa003zzVar.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                aaa003zzVar.aaa015();
                return;
            }
            this.aaa014 = bluetoothGatt;
            this.aaa016 = obj2;
            this.aaa015 = new ByteArrayOutputStream();
            this.aaa011 = new ccc020zz(bluetoothGatt, bluetoothGattCharacteristic, obj, bluetoothGattCharacteristic2);
            ccc013zz ccc013zzVar = new ccc013zz(this, pipedInputStream);
            this.aaa012 = ccc013zzVar;
            ccc013zzVar.aaa000();
        } else if (aaa005zzVar == aaa003zz.aaa005zz.SERIAL) {
            if (inputStream == null || outputStream == null) {
                aaa003zzVar.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                aaa003zzVar.aaa083();
                return;
            }
            this.aaa015 = new ByteArrayOutputStream();
            this.aaa011 = new ccc021zz(this, outputStream, aaa003zz.aaa018, aaa003zz.aaa019, aaa003zz.aaa020);
            ccc014zz ccc014zzVar = new ccc014zz(this, inputStream);
            this.aaa012 = ccc014zzVar;
            ccc014zzVar.aaa000();
            if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) {
                try {
                    Thread.sleep(100L);
                    this.aaa015.reset();
                } catch (Exception unused2) {
                }
            }
        } else if (aaa005zzVar == aaa003zz.aaa005zz.USB) {
            this.aaa015 = new ByteArrayOutputStream();
            this.aaa011 = new ccc023zz(this, aaa004zzVar);
            ccc016zz ccc016zzVar = new ccc016zz(this, aaa004zzVar);
            this.aaa012 = ccc016zzVar;
            ccc016zzVar.aaa000();
        } else if (aaa005zzVar != aaa003zz.aaa005zz.TEST_CHANNEL) {
            aaa003zzVar.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            aaa011zzVar.aaa000(aaa005zzVar);
            return;
        } else {
            this.aaa015 = new ByteArrayOutputStream();
            this.aaa011 = new ccc022zz(this, aaa003zzVar.aaa011.aaa040().getOutputStream());
            ccc015zz ccc015zzVar = new ccc015zz(this, aaa003zzVar.aaa011.aaa040().getInputStream());
            this.aaa012 = ccc015zzVar;
            ccc015zzVar.aaa000();
        }
        aaa000zz aaa000zzVar = new aaa000zz();
        this.aaa017 = aaa000zzVar;
        aaa000zzVar.start();
        if (aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_2 || aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_4 || aaa005zzVar == aaa003zz.aaa005zz.USB || aaa005zzVar == aaa003zz.aaa005zz.SERIAL || aaa005zzVar == aaa003zz.aaa005zz.TEST_CHANNEL) {
            new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa009zz$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa006();
                }
            }).start();
        }
    }

    private void aaa001(String str) {
    }

    aaa003zz aaa004() {
        return this.aaa024;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: aaa005, reason: merged with bridge method [inline-methods] */
    public void aaa006() {
        aaa001("[initializeChannel]");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        aaa003zz.aaa005zz aaa005zzVar = this.aaa009;
        if (aaa005zzVar == aaa003zz.aaa005zz.SERIAL) {
            byteArrayOutputStream.write(ccc071zz.aaa005("00000008D0000000020100DFC1"), 0, 13);
        } else if (aaa005zzVar == aaa003zz.aaa005zz.USB) {
            byteArrayOutputStream.write(ccc071zz.aaa005("00000006D0000000006DCC"), 0, 11);
        } else if (aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_2 || aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_4) {
            byteArrayOutputStream.write(80);
            byteArrayOutputStream.write(128);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(8);
            byteArrayOutputStream.write(16);
            int iAaa000 = this.aaa009.aaa000();
            if (iAaa000 <= 0) {
                this.aaa024.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            byteArrayOutputStream.write((iAaa000 >> 8) & 255);
            byteArrayOutputStream.write(iAaa000 & 255);
            byteArrayOutputStream.write(WinError.ERROR_FILE_TOO_LARGE);
            byteArrayOutputStream.write(WinError.ERROR_IS_JOIN_TARGET);
            byteArrayOutputStream.write(44);
            byteArrayOutputStream.write(1);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(aaa007zz.aaa000(byteArrayOutputStream.toByteArray()));
        } else {
            if (aaa005zzVar != aaa003zz.aaa005zz.TEST_CHANNEL) {
                this.aaa024.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            byteArrayOutputStream.write(ccc071zz.aaa005("00000008D0000000020100DFC1"), 0, 13);
        }
        aaa003zz.aaa005zz aaa005zzVar2 = this.aaa009;
        if (aaa005zzVar2 == aaa003zz.aaa005zz.BLUETOOTH_2 || aaa005zzVar2 == aaa003zz.aaa005zz.BLUETOOTH_4) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.reset();
            byteArrayOutputStream.write(WinError.ERROR_BUSY);
            for (int i = 0; i < byteArray.length; i++) {
                byte b = byteArray[i];
                if (b == -86 || b == -69 || b == -52) {
                    byteArrayOutputStream.write(HttpStatus.SC_NO_CONTENT);
                }
                byteArrayOutputStream.write(byteArray[i]);
            }
            byteArrayOutputStream.write(WinError.ERROR_SEM_NOT_FOUND);
        }
        aaa000(byteArrayOutputStream.toByteArray(), aaa039.get(this.aaa009).intValue(), true);
        synchronized (this.aaa002) {
            try {
                aaa001("[initializeChannel] INIT_CHANNEL_LOCK.wait (2)");
                aaa001(byteArrayOutputStream.toByteArray());
                this.aaa001 = false;
                while (!this.aaa001) {
                    this.aaa002.wait();
                }
                aaa001("[initializeChannel] INIT_CHANNEL_LOCK.wait (2) End");
            } catch (InterruptedException unused) {
            }
        }
        aaa001("[initializeChannel] checkpoint 1");
        aaa003zz.aaa005zz aaa005zzVar3 = this.aaa009;
        if (aaa005zzVar3 == aaa003zz.aaa005zz.BLUETOOTH_2) {
            if (this.aaa026) {
                this.aaa024.aaa042();
                return;
            } else {
                this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_BTV2, "Bluetooth classic timeout");
                this.aaa010.aaa000(this.aaa009);
                return;
            }
        }
        if (aaa005zzVar3 == aaa003zz.aaa005zz.BLUETOOTH_4) {
            if (this.aaa026) {
                this.aaa024.aaa044();
                return;
            } else {
                this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_BTV4, "BLE timeout");
                this.aaa010.aaa000(this.aaa009);
                return;
            }
        }
        if (aaa005zzVar3 == aaa003zz.aaa005zz.USB) {
            if (this.aaa026) {
                this.aaa024.aaa068();
                return;
            } else {
                this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_USB, "USB timeout");
                this.aaa010.aaa000(this.aaa009);
                return;
            }
        }
        if (aaa005zzVar3 != aaa003zz.aaa005zz.SERIAL) {
            if (aaa005zzVar3 == aaa003zz.aaa005zz.TEST_CHANNEL) {
                if (this.aaa026) {
                    this.aaa024.aaa066();
                    return;
                } else {
                    this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_TEST_CHANNEL, "Test channel timeout (error code - 3202)");
                    this.aaa010.aaa000(this.aaa009);
                    return;
                }
            }
            return;
        }
        if (this.aaa026) {
            this.aaa024.aaa063();
            return;
        }
        if (this.aaa024.aaa011.aaa055()) {
            this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_SERIAL, this.aaa024.aaa011.aaa039() + ". Cannot establish serial connection due to device tampered (error code - 3106)");
        } else if (this.aaa024.aaa011.aaa048()) {
            this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_SERIAL, this.aaa024.aaa011.aaa018() + ". Cannot establish serial connection due to integrity check error (error code - 3107)");
        } else {
            if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOSPlus)) {
                this.aaa026 = true;
                this.aaa024.aaa011.aaa002(2);
                this.aaa024.aaa063();
                return;
            }
            this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_SERIAL, "Serial timeout (error code - 3105)");
        }
        try {
            this.aaa024.aaa004.aaa000(true);
        } catch (Exception unused2) {
        }
        this.aaa010.aaa000(this.aaa009);
    }

    void aaa007() {
        synchronized (this.aaa008) {
            try {
                aaa002();
                this.aaa021 = new ccc031zz(this);
                if (!this.aaa023.isShutdown()) {
                    this.aaa023.execute(this.aaa021);
                }
            } catch (Exception unused) {
            }
        }
    }

    void aaa008() {
        BluetoothGatt bluetoothGatt;
        aaa009();
        if (this.aaa017 != null) {
            synchronized (this.aaa007) {
                this.aaa006 = true;
                this.aaa007.notifyAll();
            }
            this.aaa017.aaa000();
            this.aaa017.interrupt();
        }
        aaa000();
        this.aaa011.aaa000();
        this.aaa012.aaa001();
        aaa003zz.aaa005zz aaa005zzVar = this.aaa009;
        if (aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_2) {
            try {
                this.aaa013.getInputStream().close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                this.aaa013.getOutputStream().close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                this.aaa013.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_4 && (bluetoothGatt = this.aaa014) != null) {
            bluetoothGatt.disconnect();
        }
        this.aaa020.shutdown();
        this.aaa023.shutdown();
    }

    void aaa009() {
        aaa000();
        synchronized (this.aaa005) {
            this.aaa027.clear();
        }
        this.aaa025 = false;
        this.aaa026 = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaa001(aaa010zz aaa010zzVar) {
        byte[] bArrAaa000;
        synchronized (aaa037) {
            if (!this.aaa026) {
                aaa006();
                aaa011zz aaa011zzVar = this.aaa010;
                if (aaa011zzVar.aaa006) {
                    aaa011zzVar.aaa009();
                    if (this.aaa026) {
                        this.aaa024.aaa002(true);
                    } else {
                        this.aaa024.aaa002(false);
                    }
                    return;
                }
            }
            if (this.aaa026) {
                if (aaa010zzVar != null && Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb030)) {
                    aaa040 = true;
                    ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(ccc068zz.aaa002(aaa010zzVar.aaa004()), "DF2F");
                    if (ccc067zzVarAaa000 == null || !(ccc067zzVarAaa000.aaa001.equalsIgnoreCase("8C86") || ccc067zzVarAaa000.aaa001.equalsIgnoreCase("8CF2"))) {
                        aaa041 = false;
                    } else {
                        aaa041 = true;
                    }
                } else if (aaa010zzVar == null || !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc085)) {
                    aaa040 = false;
                    aaa041 = false;
                } else {
                    ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(ccc068zz.aaa002(aaa010zzVar.aaa004()), "DF2F");
                    if (ccc067zzVarAaa0002 == null || !ccc067zzVarAaa0002.aaa001.equalsIgnoreCase("8CCE")) {
                        aaa040 = false;
                    } else {
                        aaa040 = true;
                    }
                    aaa041 = false;
                }
                byte[] bArrAaa006 = aaa010zzVar.aaa006();
                if (aaa043 && bArrAaa006 != null) {
                    byte bAaa000 = aaa007zz.aaa000(bArrAaa006);
                    byte[] bArr = new byte[bArrAaa006.length + 1];
                    System.arraycopy(bArrAaa006, 0, bArr, 0, bArrAaa006.length);
                    bArr[bArrAaa006.length] = bAaa000;
                    bArrAaa006 = ccc032zz.aaa002(bArr, aaa044);
                }
                if (aaa010zzVar.aaa005()) {
                    this.aaa029 = new ArrayList();
                } else {
                    this.aaa028 = new ArrayList();
                }
                int iAaa004 = 0;
                while (iAaa004 < bArrAaa006.length) {
                    int iMin = Math.min(this.aaa024.aaa011.aaa014().aaa004(), bArrAaa006.length - iAaa004);
                    byte[] bArr2 = new byte[iMin];
                    System.arraycopy(bArrAaa006, iAaa004, bArr2, 0, iMin);
                    if (aaa010zzVar.aaa005()) {
                        this.aaa029.add(bArr2);
                    } else {
                        this.aaa028.add(bArr2);
                    }
                    iAaa004 += this.aaa024.aaa011.aaa014().aaa004();
                }
                if (aaa010zzVar.aaa005()) {
                    this.aaa032 = 0;
                    bArrAaa000 = aaa000(false, (byte) 0, true);
                } else {
                    this.aaa031 = 0;
                    bArrAaa000 = aaa000(false, (byte) 0, false);
                }
                if (bArrAaa000 == null) {
                    return;
                }
                if (!aaa010zzVar.aaa005() && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb089)) {
                    byte[] bArrAaa0002 = aaa000(true, (byte) 0, false);
                    int iAaa000 = aaa000(aaa010zzVar);
                    this.aaa034 = iAaa000;
                    List<byte[]> list = this.aaa028;
                    if (list != null && list.size() > 1) {
                        iAaa000 = aaa039.get(this.aaa009).intValue();
                    }
                    aaa000(bArrAaa0002, iAaa000, true);
                }
                aaa001(bArrAaa000);
            }
        }
    }

    void aaa002(aaa010zz aaa010zzVar) {
        if (this.aaa025) {
            this.aaa024.aaa000(aaa003zz.aaa002zz.WAITING_FOR_DEVICE, "");
            return;
        }
        if (aaa010zzVar != null) {
            if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa020)) {
                aaa010zzVar.aaa005();
            }
            if (aaa010zzVar.aaa005()) {
                aaa001(aaa010zzVar);
                return;
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb089)) {
                aaa001(aaa010zzVar);
                return;
            } else {
                synchronized (this.aaa005) {
                    this.aaa027.add(aaa010zzVar);
                }
            }
        }
        synchronized (this.aaa000) {
            this.aaa000.notify();
        }
    }

    aaa003zz.aaa005zz aaa003() {
        return this.aaa009;
    }

    void aaa000(ccc027zz ccc027zzVar) {
        try {
            ((ccc021zz) this.aaa011).aaa000(ccc027zzVar.aaa001());
            ((ccc014zz) this.aaa012).aaa000(ccc027zzVar.aaa000());
        } catch (Exception unused) {
        }
    }

    private byte[] aaa000(boolean z, byte b, boolean z2) {
        byte[] bArr;
        if (z2) {
            List<byte[]> list = this.aaa029;
            if (list == null) {
                return null;
            }
            bArr = list.get(this.aaa032);
        } else {
            List<byte[]> list2 = this.aaa028;
            if (list2 == null) {
                return null;
            }
            bArr = list2.get(this.aaa031);
        }
        byte[] bArr2 = new byte[2];
        if (aaa043) {
            bArr2[0] = (byte) (bArr2[0] | 128);
        }
        if (z) {
            bArr2[0] = (byte) (bArr2[0] | SignedBytes.MAX_POWER_OF_TWO);
        }
        bArr2[0] = (byte) (bArr2[0] | (b & 7));
        if (z2) {
            byte size = (byte) (bArr2[1] | (((this.aaa029.size() - 1) & 15) << 4));
            bArr2[1] = size;
            bArr2[1] = (byte) (size | (this.aaa032 & 15));
        } else {
            byte size2 = (byte) (bArr2[1] | (((this.aaa028.size() - 1) & 15) << 4));
            bArr2[1] = size2;
            bArr2[1] = (byte) (size2 | (this.aaa031 & 15));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(bArr2, 0, 2);
        byteArrayOutputStream.write((bArr.length >> 8) & 255);
        byteArrayOutputStream.write(bArr.length & 255);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        byteArrayOutputStream.write(aaa007zz.aaa000(byteArrayOutputStream.toByteArray()));
        return byteArrayOutputStream.toByteArray();
    }

    void aaa002() {
        synchronized (this.aaa008) {
            try {
                ccc031zz ccc031zzVar = this.aaa021;
                if (ccc031zzVar != null) {
                    ccc031zzVar.aaa000();
                    try {
                        Thread thread = this.aaa021.aaa001;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Exception unused) {
                    }
                    this.aaa021 = null;
                }
            } catch (Exception unused2) {
            }
            try {
                int size = this.aaa022.size();
                Runnable[] runnableArr = new Runnable[size];
                this.aaa022.toArray(runnableArr);
                for (int i = 0; i < size; i++) {
                    Runnable runnable = runnableArr[i];
                    if (runnable instanceof ccc031zz) {
                        ((ccc031zz) runnable).aaa000();
                        try {
                            if (((ccc031zz) runnable).aaa001 != null) {
                                ((ccc031zz) runnable).aaa001.interrupt();
                            }
                        } catch (Exception unused3) {
                        }
                    }
                }
            } catch (Exception unused4) {
            }
        }
    }

    private void aaa000(byte b, byte b2, byte b3) {
        byte[] bArr = new byte[2];
        if (aaa043) {
            bArr[0] = (byte) (bArr[0] | 128);
        }
        bArr[0] = (byte) (b | bArr[0]);
        byte b4 = (byte) (((b2 & 15) << 4) | bArr[1]);
        bArr[1] = b4;
        bArr[1] = (byte) (b4 | (b3 & 15));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(bArr, 0, 2);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(aaa007zz.aaa000(byteArrayOutputStream.toByteArray()));
        aaa001(byteArrayOutputStream.toByteArray());
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0143 A[PHI: r0
      0x0143: PHI (r0v4 int) = (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v12 int) binds: [B:9:0x002b, B:12:0x0039, B:15:0x0047, B:34:0x00a1, B:49:0x00e9, B:58:0x011a, B:61:0x0127, B:64:0x0134, B:67:0x0141, B:20:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016c A[PHI: r0
      0x016c: PHI (r0v9 int) = (r0v3 int), (r0v3 int), (r0v3 int), (r0v3 int), (r0v11 int) binds: [B:31:0x0093, B:70:0x0150, B:73:0x015d, B:76:0x016a, B:25:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int aaa000(com.stripe.bbpos.bbdevice.aaa010zz r4) {
        /*
            Method dump skipped, instruction units count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.aaa009zz.aaa000(com.stripe.bbpos.bbdevice.aaa010zz):int");
    }

    void aaa001(byte[] bArr) {
        this.aaa011.aaa000(bArr);
    }

    synchronized void aaa001() {
        try {
            aaa000();
            this.aaa028 = null;
            synchronized (this.aaa007) {
                this.aaa006 = true;
                this.aaa007.notifyAll();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0093 A[Catch: Exception -> 0x013f, TRY_LEAVE, TryCatch #1 {Exception -> 0x013f, blocks: (B:20:0x0089, B:22:0x0093, B:52:0x0137), top: B:62:0x0089 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0137 A[Catch: Exception -> 0x013f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x013f, blocks: (B:20:0x0089, B:22:0x0093, B:52:0x0137), top: B:62:0x0089 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void aaa000(java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.aaa009zz.aaa000(java.lang.String):void");
    }

    void aaa000(byte[] bArr) {
        boolean z;
        byte[] bArr2;
        boolean z2;
        byte[] byteArray = bArr;
        if (this.aaa024.aaa011.aaa025() == ccc066zz.aaa002zz.COMPLETE_PASS_THROUGH) {
            if (byteArray == null || byteArray.length <= 0) {
                return;
            }
            this.aaa024.aaa019(ccc071zz.aaa000(byteArray));
            return;
        }
        if (this.aaa024.aaa011.aaa025() == ccc066zz.aaa002zz.SEMI_PASS_THROUGH) {
            if (byteArray == null || byteArray.length <= 0) {
                return;
            }
            this.aaa024.aaa020(ccc071zz.aaa000(byteArray));
            return;
        }
        aaa003zz.aaa005zz aaa005zzVar = this.aaa009;
        aaa003zz.aaa005zz aaa005zzVar2 = aaa003zz.aaa005zz.BLUETOOTH_2;
        if (aaa005zzVar == aaa005zzVar2 || aaa005zzVar == aaa003zz.aaa005zz.BLUETOOTH_4 || aaa005zzVar == aaa003zz.aaa005zz.SERIAL || aaa005zzVar == aaa003zz.aaa005zz.USB || aaa005zzVar == aaa003zz.aaa005zz.TEST_CHANNEL) {
            this.aaa015.write(byteArray, 0, byteArray.length);
            byteArray = this.aaa015.toByteArray();
            aaa007();
        }
        if (byteArray.length == 0) {
            return;
        }
        boolean z3 = true;
        if (!this.aaa026) {
            byte b = byteArray[0];
            if (b != 81) {
                if (b == -15) {
                    if (byteArray.length >= 4) {
                        byte[] bArr3 = new byte[4];
                        System.arraycopy(byteArray, 0, bArr3, 0, 4);
                        if (aaa007zz.aaa000(bArr3) == byteArray[4]) {
                            this.aaa024.aaa000(aaa003zz.aaa002zz.FIRMWARE_NOT_SUPPORTED, "error code - 7002");
                        } else {
                            this.aaa024.aaa009("CRC error (2)");
                        }
                    } else {
                        this.aaa024.aaa009("Incorrect length (2)");
                    }
                } else if (b == 102) {
                    if (byteArray.length > 2) {
                        int i = byteArray[1] & 255;
                        if (byteArray.length >= i + 3) {
                            int i2 = i + 2;
                            byte[] bArr4 = new byte[i2];
                            System.arraycopy(byteArray, 0, bArr4, 0, i2);
                            aaa003zz.aaa005zz aaa005zzVar3 = this.aaa009;
                            if (aaa005zzVar3 == aaa005zzVar2 || aaa005zzVar3 == aaa003zz.aaa005zz.BLUETOOTH_4 || aaa005zzVar3 == aaa003zz.aaa005zz.SERIAL || aaa005zzVar3 == aaa003zz.aaa005zz.USB || aaa005zzVar3 == aaa003zz.aaa005zz.TEST_CHANNEL) {
                                this.aaa015.reset();
                                this.aaa015.write(byteArray, i + 3, (byteArray.length - i2) - 1);
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (aaa007zz.aaa001(bArr4) == byteArray[i2]) {
                                aaa000();
                                synchronized (this.aaa002) {
                                    this.aaa001 = true;
                                    this.aaa002.notify();
                                }
                            }
                            z3 = z2;
                        } else {
                            this.aaa024.aaa009("Incorrect length (7)");
                        }
                    }
                } else if (byteArray.length >= 4) {
                    int i3 = ((byteArray[2] & 255) << 8) | (byteArray[3] & 255);
                    if (byteArray.length >= i3 + 5) {
                        int i4 = i3 + 4;
                        byte[] bArr5 = new byte[i4];
                        System.arraycopy(byteArray, 0, bArr5, 0, i4);
                        aaa003zz.aaa005zz aaa005zzVar4 = this.aaa009;
                        if (aaa005zzVar4 == aaa005zzVar2 || aaa005zzVar4 == aaa003zz.aaa005zz.BLUETOOTH_4 || aaa005zzVar4 == aaa003zz.aaa005zz.SERIAL || aaa005zzVar4 == aaa003zz.aaa005zz.USB || aaa005zzVar4 == aaa003zz.aaa005zz.TEST_CHANNEL) {
                            this.aaa015.reset();
                            this.aaa015.write(byteArray, i3 + 5, (byteArray.length - i4) - 1);
                            z = true;
                        } else {
                            z = false;
                        }
                        if (aaa007zz.aaa000(bArr5) == byteArray[i4]) {
                            byte b2 = byteArray[0];
                            byte b3 = byteArray[1];
                            byte[] bArr6 = new byte[i3];
                            System.arraycopy(byteArray, 4, bArr6, 0, i3);
                            if (i3 > 2) {
                                byte b4 = bArr6[0];
                                if (b4 == 80 && bArr6[1] == 1) {
                                    if (i3 >= 5) {
                                        int i5 = ((bArr6[3] & 255) << 8) | (bArr6[4] & 255);
                                        if (i3 >= i5 + 6) {
                                            int i6 = i5 + 5;
                                            byte[] bArr7 = new byte[i6];
                                            System.arraycopy(bArr6, 0, bArr7, 0, i6);
                                            if (aaa007zz.aaa000(bArr7) == bArr6[i6]) {
                                                byte[] bArr8 = new byte[i5];
                                                System.arraycopy(bArr6, 5, bArr8, 0, i5);
                                                List<ccc067zz> listAaa002 = ccc068zz.aaa002(bArr8);
                                                ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(listAaa002, "DF8716");
                                                if (ccc067zzVarAaa000 != null && !ccc067zzVarAaa000.aaa001.equalsIgnoreCase("")) {
                                                    this.aaa024.aaa000(aaa003zz.aaa002zz.UNKNOWN, "SP-WC Connection Health Check : " + ccc067zzVarAaa000.aaa001);
                                                    return;
                                                }
                                                ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(listAaa002, "D7");
                                                ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(listAaa002, "D3");
                                                ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(listAaa002, "DF3A");
                                                ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(listAaa002, "DF8607");
                                                ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(listAaa002, "DF8608");
                                                ccc067zz ccc067zzVarAaa0007 = ccc068zz.aaa000(listAaa002, "DF8528");
                                                ccc067zz ccc067zzVarAaa0008 = ccc068zz.aaa000(listAaa002, "DF8664");
                                                ccc067zz ccc067zzVarAaa0009 = ccc068zz.aaa000(listAaa002, TlvMap.TAG_SPOC_MODE_ENABLED);
                                                ccc067zz ccc067zzVarAaa00010 = ccc068zz.aaa000(listAaa002, "DE");
                                                ccc067zz ccc067zzVarAaa00011 = ccc068zz.aaa000(listAaa002, "DF8757");
                                                this.aaa024.aaa011.aaa014().aaa002(ccc071zz.aaa000(ccc067zzVarAaa0003));
                                                if (ccc067zzVarAaa0002 != null) {
                                                    this.aaa024.aaa011.aaa014().aaa001(new String(ccc071zz.aaa005(ccc067zzVarAaa0002.aaa001)));
                                                } else {
                                                    this.aaa024.aaa011.aaa014().aaa001("");
                                                }
                                                this.aaa024.aaa011.aaa014().aaa001(100);
                                                if (ccc067zzVarAaa0006 != null) {
                                                    this.aaa024.aaa011.aaa014().aaa000(ccc034zz.aaa000(Integer.parseInt(ccc067zzVarAaa0006.aaa001, 16)));
                                                } else {
                                                    this.aaa024.aaa011.aaa014().aaa000(aaa003zz.EnumC0044aaa003zz.UNKNOWN);
                                                }
                                                if (ccc067zzVarAaa0005 != null) {
                                                    this.aaa024.aaa011.aaa014().aaa001(Integer.parseInt(ccc067zzVarAaa0005.aaa001, 16));
                                                }
                                                if (this.aaa014 != null) {
                                                    aaa001("[dataReceived] requestMtu : " + this.aaa024.aaa011.aaa014().aaa001());
                                                    this.aaa014.requestMtu(this.aaa024.aaa011.aaa014().aaa001());
                                                }
                                                ccc018zz ccc018zzVar = this.aaa011;
                                                if (ccc018zzVar instanceof ccc020zz) {
                                                    ((ccc020zz) ccc018zzVar).aaa000(this.aaa024.aaa011.aaa014().aaa001());
                                                }
                                                aaa001("[dataReceived] start wait setting MTU");
                                                if (this.aaa016 != null) {
                                                    aaa001("[dataReceived] start wait setting MTU (2)");
                                                    synchronized (this.aaa016) {
                                                        try {
                                                            aaa001("[dataReceived] start wait setting MTU (3)");
                                                            this.aaa016.wait(500L);
                                                        } catch (InterruptedException unused) {
                                                        }
                                                    }
                                                }
                                                aaa001("[dataReceived] end wait setting MTU");
                                                if (ccc067zzVarAaa0007 != null) {
                                                    try {
                                                        this.aaa024.aaa011.aaa014().aaa002(Integer.parseInt(ccc067zzVarAaa0007.aaa001, 16));
                                                    } catch (Exception unused2) {
                                                    }
                                                }
                                                this.aaa024.aaa011.aaa014().aaa001(false);
                                                if (ccc067zzVarAaa0008 != null) {
                                                    try {
                                                        if (Integer.parseInt(ccc067zzVarAaa0008.aaa001, 16) > 0) {
                                                            this.aaa024.aaa011.aaa014().aaa001(true);
                                                        }
                                                    } catch (Exception unused3) {
                                                    }
                                                }
                                                this.aaa024.aaa011.aaa014().aaa004(0);
                                                if (ccc067zzVarAaa0009 != null) {
                                                    try {
                                                        int i7 = Integer.parseInt(ccc067zzVarAaa0009.aaa001, 16);
                                                        if (i7 > 0) {
                                                            this.aaa024.aaa011.aaa014().aaa004(i7);
                                                        }
                                                    } catch (Exception unused4) {
                                                    }
                                                }
                                                if (ccc067zzVarAaa00010 == null) {
                                                    this.aaa024.aaa011.aaa002(0);
                                                } else {
                                                    this.aaa024.aaa011.aaa002(1);
                                                }
                                                if (ccc067zzVarAaa00011 != null && !ccc067zzVarAaa00011.aaa001.equals("")) {
                                                    byte[] bArrAaa005 = ccc071zz.aaa005(ccc067zzVarAaa00011.aaa001);
                                                    if ((bArrAaa005[bArrAaa005.length - 1] & 1) == 1) {
                                                        this.aaa024.aaa011.aaa014().aaa002(true);
                                                    } else {
                                                        this.aaa024.aaa011.aaa014().aaa002(false);
                                                    }
                                                    if (((bArrAaa005[bArrAaa005.length - 1] >> 1) & 1) == 1) {
                                                        this.aaa024.aaa011.aaa014().aaa000(true);
                                                    } else {
                                                        this.aaa024.aaa011.aaa014().aaa000(false);
                                                    }
                                                    if (((bArrAaa005[bArrAaa005.length - 1] >> 2) & 1) == 1) {
                                                        this.aaa024.aaa011.aaa014().aaa003(true);
                                                    } else {
                                                        this.aaa024.aaa011.aaa014().aaa003(false);
                                                    }
                                                }
                                                this.aaa026 = true;
                                                if (ccc067zzVarAaa0004 != null) {
                                                    this.aaa024.aaa011.aaa014().aaa003(Math.min(Integer.parseInt(ccc067zzVarAaa0004.aaa001, 16) - 6, aaa038.get(this.aaa009).intValue()));
                                                } else {
                                                    this.aaa024.aaa011.aaa014().aaa003(aaa038.get(this.aaa009).intValue());
                                                }
                                                if (this.aaa009 == aaa003zz.aaa005zz.BLUETOOTH_4) {
                                                    if (this.aaa024.aaa011.aaa014().aaa002() == aaa003zz.EnumC0044aaa003zz.TSB501) {
                                                        this.aaa024.aaa011.aaa014().aaa003(Math.min(this.aaa024.aaa011.aaa014().aaa004(), 130));
                                                    } else if (this.aaa024.aaa011.aaa014().aaa002() == aaa003zz.EnumC0044aaa003zz.UNKNOWN) {
                                                        this.aaa024.aaa011.aaa014().aaa003(Math.min(this.aaa024.aaa011.aaa014().aaa004(), 80));
                                                    }
                                                }
                                                aaa000();
                                                synchronized (this.aaa002) {
                                                    this.aaa001 = true;
                                                    this.aaa002.notify();
                                                }
                                            } else {
                                                this.aaa024.aaa009("CRC error (3)");
                                            }
                                        } else {
                                            this.aaa024.aaa009("Incorrect length (3)");
                                        }
                                    }
                                } else if (b4 == 12 && bArr6[1] == -106) {
                                    if (i3 >= 5) {
                                        int i8 = ((bArr6[3] & 255) << 8) | (bArr6[4] & 255);
                                        if (i3 >= i8 + 6) {
                                            int i9 = i8 + 5;
                                            byte[] bArr9 = new byte[i9];
                                            System.arraycopy(bArr6, 0, bArr9, 0, i9);
                                            if (aaa007zz.aaa000(bArr9) == bArr6[i9]) {
                                                byte[] bArr10 = new byte[i8];
                                                System.arraycopy(bArr6, 5, bArr10, 0, i8);
                                                List<ccc067zz> listAaa0022 = ccc068zz.aaa002(bArr10);
                                                ccc067zz ccc067zzVarAaa00012 = ccc068zz.aaa000(listAaa0022, "DF8270");
                                                ccc067zz ccc067zzVarAaa00013 = ccc068zz.aaa000(listAaa0022, "DF8271");
                                                ccc067zz ccc067zzVarAaa00014 = ccc068zz.aaa000(listAaa0022, "DF8272");
                                                if (ccc067zzVarAaa00012 != null && ccc071zz.aaa008(ccc067zzVarAaa00012.aaa001)) {
                                                    if (ccc067zzVarAaa00012.aaa001.equalsIgnoreCase("80")) {
                                                        String str = "";
                                                        if (ccc067zzVarAaa00013 != null && ccc071zz.aaa008(ccc067zzVarAaa00013.aaa001)) {
                                                            str = "Tamper Status : " + ccc067zzVarAaa00013.aaa001;
                                                        }
                                                        if (ccc067zzVarAaa00014 != null && ccc071zz.aaa008(ccc067zzVarAaa00014.aaa001)) {
                                                            if (ccc071zz.aaa008(str)) {
                                                                str = str + ", ";
                                                            }
                                                            str = str + "Tamper Time : " + ccc067zzVarAaa00014.aaa001;
                                                        }
                                                        this.aaa024.aaa011.aaa009(true);
                                                        this.aaa024.aaa011.aaa022(str);
                                                        this.aaa024.aaa000(aaa003zz.aaa002zz.TAMPER, str);
                                                    } else {
                                                        String str2 = "Integrity Check Error Code: " + ccc067zzVarAaa00012.aaa001;
                                                        this.aaa024.aaa011.aaa002(true);
                                                        this.aaa024.aaa011.aaa007(str2);
                                                        this.aaa024.aaa000(aaa003zz.aaa002zz.INTEGRITY_CHECK_ERROR, str2);
                                                    }
                                                } else {
                                                    this.aaa024.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Missing DF8270. (error code - 9023)");
                                                }
                                            } else {
                                                this.aaa024.aaa009("CRC error (4)");
                                            }
                                        } else {
                                            this.aaa024.aaa009("Incorrect length (4)");
                                        }
                                    }
                                } else if (b4 == 44 && bArr6[1] == -106) {
                                    if (i3 >= 5) {
                                        int i10 = ((bArr6[3] & 255) << 8) | (bArr6[4] & 255);
                                        if (i3 >= i10 + 6) {
                                            int i11 = i10 + 5;
                                            byte[] bArr11 = new byte[i11];
                                            System.arraycopy(bArr6, 0, bArr11, 0, i11);
                                            if (aaa007zz.aaa000(bArr11) == bArr6[i11]) {
                                                byte[] bArr12 = new byte[i10];
                                                System.arraycopy(bArr6, 5, bArr12, 0, i10);
                                                List<ccc067zz> listAaa0023 = ccc068zz.aaa002(bArr12);
                                                ccc067zz ccc067zzVarAaa00015 = ccc068zz.aaa000(listAaa0023, "DF8270");
                                                ccc067zz ccc067zzVarAaa00016 = ccc068zz.aaa000(listAaa0023, "DF8271");
                                                ccc067zz ccc067zzVarAaa00017 = ccc068zz.aaa000(listAaa0023, "DF8272");
                                                String str3 = "";
                                                if (ccc067zzVarAaa00015 != null && !ccc067zzVarAaa00015.aaa001.isEmpty()) {
                                                    str3 = "Tamper Mode : " + ccc067zzVarAaa00015.aaa001;
                                                }
                                                if (ccc067zzVarAaa00016 != null && !ccc067zzVarAaa00016.aaa001.isEmpty()) {
                                                    if (!str3.isEmpty()) {
                                                        str3 = str3 + ", ";
                                                    }
                                                    str3 = str3 + "Tamper Status : " + ccc067zzVarAaa00016.aaa001;
                                                }
                                                if (ccc067zzVarAaa00017 != null && !ccc067zzVarAaa00017.aaa001.isEmpty()) {
                                                    if (!str3.isEmpty()) {
                                                        str3 = str3 + ", ";
                                                    }
                                                    str3 = str3 + "Tamper Time : " + ccc067zzVarAaa00017.aaa001;
                                                }
                                                this.aaa024.aaa011.aaa009(true);
                                                this.aaa024.aaa011.aaa022(str3);
                                                this.aaa024.aaa000(aaa003zz.aaa002zz.TAMPER, str3);
                                            } else {
                                                this.aaa024.aaa009("CRC error (5)");
                                            }
                                        } else {
                                            this.aaa024.aaa009("Incorrect length (5)");
                                        }
                                    }
                                } else if (b4 == 80 && bArr6[1] == 9) {
                                    aaa000();
                                } else if (b4 == 80 && bArr6[1] == 5 && i3 >= 5) {
                                    int i12 = ((bArr6[3] & 255) << 8) | (bArr6[4] & 255);
                                    if (i3 >= i12 + 6) {
                                        int i13 = i12 + 5;
                                        byte[] bArr13 = new byte[i13];
                                        System.arraycopy(bArr6, 0, bArr13, 0, i13);
                                        if (aaa007zz.aaa000(bArr13) == bArr6[i13]) {
                                            aaa000();
                                            byte[] bArr14 = new byte[i12];
                                            System.arraycopy(bArr6, 5, bArr14, 0, i12);
                                            ccc067zz ccc067zzVarAaa00018 = ccc068zz.aaa000(ccc068zz.aaa002(bArr14), "DF822D");
                                            if (this.aaa009 == aaa003zz.aaa005zz.USB) {
                                                this.aaa024.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_USB, ccc034zz.aaa003(ccc067zzVarAaa00018 == null ? null : ccc067zzVarAaa00018.aaa001));
                                            }
                                        } else {
                                            this.aaa024.aaa009("CRC error (9)");
                                        }
                                    } else {
                                        this.aaa024.aaa009("Incorrect length (9)");
                                    }
                                }
                            }
                        } else {
                            this.aaa024.aaa009("CRC error (6)");
                        }
                        z3 = z;
                    }
                }
                z3 = false;
            } else if (byteArray.length >= 4) {
                int i14 = ((byteArray[2] & 255) << 8) | (byteArray[3] & 255);
                if (byteArray.length >= i14 + 5) {
                    int i15 = i14 + 4;
                    byte[] bArr15 = new byte[i15];
                    System.arraycopy(byteArray, 0, bArr15, 0, i15);
                    aaa003zz.aaa005zz aaa005zzVar5 = this.aaa009;
                    if (aaa005zzVar5 == aaa005zzVar2 || aaa005zzVar5 == aaa003zz.aaa005zz.BLUETOOTH_4 || aaa005zzVar5 == aaa003zz.aaa005zz.SERIAL || aaa005zzVar5 == aaa003zz.aaa005zz.USB || aaa005zzVar5 == aaa003zz.aaa005zz.TEST_CHANNEL) {
                        this.aaa015.reset();
                        this.aaa015.write(byteArray, i14 + 5, (byteArray.length - i15) - 1);
                    } else {
                        z3 = false;
                    }
                    if (aaa007zz.aaa000(bArr15) == byteArray[i15]) {
                        this.aaa024.aaa000(aaa003zz.aaa002zz.FIRMWARE_NOT_SUPPORTED, "error code - 7001");
                    } else {
                        this.aaa024.aaa009("CRC error (1)");
                    }
                } else {
                    this.aaa024.aaa009("Incorrect length (1)");
                    z3 = false;
                }
            } else {
                z3 = false;
            }
        } else {
            if (byteArray.length >= 4) {
                int i16 = ((byteArray[2] & 255) << 8) | (byteArray[3] & 255);
                if (byteArray.length >= i16 + 5) {
                    int i17 = i16 + 4;
                    byte[] bArr16 = new byte[i17];
                    System.arraycopy(byteArray, 0, bArr16, 0, i17);
                    aaa003zz.aaa005zz aaa005zzVar6 = this.aaa009;
                    if (aaa005zzVar6 == aaa005zzVar2 || aaa005zzVar6 == aaa003zz.aaa005zz.BLUETOOTH_4 || aaa005zzVar6 == aaa003zz.aaa005zz.SERIAL || aaa005zzVar6 == aaa003zz.aaa005zz.USB || aaa005zzVar6 == aaa003zz.aaa005zz.TEST_CHANNEL) {
                        this.aaa015.reset();
                        this.aaa015.write(byteArray, i16 + 5, (byteArray.length - i17) - 1);
                        z = true;
                    } else {
                        z = false;
                    }
                    if (aaa007zz.aaa000(bArr16) == byteArray[i17]) {
                        byte b5 = byteArray[0];
                        boolean z4 = ((b5 >> 7) & 1) == 1;
                        boolean z5 = ((b5 >> 6) & 1) == 1;
                        byte b6 = (byte) (b5 & 7);
                        byte b7 = byteArray[1];
                        byte b8 = (byte) ((b7 >> 4) & 15);
                        byte b9 = (byte) (b7 & 15);
                        byte[] bArr17 = new byte[i16];
                        System.arraycopy(byteArray, 4, bArr17, 0, i16);
                        boolean z6 = z5 && (bArr2 = aaa042) != null && Arrays.equals(bArr2, bArr17);
                        aaa042 = bArr17;
                        if (b6 == 3) {
                            synchronized (this.aaa007) {
                                this.aaa006 = true;
                                this.aaa007.notifyAll();
                            }
                            aaa000();
                            this.aaa024.aaa000(BBDeviceController.SessionError.INVALID_SESSION, "");
                            return;
                        }
                        if (b6 == 5) {
                            synchronized (this.aaa007) {
                                this.aaa006 = true;
                                this.aaa007.notifyAll();
                            }
                            aaa000();
                            this.aaa024.aaa000(aaa003zz.aaa002zz.CHANNEL_BUFFER_FULL, "");
                            return;
                        }
                        if (b6 == 7) {
                            synchronized (this.aaa007) {
                                this.aaa006 = true;
                                this.aaa007.notifyAll();
                            }
                            aaa000();
                            this.aaa024.aaa000(aaa003zz.aaa002zz.COMM_ERROR, "Communication error (error code - 9010)");
                            return;
                        }
                        if (b6 == 6) {
                            aaa000();
                            this.aaa031 = b9;
                            byte[] bArrAaa000 = aaa000(true, (byte) 0, false);
                            if (bArrAaa000 == null) {
                                if (!z || this.aaa015.size() <= 0) {
                                    return;
                                }
                                aaa000(new byte[0]);
                                return;
                            }
                            aaa000(bArrAaa000, aaa039.get(this.aaa009).intValue(), false);
                            aaa001(bArrAaa000);
                            if (!z || this.aaa015.size() <= 0) {
                                return;
                            }
                            aaa000(new byte[0]);
                            return;
                        }
                        if (b6 != 0) {
                            if (!z || this.aaa015.size() <= 0) {
                                return;
                            }
                            aaa000(new byte[0]);
                            return;
                        }
                        if (b6 == 0 && i16 == 0) {
                            this.aaa031++;
                            aaa000();
                            List<byte[]> list = this.aaa028;
                            if (list != null && this.aaa031 < list.size()) {
                                byte[] bArrAaa0002 = aaa000(false, (byte) 0, false);
                                if (bArrAaa0002 == null) {
                                    if (!z || this.aaa015.size() <= 0) {
                                        return;
                                    }
                                    aaa000(new byte[0]);
                                    return;
                                }
                                aaa000(aaa000(true, (byte) 0, false), aaa039.get(this.aaa009).intValue(), false);
                                aaa001(bArrAaa0002);
                            } else {
                                List<byte[]> list2 = this.aaa028;
                                if (list2 != null && this.aaa031 >= list2.size() && this.aaa028.size() >= 2) {
                                    this.aaa031 = 0;
                                    if (aaa000(false, (byte) 0, false) == null) {
                                        if (!z || this.aaa015.size() <= 0) {
                                            return;
                                        }
                                        aaa000(new byte[0]);
                                        return;
                                    }
                                    aaa000(aaa000(true, (byte) 0, false), Math.max(this.aaa034, aaa039.get(this.aaa009).intValue()), false);
                                }
                            }
                            if (!z || this.aaa015.size() <= 0) {
                                return;
                            }
                            aaa000(new byte[0]);
                            return;
                        }
                        if (b9 == 0 && i16 == 6 && bArr17[0] == -16 && bArr17[1] == 1 && bArr17[5] == 31) {
                            this.aaa010.aaa000(bArr17, z6);
                            return;
                        }
                        if (b9 == 0) {
                            if (this.aaa030 == null) {
                                this.aaa030 = new ArrayList();
                            }
                        } else if (this.aaa030 == null) {
                            aaa000((byte) 6, b8, (byte) 0);
                            if (!z || this.aaa015.size() <= 0) {
                                return;
                            }
                            aaa000(new byte[0]);
                            return;
                        }
                        if (this.aaa030.size() > b9) {
                            this.aaa030.remove(b9);
                            this.aaa030.add(b9, bArr17);
                            if (b8 > 0) {
                                aaa000((byte) 0, b8, b9);
                            }
                        } else if (this.aaa030.size() == b9) {
                            this.aaa030.add(bArr17);
                            if (b8 > 0) {
                                aaa000((byte) 0, b8, b9);
                            }
                        } else {
                            aaa000((byte) 6, b8, (byte) this.aaa030.size());
                        }
                        if (b9 == b8) {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            for (int i18 = 0; i18 < this.aaa030.size() && i18 <= b8; i18++) {
                                byte[] bArr18 = this.aaa030.get(i18);
                                byteArrayOutputStream.write(bArr18, 0, bArr18.length);
                            }
                            this.aaa025 = false;
                            synchronized (this.aaa000) {
                                this.aaa000.notify();
                            }
                            this.aaa030 = null;
                            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                            try {
                                if (aaa043 && z4) {
                                    byte[] bArrAaa0003 = ccc032zz.aaa000(byteArray2, ccc071zz.aaa005(this.aaa024.aaa035()));
                                    int i19 = bArrAaa0003[bArrAaa0003.length - 1];
                                    if (i19 <= 8 && i19 >= 0) {
                                        int length = bArrAaa0003.length - i19;
                                        byte[] bArr19 = new byte[length];
                                        System.arraycopy(bArrAaa0003, 0, bArr19, 0, length);
                                        byteArray2 = bArr19;
                                    } else {
                                        ccc032zz.aaa000(bArrAaa0003, ccc071zz.aaa005(this.aaa024.aaa035()));
                                        throw new Exception();
                                    }
                                }
                            } catch (Exception unused5) {
                                this.aaa024.aaa009("Error decrypted payload: " + ccc071zz.aaa000(new byte[0]));
                            }
                            if (byteArray2.length > 5) {
                                int i20 = ((byteArray2[3] & 255) << 8) | (byteArray2[4] & 255);
                                if (byteArray2.length >= i20 + 6) {
                                    int i21 = i20 + 5;
                                    byte[] bArr20 = new byte[i21];
                                    System.arraycopy(byteArray2, 0, bArr20, 0, i21);
                                    if (aaa007zz.aaa000(bArr20) == byteArray2[i21] && new aaa010zz(byteArray2).aaa005()) {
                                        aaa001();
                                    }
                                }
                            }
                            if (byteArray2.length > 0) {
                                this.aaa010.aaa000(byteArray2, z6);
                                ccc025zz.aaa000(byteArray2);
                            }
                        }
                    } else {
                        this.aaa024.aaa009("CRC error (7)");
                    }
                    z3 = z;
                }
            }
            z3 = false;
        }
        if (!z3 || this.aaa015.size() <= 0) {
            return;
        }
        aaa000(new byte[0]);
    }

    void aaa000(byte[] bArr, int i, boolean z) {
        synchronized (this.aaa004) {
            try {
                aaa000();
                if (z) {
                    this.aaa033 = 0;
                }
                this.aaa018 = new ccc026zz(bArr, i, this, this.aaa010);
                if (!this.aaa020.isShutdown()) {
                    this.aaa020.execute(this.aaa018);
                }
            } catch (Exception unused) {
            }
        }
    }

    void aaa000() {
        synchronized (this.aaa004) {
            try {
                ccc026zz ccc026zzVar = this.aaa018;
                if (ccc026zzVar != null) {
                    ccc026zzVar.aaa000();
                    try {
                        Thread thread = this.aaa018.aaa004;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Exception unused) {
                    }
                    this.aaa018 = null;
                }
            } catch (Exception unused2) {
            }
            try {
                int size = this.aaa019.size();
                Runnable[] runnableArr = new Runnable[size];
                this.aaa019.toArray(runnableArr);
                for (int i = 0; i < size; i++) {
                    Runnable runnable = runnableArr[i];
                    if (runnable instanceof ccc026zz) {
                        ((ccc026zz) runnable).aaa000();
                        try {
                            if (((ccc026zz) runnable).aaa004 != null) {
                                ((ccc026zz) runnable).aaa004.interrupt();
                            }
                        } catch (Exception unused3) {
                        }
                    }
                }
            } catch (Exception unused4) {
            }
        }
    }

    byte[] aaa000(aaa003zz.aaa005zz aaa005zzVar) {
        if (aaa005zzVar == aaa003zz.aaa005zz.USB) {
            return ccc071zz.aaa005("0000000BE000000005DF875801000A01");
        }
        if (aaa005zzVar == aaa003zz.aaa005zz.SERIAL) {
            return ccc071zz.aaa005("0000000DE0000000070100DF875801003645");
        }
        if (aaa005zzVar == aaa003zz.aaa005zz.TEST_CHANNEL) {
            return ccc071zz.aaa005("0000000DE0000000070100DF875801003645");
        }
        if (aaa005zzVar != aaa003zz.aaa005zz.BLUETOOTH_2 && aaa005zzVar != aaa003zz.aaa005zz.BLUETOOTH_4) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(ccc071zz.aaa005("5680000D10"));
            int iAaa000 = aaa005zzVar.aaa000();
            if (iAaa000 <= 0) {
                return null;
            }
            byteArrayOutputStream.write((iAaa000 >> 8) & 255);
            byteArrayOutputStream.write(iAaa000 & 255);
            byteArrayOutputStream.write(ccc071zz.aaa005("DF852C0100DF87580100"));
        } catch (IOException unused) {
        }
        byteArrayOutputStream.write(aaa007zz.aaa000(byteArrayOutputStream.toByteArray()));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.reset();
        byteArrayOutputStream.write(WinError.ERROR_BUSY);
        for (byte b : byteArray) {
            if (b == -86 || b == -69 || b == -52) {
                byteArrayOutputStream.write(HttpStatus.SC_NO_CONTENT);
            }
            byteArrayOutputStream.write(b);
        }
        byteArrayOutputStream.write(WinError.ERROR_SEM_NOT_FOUND);
        return byteArrayOutputStream.toByteArray();
    }
}
