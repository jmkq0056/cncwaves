package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothDevice;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class ccc066zz {
    private TestChannelInterface aaa002;
    private BluetoothDevice aaa007;
    private boolean aaa008;
    private boolean aaa010;
    private boolean aaa012;
    private boolean aaa014;
    private int aaa034;
    private final ccc039zz aaa041;
    private final BBDeviceController aaa042;
    private boolean aaa053;
    private boolean aaa054;
    private boolean aaa055;
    private boolean aaa056;
    private ccc052zz aaa062;
    private String aaa003 = "";
    private String aaa004 = "";
    private aaa003zz aaa005 = aaa003zz.NA;
    private aaa000zz aaa006 = aaa000zz.IDLE;
    private String aaa009 = "";
    private String aaa011 = "";
    private String aaa013 = "";
    private String aaa015 = "";
    private ccc059zz aaa016 = new ccc059zz(new Hashtable());
    private String aaa017 = "";
    private String aaa018 = "";
    private String aaa019 = "";
    private String aaa020 = "";
    private String aaa021 = "";
    private String aaa022 = "";
    private String aaa023 = "";
    private String aaa024 = "";
    private String aaa025 = "";
    private String aaa026 = "";
    private String aaa027 = "";
    private boolean aaa028 = false;
    private aaa001zz aaa029 = aaa001zz.UNKNOWN;
    private String aaa030 = "";
    private boolean aaa031 = false;
    private boolean aaa032 = false;
    private boolean aaa035 = false;
    private int aaa036 = 0;
    private int aaa037 = 0;
    private aaa002zz aaa038 = aaa002zz.NO;
    private String aaa039 = "";
    private String aaa040 = "";
    private boolean aaa043 = false;
    private String aaa044 = "";
    private boolean aaa045 = false;
    private String aaa046 = "";
    private boolean aaa047 = false;
    private Hashtable<String, String> aaa049 = new Hashtable<>();
    private Hashtable<String, String> aaa050 = new Hashtable<>();
    private Hashtable<String, String> aaa051 = new Hashtable<>();
    private Hashtable<String, String> aaa052 = new Hashtable<>();
    private String aaa057 = "";
    private String aaa058 = "";
    private int aaa059 = 0;
    private int aaa060 = 2;
    private boolean aaa061 = false;
    private int aaa063 = 1000;
    private final ccc044zz aaa033 = new ccc044zz();
    private final ccc038zz aaa048 = new ccc038zz();
    private aaa004zz aaa000 = aaa004zz.NOT;
    private ccc048zz aaa001 = new ccc048zz(false, false, "", "", BBDeviceController.Error.UNKNOWN);

    enum aaa000zz {
        IDLE,
        START_EMV,
        START_EMV_SUCCEED,
        WAITING_FOR_CARD,
        REQUEST_SET_AMOUNT,
        RETURN_AMOUNT,
        RETURN_AMOUNT_CONFIRM_RESULT,
        REQUEST_TERMINAL_TIME,
        REQUEST_ONLINE_PROCESS,
        REQUEST_SELECT_APPLICATION,
        REQUEST_SELECT_ACCOUNT_TYPE,
        REQUEST_PIN_ENTRY,
        REQUEST_MANUAL_PAN_ENTRY,
        REQUEST_FINAL_CONFIRM,
        RETURN_BATCH_DATA,
        RETURN_PIN_ENTRY_RESULT,
        SEND_ONLINE_RESULT,
        REQUEST_DISPLAY_TEXT_PROCESSING,
        REQUEST_DISPLAY_APPLICATION_LABEL
    }

    enum aaa001zz {
        UNKNOWN,
        BOOTLOADER,
        APPLICATION,
        RECOVERY
    }

    enum aaa002zz {
        NO,
        SEMI_PASS_THROUGH,
        COMPLETE_PASS_THROUGH
    }

    enum aaa003zz {
        NA,
        SP_DEVICE_INFO,
        NORMAL_DEVICE_INFO
    }

    enum aaa004zz {
        NOT,
        DISABLE_FACTORY_MODE_FUNCTION_1_ENTER_BOOTLOADER,
        DISABLE_FACTORY_MODE_FUNCTION_2_DISABLE_FACTORY_MODE,
        DISABLE_FACTORY_MODE_FUNCTION_3_EXIT_BOOTLOADER
    }

    ccc066zz(BBDeviceController bBDeviceController, ccc039zz ccc039zzVar) {
        this.aaa042 = bBDeviceController;
        this.aaa041 = ccc039zzVar;
        aaa062();
    }

    private void aaa003(String str) {
    }

    boolean aaa000(aaa003zz aaa003zzVar) {
        return aaa003zzVar == this.aaa005;
    }

    void aaa001(aaa003zz aaa003zzVar) {
        aaa003("[setFlagPrefetchDeviceInfo] flagPrefetchDeviceInfo : " + aaa003zzVar);
        this.aaa005 = aaa003zzVar;
    }

    void aaa002(int i) {
        if (i == 0) {
            this.aaa029 = aaa001zz.APPLICATION;
            return;
        }
        if (i == 1) {
            this.aaa029 = aaa001zz.BOOTLOADER;
        } else if (i == 2) {
            this.aaa029 = aaa001zz.RECOVERY;
        } else {
            this.aaa029 = aaa001zz.UNKNOWN;
        }
    }

    BBDeviceController aaa003() {
        return this.aaa042;
    }

    void aaa004(String str) {
        this.aaa021 = str;
    }

    void aaa005(boolean z) {
        this.aaa008 = z;
    }

    void aaa006(boolean z) {
        this.aaa010 = z;
    }

    BluetoothDevice aaa007() {
        return this.aaa007;
    }

    void aaa008(boolean z) {
        this.aaa012 = z;
    }

    void aaa009(String str) {
        this.aaa018 = str;
    }

    void aaa010(String str) {
        this.aaa009 = str;
    }

    void aaa011(String str) {
        this.aaa011 = str;
    }

    void aaa012(String str) {
        this.aaa015 = str;
    }

    void aaa013(String str) {
        this.aaa013 = str;
    }

    void aaa014(String str) {
        this.aaa019 = str;
    }

    void aaa015(String str) {
        this.aaa024 = str;
    }

    void aaa016(String str) {
        this.aaa020 = str;
    }

    aaa003zz aaa017() {
        return this.aaa005;
    }

    void aaa018(String str) {
        this.aaa022 = str;
    }

    String aaa019() {
        return this.aaa023;
    }

    String aaa020() {
        return this.aaa018;
    }

    void aaa021(String str) {
        this.aaa004 = str;
    }

    String aaa022() {
        return this.aaa011;
    }

    String aaa023() {
        return this.aaa015;
    }

    String aaa024() {
        return this.aaa013;
    }

    void aaa025(String str) {
        this.aaa003 = str;
    }

    public int aaa026() {
        return this.aaa060;
    }

    String aaa027() {
        return this.aaa019;
    }

    String aaa028() {
        return this.aaa024;
    }

    String aaa029() {
        return this.aaa020;
    }

    String aaa030() {
        return this.aaa025;
    }

    String aaa031() {
        return this.aaa022;
    }

    String aaa032() {
        return this.aaa027;
    }

    String aaa033() {
        return this.aaa040;
    }

    Hashtable<String, String> aaa034() {
        return this.aaa049;
    }

    Hashtable<String, String> aaa035() {
        return this.aaa051;
    }

    aaa004zz aaa036() {
        return this.aaa000;
    }

    ccc048zz aaa037() {
        return this.aaa001;
    }

    int aaa038() {
        return this.aaa063;
    }

    String aaa039() {
        return this.aaa044;
    }

    TestChannelInterface aaa040() {
        return this.aaa002;
    }

    int aaa041() {
        return this.aaa034;
    }

    String aaa042() {
        return this.aaa017;
    }

    Hashtable<String, String> aaa043() {
        return this.aaa050;
    }

    Hashtable<String, String> aaa044() {
        return this.aaa052;
    }

    String aaa045() {
        return this.aaa057;
    }

    void aaa046() {
        this.aaa034++;
    }

    boolean aaa047() {
        return this.aaa032;
    }

    boolean aaa048() {
        return this.aaa045;
    }

    boolean aaa049() {
        return this.aaa061;
    }

    boolean aaa050() {
        return this.aaa047;
    }

    boolean aaa051() {
        return this.aaa008;
    }

    boolean aaa052() {
        return this.aaa010;
    }

    boolean aaa053() {
        return this.aaa014;
    }

    boolean aaa054() {
        return this.aaa012;
    }

    boolean aaa055() {
        return this.aaa043;
    }

    boolean aaa056() {
        return this.aaa031;
    }

    boolean aaa057() {
        return this.aaa053;
    }

    boolean aaa058() {
        return this.aaa055;
    }

    boolean aaa059() {
        return this.aaa035;
    }

    boolean aaa060() {
        return this.aaa054;
    }

    boolean aaa061() {
        return this.aaa056;
    }

    void aaa062() {
        aaa003("[reset]");
        this.aaa003 = "";
        this.aaa004 = "";
        this.aaa005 = aaa003zz.NA;
        this.aaa006 = aaa000zz.IDLE;
        this.aaa007 = null;
        this.aaa008 = false;
        this.aaa009 = "";
        this.aaa010 = false;
        this.aaa011 = "";
        this.aaa012 = false;
        this.aaa013 = "";
        this.aaa014 = false;
        this.aaa015 = "";
        this.aaa016 = new ccc059zz(new Hashtable());
        this.aaa017 = "";
        this.aaa018 = "";
        this.aaa019 = "";
        this.aaa020 = "";
        this.aaa021 = "";
        this.aaa022 = "";
        this.aaa023 = "";
        this.aaa024 = "";
        this.aaa025 = "";
        this.aaa026 = "";
        this.aaa027 = "";
        this.aaa028 = false;
        this.aaa029 = aaa001zz.UNKNOWN;
        this.aaa030 = "";
        this.aaa031 = false;
        this.aaa032 = false;
        this.aaa033.aaa010();
        this.aaa034 = 0;
        this.aaa035 = false;
        this.aaa036 = 0;
        this.aaa037 = 0;
        this.aaa038 = aaa002zz.NO;
        this.aaa039 = "";
        this.aaa040 = "";
        this.aaa043 = false;
        this.aaa044 = "";
        this.aaa045 = false;
        this.aaa046 = "";
        this.aaa047 = false;
        this.aaa048.aaa000();
        this.aaa049 = new Hashtable<>();
        this.aaa050 = new Hashtable<>();
        this.aaa051 = new Hashtable<>();
        this.aaa052 = new Hashtable<>();
        this.aaa054 = false;
        this.aaa056 = false;
        this.aaa057 = "";
        this.aaa058 = "";
        this.aaa059 = 0;
        this.aaa060 = 2;
        this.aaa061 = false;
        this.aaa063 = 1000;
    }

    void aaa063() {
        ccc052zz ccc052zzVar = this.aaa062;
        if (ccc052zzVar != null) {
            ccc052zzVar.aaa003();
        }
    }

    boolean aaa000(aaa000zz aaa000zzVar) {
        return aaa000zzVar == this.aaa006;
    }

    void aaa003(Hashtable<String, String> hashtable) {
        this.aaa050 = hashtable;
    }

    void aaa004(boolean z) {
        this.aaa047 = z;
    }

    String aaa005() {
        return this.aaa021;
    }

    String aaa006() {
        return this.aaa026;
    }

    void aaa007(boolean z) {
        this.aaa014 = z;
    }

    void aaa008(String str) {
        this.aaa023 = str;
    }

    int aaa009() {
        return this.aaa036;
    }

    ccc059zz aaa010() {
        return this.aaa016;
    }

    String aaa011() {
        return this.aaa016.aaa000().toString();
    }

    boolean aaa012() {
        return this.aaa028;
    }

    void aaa013(boolean z) {
        this.aaa035 = z;
    }

    ccc044zz aaa014() {
        return this.aaa033;
    }

    String aaa015() {
        return this.aaa030;
    }

    aaa001zz aaa016() {
        return this.aaa029;
    }

    void aaa017(String str) {
        this.aaa025 = str;
    }

    String aaa018() {
        return this.aaa046;
    }

    void aaa019(String str) {
        this.aaa027 = str;
    }

    void aaa020(String str) {
        this.aaa040 = str;
    }

    String aaa021() {
        return this.aaa009;
    }

    void aaa022(String str) {
        this.aaa044 = str;
    }

    void aaa023(String str) {
        this.aaa017 = str;
    }

    void aaa024(String str) {
        this.aaa057 = str;
    }

    aaa002zz aaa025() {
        return this.aaa038;
    }

    void aaa000(BluetoothDevice bluetoothDevice) {
        this.aaa007 = bluetoothDevice;
    }

    void aaa001(aaa000zz aaa000zzVar) {
        aaa003("[setEmvProcessState] emvProcessState : " + aaa000zzVar);
        this.aaa006 = aaa000zzVar;
    }

    void aaa003(boolean z) {
        this.aaa061 = z;
    }

    void aaa004(Hashtable<String, String> hashtable) {
        this.aaa052 = hashtable;
    }

    void aaa005(String str) {
        this.aaa026 = str;
    }

    void aaa006(String str) {
        this.aaa030 = str;
    }

    void aaa007(String str) {
        this.aaa046 = str;
    }

    int aaa008() {
        return this.aaa037;
    }

    void aaa009(boolean z) {
        this.aaa043 = z;
    }

    void aaa010(boolean z) {
        this.aaa031 = z;
    }

    void aaa011(boolean z) {
        this.aaa053 = z;
    }

    void aaa012(boolean z) {
        this.aaa055 = z;
    }

    String aaa013() {
        return this.aaa039;
    }

    void aaa014(boolean z) {
        this.aaa054 = z;
    }

    void aaa015(boolean z) {
        this.aaa056 = z;
    }

    void aaa000(aaa004zz aaa004zzVar) {
        this.aaa000 = aaa004zzVar;
    }

    void aaa003(int i) {
        this.aaa063 = i;
    }

    String aaa004() {
        return this.aaa058;
    }

    void aaa000(TestChannelInterface testChannelInterface) {
        this.aaa002 = testChannelInterface;
    }

    void aaa001(boolean z) {
        this.aaa028 = z;
    }

    void aaa000(Hashtable<String, String> hashtable) {
        this.aaa016 = new ccc059zz(hashtable);
    }

    void aaa001(String str) {
        this.aaa030 += str;
    }

    void aaa000(boolean z) {
        this.aaa032 = z;
    }

    void aaa001(int i) {
        this.aaa036 = i;
    }

    void aaa000(int i) {
        this.aaa037 = i;
    }

    ccc038zz aaa001() {
        return this.aaa048;
    }

    void aaa002(String str) {
        this.aaa040 += str;
    }

    void aaa000(aaa002zz aaa002zzVar) {
        this.aaa038 = aaa002zzVar;
    }

    void aaa001(Hashtable<String, String> hashtable) {
        this.aaa049 = hashtable;
    }

    ccc039zz aaa002() {
        return this.aaa041;
    }

    void aaa000(String str) {
        this.aaa039 += str;
    }

    void aaa001(Object obj) {
        if (obj instanceof Integer) {
            this.aaa060 = ((Integer) obj).intValue();
        } else {
            if (obj instanceof String) {
                try {
                    this.aaa060 = Integer.parseInt((String) obj);
                    return;
                } catch (Exception unused) {
                    this.aaa060 = 2;
                    return;
                }
            }
            this.aaa060 = 2;
        }
    }

    void aaa002(boolean z) {
        this.aaa045 = z;
    }

    void aaa000(String str, boolean z) {
        if (this.aaa058.equalsIgnoreCase("")) {
            this.aaa058 = str;
        } else if (z) {
            this.aaa058 = str;
        }
    }

    void aaa002(Hashtable<String, String> hashtable) {
        this.aaa051 = hashtable;
    }

    int aaa000() {
        return this.aaa059;
    }

    void aaa000(Object obj) {
        if (obj instanceof Integer) {
            this.aaa059 = ((Integer) obj).intValue();
        } else if (obj instanceof String) {
            try {
                this.aaa059 = Integer.parseInt((String) obj);
            } catch (Exception unused) {
                this.aaa059 = 0;
            }
        } else if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
            this.aaa059 = 1;
        } else {
            this.aaa059 = 0;
        }
        if (this.aaa059 != 0) {
            this.aaa059 = 1;
        }
    }

    void aaa000(ccc052zz ccc052zzVar) {
        this.aaa062 = ccc052zzVar;
    }
}
