package com.stripe.stripeterminal.external.serialization;

import com.stripe.stripeterminal.external.api.ApiErrorType;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntent$$serializer;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntent$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: InnerError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/serialization/InnerError.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/serialization/InnerError;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class InnerError$$serializer implements GeneratedSerializer<InnerError> {
    public static final InnerError$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        InnerError$$serializer innerError$$serializer = new InnerError$$serializer();
        INSTANCE = innerError$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.serialization.InnerError", innerError$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("charge", false);
        pluginGeneratedSerialDescriptor.addElement("code", false);
        pluginGeneratedSerialDescriptor.addElement("declineCode", false);
        pluginGeneratedSerialDescriptor.addElement("docUrl", false);
        pluginGeneratedSerialDescriptor.addElement("message", false);
        pluginGeneratedSerialDescriptor.addElement("param", false);
        pluginGeneratedSerialDescriptor.addElement("paymentIntent", false);
        pluginGeneratedSerialDescriptor.addElement("setupIntent", false);
        pluginGeneratedSerialDescriptor.addElement("type", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private InnerError$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(PaymentIntent$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(SetupIntent$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(InnerError.$childSerializers[8])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public InnerError deserialize(Decoder decoder) {
        String str;
        String str2;
        ApiErrorType apiErrorType;
        String str3;
        SetupIntent setupIntent;
        String str4;
        String str5;
        String str6;
        PaymentIntent paymentIntent;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = InnerError.$childSerializers;
        int i2 = 7;
        String str7 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, null);
            String str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, null);
            String str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, null);
            String str11 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            String str12 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, null);
            String str13 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, null);
            PaymentIntent paymentIntent2 = (PaymentIntent) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, PaymentIntent$$serializer.INSTANCE, null);
            SetupIntent setupIntent2 = (SetupIntent) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, SetupIntent$$serializer.INSTANCE, null);
            str2 = str11;
            i = 511;
            str3 = str10;
            str6 = str9;
            apiErrorType = (ApiErrorType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, kSerializerArr[8], null);
            setupIntent = setupIntent2;
            paymentIntent = paymentIntent2;
            str5 = str13;
            str = str12;
            str4 = str8;
        } else {
            boolean z = true;
            int i3 = 0;
            ApiErrorType apiErrorType2 = null;
            PaymentIntent paymentIntent3 = null;
            SetupIntent setupIntent3 = null;
            String str14 = null;
            String str15 = null;
            String str16 = null;
            String str17 = null;
            String str18 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 7;
                        break;
                    case 0:
                        str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, str7);
                        i3 |= 1;
                        i2 = 7;
                        break;
                    case 1:
                        str17 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, str17);
                        i3 |= 2;
                        i2 = 7;
                        break;
                    case 2:
                        str18 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, str18);
                        i3 |= 4;
                        i2 = 7;
                        break;
                    case 3:
                        str16 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str16);
                        i3 |= 8;
                        i2 = 7;
                        break;
                    case 4:
                        str15 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, str15);
                        i3 |= 16;
                        i2 = 7;
                        break;
                    case 5:
                        str14 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, str14);
                        i3 |= 32;
                        i2 = 7;
                        break;
                    case 6:
                        paymentIntent3 = (PaymentIntent) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, PaymentIntent$$serializer.INSTANCE, paymentIntent3);
                        i3 |= 64;
                        i2 = 7;
                        break;
                    case 7:
                        setupIntent3 = (SetupIntent) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i2, SetupIntent$$serializer.INSTANCE, setupIntent3);
                        i3 |= 128;
                        break;
                    case 8:
                        apiErrorType2 = (ApiErrorType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, kSerializerArr[8], apiErrorType2);
                        i3 |= 256;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str19 = str16;
            str = str15;
            str2 = str19;
            apiErrorType = apiErrorType2;
            str3 = str18;
            setupIntent = setupIntent3;
            str4 = str7;
            str5 = str14;
            str6 = str17;
            paymentIntent = paymentIntent3;
            i = i3;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new InnerError(i, str4, str6, str3, str2, str, str5, paymentIntent, setupIntent, apiErrorType, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, InnerError value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        InnerError.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
