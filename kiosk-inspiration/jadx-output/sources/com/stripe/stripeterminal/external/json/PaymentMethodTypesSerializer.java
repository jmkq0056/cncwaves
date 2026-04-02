package com.stripe.stripeterminal.external.json;

import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: PaymentMethodTypesSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "paymentMethodTypesMap", "", "", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodTypesSerializer implements KSerializer<List<? extends PaymentMethodType>> {
    public static final PaymentMethodTypesSerializer INSTANCE = new PaymentMethodTypesSerializer();
    private static final SerialDescriptor descriptor = BuiltinSerializersKt.ListSerializer(PaymentMethodType.INSTANCE.serializer()).getDescriptor();
    private static final Map<String, PaymentMethodType> paymentMethodTypesMap;

    private PaymentMethodTypesSerializer() {
    }

    static {
        EnumEntries<PaymentMethodType> entries = PaymentMethodType.getEntries();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(entries, 10)), 16));
        for (PaymentMethodType paymentMethodType : entries) {
            linkedHashMap.put(paymentMethodType.getTypeName(), paymentMethodType);
        }
        paymentMethodTypesMap = linkedHashMap;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, List<? extends PaymentMethodType> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new IllegalArgumentException("This serializer can be used only with Json format");
        }
        List<? extends PaymentMethodType> list = value;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(JsonElementKt.JsonPrimitive(((PaymentMethodType) it.next()).getTypeName()));
        }
        jsonEncoder.encodeJsonElement(new JsonArray(arrayList));
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public List<PaymentMethodType> deserialize(Decoder decoder) {
        String content;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new IllegalArgumentException("This serializer can be used only with Json format");
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        JsonArray jsonArray = jsonElementDecodeJsonElement instanceof JsonArray ? (JsonArray) jsonElementDecodeJsonElement : null;
        if (jsonArray == null) {
            throw new IllegalArgumentException("Expected JsonArray");
        }
        ArrayList arrayList = new ArrayList();
        for (JsonElement jsonElement : jsonArray) {
            JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
            PaymentMethodType paymentMethodType = (jsonPrimitive == null || (content = jsonPrimitive.getContent()) == null) ? null : paymentMethodTypesMap.get(content);
            if (paymentMethodType != null) {
                arrayList.add(paymentMethodType);
            }
        }
        return arrayList;
    }
}
