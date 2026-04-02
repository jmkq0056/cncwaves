package com.stripe.stripeterminal.external.models;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/OfflineCardPresentDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class OfflineCardPresentDetails$$serializer implements GeneratedSerializer<OfflineCardPresentDetails> {
    public static final OfflineCardPresentDetails$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        OfflineCardPresentDetails$$serializer offlineCardPresentDetails$$serializer = new OfflineCardPresentDetails$$serializer();
        INSTANCE = offlineCardPresentDetails$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.OfflineCardPresentDetails", offlineCardPresentDetails$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("brand", true);
        pluginGeneratedSerialDescriptor.addElement("expMonth", true);
        pluginGeneratedSerialDescriptor.addElement("expYear", true);
        pluginGeneratedSerialDescriptor.addElement("last4", true);
        pluginGeneratedSerialDescriptor.addElement("readMethod", true);
        pluginGeneratedSerialDescriptor.addElement("cardholderName", true);
        pluginGeneratedSerialDescriptor.addElement("receipt", true);
        pluginGeneratedSerialDescriptor.addElement("preferredLocales", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private OfflineCardPresentDetails$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), IntSerializer.INSTANCE, IntSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(ReceiptDetails$$serializer.INSTANCE), OfflineCardPresentDetails.$childSerializers[7]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public OfflineCardPresentDetails deserialize(Decoder decoder) {
        String str;
        String str2;
        String str3;
        int i;
        String str4;
        List list;
        ReceiptDetails receiptDetails;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = OfflineCardPresentDetails.$childSerializers;
        int i4 = 6;
        int i5 = 5;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String str5 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, null);
            int iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 1);
            int iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 2);
            String str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            String str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, null);
            String str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, null);
            ReceiptDetails receiptDetails2 = (ReceiptDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, ReceiptDetails$$serializer.INSTANCE, null);
            i2 = 255;
            list = (List) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], null);
            receiptDetails = receiptDetails2;
            str = str8;
            str4 = str6;
            str3 = str7;
            i3 = iDecodeIntElement2;
            i = iDecodeIntElement;
            str2 = str5;
        } else {
            boolean z = true;
            int iDecodeIntElement3 = 0;
            int iDecodeIntElement4 = 0;
            List list2 = null;
            ReceiptDetails receiptDetails3 = null;
            String str9 = null;
            String str10 = null;
            String str11 = null;
            int i6 = 0;
            String str12 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i5 = 5;
                        break;
                    case 0:
                        str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, str10);
                        i6 |= 1;
                        i4 = 6;
                        i5 = 5;
                        break;
                    case 1:
                        i6 |= 2;
                        iDecodeIntElement4 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 1);
                        i4 = 6;
                        break;
                    case 2:
                        iDecodeIntElement3 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 2);
                        i6 |= 4;
                        i4 = 6;
                        break;
                    case 3:
                        str11 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str11);
                        i6 |= 8;
                        i4 = 6;
                        break;
                    case 4:
                        str12 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, str12);
                        i6 |= 16;
                        i4 = 6;
                        break;
                    case 5:
                        str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i5, StringSerializer.INSTANCE, str9);
                        i6 |= 32;
                        break;
                    case 6:
                        receiptDetails3 = (ReceiptDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i4, ReceiptDetails$$serializer.INSTANCE, receiptDetails3);
                        i6 |= 64;
                        break;
                    case 7:
                        list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], list2);
                        i6 |= 128;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str13 = str11;
            str = str9;
            str2 = str10;
            str3 = str12;
            i = iDecodeIntElement4;
            str4 = str13;
            list = list2;
            receiptDetails = receiptDetails3;
            i2 = i6;
            i3 = iDecodeIntElement3;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new OfflineCardPresentDetails(i2, str2, i, i3, str4, str3, str, receiptDetails, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, OfflineCardPresentDetails value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        OfflineCardPresentDetails.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
