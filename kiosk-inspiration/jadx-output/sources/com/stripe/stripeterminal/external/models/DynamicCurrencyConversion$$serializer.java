package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: DynamicCurrencyConversion.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/DynamicCurrencyConversion.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class DynamicCurrencyConversion$$serializer implements GeneratedSerializer<DynamicCurrencyConversion> {
    public static final DynamicCurrencyConversion$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        DynamicCurrencyConversion$$serializer dynamicCurrencyConversion$$serializer = new DynamicCurrencyConversion$$serializer();
        INSTANCE = dynamicCurrencyConversion$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.DynamicCurrencyConversion", dynamicCurrencyConversion$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement(NotificationCompat.CATEGORY_STATUS, false);
        pluginGeneratedSerialDescriptor.addElement("originalAmount", false);
        pluginGeneratedSerialDescriptor.addElement("transactionFxRate", false);
        pluginGeneratedSerialDescriptor.addElement("transactionMarkupPercent", false);
        pluginGeneratedSerialDescriptor.addElement("cardholderRate", false);
        pluginGeneratedSerialDescriptor.addElement("referenceFxRate", false);
        pluginGeneratedSerialDescriptor.addElement("referenceMarkupPercent", false);
        pluginGeneratedSerialDescriptor.addElement("fxAsOf", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private DynamicCurrencyConversion$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(LongSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public DynamicCurrencyConversion deserialize(Decoder decoder) {
        Float f;
        String str;
        Float f2;
        Float f3;
        Float f4;
        Long l;
        Float f5;
        Float f6;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i2 = 7;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            Long l2 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, LongSerializer.INSTANCE, null);
            Float f7 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, FloatSerializer.INSTANCE, null);
            Float f8 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, FloatSerializer.INSTANCE, null);
            Float f9 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, FloatSerializer.INSTANCE, null);
            Float f10 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, FloatSerializer.INSTANCE, null);
            Float f11 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, FloatSerializer.INSTANCE, null);
            f6 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, FloatSerializer.INSTANCE, null);
            f = f11;
            f4 = f10;
            f5 = f8;
            f3 = f9;
            f2 = f7;
            i = 255;
            l = l2;
            str = strDecodeStringElement2;
        } else {
            boolean z = true;
            int i3 = 0;
            Float f12 = null;
            Float f13 = null;
            Float f14 = null;
            Long l3 = null;
            Float f15 = null;
            Float f16 = null;
            Float f17 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        break;
                    case 0:
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i3 |= 1;
                        i2 = 7;
                        break;
                    case 1:
                        l3 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, LongSerializer.INSTANCE, l3);
                        i3 |= 2;
                        i2 = 7;
                        break;
                    case 2:
                        f15 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, FloatSerializer.INSTANCE, f15);
                        i3 |= 4;
                        i2 = 7;
                        break;
                    case 3:
                        f16 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, FloatSerializer.INSTANCE, f16);
                        i3 |= 8;
                        i2 = 7;
                        break;
                    case 4:
                        f17 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, FloatSerializer.INSTANCE, f17);
                        i3 |= 16;
                        break;
                    case 5:
                        f14 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, FloatSerializer.INSTANCE, f14);
                        i3 |= 32;
                        break;
                    case 6:
                        f13 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, FloatSerializer.INSTANCE, f13);
                        i3 |= 64;
                        break;
                    case 7:
                        f12 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i2, FloatSerializer.INSTANCE, f12);
                        i3 |= 128;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            Float f18 = f17;
            f = f13;
            str = strDecodeStringElement;
            f2 = f15;
            f3 = f18;
            Float f19 = f16;
            f4 = f14;
            l = l3;
            f5 = f19;
            f6 = f12;
            i = i3;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new DynamicCurrencyConversion(i, str, l, f2, f5, f3, f4, f, f6, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, DynamicCurrencyConversion value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        DynamicCurrencyConversion.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
