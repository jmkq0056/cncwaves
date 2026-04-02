package com.stripe.bbpos.bbdevice;

import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes3.dex */
class ccc067zz implements Comparable<ccc067zz> {
    final String aaa000;
    final String aaa001;
    private final byte[] aaa002;
    final boolean aaa003;
    final List<ccc067zz> aaa004;

    ccc067zz(String str, byte[] bArr, boolean z, List<ccc067zz> list) {
        if (!ccc071zz.aaa009(str)) {
            throw new IllegalArgumentException("Invalid tag");
        }
        this.aaa000 = str;
        this.aaa002 = bArr;
        this.aaa001 = ccc071zz.aaa000(bArr);
        this.aaa003 = z;
        this.aaa004 = list;
    }

    static ccc067zz aaa000(String str, byte[] bArr) {
        return new ccc067zz(str, bArr, false, Collections.emptyList());
    }

    public String toString() {
        return "TLV{tag='" + this.aaa000 + "', length='" + aaa000() + "', value='" + this.aaa001 + "', isNested=" + this.aaa003 + ", tlvList=" + this.aaa004 + AbstractJsonLexerKt.END_OBJ;
    }

    static ccc067zz aaa000(String str, byte[] bArr, List<ccc067zz> list) {
        return new ccc067zz(str, bArr, true, list);
    }

    String aaa000() {
        byte[] bArr = this.aaa002;
        if (bArr == null) {
            return ccc071zz.aaa004(0);
        }
        return ccc071zz.aaa004(bArr.length);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: aaa000, reason: merged with bridge method [inline-methods] */
    public int compareTo(ccc067zz ccc067zzVar) {
        return this.aaa000.compareToIgnoreCase(ccc067zzVar.aaa000);
    }
}
