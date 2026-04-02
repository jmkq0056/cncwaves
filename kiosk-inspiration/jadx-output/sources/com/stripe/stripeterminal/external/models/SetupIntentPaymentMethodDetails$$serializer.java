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

/* JADX INFO: compiled from: SetupIntentPaymentMethodDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class SetupIntentPaymentMethodDetails$$serializer implements GeneratedSerializer<SetupIntentPaymentMethodDetails> {
    public static final SetupIntentPaymentMethodDetails$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        SetupIntentPaymentMethodDetails$$serializer setupIntentPaymentMethodDetails$$serializer = new SetupIntentPaymentMethodDetails$$serializer();
        INSTANCE = setupIntentPaymentMethodDetails$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.stripeterminal.external.models.SetupIntentPaymentMethodDetails", setupIntentPaymentMethodDetails$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("cardPresent", true);
        pluginGeneratedSerialDescriptor.addElement("interacPresent", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SetupIntentPaymentMethodDetails$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(SetupIntentPaymentMethodDetails.$childSerializers[0]), BuiltinSerializersKt.getNullable(SetupIntentCardPresentDetails$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(SetupIntentCardPresentDetails$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public SetupIntentPaymentMethodDetails deserialize(Decoder decoder) {
        int i;
        PaymentMethodType paymentMethodType;
        SetupIntentCardPresentDetails setupIntentCardPresentDetails;
        SetupIntentCardPresentDetails setupIntentCardPresentDetails2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = SetupIntentPaymentMethodDetails.$childSerializers;
        PaymentMethodType paymentMethodType2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            paymentMethodType = (PaymentMethodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            setupIntentCardPresentDetails = (SetupIntentCardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, SetupIntentCardPresentDetails$$serializer.INSTANCE, null);
            setupIntentCardPresentDetails2 = (SetupIntentCardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, SetupIntentCardPresentDetails$$serializer.INSTANCE, null);
            i = 7;
        } else {
            boolean z = true;
            int i2 = 0;
            SetupIntentCardPresentDetails setupIntentCardPresentDetails3 = null;
            SetupIntentCardPresentDetails setupIntentCardPresentDetails4 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    paymentMethodType2 = (PaymentMethodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 0, kSerializerArr[0], paymentMethodType2);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    setupIntentCardPresentDetails3 = (SetupIntentCardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, SetupIntentCardPresentDetails$$serializer.INSTANCE, setupIntentCardPresentDetails3);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    setupIntentCardPresentDetails4 = (SetupIntentCardPresentDetails) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, SetupIntentCardPresentDetails$$serializer.INSTANCE, setupIntentCardPresentDetails4);
                    i2 |= 4;
                }
            }
            i = i2;
            paymentMethodType = paymentMethodType2;
            setupIntentCardPresentDetails = setupIntentCardPresentDetails3;
            setupIntentCardPresentDetails2 = setupIntentCardPresentDetails4;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new SetupIntentPaymentMethodDetails(i, paymentMethodType, setupIntentCardPresentDetails, setupIntentCardPresentDetails2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SetupIntentPaymentMethodDetails value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        SetupIntentPaymentMethodDetails.write$Self$public_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
