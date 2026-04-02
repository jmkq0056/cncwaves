package com.stripe.stripeterminal.external.models;

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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: OfflineDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/OfflineDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class OfflineDetails$$serializer implements GeneratedSerializer<OfflineDetails> {
    public static final OfflineDetails$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        OfflineDetails$$serializer offlineDetails$$serializer = new OfflineDetails$$serializer();
        INSTANCE = offlineDetails$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.OfflineDetails", offlineDetails$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement(OfflineStorageConstantsKt.ID, true);
        pluginGeneratedSerialDescriptor.addElement("storedAt", false);
        pluginGeneratedSerialDescriptor.addElement("cardPresentDetails", true);
        pluginGeneratedSerialDescriptor.addElement("amountDetails", true);
        pluginGeneratedSerialDescriptor.addElement("requiresUpload", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private OfflineDetails$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), LongSerializer.INSTANCE, BuiltinSerializersKt.getNullable(OfflineCardPresentDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(AmountDetails$$serializer.INSTANCE), BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public OfflineDetails deserialize(Decoder decoder) {
        int i;
        boolean zDecodeBooleanElement;
        long j;
        String str;
        OfflineCardPresentDetails offlineCardPresentDetails;
        AmountDetails amountDetails;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String str2 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, null);
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 1);
            OfflineCardPresentDetails offlineCardPresentDetails2 = (OfflineCardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, OfflineCardPresentDetails$$serializer.INSTANCE, null);
            i = 31;
            str = str2;
            amountDetails = (AmountDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, AmountDetails$$serializer.INSTANCE, null);
            zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 4);
            offlineCardPresentDetails = offlineCardPresentDetails2;
            j = jDecodeLongElement;
        } else {
            long jDecodeLongElement2 = 0;
            boolean z = true;
            boolean zDecodeBooleanElement2 = false;
            String str3 = null;
            OfflineCardPresentDetails offlineCardPresentDetails3 = null;
            AmountDetails amountDetails2 = null;
            i = 0;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, StringSerializer.INSTANCE, str3);
                    i |= 1;
                } else if (iDecodeElementIndex == 1) {
                    jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 1);
                    i |= 2;
                } else if (iDecodeElementIndex == 2) {
                    offlineCardPresentDetails3 = (OfflineCardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, OfflineCardPresentDetails$$serializer.INSTANCE, offlineCardPresentDetails3);
                    i |= 4;
                } else if (iDecodeElementIndex == 3) {
                    amountDetails2 = (AmountDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, AmountDetails$$serializer.INSTANCE, amountDetails2);
                    i |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 4);
                    i |= 16;
                }
            }
            zDecodeBooleanElement = zDecodeBooleanElement2;
            j = jDecodeLongElement2;
            str = str3;
            offlineCardPresentDetails = offlineCardPresentDetails3;
            amountDetails = amountDetails2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new OfflineDetails(i, str, j, offlineCardPresentDetails, amountDetails, zDecodeBooleanElement, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, OfflineDetails value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        OfflineDetails.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
