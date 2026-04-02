package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothSocket;
import android.graphics.Rect;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc039zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class aaa011zz {
    static final double[] aaa017 = {3.397d, 3.442d, 3.475d, 3.5d, 3.518d, 3.534d, 3.546d, 3.555d, 3.565d, 3.573d, 3.579d, 3.584d, 3.588d, 3.596d, 3.601d, 3.605d, 3.609d, 3.613d, 3.618d, 3.621d, 3.626d, 3.629d, 3.634d, 3.637d, 3.641d, 3.644d, 3.648d, 3.651d, 3.654d, 3.657d, 3.661d, 3.663d, 3.665d, 3.669d, 3.672d, 3.675d, 3.678d, 3.681d, 3.684d, 3.688d, 3.692d, 3.695d, 3.698d, 3.702d, 3.706d, 3.71d, 3.714d, 3.717d, 3.721d, 3.726d, 3.73d, 3.734d, 3.738d, 3.743d, 3.748d, 3.753d, 3.758d, 3.763d, 3.768d, 3.773d, 3.778d, 3.784d, 3.787d, 3.795d, 3.801d, 3.806d, 3.812d, 3.819d, 3.823d, 3.83d, 3.837d, 3.843d, 3.85d, 3.856d, 3.862d, 3.869d, 3.877d, 3.884d, 3.889d, 3.899d, 3.907d, 3.914d, 3.922d, 3.932d, 3.94d, 3.948d, 3.955d, 3.966d, 3.975d, 3.982d, 3.993d, 4.002d, 4.011d, 4.022d, 4.033d, 4.043d, 4.054d, 4.066d, 4.077d, 4.092d, 4.11d};
    static boolean aaa018 = false;
    private static byte[] aaa019;
    aaa003zz aaa000;
    private aaa009zz aaa001;
    aaa010zz aaa003;
    aaa010zz aaa004;
    int aaa005;
    private final Object aaa002 = new Object();
    boolean aaa006 = false;
    boolean aaa007 = false;
    boolean aaa008 = false;
    boolean aaa009 = false;
    String aaa010 = "";
    boolean aaa011 = false;
    boolean aaa012 = false;
    boolean aaa013 = false;
    boolean aaa014 = false;
    int aaa015 = 0;
    List<CAPK> aaa016 = null;

    aaa011zz(aaa003zz aaa003zzVar) {
        this.aaa000 = aaa003zzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa031() {
        this.aaa000.aaa011.aaa003(true);
        this.aaa000.aaa011.aaa003().aaa046();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa032() {
        this.aaa000.aaa011.aaa003(true);
        this.aaa000.aaa011.aaa003().aaa046();
    }

    void aaa000(aaa003zz.aaa005zz aaa005zzVar, BluetoothSocket bluetoothSocket, BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, PipedInputStream pipedInputStream, Object obj, InputStream inputStream, OutputStream outputStream, Object obj2, BluetoothGattCharacteristic bluetoothGattCharacteristic2, aaa004zz aaa004zzVar) {
        synchronized (this.aaa002) {
            if (this.aaa001 == null) {
                this.aaa001 = new aaa009zz(this.aaa000, this, aaa005zzVar, bluetoothSocket, bluetoothGatt, bluetoothGattCharacteristic, pipedInputStream, obj, inputStream, outputStream, obj2, bluetoothGattCharacteristic2, aaa004zzVar);
            }
        }
    }

    void aaa001() {
        new aaa014zz(this.aaa000, this).aaa000();
    }

    void aaa002(Hashtable<String, Object> hashtable) {
        new aaa027zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa003(String str) {
        synchronized (this.aaa002) {
            if (this.aaa001 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.COMM_LINK_UNINITIALIZED, "");
            } else if (this.aaa000.aaa039()) {
                this.aaa001.aaa000(str);
            }
        }
    }

    void aaa004(int i) {
        if (aaa019 != null) {
            new aaa083zz(this.aaa000, this).aaa000(i, aaa019);
        }
    }

    void aaa005() {
        new aaa018zz(this.aaa000, this).aaa000();
    }

    void aaa006() {
        new aaa019zz(this.aaa000, this).aaa000();
    }

    void aaa007() {
        new aaa021zz(this.aaa000, this).aaa000();
    }

    void aaa008() {
        aaa009zz aaa009zzVar = this.aaa001;
        if (aaa009zzVar != null) {
            aaa009zzVar.aaa000();
        }
    }

    void aaa009() {
        this.aaa003 = null;
    }

    void aaa010() {
        new aaa023zz(this.aaa000, this).aaa000();
    }

    void aaa011() {
        new aaa024zz(this.aaa000, this).aaa000();
    }

    void aaa012(String str) {
        new aaa081zz(this.aaa000, this).aaa000(str);
    }

    void aaa013() {
        new aaa026zz(this.aaa000, this).aaa000();
    }

    void aaa014() {
        new aaa029zz(this.aaa000, this).aaa000();
    }

    void aaa015(Hashtable<String, Object> hashtable) {
        new aaa094zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa016() {
        new aaa034zz(this.aaa000, this).aaa000();
    }

    void aaa017(Hashtable<String, Object> hashtable) {
        new aaa096zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa018(Hashtable<String, Object> hashtable) {
        new aaa098zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa019() {
        new aaa037zz(this.aaa000, this).aaa000();
    }

    void aaa020(Hashtable<String, String> hashtable) {
        new bbb000zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa021() {
        new aaa041zz(this.aaa000, this).aaa000();
    }

    aaa003zz.aaa005zz aaa022() {
        aaa009zz aaa009zzVar = this.aaa001;
        return aaa009zzVar != null ? aaa009zzVar.aaa003() : aaa003zz.aaa005zz.NONE;
    }

    void aaa023() {
        new aaa043zz(this.aaa000, this).aaa000();
    }

    void aaa024() {
        new aaa045zz(this.aaa000, this).aaa000();
    }

    void aaa025() {
        new aaa046zz(this.aaa000, this).aaa000();
    }

    void aaa026() {
        new aaa048zz(this.aaa000, this).aaa000();
    }

    void aaa027() {
        new aaa049zz(this.aaa000, this).aaa000();
    }

    void aaa028() {
        new aaa051zz(this.aaa000, this).aaa000();
    }

    void aaa029() {
        new aaa055zz(this.aaa000, this).aaa000();
    }

    void aaa030() {
        new aaa057zz(this.aaa000, this).aaa000();
    }

    void aaa033() {
        new aaa063zz(this.aaa000, this).aaa000();
    }

    void aaa034() {
        new aaa065zz(this.aaa000, this).aaa000();
    }

    void aaa035() {
        new aaa066zz(this.aaa000, this).aaa000();
    }

    void aaa036() {
        new aaa073zz(this.aaa000, this).aaa000();
    }

    void aaa037() {
        new aaa074zz(this.aaa000, this).aaa000();
    }

    void aaa038() {
        aaa010zz aaa010zzVar;
        synchronized (this.aaa002) {
            aaa009zz aaa009zzVar = this.aaa001;
            if (aaa009zzVar != null && (aaa010zzVar = this.aaa003) != null) {
                aaa009zzVar.aaa002(aaa010zzVar);
            }
        }
    }

    void aaa039() {
        new aaa097zz(this.aaa000, this).aaa000();
    }

    void aaa040() {
        new bbb003zz(this.aaa000, this).aaa000();
    }

    void aaa001(String str) {
        new aaa050zz(this.aaa000, this).aaa000(str);
    }

    void aaa002() {
        new aaa015zz(this.aaa000, this).aaa000();
    }

    void aaa005(Hashtable<String, Object> hashtable) {
        new aaa032zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa006(Hashtable<String, String> hashtable) {
        new aaa039zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa007(Hashtable<String, Object> hashtable) {
        new aaa064zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa009(Hashtable<String, Object> hashtable) {
        new aaa067zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa010(Hashtable<String, Object> hashtable) {
        new aaa077zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa011(String str) {
        new aaa080zz(this.aaa000, this).aaa000(str);
    }

    boolean aaa012(Hashtable<String, Object> hashtable) {
        return new aaa087zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa013(String str) {
        new aaa082zz(this.aaa000, this).aaa000(str);
    }

    void aaa014(String str) {
        new aaa084zz(this.aaa000, this).aaa000(str);
    }

    void aaa015(String str) {
        new bbb001zz(this.aaa000, this).aaa000(str);
    }

    void aaa016(Hashtable<String, Object> hashtable) {
        new aaa095zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa017() {
        new aaa035zz(this.aaa000, this).aaa000();
    }

    void aaa018() {
        new aaa036zz(this.aaa000, this).aaa000();
    }

    void aaa019(Hashtable<String, String> hashtable) {
        new aaa099zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa020() {
        new aaa038zz(this.aaa000, this).aaa000();
    }

    void aaa001(int i) {
        new aaa054zz(this.aaa000, this).aaa000(i);
    }

    void aaa002(String str) {
        new aaa056zz(this.aaa000, this).aaa000(str);
    }

    void aaa004() {
        new aaa017zz(this.aaa000, this).aaa000();
    }

    void aaa005(int i) {
        new aaa093zz(this.aaa000, this).aaa000(i);
    }

    void aaa006(String str) {
        new aaa068zz(this.aaa000, this).aaa000(str);
    }

    void aaa007(String str) {
        new aaa070zz(this.aaa000, this).aaa000(str);
    }

    void aaa008(Hashtable<String, Object> hashtable) {
        new aaa066zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa009(String str) {
        new aaa072zz(this.aaa000, this).aaa000(str);
    }

    void aaa010(String str) {
        new aaa078zz(this.aaa000, this).aaa000(str);
    }

    void aaa011(Hashtable<String, String> hashtable) {
        new aaa086zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa012() {
        new aaa025zz(this.aaa000, this).aaa000();
    }

    void aaa013(Hashtable<String, Rect> hashtable) {
        new aaa090zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa014(Hashtable<String, Object> hashtable) {
        new aaa092zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa015() {
        new aaa030zz(this.aaa000, this).aaa000();
    }

    void aaa016(String str) {
        new bbb002zz(this.aaa000, this).aaa000(str);
    }

    void aaa001(int i, String str) {
        new aaa053zz(this.aaa000, this).aaa000(i, str);
    }

    void aaa002(int i) {
        new aaa075zz(this.aaa000, this).aaa000(i);
    }

    void aaa004(Hashtable<String, Object> hashtable) {
        new aaa031zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa005(String str) {
        aaa009zz aaa009zzVar = this.aaa001;
        if (aaa009zzVar != null) {
            aaa009zzVar.aaa001(ccc071zz.aaa005(str));
        }
    }

    void aaa008(String str) {
        new aaa071zz(this.aaa000, this).aaa000(str);
    }

    void aaa001(boolean z) {
        new aaa079zz(this.aaa000, this).aaa000(z);
    }

    void aaa002(boolean z) {
        new aaa088zz(this.aaa000, this).aaa000(z);
    }

    void aaa004(String str) {
        new aaa058zz(this.aaa000, this).aaa000(str);
    }

    void aaa000(aaa003zz.aaa005zz aaa005zzVar) {
        synchronized (this.aaa002) {
            aaa009zz aaa009zzVar = this.aaa001;
            if (aaa009zzVar == null) {
                return;
            }
            if (aaa005zzVar == aaa009zzVar.aaa003()) {
                this.aaa001.aaa008();
                this.aaa001 = null;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE, "");
            }
        }
    }

    void aaa001(final byte[] bArr) {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa011zz$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(bArr);
            }
        }).start();
    }

    void aaa002(int i, String str) {
        new aaa069zz(this.aaa000, this).aaa000(i, str);
    }

    void aaa004(String str, String str2) {
        new aaa085zz(this.aaa000, this).aaa000(str, str2);
    }

    void aaa002(String str, String str2) {
        new aaa062zz(this.aaa000, this).aaa000(str, str2);
    }

    void aaa001(Hashtable<String, Object> hashtable) {
        new aaa022zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa001(String str, String str2) {
        new aaa060zz(this.aaa000, this).aaa000(str, str2);
    }

    void aaa003() {
        new aaa016zz(this.aaa000, this).aaa000();
    }

    void aaa003(Hashtable<String, Object> hashtable) {
        new aaa028zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa003(int i) {
        new aaa076zz(this.aaa000, this).aaa000(i);
    }

    void aaa003(String str, String str2) {
        aaa009zz aaa009zzVar = this.aaa001;
        if (aaa009zzVar != null) {
            aaa009zzVar.aaa001(ccc071zz.aaa005(ccc050zz.aaa001(str, str2)));
        }
    }

    void aaa000(ccc027zz ccc027zzVar) {
        synchronized (this.aaa002) {
            aaa009zz aaa009zzVar = this.aaa001;
            if (aaa009zzVar != null) {
                aaa009zzVar.aaa000(ccc027zzVar);
            }
        }
    }

    void aaa003(int i, String str) {
        new bbb004zz(this.aaa000, this).aaa000(i, str);
    }

    void aaa000(aaa010zz aaa010zzVar) {
        synchronized (this.aaa002) {
            if (this.aaa001 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.COMM_LINK_UNINITIALIZED, "");
            } else if (this.aaa000.aaa039()) {
                this.aaa001.aaa002(aaa010zzVar);
            }
        }
    }

    boolean aaa000(BBDeviceController.aaa006zz aaa006zzVar) {
        return BBDeviceController.aaa000(aaa006zzVar);
    }

    void aaa000(byte[] bArr, boolean z) {
        String str;
        ccc067zz ccc067zzVarAaa000;
        ccc067zz ccc067zzVarAaa0002;
        String str2;
        if (bArr.length > 5) {
            int i = ((bArr[3] & 255) << 8) | (bArr[4] & 255);
            if (bArr.length >= i + 6) {
                int i2 = i + 5;
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                if (aaa007zz.aaa000(bArr2) == bArr[i2]) {
                    aaa010zz aaa010zzVar = new aaa010zz(bArr);
                    byte[] bArrAaa003 = aaa010zzVar.aaa003();
                    byte[] bArr3 = ccc010zz.aaa022;
                    if (!Arrays.equals(bArrAaa003, bArr3) && !z) {
                        aaa010zz aaa010zzVar2 = this.aaa003;
                        if (aaa010zzVar2 != null) {
                            this.aaa004 = new aaa010zz(aaa010zzVar2.aaa003(), (byte) 0, (byte) 0, new byte[0]);
                        }
                        this.aaa003 = null;
                    }
                    if (aaa010zzVar.aaa001() == 1) {
                        if (!this.aaa007) {
                            this.aaa000.aaa000(BBDeviceController.BatteryStatus.LOW);
                            this.aaa007 = true;
                        }
                    } else if (aaa010zzVar.aaa001() == 2) {
                        if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb069) && !Arrays.equals(aaa010zzVar.aaa003(), bArr3) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa005) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb078) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc012) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb079) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb071)) {
                            this.aaa000.aaa000(BBDeviceController.BatteryStatus.CRITICALLY_LOW);
                            ccc025zz.aaa000(aaa010zzVar.aaa004());
                            return;
                        }
                        this.aaa000.aaa000(BBDeviceController.BatteryStatus.CRITICALLY_LOW);
                    } else {
                        this.aaa007 = false;
                    }
                    if (aaa010zzVar.aaa002() == 0) {
                        aaa000(aaa010zzVar, z);
                    } else if (aaa010zzVar.aaa002() == 15) {
                        aaa000((byte) 0);
                    } else if (aaa010zzVar.aaa002() == 13) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_SUPPORT, "The connected reader or the loaded firmware version does not support this command 0x" + ccc071zz.aaa000(aaa010zzVar.aaa003()));
                    } else {
                        String str3 = "";
                        if (aaa010zzVar.aaa002() == 12) {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        } else if (aaa010zzVar.aaa002() == 11) {
                            byte[] bArrAaa004 = aaa010zzVar.aaa004();
                            if (bArrAaa004.length <= 0 || (ccc067zzVarAaa0002 = ccc068zz.aaa000(ccc068zz.aaa002(bArrAaa004), "DF59")) == null) {
                                str = "";
                            } else {
                                String str4 = ccc067zzVarAaa0002.aaa001;
                                byte[] bArrAaa005 = ccc071zz.aaa005(str4);
                                if (!Arrays.equals(bArrAaa005, ccc010zz.aaa025) && !Arrays.equals(bArrAaa005, ccc010zz.aaa027)) {
                                    if (Arrays.equals(bArrAaa005, ccc010zz.aaa033)) {
                                        str2 = "startPinEntry";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.aaa049)) {
                                        str2 = "encryptDataWithSettings";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.bbb090)) {
                                        str2 = "displayPrompt";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.bbb073)) {
                                        str2 = "enableAccountSelection";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.aaa059)) {
                                        str2 = "enableInputAmount";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.aaa063)) {
                                        str2 = "setAmount";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.aaa099)) {
                                        str2 = "startGetPhoneNumber";
                                    } else if (str4.equalsIgnoreCase("820E")) {
                                        str2 = "onRequestEnablePinEntry";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.bbb004)) {
                                        str2 = "onRequestSetAmount/onRequestOtherAmount";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.bbb002)) {
                                        str2 = "onWaitingForCard";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.aaa067)) {
                                        str2 = "onRequestSelectApplication";
                                    } else if (Arrays.equals(bArrAaa005, ccc010zz.ccc017)) {
                                        str2 = "onRequestSelectAccountType";
                                    } else if (!Arrays.equals(bArrAaa005, ccc010zz.aaa071) && !Arrays.equals(bArrAaa005, ccc010zz.aaa073)) {
                                        if (Arrays.equals(bArrAaa005, ccc010zz.aaa081)) {
                                            str2 = "onRequestFinalConfirm";
                                        } else if (Arrays.equals(bArrAaa005, ccc010zz.ccc027)) {
                                            str2 = "onRequestAmountConfirm";
                                        } else if (Arrays.equals(bArrAaa005, ccc010zz.ccc051)) {
                                            str2 = "onRequestDisplayApplicationLabel ";
                                        } else {
                                            str2 = Arrays.equals(bArrAaa005, ccc010zz.bbb006) ? "onRequestOnlineProcess/onReturnBatchData/onReturnReversalData/onReturnTransactionResult" : str4;
                                        }
                                    } else {
                                        str2 = "onRequestPinEntry/onRequestManualPanEntry";
                                    }
                                } else {
                                    str2 = "checkCard";
                                }
                                str3 = "Device busy with command/callback: " + str2;
                                str = str4;
                            }
                            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc086)) {
                                str3 = str3 + " (send command ID : " + ccc071zz.aaa000(aaa010zzVar.aaa003()) + ", busy command ID : " + str + ")";
                            }
                            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa001) && bArrAaa004.length > 0 && (ccc067zzVarAaa000 = ccc068zz.aaa000(ccc068zz.aaa002(bArrAaa004), "DF8675")) != null && ccc067zzVarAaa000.aaa001.equalsIgnoreCase("AB")) {
                                str3 = str3 + " (send command ID : 0CF5, busy command ID : " + str + ")";
                            }
                            this.aaa000.aaa000(aaa003zz.aaa002zz.DEVICE_BUSY, str3);
                        } else if (aaa010zzVar.aaa002() != 10 && aaa010zzVar.aaa002() == 9) {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.HARDWARE_NOT_SUPPORTED, "");
                        }
                    }
                    ccc025zz.aaa000(aaa010zzVar.aaa004());
                    return;
                }
                aaa000((byte) 15);
                return;
            }
            aaa000((byte) 15);
            return;
        }
        aaa000((byte) 15);
    }

    void aaa000(aaa010zz aaa010zzVar, boolean z) {
        List<ccc067zz> listAaa002 = ccc068zz.aaa002(aaa010zzVar.aaa004());
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(listAaa002, "DF877A");
        if (ccc067zzVarAaa000 != null) {
            ccc061zz.aaa001(ccc071zz.aaa000(ccc067zzVarAaa000));
        }
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(listAaa002, "DF822D");
        if (ccc067zzVarAaa0002 != null) {
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa006)) {
                aaa000(ccc010zz.aaa007, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa008)) {
                aaa000(ccc010zz.aaa009, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa010)) {
                aaa000(ccc010zz.aaa011, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa012)) {
                aaa000(ccc010zz.aaa013, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa014)) {
                aaa000(ccc010zz.aaa015, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa029)) {
                aaa000(ccc010zz.aaa030, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa031)) {
                aaa000(ccc010zz.aaa032, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa035)) {
                aaa000(ccc010zz.aaa036, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa037)) {
                aaa000(ccc010zz.aaa038, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa041)) {
                aaa000(ccc010zz.aaa042, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa045)) {
                aaa000(ccc010zz.aaa046, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa047)) {
                aaa000(ccc010zz.aaa048, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa051)) {
                aaa000(ccc010zz.aaa052, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa053)) {
                aaa000(ccc010zz.aaa054, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa061)) {
                aaa000(ccc010zz.aaa062, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa065)) {
                aaa000(ccc010zz.aaa066, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa067)) {
                aaa000(ccc010zz.aaa068, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc017)) {
                aaa000(ccc010zz.ccc018, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa071)) {
                aaa000(ccc010zz.aaa072, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa073)) {
                aaa000(ccc010zz.aaa074, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa079)) {
                aaa000(ccc010zz.aaa080, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa081)) {
                aaa000(ccc010zz.aaa082, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc027)) {
                aaa000(ccc010zz.ccc028, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa089)) {
                aaa000(ccc010zz.aaa090, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa091)) {
                aaa000(ccc010zz.aaa092, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb000)) {
                aaa000(ccc010zz.bbb001, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb002)) {
                aaa000(ccc010zz.bbb003, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb004)) {
                aaa000(ccc010zz.bbb005, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb006)) {
                aaa000(ccc010zz.bbb007, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb034)) {
                aaa000(ccc010zz.bbb035, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb038)) {
                aaa000(ccc010zz.bbb039, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb042)) {
                aaa000(ccc010zz.bbb043, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb060)) {
                aaa000(ccc010zz.bbb061, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc059)) {
                aaa000(ccc010zz.ccc060, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc061)) {
                aaa000(ccc010zz.ccc062, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb065)) {
                aaa000(ccc010zz.bbb066, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb067)) {
                aaa000(ccc010zz.bbb068, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb069)) {
                aaa000(ccc010zz.bbb070, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb079)) {
                aaa000(ccc010zz.bbb080, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb071)) {
                aaa000(ccc010zz.bbb072, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb075)) {
                aaa000(ccc010zz.bbb076, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb083)) {
                aaa000(ccc010zz.bbb084, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb085)) {
                aaa000(ccc010zz.bbb086, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb092)) {
                aaa000(ccc010zz.bbb093, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc037)) {
                aaa000(ccc010zz.ccc038, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc039)) {
                aaa000(ccc010zz.ccc040, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc045)) {
                aaa000(ccc010zz.ccc046, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd026)) {
                aaa000(ccc010zz.ddd027, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd028)) {
                aaa000(ccc010zz.ddd029, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc049)) {
                aaa000(ccc010zz.ccc050, (byte) 0);
            } else if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc051)) {
                aaa000(ccc010zz.ccc052, (byte) 0);
            }
            this.aaa000.aaa000(ccc034zz.aaa002(ccc067zzVarAaa0002.aaa001), ccc034zz.aaa003(ccc067zzVarAaa0002.aaa001));
            return;
        }
        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa001)) {
            new bbb058zz(this.aaa000, this).aaa000(listAaa002, z, aaa010zzVar);
            return;
        }
        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa003)) {
            new bbb059zz(this.aaa000, this).aaa000(listAaa002, z);
            return;
        }
        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa006)) {
            new bbb023zz(this.aaa000, this).aaa000(z);
            return;
        }
        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa008)) {
            new bbb028zz(this.aaa000, this).aaa000(listAaa002, z);
            return;
        }
        if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa010) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa012)) {
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa014)) {
                new bbb027zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa026)) {
                new ccc009zz(this.aaa000, this).aaa001(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa028)) {
                this.aaa000.aaa000(BBDeviceController.CheckCardMode.SWIPE);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa029)) {
                new bbb054zz(this.aaa000, this, this.aaa001).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa031)) {
                new bbb055zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb002)) {
                new ccc009zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa034)) {
                new bbb089zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa035)) {
                new bbb088zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa037)) {
                new bbb088zz(this.aaa000, this).aaa002(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb060)) {
                new bbb088zz(this.aaa000, this).aaa001(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa050)) {
                new bbb007zz(this.aaa000, this).aaa000(listAaa002);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa053)) {
                new bbb071zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa051)) {
                new bbb039zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa056)) {
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa058)) {
                new bbb009zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb004)) {
                new bbb038zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa064)) {
                new bbb008zz(this.aaa000, this).aaa000(listAaa002);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa067)) {
                new bbb037zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa070)) {
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc017)) {
                new bbb036zz(this.aaa000, this).aaa000(z);
                return;
            }
            if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc020)) {
                return;
            }
            if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa071) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa073)) {
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc051)) {
                    new bbb024zz(this.aaa000, this).aaa000(listAaa002);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc003)) {
                    new bbb031zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa076)) {
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb006)) {
                    new bbb032zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa078)) {
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa079)) {
                    new ccc000zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa081)) {
                    new bbb030zz(this.aaa000, this).aaa000(z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa084)) {
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc027)) {
                    new bbb022zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc030)) {
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc059)) {
                    new bbb033zz(this.aaa000, this).aaa000(z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc061)) {
                    new bbb087zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa088)) {
                    new bbb064zz(this.aaa000, this).aaa001(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa089)) {
                    new bbb064zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa086)) {
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa098)) {
                    new bbb084zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb009)) {
                    new bbb091zz(this.aaa000, this).aaa000(listAaa002);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb011)) {
                    new bbb090zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb013)) {
                    new bbb047zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb023)) {
                    new bbb096zz(this.aaa000, this).aaa000(listAaa002);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb025)) {
                    new ccc003zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa021)) {
                    new bbb063zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa065)) {
                    new bbb044zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb091)) {
                    new bbb010zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc024)) {
                    new ccc002zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc026)) {
                    new bbb095zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb074)) {
                    new bbb067zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb092)) {
                    new bbb062zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb094)) {
                    new bbb073zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb075)) {
                    new bbb043zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa060)) {
                    new bbb070zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa061)) {
                    new bbb045zz(this.aaa000, this).aaa000(listAaa002, z);
                    return;
                }
                if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb027) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb029)) {
                    if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa094)) {
                        return;
                    }
                    if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb031)) {
                        try {
                            this.aaa000.aaa010(false, ccc071zz.aaa000(aaa010zzVar.aaa004()));
                            return;
                        } catch (Throwable unused) {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                            return;
                        }
                    }
                    byte[] bArrAaa003 = aaa010zzVar.aaa003();
                    byte[] bArr = ccc010zz.ddd007;
                    if (!Arrays.equals(bArrAaa003, bArr) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd009) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd011) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd013) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd015) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd017) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd019) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd021) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd023)) {
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd025)) {
                            new bbb061zz(this.aaa000, this).aaa000(listAaa002);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa040)) {
                            new bbb092zz(this.aaa000, this).aaa001(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa041)) {
                            new bbb035zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa044)) {
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa047)) {
                            new bbb092zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa045)) {
                            new bbb019zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb033) || Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb034) || Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb037) || Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb038) || Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb041) || Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb042)) {
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb045)) {
                            new bbb049zz(this.aaa000, this).aaa000(listAaa002);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb047)) {
                            new bbb048zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb049)) {
                            new bbb050zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb051)) {
                            new ccc001zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb053)) {
                            new bbb066zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb055)) {
                            new bbb065zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa024)) {
                            new bbb068zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa022)) {
                            new bbb018zz(this.aaa000, this).aaa000();
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc066)) {
                            new bbb052zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc068)) {
                            new bbb046zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc070)) {
                            new bbb053zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb015)) {
                            ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(listAaa002, "DF822D");
                            if (ccc067zzVarAaa0003 != null) {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, ccc034zz.aaa003(ccc067zzVarAaa0003.aaa001));
                                return;
                            }
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb017)) {
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb019)) {
                            new bbb085zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb020)) {
                            new bbb086zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb062)) {
                            new ccc008zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb087)) {
                            new bbb014zz(this.aaa000, this).aaa000(listAaa002);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb088)) {
                            new bbb014zz(this.aaa000, this).aaa001(listAaa002);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb065)) {
                            new bbb016zz(this.aaa000, this).aaa000(z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb067)) {
                            new bbb011zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc037)) {
                            new bbb012zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc039)) {
                            new bbb017zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb069)) {
                            new bbb018zz(this.aaa000, this).aaa000(z);
                            aaa000(ccc010zz.bbb070, (byte) 0);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb079)) {
                            new bbb013zz(this.aaa000, this).aaa000(z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.aaa005)) {
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb078)) {
                            new bbb006zz(this.aaa000, this).aaa000(listAaa002);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc012)) {
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb071)) {
                            aaa000(ccc010zz.bbb072, (byte) 0);
                            this.aaa000.aaa053();
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc042)) {
                            new ccc007zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb082)) {
                            new bbb057zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb083)) {
                            new ccc004zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb085)) {
                            aaa000(ccc010zz.bbb086, (byte) 0);
                            if (z) {
                                return;
                            }
                            this.aaa000.aaa059();
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb057)) {
                            new bbb021zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb059)) {
                            new bbb020zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc072)) {
                            new bbb083zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc074)) {
                            new bbb082zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.bbb097)) {
                            return;
                        }
                        if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc000) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc002)) {
                            if (!Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc006) && !Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc008)) {
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc049)) {
                                    new bbb042zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc010)) {
                                    new bbb098zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc034)) {
                                    new bbb094zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc044) || Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc048)) {
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc045)) {
                                    new bbb015zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc014)) {
                                    new bbb075zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc016)) {
                                    new bbb056zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc022)) {
                                    new bbb072zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc032)) {
                                    new bbb093zz(this.aaa000, this).aaa000(aaa010zzVar.aaa004());
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc090)) {
                                    new bbb083zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc092)) {
                                    new bbb077zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get WC key list");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc094)) {
                                    new bbb077zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get SP key list");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc096)) {
                                    new bbb076zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get WC public key");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc098)) {
                                    new bbb076zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get SP public key");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc100)) {
                                    new bbb076zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get WC terminal public key");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd001)) {
                                    new bbb076zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get SP terminal public key");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd003)) {
                                    new bbb074zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get WC cert");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd005)) {
                                    new bbb074zz(this.aaa000, this).aaa000(listAaa002, z, "Failed to get SP cert");
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc088)) {
                                    new bbb069zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc076)) {
                                    new bbb078zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc078)) {
                                    this.aaa000.aaa000(true, ccc071zz.aaa000(ccc068zz.aaa000(listAaa002, "DF6F")), ccc071zz.aaa000(ccc068zz.aaa000(listAaa002, "DF8666")));
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc080)) {
                                    new bbb080zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc082)) {
                                    new bbb079zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ccc084)) {
                                    new bbb081zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd026)) {
                                    new bbb026zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd028)) {
                                    new bbb029zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd031)) {
                                    new bbb097zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd033)) {
                                    new bbb040zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd035)) {
                                    new ccc005zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd037)) {
                                    new bbb041zz(this.aaa000, this).aaa000(listAaa002);
                                    return;
                                }
                                if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd039)) {
                                    new ccc006zz(this.aaa000, this).aaa000(listAaa002, z);
                                    return;
                                }
                                byte[] bArrAaa0032 = aaa010zzVar.aaa003();
                                byte b = bArrAaa0032[0];
                                if ((b & (-128)) == 0) {
                                    bArrAaa0032[0] = (byte) (b | (-128));
                                    bArrAaa0032[1] = (byte) (bArrAaa0032[1] | 1);
                                    aaa000(bArrAaa0032, (byte) 0);
                                }
                                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "API receive unknown command, maybe API is too old to support new firmware command, please try to update API. (9999) (" + ccc071zz.aaa000(bArrAaa0032) + ")");
                                return;
                            }
                            new bbb100zz(this.aaa000, this).aaa000(listAaa002, z);
                            return;
                        }
                        new bbb099zz(this.aaa000, this).aaa000(listAaa002, z);
                        return;
                    }
                    if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd011) && this.aaa000.aaa011.aaa002().aaa007() == ccc039zz.aaa001zz.GET_DEVICE_INFO_IN_BOOTLOADER) {
                        new bbb060zz(this.aaa000, this).aaa000(listAaa002, z, aaa010zzVar);
                        return;
                    }
                    if (Arrays.equals(aaa010zzVar.aaa003(), bArr) && this.aaa000.aaa011.aaa036() == ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_1_ENTER_BOOTLOADER) {
                        this.aaa000.aaa011.aaa003().aaa001.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa011zz$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.aaa031();
                            }
                        }, 7000L);
                        return;
                    }
                    if (Arrays.equals(aaa010zzVar.aaa003(), ccc010zz.ddd009) && this.aaa000.aaa011.aaa036() == ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_3_EXIT_BOOTLOADER) {
                        this.aaa000.aaa011.aaa003().aaa001.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa011zz$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.aaa032();
                            }
                        }, 7000L);
                        return;
                    }
                    try {
                        this.aaa000.aaa010(false, "DF30" + ccc034zz.aaa001(aaa010zzVar.aaa003().length) + ccc071zz.aaa000(aaa010zzVar.aaa003()) + ccc071zz.aaa000(aaa010zzVar.aaa004()));
                        return;
                    } catch (Throwable unused2) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                }
                new bbb051zz(this.aaa000, this).aaa000(listAaa002, z);
                return;
            }
            new bbb034zz(this.aaa000, this).aaa000(listAaa002, z);
            return;
        }
        new bbb025zz(this.aaa000, this).aaa000(listAaa002, z);
    }

    void aaa000(byte[] bArr, byte b, byte[] bArr2) {
        aaa010zz aaa010zzVar = new aaa010zz(bArr, (byte) 0, b, bArr2);
        synchronized (this.aaa002) {
            aaa009zz aaa009zzVar = this.aaa001;
            if (aaa009zzVar != null) {
                aaa009zzVar.aaa002(aaa010zzVar);
            }
        }
    }

    void aaa000(byte[] bArr, byte b) {
        aaa000(bArr, b, new byte[0]);
    }

    void aaa000(byte b) {
        int i = this.aaa005;
        if (i >= 2) {
            if (b != 0 && b != 15) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.COMM_ERROR, "Comm error. Retry more than max. (error code - 9013)");
                return;
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.COMM_ERROR, "CRC (error code - 9016)");
                return;
            }
        }
        aaa010zz aaa010zzVar = this.aaa003;
        if (aaa010zzVar != null) {
            this.aaa005 = i + 1;
            aaa010zz aaa010zzVarClone = aaa010zzVar.clone();
            aaa010zzVarClone.aaa000(b);
            synchronized (this.aaa002) {
                aaa009zz aaa009zzVar = this.aaa001;
                if (aaa009zzVar != null) {
                    aaa009zzVar.aaa002(aaa010zzVarClone);
                }
            }
        }
    }

    void aaa000() {
        new aaa013zz(this.aaa000, this).aaa000();
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        new aaa020zz(this.aaa000, this).aaa000(hashtable);
    }

    void aaa000(String str) {
        new aaa040zz(this.aaa000, this).aaa000(str);
    }

    void aaa000(ArrayList<String> arrayList) {
        new aaa047zz(this.aaa000, this).aaa000(arrayList);
    }

    void aaa000(boolean z) {
        new aaa044zz(this.aaa000, this).aaa000(z);
    }

    void aaa000(int i) {
        new aaa052zz(this.aaa000, this).aaa000(i);
    }

    void aaa000(String str, int i, int i2, String str2, String str3) {
        new aaa033zz(this.aaa000, this).aaa000(str, i, i2, str2, str3);
    }

    void aaa000(int i, String str) {
        new aaa042zz(this.aaa000, this).aaa000(i, str);
    }

    void aaa000(boolean z, String str) {
        new aaa079zz(this.aaa000, this).aaa000(z, str);
    }

    void aaa000(Hashtable<String, Rect> hashtable, Hashtable<String, Rect> hashtable2) {
        new aaa090zz(this.aaa000, this).aaa000(hashtable, hashtable2);
    }

    void aaa000(BBDeviceController.PinEntryOrientation pinEntryOrientation) {
        new aaa091zz(this.aaa000, this).aaa000(pinEntryOrientation);
    }

    void aaa000(String str, int i, int i2, String str2) {
        new aaa089zz(this.aaa000, this).aaa000(str, i, i2, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(byte[] bArr) {
        aaa019 = bArr;
        aaa004(0);
    }

    void aaa000(CAPK capk) {
        new aaa100zz(this.aaa000, this).aaa000(capk);
    }

    void aaa000(String str, String str2) {
        new aaa059zz(this.aaa000, this).aaa000(str, str2);
    }

    void aaa000(String str, String str2, String str3) {
        new aaa061zz(this.aaa000, this).aaa000(str, str2, str3);
    }
}
