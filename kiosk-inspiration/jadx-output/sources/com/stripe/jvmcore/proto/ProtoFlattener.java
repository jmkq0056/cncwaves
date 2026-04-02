package com.stripe.jvmcore.proto;

import com.github.wnameless.json.flattener.JsonFlattener;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.squareup.wire.WireJsonAdapterFactory;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProtoFlattener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002JA\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u0007\"\u0012\b\u0000\u0010\n*\f\u0012\u0004\u0012\u0002H\n\u0012\u0002\b\u00030\u000b2\u0006\u0010\f\u001a\u0002H\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/proto/ProtoFlattener;", "", "()V", "moshi", "Lcom/squareup/moshi/Moshi;", "kotlin.jvm.PlatformType", "flattenToKeyValueMap", "Lkotlin/Result;", "", "", "M", "Lcom/squareup/wire/Message;", "proto", "flattenToKeyValueMap-IoAF18A", "(Lcom/squareup/wire/Message;)Ljava/lang/Object;"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProtoFlattener {
    private final Moshi moshi = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, false, 3, 0 == true ? 1 : 0)).build();

    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public ProtoFlattener() {
    }

    /* JADX INFO: renamed from: flattenToKeyValueMap-IoAF18A, reason: not valid java name */
    public final <M extends Message<M, ?>> Object m492flattenToKeyValueMapIoAF18A(M proto) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        try {
            Result.Companion companion = Result.INSTANCE;
            ProtoFlattener protoFlattener = this;
            Map mapFlattenAsMap = JsonFlattener.flattenAsMap(this.moshi.adapter((Class) proto.getClass()).toJson(proto));
            Intrinsics.checkNotNullExpressionValue(mapFlattenAsMap, "flattenAsMap(...)");
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapFlattenAsMap.size()));
            for (Object obj : mapFlattenAsMap.entrySet()) {
                linkedHashMap.put(((Map.Entry) obj).getKey(), ((Map.Entry) obj).getValue().toString());
            }
            return Result.m817constructorimpl(linkedHashMap);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m817constructorimpl(ResultKt.createFailure(th));
        }
    }
}
