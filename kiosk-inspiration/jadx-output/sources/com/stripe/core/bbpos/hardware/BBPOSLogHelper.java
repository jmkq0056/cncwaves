package com.stripe.core.bbpos.hardware;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BBPOSLogHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\u0005*\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nR\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;", "", "()V", "DebugFieldsToRedact", "", "", "getDebugFieldsToRedact$hardware_release$annotations", "getDebugFieldsToRedact$hardware_release", "()Ljava/util/Set;", "toLogString", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BBPOSLogHelper {
    public static final BBPOSLogHelper INSTANCE = new BBPOSLogHelper();
    private static final Set<String> DebugFieldsToRedact = SetsKt.setOf((Object[]) new String[]{"encCvv", "encPan", "expiryDate", "maskedPan", "maskedPAN", "encryptedTrack2", "ksn", "serviceCode", "epb", "epbKsn", "cardholderName", "encTrack1", "encTrack2", "encTrack3", "encTracks", "expiryDate", "formatID", "serviceCode", "track1Length", "track2Length", "track3Length", "tlv"});

    public static /* synthetic */ void getDebugFieldsToRedact$hardware_release$annotations() {
    }

    private BBPOSLogHelper() {
    }

    public final String toLogString(final Map<String, ? extends Object> map) {
        if (map != null) {
            Set<String> setKeySet = map.keySet();
            Set<String> set = DebugFieldsToRedact;
            ArrayList arrayList = new ArrayList();
            for (Object obj : setKeySet) {
                if (!set.contains((String) obj)) {
                    arrayList.add(obj);
                }
            }
            String strJoinToString$default = CollectionsKt.joinToString$default(arrayList, ",", "{", "}", 0, null, new Function1<String, CharSequence>() { // from class: com.stripe.core.bbpos.hardware.BBPOSLogHelper$toLogString$1$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(String key) {
                    Intrinsics.checkNotNullParameter(key, "key");
                    return key + ": " + map.get(key);
                }
            }, 24, null);
            return strJoinToString$default == null ? "" : strJoinToString$default;
        }
        return "";
    }

    public final Set<String> getDebugFieldsToRedact$hardware_release() {
        return DebugFieldsToRedact;
    }
}
