package com.stripe.bbpos.bbdevice;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
final class ccc059zz {
    private final Hashtable<String, String> aaa000;
    private String aaa001;
    private String aaa002;
    private String aaa003;
    private String aaa004;
    private String aaa005;
    private String aaa006;
    private String aaa007;
    private String aaa008;
    private String aaa009;
    private String aaa010;
    private String aaa011;
    private String aaa012;
    private String aaa013;
    private String aaa014;
    private String aaa015;
    private String aaa016;
    private String aaa017;
    private String aaa018;
    private String aaa019;
    private String aaa020;
    private String aaa021;
    private String aaa022;
    private String aaa023;
    private String aaa024;
    private String aaa025;
    private String aaa026;
    private String aaa027;
    private String aaa028;
    private String aaa029;
    private String aaa030;
    private String aaa031;
    private String aaa032;
    private String aaa033;
    private String aaa034;
    private String aaa035;
    private String aaa036;
    private String aaa037;
    private String aaa038;
    private String aaa039;
    private String aaa040;
    private String aaa041;
    private String aaa042;
    private String aaa043;
    private String aaa044;
    private String aaa045;
    private String aaa046;
    private String aaa047;
    private String aaa048;
    private boolean aaa049;
    private int aaa050;
    private String aaa051;
    private String aaa052;

    ccc059zz(Hashtable<String, String> hashtable) {
        this.aaa049 = true;
        this.aaa000 = hashtable;
        this.aaa001 = ccc071zz.aaa001(hashtable.get("productID"));
        this.aaa002 = ccc071zz.aaa001(hashtable.get("vendorID"));
        this.aaa003 = ccc071zz.aaa001(hashtable.get("uid"));
        this.aaa004 = ccc071zz.aaa001(hashtable.get("pinKsn"));
        this.aaa005 = ccc071zz.aaa001(hashtable.get("pinKsn1"));
        this.aaa006 = ccc071zz.aaa001(hashtable.get("pinKsn2"));
        this.aaa007 = ccc071zz.aaa001(hashtable.get("pinKsn3"));
        this.aaa008 = ccc071zz.aaa001(hashtable.get("pinKsn4"));
        this.aaa009 = ccc071zz.aaa001(hashtable.get("trackKsn"));
        this.aaa010 = ccc071zz.aaa001(hashtable.get("trackKsn1"));
        this.aaa011 = ccc071zz.aaa001(hashtable.get("trackKsn2"));
        this.aaa012 = ccc071zz.aaa001(hashtable.get("trackKsn3"));
        this.aaa013 = ccc071zz.aaa001(hashtable.get("trackKsn4"));
        this.aaa014 = ccc071zz.aaa001(hashtable.get("emvKsn"));
        this.aaa015 = ccc071zz.aaa001(hashtable.get("emvKsn1"));
        this.aaa016 = ccc071zz.aaa001(hashtable.get("emvKsn2"));
        this.aaa017 = ccc071zz.aaa001(hashtable.get("emvKsn3"));
        this.aaa018 = ccc071zz.aaa001(hashtable.get("emvKsn4"));
        this.aaa019 = ccc071zz.aaa001(hashtable.get("macKsn"));
        this.aaa020 = ccc071zz.aaa001(hashtable.get("macKsn1"));
        this.aaa021 = ccc071zz.aaa001(hashtable.get("macKsn2"));
        this.aaa022 = ccc071zz.aaa001(hashtable.get("macKsn3"));
        this.aaa023 = ccc071zz.aaa001(hashtable.get("macKsn4"));
        this.aaa024 = ccc071zz.aaa001(hashtable.get("nfcKsn"));
        this.aaa025 = ccc071zz.aaa001(hashtable.get("messageKsn"));
        this.aaa026 = ccc071zz.aaa001(hashtable.get("cmacKsn"));
        this.aaa027 = ccc071zz.aaa001(hashtable.get("firmwareVersion"));
        this.aaa030 = ccc071zz.aaa001(hashtable.get("terminalSettingVersion"));
        this.aaa031 = ccc071zz.aaa001(hashtable.get("deviceSettingVersion"));
        this.aaa029 = ccc071zz.aaa001(hashtable.get("mainProcessorVersion"));
        this.aaa028 = ccc071zz.aaa001(hashtable.get("coprocessorVersion"));
        this.aaa032 = ccc071zz.aaa001(hashtable.get("formatID"));
        this.aaa033 = ccc071zz.aaa001(hashtable.get("isSupportedTrack1"));
        this.aaa034 = ccc071zz.aaa001(hashtable.get("isSupportedTrack2"));
        this.aaa035 = ccc071zz.aaa001(hashtable.get("isSupportedTrack3"));
        this.aaa036 = ccc071zz.aaa001(hashtable.get("isSupportedNfc"));
        this.aaa037 = ccc071zz.aaa001(hashtable.get("bootloaderVersion"));
        this.aaa038 = ccc071zz.aaa001(hashtable.get("isUsbConnected"));
        this.aaa039 = ccc071zz.aaa001(hashtable.get("isCharging"));
        this.aaa040 = ccc071zz.aaa001(hashtable.get("batteryLevel"));
        this.aaa041 = ccc071zz.aaa001(hashtable.get("batteryPercentage"));
        this.aaa042 = ccc071zz.aaa001(hashtable.get("hardwareVersion"));
        this.aaa043 = ccc071zz.aaa001(hashtable.get("csn"));
        this.aaa044 = ccc071zz.aaa001(hashtable.get("coprocessorBootloaderVersion"));
        this.aaa045 = ccc071zz.aaa001(hashtable.get("serialNumber"));
        this.aaa046 = ccc071zz.aaa001(hashtable.get("modelName"));
        this.aaa047 = ccc071zz.aaa001(hashtable.get("mcuInfo"));
        this.aaa048 = ccc071zz.aaa001(hashtable.get("bID"));
        this.aaa051 = ccc071zz.aaa001(hashtable.get("firmwareID"));
        this.aaa052 = ccc071zz.aaa001(hashtable.get("hardwareID"));
        try {
            if (hashtable.containsKey("isNewProtocol")) {
                this.aaa049 = Boolean.parseBoolean(hashtable.get("isNewProtocol"));
            }
        } catch (Exception unused) {
        }
        boolean z = hashtable.containsKey("isCharging") ? Boolean.parseBoolean(hashtable.get("isCharging")) : false;
        this.aaa050 = 0;
        if (z && this.aaa041.equalsIgnoreCase("")) {
            this.aaa050 = 100;
        } else {
            try {
                this.aaa050 = Integer.parseInt(this.aaa041);
            } catch (Exception unused2) {
            }
        }
    }

    Hashtable<String, String> aaa000() {
        return this.aaa000;
    }
}
