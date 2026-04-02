package com.stripe.stripeterminal.external.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.Map;
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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: PaymentMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/PaymentMethod.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class PaymentMethod$$serializer implements GeneratedSerializer<PaymentMethod> {
    public static final PaymentMethod$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        PaymentMethod$$serializer paymentMethod$$serializer = new PaymentMethod$$serializer();
        INSTANCE = paymentMethod$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.PaymentMethod", paymentMethod$$serializer, 11);
        pluginGeneratedSerialDescriptor.addElement(OfflineStorageConstantsKt.ID, false);
        pluginGeneratedSerialDescriptor.addElement("card", true);
        pluginGeneratedSerialDescriptor.addElement("cardPresent", true);
        pluginGeneratedSerialDescriptor.addElement("created", true);
        pluginGeneratedSerialDescriptor.addElement("customer", true);
        pluginGeneratedSerialDescriptor.addElement("livemode", true);
        pluginGeneratedSerialDescriptor.addElement("metadata", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("interacPresent", true);
        pluginGeneratedSerialDescriptor.addElement("wechatPay", true);
        pluginGeneratedSerialDescriptor.addElement("affirm", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private PaymentMethod$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer[] kSerializerArr = PaymentMethod.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(CardDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(CardPresentDetails$$serializer.INSTANCE), LongSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BooleanSerializer.INSTANCE, BuiltinSerializersKt.getNullable(kSerializerArr[6]), BuiltinSerializersKt.getNullable(kSerializerArr[7]), BuiltinSerializersKt.getNullable(CardPresentDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(WechatPayDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(AffirmDetails$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public PaymentMethod deserialize(Decoder decoder) {
        CardPresentDetails cardPresentDetails;
        boolean z;
        CardPresentDetails cardPresentDetails2;
        Map map;
        PaymentMethodType paymentMethodType;
        AffirmDetails affirmDetails;
        WechatPayDetails wechatPayDetails;
        CardDetails cardDetails;
        String str;
        String str2;
        int i;
        long j;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = PaymentMethod.$childSerializers;
        int i2 = 10;
        int i3 = 9;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            CardDetails cardDetails2 = (CardDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, CardDetails$$serializer.INSTANCE, null);
            CardPresentDetails cardPresentDetails3 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, CardPresentDetails$$serializer.INSTANCE, null);
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 3);
            String str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, null);
            boolean zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 5);
            Map map2 = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, kSerializerArr[6], null);
            PaymentMethodType paymentMethodType2 = (PaymentMethodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, kSerializerArr[7], null);
            CardPresentDetails cardPresentDetails4 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, CardPresentDetails$$serializer.INSTANCE, null);
            WechatPayDetails wechatPayDetails2 = (WechatPayDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, WechatPayDetails$$serializer.INSTANCE, null);
            paymentMethodType = paymentMethodType2;
            affirmDetails = (AffirmDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, AffirmDetails$$serializer.INSTANCE, null);
            wechatPayDetails = wechatPayDetails2;
            cardPresentDetails2 = cardPresentDetails4;
            map = map2;
            cardDetails = cardDetails2;
            j = jDecodeLongElement;
            z = zDecodeBooleanElement;
            str2 = str3;
            cardPresentDetails = cardPresentDetails3;
            i = 2047;
            str = strDecodeStringElement;
        } else {
            int i4 = 7;
            int i5 = 6;
            boolean z2 = true;
            boolean zDecodeBooleanElement2 = false;
            CardPresentDetails cardPresentDetails5 = null;
            Map map3 = null;
            PaymentMethodType paymentMethodType3 = null;
            String str4 = null;
            AffirmDetails affirmDetails2 = null;
            WechatPayDetails wechatPayDetails3 = null;
            cardPresentDetails = null;
            long jDecodeLongElement2 = 0;
            int i6 = 0;
            CardDetails cardDetails3 = null;
            String strDecodeStringElement2 = null;
            while (z2) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z2 = false;
                        i2 = 10;
                        i5 = 6;
                        i4 = 7;
                        break;
                    case 0:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i6 |= 1;
                        i2 = 10;
                        i3 = 9;
                        i5 = 6;
                        i4 = 7;
                        break;
                    case 1:
                        cardDetails3 = (CardDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, CardDetails$$serializer.INSTANCE, cardDetails3);
                        i6 |= 2;
                        i2 = 10;
                        i3 = 9;
                        i5 = 6;
                        i4 = 7;
                        break;
                    case 2:
                        cardPresentDetails = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, CardPresentDetails$$serializer.INSTANCE, cardPresentDetails);
                        i6 |= 4;
                        i2 = 10;
                        i3 = 9;
                        i5 = 6;
                        i4 = 7;
                        break;
                    case 3:
                        jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 3);
                        i6 |= 8;
                        i2 = 10;
                        i3 = 9;
                        i5 = 6;
                        i4 = 7;
                        break;
                    case 4:
                        str4 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, str4);
                        i6 |= 16;
                        i2 = 10;
                        i3 = 9;
                        i5 = 6;
                        i4 = 7;
                        break;
                    case 5:
                        zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 5);
                        i6 |= 32;
                        i2 = 10;
                        i4 = 7;
                        break;
                    case 6:
                        map3 = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i5, kSerializerArr[i5], map3);
                        i6 |= 64;
                        i2 = 10;
                        i4 = 7;
                        break;
                    case 7:
                        paymentMethodType3 = (PaymentMethodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i4, kSerializerArr[i4], paymentMethodType3);
                        i6 |= 128;
                        i2 = 10;
                        break;
                    case 8:
                        cardPresentDetails5 = (CardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, CardPresentDetails$$serializer.INSTANCE, cardPresentDetails5);
                        i6 |= 256;
                        i2 = 10;
                        break;
                    case 9:
                        wechatPayDetails3 = (WechatPayDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i3, WechatPayDetails$$serializer.INSTANCE, wechatPayDetails3);
                        i6 |= 512;
                        break;
                    case 10:
                        affirmDetails2 = (AffirmDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i2, AffirmDetails$$serializer.INSTANCE, affirmDetails2);
                        i6 |= 1024;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            z = zDecodeBooleanElement2;
            cardPresentDetails2 = cardPresentDetails5;
            map = map3;
            paymentMethodType = paymentMethodType3;
            affirmDetails = affirmDetails2;
            wechatPayDetails = wechatPayDetails3;
            cardDetails = cardDetails3;
            str = strDecodeStringElement2;
            str2 = str4;
            i = i6;
            j = jDecodeLongElement2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new PaymentMethod(i, str, cardDetails, cardPresentDetails, j, str2, z, map, paymentMethodType, cardPresentDetails2, wechatPayDetails, affirmDetails, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, PaymentMethod value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        PaymentMethod.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
