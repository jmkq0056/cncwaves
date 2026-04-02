package com.stripe.json;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.adapters.EnumJsonAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseEnumJsonAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a9\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u0001H\u0002¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"createEnumJsonAdapterWithFallback", "Lcom/squareup/moshi/JsonAdapter;", "T", "", "enumClass", "Ljava/lang/Class;", "fallbackValue", "(Ljava/lang/Class;Ljava/lang/Enum;)Lcom/squareup/moshi/JsonAdapter;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class BaseEnumJsonAdapterKt {
    public static final <T extends Enum<T>> JsonAdapter<T> createEnumJsonAdapterWithFallback(Class<T> enumClass, T t) {
        Intrinsics.checkNotNullParameter(enumClass, "enumClass");
        EnumJsonAdapter<T> enumJsonAdapterWithUnknownFallback = EnumJsonAdapter.create(enumClass).withUnknownFallback(t);
        if (t != null) {
            Intrinsics.checkNotNull(enumJsonAdapterWithUnknownFallback);
            return enumJsonAdapterWithUnknownFallback;
        }
        JsonAdapter<T> jsonAdapterNullSafe = enumJsonAdapterWithUnknownFallback.nullSafe();
        Intrinsics.checkNotNullExpressionValue(jsonAdapterNullSafe, "nullSafe(...)");
        return jsonAdapterNullSafe;
    }
}
