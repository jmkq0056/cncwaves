package com.stripe.stripeterminal.external.json;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.ExpandableLocation;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: ReaderSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/json/ReaderSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Reader;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderSerializer implements KSerializer<Reader> {
    public static final ReaderSerializer INSTANCE = new ReaderSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("Reader", new SerialDescriptor[0], new Function1<ClassSerialDescriptorBuilder, Unit>() { // from class: com.stripe.stripeterminal.external.json.ReaderSerializer$descriptor$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
            invoke2(classSerialDescriptorBuilder);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
            Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
            buildClassSerialDescriptor.element("deviceType", DeviceType.INSTANCE.serializer().getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element(FirebaseAnalytics.Param.LOCATION, BuiltinSerializersKt.getNullable(ExpandableLocation.INSTANCE.serializer()).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element(OfflineStorageConstantsKt.ID, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element(NotificationCompat.CATEGORY_STATUS, BuiltinSerializersKt.getNullable(Reader.NetworkStatus.INSTANCE.serializer()).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("serialNumber", BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("label", BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("deviceSwVersion", BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("baseUrl", BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("ipAddress", BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("livemode", BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE).getDescriptor(), CollectionsKt.emptyList(), false);
        }
    });

    private ReaderSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Reader value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        ReaderSerializer readerSerializer = INSTANCE;
        compositeEncoderBeginStructure.encodeSerializableElement(readerSerializer.getDescriptor(), 0, DeviceType.INSTANCE.serializer(), value.getDeviceType());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 1, ExpandableLocation.INSTANCE.serializer(), value.getLocationRaw());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 2, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), value.getId());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 3, Reader.NetworkStatus.INSTANCE.serializer(), value.getNetworkStatus());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 4, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), value.getRawSerialNumber());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 5, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), value.getLabel());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 6, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), value.getDeviceSwVersion());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 7, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), value.getBaseUrl());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 8, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), value.getIpAddress());
        compositeEncoderBeginStructure.encodeNullableSerializableElement(readerSerializer.getDescriptor(), 9, BuiltinSerializersKt.serializer(BooleanCompanionObject.INSTANCE), value.getLivemode());
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Reader deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        DeviceType deviceType = DeviceType.UNKNOWN;
        ExpandableLocation expandableLocation = null;
        String str = null;
        Reader.NetworkStatus networkStatus = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        Boolean bool = null;
        while (true) {
            ReaderSerializer readerSerializer = INSTANCE;
            int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(readerSerializer.getDescriptor());
            switch (iDecodeElementIndex) {
                case -1:
                    Reader reader = new Reader(deviceType, expandableLocation, null, str, false, networkStatus, str2, str3, str4, str5, str6, bool, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -4076, 15, null);
                    compositeDecoderBeginStructure.endStructure(descriptor2);
                    return reader;
                case 0:
                    deviceType = (DeviceType) CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 0, DeviceType.INSTANCE.serializer(), null, 8, null);
                    break;
                case 1:
                    expandableLocation = (ExpandableLocation) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 1, ExpandableLocation.INSTANCE.serializer(), null, 8, null);
                    break;
                case 2:
                    str = (String) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 2, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), null, 8, null);
                    break;
                case 3:
                    networkStatus = (Reader.NetworkStatus) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 3, Reader.NetworkStatus.INSTANCE.serializer(), null, 8, null);
                    break;
                case 4:
                    str2 = (String) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 4, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), null, 8, null);
                    break;
                case 5:
                    str3 = (String) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 5, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), null, 8, null);
                    break;
                case 6:
                    str4 = (String) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 6, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), null, 8, null);
                    break;
                case 7:
                    str5 = (String) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 7, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), null, 8, null);
                    break;
                case 8:
                    str6 = (String) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 8, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE), null, 8, null);
                    break;
                case 9:
                    bool = (Boolean) CompositeDecoder.DefaultImpls.decodeNullableSerializableElement$default(compositeDecoderBeginStructure, readerSerializer.getDescriptor(), 9, BuiltinSerializersKt.serializer(BooleanCompanionObject.INSTANCE), null, 8, null);
                    break;
                default:
                    throw new IllegalStateException(("Unexpected index: " + iDecodeElementIndex).toString());
            }
        }
    }
}
