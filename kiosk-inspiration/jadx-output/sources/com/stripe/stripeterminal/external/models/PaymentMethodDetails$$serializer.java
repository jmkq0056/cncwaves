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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaymentMethodDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/PaymentMethodDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class PaymentMethodDetails$$serializer implements GeneratedSerializer<PaymentMethodDetails> {
    public static final PaymentMethodDetails$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        PaymentMethodDetails$$serializer paymentMethodDetails$$serializer = new PaymentMethodDetails$$serializer();
        INSTANCE = paymentMethodDetails$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.PaymentMethodDetails", paymentMethodDetails$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("cardPresent", true);
        pluginGeneratedSerialDescriptor.addElement("interacPresent", true);
        pluginGeneratedSerialDescriptor.addElement("wechatPay", true);
        pluginGeneratedSerialDescriptor.addElement("affirm", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private PaymentMethodDetails$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(PaymentMethodDetails.$childSerializers[0]), BuiltinSerializersKt.getNullable(CardPresentDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(CardPresentDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(WechatPayDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(AffirmDetails$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public PaymentMethodDetails deserialize(Decoder decoder) {
        int i;
        PaymentMethodType paymentMethodType;
        CardPresentDetails cardPresentDetails;
        CardPresentDetails cardPresentDetails2;
        WechatPayDetails wechatPayDetails;
        AffirmDetails affirmDetails;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = PaymentMethodDetails.$childSerializers;
        int i2 = 0;
        PaymentMethodType paymentMethodType2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            PaymentMethodType paymentMethodType3 = (PaymentMethodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            CardPresentDetails cardPresentDetails3 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, CardPresentDetails$$serializer.INSTANCE, null);
            CardPresentDetails cardPresentDetails4 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, CardPresentDetails$$serializer.INSTANCE, null);
            paymentMethodType = paymentMethodType3;
            cardPresentDetails = cardPresentDetails3;
            wechatPayDetails = (WechatPayDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, WechatPayDetails$$serializer.INSTANCE, null);
            affirmDetails = (AffirmDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, AffirmDetails$$serializer.INSTANCE, null);
            cardPresentDetails2 = cardPresentDetails4;
            i = 31;
        } else {
            int i3 = 1;
            int i4 = 0;
            CardPresentDetails cardPresentDetails5 = null;
            CardPresentDetails cardPresentDetails6 = null;
            WechatPayDetails wechatPayDetails2 = null;
            AffirmDetails affirmDetails2 = null;
            while (i3 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                int i5 = i2;
                if (iDecodeElementIndex == -1) {
                    i2 = i5;
                    i3 = i2;
                } else if (iDecodeElementIndex != 0) {
                    if (iDecodeElementIndex == 1) {
                        cardPresentDetails5 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, CardPresentDetails$$serializer.INSTANCE, cardPresentDetails5);
                        i4 |= 2;
                    } else if (iDecodeElementIndex == 2) {
                        cardPresentDetails6 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, CardPresentDetails$$serializer.INSTANCE, cardPresentDetails6);
                        i4 |= 4;
                    } else if (iDecodeElementIndex == 3) {
                        wechatPayDetails2 = (WechatPayDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, WechatPayDetails$$serializer.INSTANCE, wechatPayDetails2);
                        i4 |= 8;
                    } else {
                        if (iDecodeElementIndex != 4) {
                            throw new UnknownFieldException(iDecodeElementIndex);
                        }
                        affirmDetails2 = (AffirmDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, AffirmDetails$$serializer.INSTANCE, affirmDetails2);
                        i4 |= 16;
                    }
                    i2 = i5;
                } else {
                    paymentMethodType2 = (PaymentMethodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i5, kSerializerArr[i5], paymentMethodType2);
                    i4 |= 1;
                    i2 = i5;
                }
            }
            i = i4;
            paymentMethodType = paymentMethodType2;
            cardPresentDetails = cardPresentDetails5;
            cardPresentDetails2 = cardPresentDetails6;
            wechatPayDetails = wechatPayDetails2;
            affirmDetails = affirmDetails2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new PaymentMethodDetails(i, paymentMethodType, cardPresentDetails, cardPresentDetails2, wechatPayDetails, affirmDetails, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, PaymentMethodDetails value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        PaymentMethodDetails.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
