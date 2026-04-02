package com.stripe.wirecrpc.moshiutils;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.wire.WireJsonAdapterFactory;
import com.stripe.proto.model.rest.ActivatedConnectionToken;
import com.stripe.proto.model.rest.ActivatedConnectionTokenWithExpandedLocation;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.TerminalUserAgent;
import com.stripe.proto.model.rest.UserAgent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: MoshiExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\f\u001a\u00020\r*\u00020\rH\u0002J\f\u0010\u000e\u001a\u00020\r*\u00020\rH\u0002J\u0014\u0010\u000f\u001a\u00020\r*\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0013*\u0006\u0012\u0002\b\u00030\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J&\u0010\u0012\u001a\f\u0012\u0004\u0012\u00020\r\u0012\u0002\b\u00030\u0014*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J+\u0010\u0015\u001a\u00020\r\"\u0004\b\u0000\u0010\u0016*\u0002H\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u00182\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0019J\"\u0010\u0015\u001a\u00020\r\"\u0006\b\u0000\u0010\u0016\u0018\u0001*\u0002H\u00162\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\b¢\u0006\u0002\u0010\u001aJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001cJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001dJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001eJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001fJ\n\u0010\u001b\u001a\u00020\r*\u00020 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006!"}, d2 = {"Lcom/stripe/wirecrpc/moshiutils/MoshiExt;", "", "()V", "camelCaseRegex", "Lkotlin/text/Regex;", "moshi", "Lcom/squareup/moshi/Moshi;", "kotlin.jvm.PlatformType", "getMoshi", "()Lcom/squareup/moshi/Moshi;", "moshi$delegate", "Lkotlin/Lazy;", "camelToSnakeCase", "", "filterAsciiOnly", "maybeFilterAsciiOnly", "asciiOnly", "", "recursivelyConvertMapKeysToSnakeCase", "", "", "toJsonWithSnakeCase", "T", "type", "Ljava/lang/Class;", "(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;", "(Ljava/lang/Object;Z)Ljava/lang/String;", "toJsonWithSnakeCaseFieldNames", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "Lcom/stripe/proto/model/rest/TerminalUserAgent;", "Lcom/stripe/proto/model/rest/UserAgent;", "moshi-utils"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MoshiExt {
    public static final MoshiExt INSTANCE = new MoshiExt();
    private static final Regex camelCaseRegex = new Regex("(?<=[a-zA-Z0-9])[A-Z]");

    /* JADX INFO: renamed from: moshi$delegate, reason: from kotlin metadata */
    private static final Lazy moshi = LazyKt.lazy(new Function0<Moshi>() { // from class: com.stripe.wirecrpc.moshiutils.MoshiExt$moshi$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Moshi invoke() {
            return new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, true, 1, null)).build();
        }
    });

    private MoshiExt() {
    }

    private final Moshi getMoshi() {
        return (Moshi) moshi.getValue();
    }

    public final <T> String toJsonWithSnakeCase(T t, Class<T> type, boolean z) {
        Intrinsics.checkNotNullParameter(type, "type");
        Object jsonValue = getMoshi().adapter((Class) type).toJsonValue(t);
        Map<?, ?> map = jsonValue instanceof Map ? (Map) jsonValue : null;
        if (map == null) {
            return "";
        }
        JsonAdapter jsonAdapterAdapter = getMoshi().adapter(Types.newParameterizedType(Map.class, String.class, Object.class));
        Intrinsics.checkNotNullExpressionValue(jsonAdapterAdapter, "adapter(...)");
        String json = jsonAdapterAdapter.toJson(recursivelyConvertMapKeysToSnakeCase(map, z));
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }

    public final /* synthetic */ <T> String toJsonWithSnakeCase(T t, boolean z) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return toJsonWithSnakeCase(t, Object.class, z);
    }

    private final Map<String, ?> recursivelyConvertMapKeysToSnakeCase(Map<?, ?> map, boolean z) {
        Pair pair;
        Set<Map.Entry<?, ?>> setEntrySet = map.entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            if (key instanceof String) {
                MoshiExt moshiExt = INSTANCE;
                String strCamelToSnakeCase = moshiExt.camelToSnakeCase((String) key);
                Object value = entry.getValue();
                if (value instanceof Map) {
                    value = moshiExt.recursivelyConvertMapKeysToSnakeCase((Map<?, ?>) value, z);
                } else if (value instanceof List) {
                    value = moshiExt.recursivelyConvertMapKeysToSnakeCase((List<?>) value, z);
                } else if (value instanceof String) {
                    value = moshiExt.maybeFilterAsciiOnly((String) value, z);
                }
                pair = new Pair(strCamelToSnakeCase, value);
            } else {
                pair = null;
            }
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    private final List<?> recursivelyConvertMapKeysToSnakeCase(List<?> list, boolean z) {
        List<?> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (Object objMaybeFilterAsciiOnly : list2) {
            if (objMaybeFilterAsciiOnly instanceof Map) {
                objMaybeFilterAsciiOnly = INSTANCE.recursivelyConvertMapKeysToSnakeCase((Map<?, ?>) objMaybeFilterAsciiOnly, z);
            } else if (objMaybeFilterAsciiOnly instanceof List) {
                objMaybeFilterAsciiOnly = INSTANCE.recursivelyConvertMapKeysToSnakeCase((List<?>) objMaybeFilterAsciiOnly, z);
            } else if (objMaybeFilterAsciiOnly instanceof String) {
                objMaybeFilterAsciiOnly = INSTANCE.maybeFilterAsciiOnly((String) objMaybeFilterAsciiOnly, z);
            }
            arrayList.add(objMaybeFilterAsciiOnly);
        }
        return arrayList;
    }

    private final String maybeFilterAsciiOnly(String str, boolean z) {
        return z ? filterAsciiOnly(str) : str;
    }

    private final String camelToSnakeCase(String str) {
        String lowerCase = camelCaseRegex.replace(str, new Function1<MatchResult, CharSequence>() { // from class: com.stripe.wirecrpc.moshiutils.MoshiExt.camelToSnakeCase.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(MatchResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return "_" + it.getValue();
            }
        }).toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    private final String filterAsciiOnly(String str) {
        return new Regex("[^\\x00-\\x7F]").replace(str, "");
    }

    public final String toJsonWithSnakeCaseFieldNames(UserAgent userAgent) {
        Intrinsics.checkNotNullParameter(userAgent, "<this>");
        return toJsonWithSnakeCase(userAgent, UserAgent.class, true);
    }

    public final String toJsonWithSnakeCaseFieldNames(TerminalUserAgent terminalUserAgent) {
        Intrinsics.checkNotNullParameter(terminalUserAgent, "<this>");
        return toJsonWithSnakeCase(terminalUserAgent, TerminalUserAgent.class, true);
    }

    public final String toJsonWithSnakeCaseFieldNames(ActivatedConnectionToken activatedConnectionToken) {
        Intrinsics.checkNotNullParameter(activatedConnectionToken, "<this>");
        return toJsonWithSnakeCase(activatedConnectionToken, ActivatedConnectionToken.class, false);
    }

    public final String toJsonWithSnakeCaseFieldNames(ActivatedConnectionTokenWithExpandedLocation activatedConnectionTokenWithExpandedLocation) {
        Intrinsics.checkNotNullParameter(activatedConnectionTokenWithExpandedLocation, "<this>");
        return toJsonWithSnakeCase(activatedConnectionTokenWithExpandedLocation, ActivatedConnectionTokenWithExpandedLocation.class, false);
    }

    public final String toJsonWithSnakeCaseFieldNames(ErrorWrapper errorWrapper) {
        Intrinsics.checkNotNullParameter(errorWrapper, "<this>");
        return toJsonWithSnakeCase(errorWrapper, ErrorWrapper.class, false);
    }
}
