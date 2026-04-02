package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
final class ccc044zz {
    private String aaa000;
    private String aaa001;
    private int aaa002;
    private int aaa003;
    private aaa003zz.EnumC0044aaa003zz aaa004;
    private int aaa005;
    private int aaa006;
    private boolean aaa007;
    private int aaa008;
    boolean aaa009;
    boolean aaa010;
    boolean aaa011;

    ccc044zz() {
        aaa010();
    }

    private void aaa000(String str) {
    }

    void aaa000(aaa003zz.EnumC0044aaa003zz enumC0044aaa003zz) {
        this.aaa004 = enumC0044aaa003zz;
    }

    void aaa001(String str) {
        this.aaa000 = str;
    }

    void aaa002(String str) {
        aaa000("[setProductId] productId : " + str);
        this.aaa001 = str;
    }

    void aaa003(int i) {
        this.aaa002 = i;
    }

    int aaa004() {
        return this.aaa002;
    }

    String aaa005() {
        aaa000("[getProductId] productId : " + this.aaa001);
        return this.aaa001;
    }

    int aaa006() {
        return this.aaa008;
    }

    boolean aaa007() {
        return this.aaa010;
    }

    boolean aaa008() {
        return this.aaa007;
    }

    boolean aaa009() {
        return this.aaa011;
    }

    void aaa010() {
        this.aaa000 = "";
        this.aaa001 = "";
        this.aaa002 = 100;
        this.aaa003 = 100;
        this.aaa004 = aaa003zz.EnumC0044aaa003zz.UNKNOWN;
        this.aaa005 = 0;
        this.aaa006 = 0;
        this.aaa007 = false;
        this.aaa008 = 0;
        this.aaa009 = false;
        this.aaa010 = false;
        this.aaa011 = false;
    }

    int aaa000() {
        return this.aaa006;
    }

    int aaa001() {
        return this.aaa003;
    }

    int aaa003() {
        return this.aaa005;
    }

    void aaa004(int i) {
        this.aaa008 = i;
    }

    void aaa000(int i) {
        this.aaa006 = i;
    }

    void aaa001(int i) {
        this.aaa003 = i;
    }

    aaa003zz.EnumC0044aaa003zz aaa002() {
        return this.aaa004;
    }

    void aaa003(boolean z) {
        this.aaa011 = z;
    }

    void aaa000(boolean z) {
        this.aaa010 = z;
    }

    void aaa001(boolean z) {
        this.aaa007 = z;
    }

    void aaa002(int i) {
        this.aaa005 = i;
    }

    void aaa002(boolean z) {
        this.aaa009 = z;
    }
}
