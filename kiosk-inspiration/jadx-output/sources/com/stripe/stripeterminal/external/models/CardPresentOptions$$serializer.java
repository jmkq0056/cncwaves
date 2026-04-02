package com.stripe.stripeterminal.external.models;

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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: CardPresentOptions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/CardPresentOptions.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/CardPresentOptions;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class CardPresentOptions$$serializer implements GeneratedSerializer<CardPresentOptions> {
    public static final CardPresentOptions$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        CardPresentOptions$$serializer cardPresentOptions$$serializer = new CardPresentOptions$$serializer();
        INSTANCE = cardPresentOptions$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.CardPresentOptions", cardPresentOptions$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("requestExtendedAuthorization", false);
        pluginGeneratedSerialDescriptor.addElement("requestIncrementalAuthorizationSupport", false);
        pluginGeneratedSerialDescriptor.addElement("routing", false);
        pluginGeneratedSerialDescriptor.addElement("requestDynamicCurrencyConversion", false);
        pluginGeneratedSerialDescriptor.addElement("dynamicCurrencyConversion", false);
        pluginGeneratedSerialDescriptor.addElement("surcharge", false);
        pluginGeneratedSerialDescriptor.addElement("requestPartialAuthorization", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private CardPresentOptions$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE), BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE), BuiltinSerializersKt.getNullable(CardPresentRoutingOptions$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DynamicCurrencyConversionOptions$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(Surcharge$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(CardPresentOptions.$childSerializers[6])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public CardPresentOptions deserialize(Decoder decoder) {
        Surcharge surcharge;
        Boolean bool;
        Boolean bool2;
        CardPresentRoutingOptions cardPresentRoutingOptions;
        String str;
        DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions;
        CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = CardPresentOptions.$childSerializers;
        int i2 = 5;
        Boolean bool3 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            Boolean bool4 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, BooleanSerializer.INSTANCE, null);
            Boolean bool5 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, BooleanSerializer.INSTANCE, null);
            CardPresentRoutingOptions cardPresentRoutingOptions2 = (CardPresentRoutingOptions) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, CardPresentRoutingOptions$$serializer.INSTANCE, null);
            String str2 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions2 = (DynamicCurrencyConversionOptions) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, DynamicCurrencyConversionOptions$$serializer.INSTANCE, null);
            Surcharge surcharge2 = (Surcharge) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, Surcharge$$serializer.INSTANCE, null);
            cardPresentRequestPartialAuthorization = (CardPresentRequestPartialAuthorization) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, kSerializerArr[6], null);
            bool = bool4;
            surcharge = surcharge2;
            str = str2;
            dynamicCurrencyConversionOptions = dynamicCurrencyConversionOptions2;
            cardPresentRoutingOptions = cardPresentRoutingOptions2;
            bool2 = bool5;
            i = 127;
        } else {
            boolean z = true;
            int i3 = 0;
            CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization2 = null;
            Surcharge surcharge3 = null;
            Boolean bool6 = null;
            CardPresentRoutingOptions cardPresentRoutingOptions3 = null;
            String str3 = null;
            DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions3 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 5;
                        break;
                    case 0:
                        bool3 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, BooleanSerializer.INSTANCE, bool3);
                        i3 |= 1;
                        i2 = 5;
                        break;
                    case 1:
                        bool6 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, BooleanSerializer.INSTANCE, bool6);
                        i3 |= 2;
                        i2 = 5;
                        break;
                    case 2:
                        cardPresentRoutingOptions3 = (CardPresentRoutingOptions) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, CardPresentRoutingOptions$$serializer.INSTANCE, cardPresentRoutingOptions3);
                        i3 |= 4;
                        i2 = 5;
                        break;
                    case 3:
                        str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str3);
                        i3 |= 8;
                        break;
                    case 4:
                        dynamicCurrencyConversionOptions3 = (DynamicCurrencyConversionOptions) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, DynamicCurrencyConversionOptions$$serializer.INSTANCE, dynamicCurrencyConversionOptions3);
                        i3 |= 16;
                        break;
                    case 5:
                        surcharge3 = (Surcharge) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i2, Surcharge$$serializer.INSTANCE, surcharge3);
                        i3 |= 32;
                        break;
                    case 6:
                        cardPresentRequestPartialAuthorization2 = (CardPresentRequestPartialAuthorization) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, kSerializerArr[6], cardPresentRequestPartialAuthorization2);
                        i3 |= 64;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            DynamicCurrencyConversionOptions dynamicCurrencyConversionOptions4 = dynamicCurrencyConversionOptions3;
            surcharge = surcharge3;
            bool = bool3;
            bool2 = bool6;
            cardPresentRoutingOptions = cardPresentRoutingOptions3;
            str = str3;
            dynamicCurrencyConversionOptions = dynamicCurrencyConversionOptions4;
            cardPresentRequestPartialAuthorization = cardPresentRequestPartialAuthorization2;
            i = i3;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new CardPresentOptions(i, bool, bool2, cardPresentRoutingOptions, str, dynamicCurrencyConversionOptions, surcharge, cardPresentRequestPartialAuthorization, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CardPresentOptions value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        CardPresentOptions.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
