package com.stripe.stripeterminal.internal.common.proto;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuilder;

/* JADX INFO: compiled from: KotlinxJsonSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\b\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n*\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\t0\rH\u0016¢\u0006\u0002\u0010\u000eJ)\u0010\u000f\u001a\u00020\u000b\"\b\b\u0000\u0010\u0010*\u00020\n*\u0002H\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\rH\u0016¢\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\u000b\"\b\b\u0000\u0010\u0010*\u00020\n*\u0002H\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\rH\u0016¢\u0006\u0002\u0010\u0011J)\u0010\u0013\u001a\u00020\u000b\"\b\b\u0000\u0010\u0010*\u00020\n*\u0002H\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\rH\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;", "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "()V", "lenientJson", "Lkotlinx/serialization/json/Json;", "module", "Lkotlinx/serialization/modules/SerializersModule;", "prettyPrintKotlinx", "fromJson", "Output", "", "", "clazz", "Lkotlin/reflect/KClass;", "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;", "prettyPrint", "Input", "(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;", "toJson", "toJsonContentString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KotlinxJsonSerializer implements JsonSerializer {
    public static final KotlinxJsonSerializer INSTANCE = new KotlinxJsonSerializer();
    private static final SerializersModule module = new SerializersModuleBuilder().build();
    private static final Json prettyPrintKotlinx = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.stripe.stripeterminal.internal.common.proto.KotlinxJsonSerializer$prettyPrintKotlinx$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.setSerializersModule(KotlinxJsonSerializer.module);
            Json.setEncodeDefaults(true);
            Json.setPrettyPrint(true);
            Json.setPrettyPrintIndent("  ");
            Json.setExplicitNulls(true);
        }
    }, 1, null);
    private static final Json lenientJson = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.stripe.stripeterminal.internal.common.proto.KotlinxJsonSerializer$lenientJson$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.setSerializersModule(KotlinxJsonSerializer.module);
            Json.setEncodeDefaults(true);
            Json.setIgnoreUnknownKeys(true);
            Json.setLenient(true);
            Json.setCoerceInputValues(true);
            Json.setExplicitNulls(false);
        }
    }, 1, null);

    private KotlinxJsonSerializer() {
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Output> Output fromJson(String str, KClass<Output> clazz) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (Output) lenientJson.decodeFromString(SerializersKt.serializer(clazz), str);
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String prettyPrint(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return prettyPrintKotlinx.encodeToString(SerializersKt.serializer(clazz), input);
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String toJson(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return lenientJson.encodeToString(SerializersKt.serializer(clazz), input);
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String toJsonContentString(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        JsonElement jsonElementEncodeToJsonElement = lenientJson.encodeToJsonElement(SerializersKt.serializer(clazz), input);
        return jsonElementEncodeToJsonElement instanceof JsonPrimitive ? JsonElementKt.getJsonPrimitive(jsonElementEncodeToJsonElement).getContent() : input.toString();
    }
}
