package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SetupAttempt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/SetupAttempt.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupAttempt;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class SetupAttempt$$serializer implements GeneratedSerializer<SetupAttempt> {
    public static final SetupAttempt$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        SetupAttempt$$serializer setupAttempt$$serializer = new SetupAttempt$$serializer();
        INSTANCE = setupAttempt$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.SetupAttempt", setupAttempt$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement(OfflineStorageConstantsKt.ID, false);
        pluginGeneratedSerialDescriptor.addElement("application", false);
        pluginGeneratedSerialDescriptor.addElement("created", false);
        pluginGeneratedSerialDescriptor.addElement("customer", false);
        pluginGeneratedSerialDescriptor.addElement("livemode", false);
        pluginGeneratedSerialDescriptor.addElement("onBehalfOf", false);
        pluginGeneratedSerialDescriptor.addElement("paymentMethod", false);
        pluginGeneratedSerialDescriptor.addElement("paymentMethodDetails", false);
        pluginGeneratedSerialDescriptor.addElement("setupError", false);
        pluginGeneratedSerialDescriptor.addElement("setupIntent", false);
        pluginGeneratedSerialDescriptor.addElement(NotificationCompat.CATEGORY_STATUS, false);
        pluginGeneratedSerialDescriptor.addElement("usage", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SetupAttempt$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = SetupAttempt.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), LongSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BooleanSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), SetupIntentPaymentMethodDetails$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(SetupError$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), kSerializerArr[10], BuiltinSerializersKt.getNullable(kSerializerArr[11])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public SetupAttempt deserialize(Decoder decoder) {
        boolean zDecodeBooleanElement;
        SetupError setupError;
        String str;
        SetupAttemptStatus setupAttemptStatus;
        String str2;
        SetupIntentUsage setupIntentUsage;
        String str3;
        String str4;
        int i;
        String str5;
        SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails;
        long j;
        String str6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = SetupAttempt.$childSerializers;
        int i2 = 10;
        int i3 = 0;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            String str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, null);
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 2);
            String str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            boolean zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 4);
            String str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, null);
            String str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, null);
            SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails2 = (SetupIntentPaymentMethodDetails) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 7, SetupIntentPaymentMethodDetails$$serializer.INSTANCE, null);
            SetupError setupError2 = (SetupError) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, SetupError$$serializer.INSTANCE, null);
            String str11 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, null);
            SetupAttemptStatus setupAttemptStatus2 = (SetupAttemptStatus) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 10, kSerializerArr[10], null);
            setupIntentUsage = (SetupIntentUsage) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, kSerializerArr[11], null);
            str2 = str11;
            str3 = str9;
            setupAttemptStatus = setupAttemptStatus2;
            str = strDecodeStringElement;
            str4 = str8;
            str6 = str7;
            str5 = str10;
            i = 4095;
            zDecodeBooleanElement = zDecodeBooleanElement2;
            setupIntentPaymentMethodDetails = setupIntentPaymentMethodDetails2;
            setupError = setupError2;
            j = jDecodeLongElement;
        } else {
            int i4 = 11;
            SetupAttemptStatus setupAttemptStatus3 = null;
            String str12 = null;
            SetupError setupError3 = null;
            String str13 = null;
            SetupIntentUsage setupIntentUsage2 = null;
            SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails3 = null;
            String str14 = null;
            String str15 = null;
            boolean z = true;
            long jDecodeLongElement2 = 0;
            String str16 = null;
            String strDecodeStringElement2 = null;
            zDecodeBooleanElement = false;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i4 = 11;
                        i2 = 10;
                        break;
                    case 0:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i3 |= 1;
                        i4 = 11;
                        i2 = 10;
                        break;
                    case 1:
                        str15 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, str15);
                        i3 |= 2;
                        i4 = 11;
                        i2 = 10;
                        break;
                    case 2:
                        jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 2);
                        i3 |= 4;
                        i4 = 11;
                        i2 = 10;
                        break;
                    case 3:
                        str16 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str16);
                        i3 |= 8;
                        i4 = 11;
                        i2 = 10;
                        break;
                    case 4:
                        zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 4);
                        i3 |= 16;
                        i4 = 11;
                        break;
                    case 5:
                        str14 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, str14);
                        i3 |= 32;
                        i4 = 11;
                        break;
                    case 6:
                        str13 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, str13);
                        i3 |= 64;
                        i4 = 11;
                        break;
                    case 7:
                        setupIntentPaymentMethodDetails3 = (SetupIntentPaymentMethodDetails) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 7, SetupIntentPaymentMethodDetails$$serializer.INSTANCE, setupIntentPaymentMethodDetails3);
                        i3 |= 128;
                        i4 = 11;
                        break;
                    case 8:
                        setupError3 = (SetupError) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, SetupError$$serializer.INSTANCE, setupError3);
                        i3 |= 256;
                        i4 = 11;
                        break;
                    case 9:
                        str12 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, str12);
                        i3 |= 512;
                        i4 = 11;
                        break;
                    case 10:
                        setupAttemptStatus3 = (SetupAttemptStatus) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, i2, kSerializerArr[i2], setupAttemptStatus3);
                        i3 |= 1024;
                        break;
                    case 11:
                        setupIntentUsage2 = (SetupIntentUsage) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i4, kSerializerArr[i4], setupIntentUsage2);
                        i3 |= 2048;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str17 = str15;
            String str18 = strDecodeStringElement2;
            setupError = setupError3;
            str = str18;
            setupAttemptStatus = setupAttemptStatus3;
            str2 = str12;
            setupIntentUsage = setupIntentUsage2;
            str3 = str14;
            str4 = str16;
            i = i3;
            str5 = str13;
            setupIntentPaymentMethodDetails = setupIntentPaymentMethodDetails3;
            j = jDecodeLongElement2;
            str6 = str17;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new SetupAttempt(i, str, str6, j, str4, zDecodeBooleanElement, str3, str5, setupIntentPaymentMethodDetails, setupError, str2, setupAttemptStatus, setupIntentUsage, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SetupAttempt value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        SetupAttempt.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
