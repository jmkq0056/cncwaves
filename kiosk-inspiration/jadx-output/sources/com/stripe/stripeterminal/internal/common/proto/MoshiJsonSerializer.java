package com.stripe.stripeterminal.internal.common.proto;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.WireJsonAdapterFactory;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: MoshiJsonSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0007\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t*\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\fH\u0016¢\u0006\u0002\u0010\rJ)\u0010\u000e\u001a\u00020\n\"\b\b\u0000\u0010\u000f*\u00020\t*\u0002H\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u000f0\fH\u0016¢\u0006\u0002\u0010\u0010J)\u0010\u0011\u001a\u00020\n\"\b\b\u0000\u0010\u000f*\u00020\t*\u0002H\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u000f0\fH\u0016¢\u0006\u0002\u0010\u0010J)\u0010\u0012\u001a\u00020\n\"\b\b\u0000\u0010\u000f*\u00020\t*\u0002H\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u000f0\fH\u0016¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/proto/MoshiJsonSerializer;", "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "()V", "moshi", "Lcom/squareup/moshi/Moshi;", "getMoshi", "()Lcom/squareup/moshi/Moshi;", "fromJson", "Output", "", "", "clazz", "Lkotlin/reflect/KClass;", "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;", "prettyPrint", "Input", "(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;", "toJson", "toJsonContentString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MoshiJsonSerializer implements JsonSerializer {
    public static final MoshiJsonSerializer INSTANCE = new MoshiJsonSerializer();
    private static final Moshi moshi;

    private MoshiJsonSerializer() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Moshi moshiBuild = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, true, 1 == true ? 1 : 0, 0 == true ? 1 : 0)).build();
        Intrinsics.checkNotNullExpressionValue(moshiBuild, "build(...)");
        moshi = moshiBuild;
    }

    public final Moshi getMoshi() {
        return moshi;
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Output> Output fromJson(String str, KClass<Output> clazz) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Output output = (Output) moshi.adapter(JvmClassMappingKt.getJavaClass((KClass) clazz)).fromJson(str);
        Intrinsics.checkNotNull(output);
        return output;
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String prettyPrint(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String json = moshi.adapter(JvmClassMappingKt.getJavaClass((KClass) clazz)).serializeNulls().indent("  ").toJson(input);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String toJson(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String json = moshi.adapter(JvmClassMappingKt.getJavaClass((KClass) clazz)).toJson(input);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String toJsonContentString(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return String.valueOf(moshi.adapter(JvmClassMappingKt.getJavaClass((KClass) clazz)).toJsonValue(input));
    }
}
