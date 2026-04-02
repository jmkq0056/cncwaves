package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Refund.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/Refund.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/Refund;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class Refund$$serializer implements GeneratedSerializer<Refund> {
    public static final Refund$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Refund$$serializer refund$$serializer = new Refund$$serializer();
        INSTANCE = refund$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.Refund", refund$$serializer, 17);
        pluginGeneratedSerialDescriptor.addElement(OfflineStorageConstantsKt.ID, false);
        pluginGeneratedSerialDescriptor.addElement(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, false);
        pluginGeneratedSerialDescriptor.addElement("charge", false);
        pluginGeneratedSerialDescriptor.addElement(FirebaseAnalytics.Param.CURRENCY, false);
        pluginGeneratedSerialDescriptor.addElement("description", false);
        pluginGeneratedSerialDescriptor.addElement("metadata", false);
        pluginGeneratedSerialDescriptor.addElement("paymentIntent", false);
        pluginGeneratedSerialDescriptor.addElement("reason", false);
        pluginGeneratedSerialDescriptor.addElement("created", false);
        pluginGeneratedSerialDescriptor.addElement(NotificationCompat.CATEGORY_STATUS, false);
        pluginGeneratedSerialDescriptor.addElement("balanceTransaction", false);
        pluginGeneratedSerialDescriptor.addElement("failureBalanceTransaction", false);
        pluginGeneratedSerialDescriptor.addElement("failureReason", false);
        pluginGeneratedSerialDescriptor.addElement("receiptNumber", false);
        pluginGeneratedSerialDescriptor.addElement("sourceTransferReversal", false);
        pluginGeneratedSerialDescriptor.addElement("transferReversal", false);
        pluginGeneratedSerialDescriptor.addElement("paymentMethodDetails", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Refund$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(LongSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(Refund.$childSerializers[5]), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(LongSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(PaymentMethodDetails$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Refund deserialize(Decoder decoder) {
        String str;
        int i;
        String str2;
        String str3;
        PaymentMethodDetails paymentMethodDetails;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        Long l;
        String str9;
        String str10;
        Long l2;
        String str11;
        Map map;
        String str12;
        String str13;
        PaymentMethodDetails paymentMethodDetails2;
        PaymentMethodDetails paymentMethodDetails3;
        Long l3;
        PaymentMethodDetails paymentMethodDetails4;
        Long l4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = Refund.$childSerializers;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            Long l5 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, LongSerializer.INSTANCE, null);
            String str14 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, null);
            String str15 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            String str16 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, null);
            Map map2 = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            str = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, null);
            String str17 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, null);
            Long l6 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, LongSerializer.INSTANCE, null);
            String str18 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, null);
            String str19 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, StringSerializer.INSTANCE, null);
            String str20 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, StringSerializer.INSTANCE, null);
            String str21 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 12, StringSerializer.INSTANCE, null);
            String str22 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 13, StringSerializer.INSTANCE, null);
            String str23 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 14, StringSerializer.INSTANCE, null);
            i = 131071;
            str4 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 15, StringSerializer.INSTANCE, null);
            paymentMethodDetails = (PaymentMethodDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 16, PaymentMethodDetails$$serializer.INSTANCE, null);
            str8 = str20;
            str5 = str23;
            str6 = str22;
            str2 = str21;
            map = map2;
            str3 = str19;
            str10 = str18;
            str9 = str17;
            l = l6;
            str12 = str16;
            str13 = str15;
            str7 = strDecodeStringElement;
            str11 = str14;
            l2 = l5;
        } else {
            int i2 = 5;
            boolean z = true;
            PaymentMethodDetails paymentMethodDetails5 = null;
            String str24 = null;
            str = null;
            String str25 = null;
            String str26 = null;
            String str27 = null;
            Long l7 = null;
            String str28 = null;
            String str29 = null;
            Map map3 = null;
            String str30 = null;
            String strDecodeStringElement2 = null;
            String str31 = null;
            String str32 = null;
            String str33 = null;
            String str34 = null;
            i = 0;
            Long l8 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        paymentMethodDetails2 = paymentMethodDetails5;
                        z = false;
                        paymentMethodDetails5 = paymentMethodDetails2;
                        i2 = 5;
                        break;
                    case 0:
                        paymentMethodDetails2 = paymentMethodDetails5;
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i |= 1;
                        paymentMethodDetails5 = paymentMethodDetails2;
                        i2 = 5;
                        break;
                    case 1:
                        l8 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, LongSerializer.INSTANCE, l8);
                        i |= 2;
                        paymentMethodDetails5 = paymentMethodDetails5;
                        str31 = str31;
                        i2 = 5;
                        break;
                    case 2:
                        paymentMethodDetails3 = paymentMethodDetails5;
                        l3 = l8;
                        str25 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, str25);
                        i |= 4;
                        paymentMethodDetails5 = paymentMethodDetails3;
                        l8 = l3;
                        i2 = 5;
                        break;
                    case 3:
                        paymentMethodDetails3 = paymentMethodDetails5;
                        l3 = l8;
                        str24 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str24);
                        i |= 8;
                        paymentMethodDetails5 = paymentMethodDetails3;
                        l8 = l3;
                        i2 = 5;
                        break;
                    case 4:
                        paymentMethodDetails3 = paymentMethodDetails5;
                        l3 = l8;
                        str29 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, str29);
                        i |= 16;
                        paymentMethodDetails5 = paymentMethodDetails3;
                        l8 = l3;
                        i2 = 5;
                        break;
                    case 5:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        map3 = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i2, kSerializerArr[i2], map3);
                        i |= 32;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 6:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        str = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, str);
                        i |= 64;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 7:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        str28 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, str28);
                        i |= 128;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 8:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        l7 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, LongSerializer.INSTANCE, l7);
                        i |= 256;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 9:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        str30 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, str30);
                        i |= 512;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 10:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        str27 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, StringSerializer.INSTANCE, str27);
                        i |= 1024;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 11:
                        paymentMethodDetails4 = paymentMethodDetails5;
                        l4 = l8;
                        str26 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, StringSerializer.INSTANCE, str26);
                        i |= 2048;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 12:
                        l4 = l8;
                        str31 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 12, StringSerializer.INSTANCE, str31);
                        i |= 4096;
                        paymentMethodDetails5 = paymentMethodDetails5;
                        str32 = str32;
                        l8 = l4;
                        break;
                    case 13:
                        l4 = l8;
                        str32 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 13, StringSerializer.INSTANCE, str32);
                        i |= 8192;
                        paymentMethodDetails5 = paymentMethodDetails5;
                        str33 = str33;
                        l8 = l4;
                        break;
                    case 14:
                        l4 = l8;
                        str33 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 14, StringSerializer.INSTANCE, str33);
                        i |= 16384;
                        paymentMethodDetails5 = paymentMethodDetails5;
                        str34 = str34;
                        l8 = l4;
                        break;
                    case 15:
                        l4 = l8;
                        paymentMethodDetails4 = paymentMethodDetails5;
                        str34 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 15, StringSerializer.INSTANCE, str34);
                        i |= 32768;
                        paymentMethodDetails5 = paymentMethodDetails4;
                        l8 = l4;
                        break;
                    case 16:
                        paymentMethodDetails5 = (PaymentMethodDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 16, PaymentMethodDetails$$serializer.INSTANCE, paymentMethodDetails5);
                        i |= 65536;
                        l8 = l8;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            str2 = str31;
            str3 = str27;
            paymentMethodDetails = paymentMethodDetails5;
            str4 = str34;
            str5 = str33;
            str6 = str32;
            str7 = strDecodeStringElement2;
            str8 = str26;
            l = l7;
            str9 = str28;
            str10 = str30;
            l2 = l8;
            str11 = str25;
            map = map3;
            str12 = str29;
            str13 = str24;
        }
        int i3 = i;
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Refund(i3, str7, l2, str11, str13, str12, map, str, str9, l, str10, str3, str8, str2, str6, str5, str4, paymentMethodDetails, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Refund value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Refund.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
