package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.sdk.CardData;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardDataMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H\u0000¨\u0006\u0004"}, d2 = {"toCardData", "Lcom/stripe/bbpos/sdk/CardData;", "", "", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CardDataMapperKt {
    public static final CardData toCardData(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new CardData(map.get("encCVV"), map.get("encPAN"), map.get("encTrack2"), map.get("expiryDate"), map.get("ksn"), map.get("maskedPAN"), map.get("posEntryMode"), map.get("serviceCode"), null, 256, null);
    }
}
