package com.stripe.bbpos.bbdevice;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc046zz {
    private static final List<String> aaa000;

    static {
        ArrayList arrayList = new ArrayList();
        aaa000 = arrayList;
        arrayList.add("encCVV");
        arrayList.add("encPAN");
        arrayList.add("expiryDate");
        arrayList.add("maskedPAN");
        arrayList.add("encTrack2Eq");
        arrayList.add("pinKsn");
        arrayList.add("pinKsn1");
        arrayList.add("pinKsn2");
        arrayList.add("pinKsn3");
        arrayList.add("pinKsn4");
        arrayList.add("emvKsn");
        arrayList.add("emvKsn1");
        arrayList.add("emvKsn2");
        arrayList.add("emvKsn3");
        arrayList.add("emvKsn4");
        arrayList.add("trackKsn");
        arrayList.add("trackKsn1");
        arrayList.add("trackKsn2");
        arrayList.add("trackKsn3");
        arrayList.add("trackKsn4");
        arrayList.add("macKsn");
        arrayList.add("macKsn1");
        arrayList.add("macKsn2");
        arrayList.add("macKsn3");
        arrayList.add("macKsn4");
        arrayList.add("nfcKsn");
        arrayList.add("messageKsn");
        arrayList.add("cmacKsn");
        arrayList.add("serviceCode");
        arrayList.add("epb");
        arrayList.add("ksn");
        arrayList.add("cardholderName");
        arrayList.add("encTrack1");
        arrayList.add("encTrack2");
        arrayList.add("encTrack3");
        arrayList.add("encTracks");
        arrayList.add("formatID");
        arrayList.add("track1Length");
        arrayList.add("track2Length");
        arrayList.add("track3Length");
    }

    static boolean aaa000(String str) {
        return aaa000.contains(str);
    }
}
