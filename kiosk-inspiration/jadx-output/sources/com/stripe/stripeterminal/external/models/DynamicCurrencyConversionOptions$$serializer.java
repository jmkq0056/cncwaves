package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
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
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class DynamicCurrencyConversionOptions$$serializer implements GeneratedSerializer<DynamicCurrencyConversionOptions> {
    public static final DynamicCurrencyConversionOptions$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        DynamicCurrencyConversionOptions$$serializer dynamicCurrencyConversionOptions$$serializer = new DynamicCurrencyConversionOptions$$serializer();
        INSTANCE = dynamicCurrencyConversionOptions$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.DynamicCurrencyConversionOptions", dynamicCurrencyConversionOptions$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, false);
        pluginGeneratedSerialDescriptor.addElement(FirebaseAnalytics.Param.CURRENCY, false);
        pluginGeneratedSerialDescriptor.addElement("transactionFxRate", false);
        pluginGeneratedSerialDescriptor.addElement("transactionMarkupPercent", false);
        pluginGeneratedSerialDescriptor.addElement("cardholderRate", false);
        pluginGeneratedSerialDescriptor.addElement("referenceFxRate", false);
        pluginGeneratedSerialDescriptor.addElement("referenceMarkupPercent", false);
        pluginGeneratedSerialDescriptor.addElement("fxAsOf", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private DynamicCurrencyConversionOptions$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{LongSerializer.INSTANCE, StringSerializer.INSTANCE, FloatSerializer.INSTANCE, FloatSerializer.INSTANCE, FloatSerializer.INSTANCE, BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), BuiltinSerializersKt.getNullable(FloatSerializer.INSTANCE), FloatSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public DynamicCurrencyConversionOptions deserialize(Decoder decoder) {
        float fDecodeFloatElement;
        float f;
        Float f2;
        Float f3;
        int i;
        float f4;
        String str;
        float f5;
        long j;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i2 = 7;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 0);
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 1);
            float fDecodeFloatElement2 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 2);
            float fDecodeFloatElement3 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 3);
            float fDecodeFloatElement4 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 4);
            Float f6 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, FloatSerializer.INSTANCE, null);
            Float f7 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, FloatSerializer.INSTANCE, null);
            fDecodeFloatElement = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 7);
            f2 = f7;
            f3 = f6;
            f5 = fDecodeFloatElement3;
            f = fDecodeFloatElement4;
            f4 = fDecodeFloatElement2;
            i = 255;
            j = jDecodeLongElement;
            str = strDecodeStringElement;
        } else {
            float fDecodeFloatElement5 = 0.0f;
            boolean z = true;
            int i3 = 0;
            Float f8 = null;
            Float f9 = null;
            String strDecodeStringElement2 = null;
            long jDecodeLongElement2 = 0;
            float fDecodeFloatElement6 = 0.0f;
            float fDecodeFloatElement7 = 0.0f;
            float fDecodeFloatElement8 = 0.0f;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 7;
                        break;
                    case 0:
                        jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 0);
                        i3 |= 1;
                        i2 = 7;
                        break;
                    case 1:
                        i3 |= 2;
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 1);
                        break;
                    case 2:
                        fDecodeFloatElement8 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 2);
                        i3 |= 4;
                        break;
                    case 3:
                        fDecodeFloatElement6 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 3);
                        i3 |= 8;
                        break;
                    case 4:
                        fDecodeFloatElement7 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 4);
                        i3 |= 16;
                        break;
                    case 5:
                        f9 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, FloatSerializer.INSTANCE, f9);
                        i3 |= 32;
                        break;
                    case 6:
                        f8 = (Float) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, FloatSerializer.INSTANCE, f8);
                        i3 |= 64;
                        break;
                    case 7:
                        fDecodeFloatElement5 = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, i2);
                        i3 |= 128;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            fDecodeFloatElement = fDecodeFloatElement5;
            f = fDecodeFloatElement7;
            long j2 = jDecodeLongElement2;
            f2 = f8;
            f3 = f9;
            i = i3;
            f4 = fDecodeFloatElement8;
            str = strDecodeStringElement2;
            f5 = fDecodeFloatElement6;
            j = j2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new DynamicCurrencyConversionOptions(i, j, str, f4, f5, f, f3, f2, fDecodeFloatElement, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, DynamicCurrencyConversionOptions value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        DynamicCurrencyConversionOptions.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
