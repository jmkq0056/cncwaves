package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.json.ApiErrorSerializer;
import com.stripe.stripeterminal.external.json.SetupAttemptUnionSerializer;
import java.util.List;
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

/* JADX INFO: compiled from: SetupIntent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/SetupIntent.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class SetupIntent$$serializer implements GeneratedSerializer<SetupIntent> {
    public static final SetupIntent$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        SetupIntent$$serializer setupIntent$$serializer = new SetupIntent$$serializer();
        INSTANCE = setupIntent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.SetupIntent", setupIntent$$serializer, 20);
        pluginGeneratedSerialDescriptor.addElement(OfflineStorageConstantsKt.ID, false);
        pluginGeneratedSerialDescriptor.addElement("clientSecret", false);
        pluginGeneratedSerialDescriptor.addElement("customer", false);
        pluginGeneratedSerialDescriptor.addElement("description", false);
        pluginGeneratedSerialDescriptor.addElement("lastSetupError", false);
        pluginGeneratedSerialDescriptor.addElement("metadata", true);
        pluginGeneratedSerialDescriptor.addElement("nextAction", false);
        pluginGeneratedSerialDescriptor.addElement("paymentMethod", false);
        pluginGeneratedSerialDescriptor.addElement("paymentMethodTypes", true);
        pluginGeneratedSerialDescriptor.addElement(NotificationCompat.CATEGORY_STATUS, false);
        pluginGeneratedSerialDescriptor.addElement("usage", false);
        pluginGeneratedSerialDescriptor.addElement("application", false);
        pluginGeneratedSerialDescriptor.addElement("cancellationReason", false);
        pluginGeneratedSerialDescriptor.addElement("created", true);
        pluginGeneratedSerialDescriptor.addElement("latestAttempt", false);
        pluginGeneratedSerialDescriptor.addElement("livemode", true);
        pluginGeneratedSerialDescriptor.addElement("mandate", false);
        pluginGeneratedSerialDescriptor.addElement("onBehalfOf", false);
        pluginGeneratedSerialDescriptor.addElement("paymentMethodOptions", false);
        pluginGeneratedSerialDescriptor.addElement("singleUseMandate", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SetupIntent$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = SetupIntent.$childSerializers;
        return new KSerializer[]{BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(ApiErrorSerializer.INSTANCE), kSerializerArr[5], BuiltinSerializersKt.getNullable(SetupIntentNextAction$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), kSerializerArr[8], BuiltinSerializersKt.getNullable(kSerializerArr[9]), BuiltinSerializersKt.getNullable(kSerializerArr[10]), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(kSerializerArr[12]), LongSerializer.INSTANCE, BuiltinSerializersKt.getNullable(SetupAttemptUnionSerializer.INSTANCE), BooleanSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(PaymentMethodOptions$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public SetupIntent deserialize(Decoder decoder) {
        String str;
        String str2;
        String str3;
        SetupIntentCancellationReason setupIntentCancellationReason;
        String str4;
        ApiError apiError;
        Map map;
        String str5;
        String str6;
        PaymentMethodOptions paymentMethodOptions;
        String str7;
        SetupAttemptUnion setupAttemptUnion;
        boolean z;
        long jDecodeLongElement;
        SetupIntentStatus setupIntentStatus;
        List list;
        SetupIntentUsage setupIntentUsage;
        String str8;
        String str9;
        SetupIntentNextAction setupIntentNextAction;
        int i;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = SetupIntent.$childSerializers;
        String str16 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String str17 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, null);
            String str18 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, null);
            String str19 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, null);
            String str20 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, null);
            ApiError apiError2 = (ApiError) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, ApiErrorSerializer.INSTANCE, null);
            Map map2 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            SetupIntentNextAction setupIntentNextAction2 = (SetupIntentNextAction) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, SetupIntentNextAction$$serializer.INSTANCE, null);
            String str21 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, null);
            List list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 8, kSerializerArr[8], null);
            SetupIntentStatus setupIntentStatus2 = (SetupIntentStatus) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, kSerializerArr[9], null);
            SetupIntentUsage setupIntentUsage2 = (SetupIntentUsage) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, kSerializerArr[10], null);
            String str22 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, StringSerializer.INSTANCE, null);
            SetupIntentCancellationReason setupIntentCancellationReason2 = (SetupIntentCancellationReason) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 12, kSerializerArr[12], null);
            jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 13);
            SetupAttemptUnion setupAttemptUnion2 = (SetupAttemptUnion) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 14, SetupAttemptUnionSerializer.INSTANCE, null);
            boolean zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 15);
            String str23 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 16, StringSerializer.INSTANCE, null);
            String str24 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 17, StringSerializer.INSTANCE, null);
            list = list2;
            str8 = str17;
            str5 = str22;
            setupAttemptUnion = setupAttemptUnion2;
            setupIntentCancellationReason = setupIntentCancellationReason2;
            z = zDecodeBooleanElement;
            str4 = str21;
            str9 = str20;
            str2 = str18;
            paymentMethodOptions = (PaymentMethodOptions) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 18, PaymentMethodOptions$$serializer.INSTANCE, null);
            str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 19, StringSerializer.INSTANCE, null);
            str = str19;
            str7 = str24;
            str3 = str23;
            setupIntentUsage = setupIntentUsage2;
            setupIntentStatus = setupIntentStatus2;
            setupIntentNextAction = setupIntentNextAction2;
            apiError = apiError2;
            map = map2;
            i = 1048575;
        } else {
            int i2 = 0;
            boolean zDecodeBooleanElement2 = false;
            int i3 = 10;
            int i4 = 5;
            int i5 = 8;
            boolean z2 = true;
            String str25 = null;
            String str26 = null;
            String str27 = null;
            SetupIntentNextAction setupIntentNextAction3 = null;
            SetupIntentStatus setupIntentStatus3 = null;
            String str28 = null;
            List list3 = null;
            String str29 = null;
            ApiError apiError3 = null;
            Map map3 = null;
            SetupIntentCancellationReason setupIntentCancellationReason3 = null;
            SetupAttemptUnion setupAttemptUnion3 = null;
            String str30 = null;
            String str31 = null;
            PaymentMethodOptions paymentMethodOptions2 = null;
            String str32 = null;
            int i6 = 9;
            long jDecodeLongElement2 = 0;
            SetupIntentUsage setupIntentUsage3 = null;
            while (z2) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z2 = false;
                        str16 = str16;
                        str25 = str25;
                        i4 = 5;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        i2 = i2;
                        break;
                    case 0:
                        str32 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, str32);
                        i2 |= 1;
                        str16 = str16;
                        str25 = str25;
                        i4 = 5;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 1:
                        str25 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, str25);
                        i2 |= 2;
                        str16 = str16;
                        i4 = 5;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 2:
                        str10 = str25;
                        str11 = str16;
                        str28 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, str28);
                        i2 |= 4;
                        str16 = str11;
                        str25 = str10;
                        i4 = 5;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 3:
                        str10 = str25;
                        str11 = str16;
                        str26 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str26);
                        i2 |= 8;
                        str16 = str11;
                        str25 = str10;
                        i4 = 5;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 4:
                        str10 = str25;
                        str11 = str16;
                        apiError3 = (ApiError) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, ApiErrorSerializer.INSTANCE, apiError3);
                        i2 |= 16;
                        str16 = str11;
                        str25 = str10;
                        i4 = 5;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 5:
                        str12 = str25;
                        str13 = str16;
                        map3 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, i4, kSerializerArr[i4], map3);
                        i2 |= 32;
                        str16 = str13;
                        str25 = str12;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 6:
                        str12 = str25;
                        str13 = str16;
                        setupIntentNextAction3 = (SetupIntentNextAction) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, SetupIntentNextAction$$serializer.INSTANCE, setupIntentNextAction3);
                        i2 |= 64;
                        str16 = str13;
                        str25 = str12;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 7:
                        str12 = str25;
                        str13 = str16;
                        str29 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, str29);
                        i2 |= 128;
                        str16 = str13;
                        str25 = str12;
                        i5 = 8;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 8:
                        list3 = (List) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, i5, kSerializerArr[i5], list3);
                        i2 |= 256;
                        str16 = str16;
                        str25 = str25;
                        i6 = 9;
                        i3 = 10;
                        break;
                    case 9:
                        setupIntentStatus3 = (SetupIntentStatus) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i6, kSerializerArr[i6], setupIntentStatus3);
                        i2 |= 512;
                        str16 = str16;
                        str25 = str25;
                        i3 = 10;
                        break;
                    case 10:
                        str14 = str25;
                        str15 = str16;
                        setupIntentUsage3 = (SetupIntentUsage) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i3, kSerializerArr[i3], setupIntentUsage3);
                        i2 |= 1024;
                        str16 = str15;
                        str25 = str14;
                        break;
                    case 11:
                        str14 = str25;
                        str15 = str16;
                        str27 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 11, StringSerializer.INSTANCE, str27);
                        i2 |= 2048;
                        str16 = str15;
                        str25 = str14;
                        break;
                    case 12:
                        str14 = str25;
                        setupIntentCancellationReason3 = (SetupIntentCancellationReason) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 12, kSerializerArr[12], setupIntentCancellationReason3);
                        i2 |= 4096;
                        str16 = str16;
                        setupAttemptUnion3 = setupAttemptUnion3;
                        str25 = str14;
                        break;
                    case 13:
                        str14 = str25;
                        str15 = str16;
                        jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 13);
                        i2 |= 8192;
                        str16 = str15;
                        str25 = str14;
                        break;
                    case 14:
                        str14 = str25;
                        setupAttemptUnion3 = (SetupAttemptUnion) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 14, SetupAttemptUnionSerializer.INSTANCE, setupAttemptUnion3);
                        i2 |= 16384;
                        str16 = str16;
                        str30 = str30;
                        str25 = str14;
                        break;
                    case 15:
                        str14 = str25;
                        str15 = str16;
                        zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 15);
                        i2 |= 32768;
                        str16 = str15;
                        str25 = str14;
                        break;
                    case 16:
                        str14 = str25;
                        str30 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 16, StringSerializer.INSTANCE, str30);
                        i2 |= 65536;
                        str16 = str16;
                        str31 = str31;
                        str25 = str14;
                        break;
                    case 17:
                        str14 = str25;
                        str31 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 17, StringSerializer.INSTANCE, str31);
                        i2 |= 131072;
                        str16 = str16;
                        paymentMethodOptions2 = paymentMethodOptions2;
                        str25 = str14;
                        break;
                    case 18:
                        str14 = str25;
                        str15 = str16;
                        paymentMethodOptions2 = (PaymentMethodOptions) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 18, PaymentMethodOptions$$serializer.INSTANCE, paymentMethodOptions2);
                        i2 |= 262144;
                        str16 = str15;
                        str25 = str14;
                        break;
                    case 19:
                        str16 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 19, StringSerializer.INSTANCE, str16);
                        i2 |= 524288;
                        str25 = str25;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str33 = str16;
            str = str28;
            str2 = str25;
            str3 = str30;
            setupIntentCancellationReason = setupIntentCancellationReason3;
            Map map4 = map3;
            str4 = str29;
            apiError = apiError3;
            map = map4;
            str5 = str27;
            str6 = str33;
            paymentMethodOptions = paymentMethodOptions2;
            str7 = str31;
            setupAttemptUnion = setupAttemptUnion3;
            z = zDecodeBooleanElement2;
            jDecodeLongElement = jDecodeLongElement2;
            setupIntentStatus = setupIntentStatus3;
            list = list3;
            setupIntentUsage = setupIntentUsage3;
            str8 = str32;
            str9 = str26;
            setupIntentNextAction = setupIntentNextAction3;
            i = i2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new SetupIntent(i, str8, str2, str, str9, apiError, map, setupIntentNextAction, str4, list, setupIntentStatus, setupIntentUsage, str5, setupIntentCancellationReason, jDecodeLongElement, setupAttemptUnion, z, str3, str7, paymentMethodOptions, str6, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SetupIntent value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        SetupIntent.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
