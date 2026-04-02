package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: CardPresentDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/CardPresentDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class CardPresentDetails$$serializer implements GeneratedSerializer<CardPresentDetails> {
    public static final CardPresentDetails$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        CardPresentDetails$$serializer cardPresentDetails$$serializer = new CardPresentDetails$$serializer();
        INSTANCE = cardPresentDetails$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.CardPresentDetails", cardPresentDetails$$serializer, 22);
        pluginGeneratedSerialDescriptor.addElement("brand", true);
        pluginGeneratedSerialDescriptor.addElement("country", true);
        pluginGeneratedSerialDescriptor.addElement("emvAuthData", true);
        pluginGeneratedSerialDescriptor.addElement("expMonth", true);
        pluginGeneratedSerialDescriptor.addElement("expYear", true);
        pluginGeneratedSerialDescriptor.addElement("funding", true);
        pluginGeneratedSerialDescriptor.addElement("generatedCard", true);
        pluginGeneratedSerialDescriptor.addElement("last4", true);
        pluginGeneratedSerialDescriptor.addElement("readMethod", true);
        pluginGeneratedSerialDescriptor.addElement("cardholderName", true);
        pluginGeneratedSerialDescriptor.addElement("receipt", true);
        pluginGeneratedSerialDescriptor.addElement("networks", true);
        pluginGeneratedSerialDescriptor.addElement("incrementalAuthorizationSupported", true);
        pluginGeneratedSerialDescriptor.addElement("network", true);
        pluginGeneratedSerialDescriptor.addElement("iin", true);
        pluginGeneratedSerialDescriptor.addElement("issuer", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("wallet", true);
        pluginGeneratedSerialDescriptor.addElement("preferredLocales", true);
        pluginGeneratedSerialDescriptor.addElement("dynamicCurrencyConversion", true);
        pluginGeneratedSerialDescriptor.addElement(FirebaseAnalytics.Param.LOCATION, true);
        pluginGeneratedSerialDescriptor.addElement(OfflineStorageConstantsKt.READER, true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private CardPresentDetails$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), IntSerializer.INSTANCE, IntSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(ReceiptDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(CardNetworks$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(Wallet$$serializer.INSTANCE), CardPresentDetails.$childSerializers[18], BuiltinSerializersKt.getNullable(DynamicCurrencyConversion$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public CardPresentDetails deserialize(Decoder decoder) {
        int i;
        String str;
        String str2;
        String str3;
        Boolean bool;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        int i2;
        int i3;
        String str12;
        DynamicCurrencyConversion dynamicCurrencyConversion;
        CardNetworks cardNetworks;
        String str13;
        List list;
        Wallet wallet;
        String str14;
        ReceiptDetails receiptDetails;
        String str15;
        ReceiptDetails receiptDetails2;
        int i4;
        int i5;
        String str16;
        String str17;
        String str18;
        String str19;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = CardPresentDetails.$childSerializers;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String str20 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, null);
            String str21 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, null);
            String str22 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, null);
            int iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 3);
            int iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 4);
            String str23 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, null);
            String str24 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, null);
            String str25 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, null);
            String str26 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, null);
            String str27 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, null);
            ReceiptDetails receiptDetails3 = (ReceiptDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, ReceiptDetails$$serializer.INSTANCE, null);
            CardNetworks cardNetworks2 = (CardNetworks) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, CardNetworks$$serializer.INSTANCE, null);
            Boolean bool2 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 12, BooleanSerializer.INSTANCE, null);
            String str28 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 13, StringSerializer.INSTANCE, null);
            String str29 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 14, StringSerializer.INSTANCE, null);
            String str30 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 15, StringSerializer.INSTANCE, null);
            String str31 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 16, StringSerializer.INSTANCE, null);
            Wallet wallet2 = (Wallet) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 17, Wallet$$serializer.INSTANCE, null);
            List list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 18, kSerializerArr[18], null);
            DynamicCurrencyConversion dynamicCurrencyConversion2 = (DynamicCurrencyConversion) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 19, DynamicCurrencyConversion$$serializer.INSTANCE, null);
            i = 4194303;
            str13 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 20, StringSerializer.INSTANCE, null);
            str12 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 21, StringSerializer.INSTANCE, null);
            str8 = str26;
            receiptDetails = receiptDetails3;
            str9 = str27;
            str7 = str25;
            dynamicCurrencyConversion = dynamicCurrencyConversion2;
            wallet = wallet2;
            str14 = str31;
            str10 = str30;
            str11 = str29;
            str3 = str28;
            list = list2;
            bool = bool2;
            cardNetworks = cardNetworks2;
            str2 = str20;
            str5 = str23;
            i2 = iDecodeIntElement;
            i3 = iDecodeIntElement2;
            str4 = str22;
            str = str21;
            str6 = str24;
        } else {
            boolean z = true;
            int iDecodeIntElement3 = 0;
            int iDecodeIntElement4 = 0;
            String str32 = null;
            String str33 = null;
            String str34 = null;
            DynamicCurrencyConversion dynamicCurrencyConversion3 = null;
            CardNetworks cardNetworks3 = null;
            String str35 = null;
            List list3 = null;
            Wallet wallet3 = null;
            String str36 = null;
            Boolean bool3 = null;
            ReceiptDetails receiptDetails4 = null;
            String str37 = null;
            String str38 = null;
            String str39 = null;
            String str40 = null;
            String str41 = null;
            String str42 = null;
            String str43 = null;
            String str44 = null;
            i = 0;
            String str45 = null;
            while (z) {
                String str46 = str37;
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        str37 = str46;
                        str32 = str32;
                        str34 = str34;
                        break;
                    case 0:
                        str16 = str32;
                        str17 = str33;
                        str18 = str46;
                        i |= 1;
                        str34 = str34;
                        str38 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, str38);
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 1:
                        str16 = str32;
                        str17 = str33;
                        str18 = str46;
                        str39 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, str39);
                        i |= 2;
                        str34 = str34;
                        str40 = str40;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 2:
                        str16 = str32;
                        str17 = str33;
                        str18 = str46;
                        str40 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, str40);
                        i |= 4;
                        str34 = str34;
                        str41 = str41;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 3:
                        str16 = str32;
                        str17 = str33;
                        str19 = str34;
                        str18 = str46;
                        iDecodeIntElement3 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 3);
                        i |= 8;
                        str34 = str19;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 4:
                        str16 = str32;
                        str17 = str33;
                        str19 = str34;
                        str18 = str46;
                        iDecodeIntElement4 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 4);
                        i |= 16;
                        str34 = str19;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 5:
                        str16 = str32;
                        str17 = str33;
                        str18 = str46;
                        str41 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, str41);
                        i |= 32;
                        str34 = str34;
                        str42 = str42;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 6:
                        str16 = str32;
                        str17 = str33;
                        str18 = str46;
                        str42 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, str42);
                        i |= 64;
                        str34 = str34;
                        str43 = str43;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 7:
                        str16 = str32;
                        str17 = str33;
                        str18 = str46;
                        str43 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, str43);
                        i |= 128;
                        str34 = str34;
                        str44 = str44;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 8:
                        str16 = str32;
                        str17 = str33;
                        str19 = str34;
                        str18 = str46;
                        str44 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, str44);
                        i |= 256;
                        str34 = str19;
                        str37 = str18;
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 9:
                        str16 = str32;
                        str17 = str33;
                        i |= 512;
                        str34 = str34;
                        str37 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, str46);
                        str33 = str17;
                        str32 = str16;
                        break;
                    case 10:
                        receiptDetails4 = (ReceiptDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, ReceiptDetails$$serializer.INSTANCE, receiptDetails4);
                        i |= 1024;
                        str34 = str34;
                        str32 = str32;
                        str37 = str46;
                        break;
                    case 11:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        cardNetworks3 = (CardNetworks) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, CardNetworks$$serializer.INSTANCE, cardNetworks3);
                        i |= 2048;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 12:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        bool3 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 12, BooleanSerializer.INSTANCE, bool3);
                        i |= 4096;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 13:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        str36 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 13, StringSerializer.INSTANCE, str36);
                        i |= 8192;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 14:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        str32 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 14, StringSerializer.INSTANCE, str32);
                        i |= 16384;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 15:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        str33 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 15, StringSerializer.INSTANCE, str33);
                        i4 = 32768;
                        i |= i4;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 16:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        str45 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 16, StringSerializer.INSTANCE, str45);
                        i4 = 65536;
                        i |= i4;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 17:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        wallet3 = (Wallet) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 17, Wallet$$serializer.INSTANCE, wallet3);
                        i4 = 131072;
                        i |= i4;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 18:
                        str15 = str34;
                        receiptDetails2 = receiptDetails4;
                        list3 = (List) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 18, kSerializerArr[18], list3);
                        i4 = 262144;
                        i |= i4;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 19:
                        receiptDetails2 = receiptDetails4;
                        str15 = str34;
                        dynamicCurrencyConversion3 = (DynamicCurrencyConversion) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 19, DynamicCurrencyConversion$$serializer.INSTANCE, dynamicCurrencyConversion3);
                        i |= 524288;
                        str34 = str15;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 20:
                        receiptDetails2 = receiptDetails4;
                        str35 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 20, StringSerializer.INSTANCE, str35);
                        i5 = 1048576;
                        i |= i5;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    case 21:
                        receiptDetails2 = receiptDetails4;
                        str34 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 21, StringSerializer.INSTANCE, str34);
                        i5 = 2097152;
                        i |= i5;
                        str37 = str46;
                        receiptDetails4 = receiptDetails2;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            str = str39;
            str2 = str38;
            str3 = str36;
            bool = bool3;
            str4 = str40;
            str5 = str41;
            str6 = str42;
            str7 = str43;
            str8 = str44;
            str9 = str37;
            str10 = str33;
            str11 = str32;
            i2 = iDecodeIntElement3;
            i3 = iDecodeIntElement4;
            str12 = str34;
            dynamicCurrencyConversion = dynamicCurrencyConversion3;
            cardNetworks = cardNetworks3;
            str13 = str35;
            list = list3;
            wallet = wallet3;
            str14 = str45;
            receiptDetails = receiptDetails4;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new CardPresentDetails(i, str2, str, str4, i2, i3, str5, str6, str7, str8, str9, receiptDetails, cardNetworks, bool, str3, str11, str10, str14, wallet, list, dynamicCurrencyConversion, str13, str12, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CardPresentDetails value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        CardPresentDetails.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
