package com.stripe.stripeterminal.internal.models;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* JADX INFO: compiled from: TlvDecoder.android.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"decodeTlvMap", "Lcom/stripe/hardware/emv/TlvMap;", "", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TlvDecoder_androidKt {
    public static final TlvMap decodeTlvMap(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Hashtable<String, String> hashtableDecodeTlv = BBDeviceController.decodeTlv(str);
        Intrinsics.checkNotNullExpressionValue(hashtableDecodeTlv, "decodeTlv(...)");
        Sequence<Map.Entry> sequenceAsSequence = MapsKt.asSequence(hashtableDecodeTlv);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : sequenceAsSequence) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            Intrinsics.checkNotNull(str2);
            String upperCase = str2.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            Pair pair = TuplesKt.to(upperCase, str3);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return new TlvMap(linkedHashMap);
    }
}
