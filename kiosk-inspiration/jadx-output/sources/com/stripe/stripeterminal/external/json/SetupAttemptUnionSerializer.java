package com.stripe.stripeterminal.external.json;

import com.stripe.stripeterminal.external.models.SetupAttempt;
import com.stripe.stripeterminal.external.models.SetupAttemptUnion;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: SetupAttemptUnionSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupAttemptUnionSerializer implements KSerializer<SetupAttemptUnion> {
    public static final SetupAttemptUnionSerializer INSTANCE = new SetupAttemptUnionSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildSerialDescriptor$default("SetupAttemptUnion", SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], null, 8, null);

    private SetupAttemptUnionSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SetupAttemptUnion value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This serializer can be used only with Json format");
        }
        Json json = jsonEncoder.getJson();
        if (value instanceof SetupAttemptUnion.Reference) {
            jsonEncoder.encodeJsonElement(JsonElementKt.JsonPrimitive(value.getId()));
        } else if (value instanceof SetupAttemptUnion.Expanded) {
            jsonEncoder.encodeJsonElement(json.encodeToJsonElement(SetupAttempt.INSTANCE.serializer(), ((SetupAttemptUnion.Expanded) value).getSetupAttempt()));
        }
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public SetupAttemptUnion deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This serializer can be used only with Json format");
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        Json json = jsonDecoder.getJson();
        if (jsonElementDecodeJsonElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementDecodeJsonElement;
            if (jsonPrimitive.getIsString()) {
                return new SetupAttemptUnion.Reference(jsonPrimitive.getContent());
            }
        }
        if (jsonElementDecodeJsonElement instanceof JsonObject) {
            return new SetupAttemptUnion.Expanded((SetupAttempt) json.decodeFromJsonElement(SetupAttempt.INSTANCE.serializer(), jsonElementDecodeJsonElement));
        }
        throw new SerializationException("Unknown SetupAttemptUnion format");
    }
}
