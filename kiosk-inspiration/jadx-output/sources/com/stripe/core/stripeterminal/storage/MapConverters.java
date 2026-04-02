package com.stripe.core.stripeterminal.storage;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.stripe.jvmcore.logging.terminal.log.GsonProvider;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MapConverters.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u0004\u0018\u00010\b2\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\nH\u0007J \u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/MapConverters;", "", "()V", "gson", "Lcom/google/gson/Gson;", "getGson", "()Lcom/google/gson/Gson;", "fromStringStringMap", "", "value", "", "toStringStringMap", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MapConverters {
    private final Gson getGson() {
        return GsonProvider.INSTANCE.getInstance();
    }

    public final Map<String, String> toStringStringMap(String value) {
        Object objM817constructorimpl;
        if (value == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objFromJson = getGson().fromJson(value, new TypeToken<Map<String, ? extends String>>() { // from class: com.stripe.core.stripeterminal.storage.MapConverters$toStringStringMap$1$1
            }.getType());
            Intrinsics.checkNotNullExpressionValue(objFromJson, "fromJson(...)");
            objM817constructorimpl = Result.m817constructorimpl((Map) objFromJson);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        return (Map) (Result.m823isFailureimpl(objM817constructorimpl) ? null : objM817constructorimpl);
    }

    public final String fromStringStringMap(Map<String, String> value) {
        if (value != null) {
            return getGson().toJson(value);
        }
        return null;
    }
}
