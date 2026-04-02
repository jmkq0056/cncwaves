package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes3.dex */
class ccc048zz {
    private boolean aaa000;
    private boolean aaa001;
    private String aaa002;
    private String aaa003;
    private BBDeviceController.Error aaa004;

    ccc048zz(boolean z, boolean z2, String str, String str2, BBDeviceController.Error error) {
        this.aaa000 = z;
        this.aaa001 = z2;
        this.aaa002 = str;
        this.aaa003 = str2;
        if (error == null) {
            this.aaa004 = BBDeviceController.Error.UNKNOWN;
        } else {
            this.aaa004 = error;
        }
    }

    void aaa000(boolean z, boolean z2, String str, String str2, BBDeviceController.Error error) {
        this.aaa000 = z;
        this.aaa001 = z2;
        this.aaa002 = str;
        this.aaa003 = str2;
        if (error == null) {
            this.aaa004 = BBDeviceController.Error.UNKNOWN;
        } else {
            this.aaa004 = error;
        }
    }

    boolean aaa001() {
        return this.aaa001;
    }

    public boolean aaa002() {
        return this.aaa000;
    }

    public String toString() {
        return "BB_Result{valid=" + this.aaa000 + ", success=" + this.aaa001 + ", result='" + this.aaa002 + "', errorMessage='" + this.aaa003 + "', errorStatus=" + this.aaa004 + AbstractJsonLexerKt.END_OBJ;
    }

    String aaa000() {
        return this.aaa003;
    }
}
