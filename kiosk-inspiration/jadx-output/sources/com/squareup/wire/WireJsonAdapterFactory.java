package com.squareup.wire;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.wire.internal.EnumJsonFormatter;
import com.squareup.wire.internal.ReflectionKt;
import com.squareup.wire.internal.RuntimeMessageAdapter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WireJsonAdapterFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B+\b\u0007\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ,\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0005J\u0018\u0010\u0012\u001a\u00020\u00002\u0010\u0010\u0014\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0015R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/squareup/wire/WireJsonAdapterFactory;", "Lcom/squareup/moshi/JsonAdapter$Factory;", "typeUrlToAdapter", "", "", "Lcom/squareup/wire/ProtoAdapter;", "writeIdentityValues", "", "(Ljava/util/Map;Z)V", "create", "Lcom/squareup/moshi/JsonAdapter;", "type", "Ljava/lang/reflect/Type;", "annotations", "", "", "moshi", "Lcom/squareup/moshi/Moshi;", "plus", "adapter", "adapters", "", "wire-moshi-adapter"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WireJsonAdapterFactory implements JsonAdapter.Factory {
    private final Map<String, ProtoAdapter<?>> typeUrlToAdapter;
    private final boolean writeIdentityValues;

    /* JADX WARN: Multi-variable type inference failed */
    public WireJsonAdapterFactory() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WireJsonAdapterFactory(Map<String, ? extends ProtoAdapter<?>> typeUrlToAdapter) {
        this(typeUrlToAdapter, false, 2, null);
        Intrinsics.checkNotNullParameter(typeUrlToAdapter, "typeUrlToAdapter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WireJsonAdapterFactory(Map<String, ? extends ProtoAdapter<?>> typeUrlToAdapter, boolean z) {
        Intrinsics.checkNotNullParameter(typeUrlToAdapter, "typeUrlToAdapter");
        this.typeUrlToAdapter = typeUrlToAdapter;
        this.writeIdentityValues = z;
    }

    public /* synthetic */ WireJsonAdapterFactory(Map map, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MapsKt.emptyMap() : map, (i & 2) != 0 ? false : z);
    }

    public final WireJsonAdapterFactory plus(List<? extends ProtoAdapter<?>> adapters) {
        Intrinsics.checkNotNullParameter(adapters, "adapters");
        Map mutableMap = MapsKt.toMutableMap(this.typeUrlToAdapter);
        for (ProtoAdapter<?> protoAdapter : adapters) {
            String typeUrl = protoAdapter.getTypeUrl();
            if (typeUrl == null) {
                throw new IllegalArgumentException("recompile " + protoAdapter.getType() + " to use it with WireJsonAdapterFactory");
            }
            mutableMap.put(typeUrl, protoAdapter);
        }
        return new WireJsonAdapterFactory(mutableMap, this.writeIdentityValues);
    }

    public final WireJsonAdapterFactory plus(ProtoAdapter<?> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        return plus(CollectionsKt.listOf(adapter));
    }

    @Override // com.squareup.moshi.JsonAdapter.Factory
    public JsonAdapter<?> create(Type type, Set<? extends Annotation> annotations, Moshi moshi) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        Class<?> rawType = Types.getRawType(type);
        if (!annotations.isEmpty()) {
            return null;
        }
        if (Intrinsics.areEqual(rawType, AnyMessage.class)) {
            return new AnyMessageJsonAdapter(moshi, this.typeUrlToAdapter);
        }
        if (Message.class.isAssignableFrom(rawType)) {
            RuntimeMessageAdapter runtimeMessageAdapterCreateRuntimeMessageAdapter = ReflectionKt.createRuntimeMessageAdapter((Class) type, this.writeIdentityValues, rawType.getClassLoader());
            List<JsonAdapter<Object>> listJsonAdapters = MoshiJsonIntegration.INSTANCE.jsonAdapters(runtimeMessageAdapterCreateRuntimeMessageAdapter, moshi);
            JsonAdapter jsonAdapterAdapter = moshi.adapter(Types.newParameterizedType(List.class, String.class));
            Intrinsics.checkNotNull(jsonAdapterAdapter);
            return new MessageJsonAdapter(runtimeMessageAdapterCreateRuntimeMessageAdapter, listJsonAdapters, jsonAdapterAdapter).nullSafe();
        }
        if (WireEnum.class.isAssignableFrom(rawType)) {
            return new EnumJsonAdapter(new EnumJsonFormatter(RuntimeEnumAdapter.INSTANCE.create((Class) type))).nullSafe();
        }
        return null;
    }
}
