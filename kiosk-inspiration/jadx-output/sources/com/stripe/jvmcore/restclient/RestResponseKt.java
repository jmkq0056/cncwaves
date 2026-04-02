package com.stripe.jvmcore.restclient;

import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import okhttp3.Headers;

/* JADX INFO: compiled from: RestResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0002¨\u0006\u0004"}, d2 = {"toCaseInsensitive", "Ljava/util/TreeMap;", "", "Lokhttp3/Headers;", "base"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class RestResponseKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final TreeMap<String, String> toCaseInsensitive(Headers headers) {
        TreeMap<String, String> treeMap = new TreeMap<>(StringsKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
        treeMap.putAll(MapsKt.toMap(headers));
        return treeMap;
    }
}
