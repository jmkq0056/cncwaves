package kotlinx.datetime.serializers;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.LocalDateTime;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.ShortSerializer;

/* JADX INFO: compiled from: LocalDateTimeSerializers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lkotlinx/datetime/serializers/LocalDateTimeComponentSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/LocalDateTime;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalDateTimeComponentSerializer implements KSerializer<LocalDateTime> {
    public static final LocalDateTimeComponentSerializer INSTANCE = new LocalDateTimeComponentSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlinx.datetime.LocalDateTime", new SerialDescriptor[0], new Function1<ClassSerialDescriptorBuilder, Unit>() { // from class: kotlinx.datetime.serializers.LocalDateTimeComponentSerializer$descriptor$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
            invoke2(classSerialDescriptorBuilder);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
            Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
            buildClassSerialDescriptor.element("year", IntSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("month", ShortSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("day", ShortSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("hour", ShortSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("minute", ShortSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("second", ShortSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), true);
            buildClassSerialDescriptor.element("nanosecond", IntSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), true);
        }
    });

    private LocalDateTimeComponentSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public LocalDateTime deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        Integer numValueOf = null;
        Short shValueOf = null;
        Short shValueOf2 = null;
        Short shValueOf3 = null;
        Short shValueOf4 = null;
        short sDecodeShortElement = 0;
        int iDecodeIntElement = 0;
        while (true) {
            LocalDateTimeComponentSerializer localDateTimeComponentSerializer = INSTANCE;
            int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(localDateTimeComponentSerializer.getDescriptor());
            switch (iDecodeElementIndex) {
                case -1:
                    if (numValueOf == null) {
                        throw new MissingFieldException("year", localDateTimeComponentSerializer.getDescriptor().getSerialName());
                    }
                    if (shValueOf == null) {
                        throw new MissingFieldException("month", localDateTimeComponentSerializer.getDescriptor().getSerialName());
                    }
                    if (shValueOf2 == null) {
                        throw new MissingFieldException("day", localDateTimeComponentSerializer.getDescriptor().getSerialName());
                    }
                    if (shValueOf3 == null) {
                        throw new MissingFieldException("hour", localDateTimeComponentSerializer.getDescriptor().getSerialName());
                    }
                    if (shValueOf4 == null) {
                        throw new MissingFieldException("minute", localDateTimeComponentSerializer.getDescriptor().getSerialName());
                    }
                    LocalDateTime localDateTime = new LocalDateTime(numValueOf.intValue(), shValueOf.shortValue(), shValueOf2.shortValue(), shValueOf3.shortValue(), shValueOf4.shortValue(), sDecodeShortElement, iDecodeIntElement);
                    compositeDecoderBeginStructure.endStructure(descriptor2);
                    return localDateTime;
                case 0:
                    numValueOf = Integer.valueOf(compositeDecoderBeginStructure.decodeIntElement(localDateTimeComponentSerializer.getDescriptor(), 0));
                    break;
                case 1:
                    shValueOf = Short.valueOf(compositeDecoderBeginStructure.decodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 1));
                    break;
                case 2:
                    shValueOf2 = Short.valueOf(compositeDecoderBeginStructure.decodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 2));
                    break;
                case 3:
                    shValueOf3 = Short.valueOf(compositeDecoderBeginStructure.decodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 3));
                    break;
                case 4:
                    shValueOf4 = Short.valueOf(compositeDecoderBeginStructure.decodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 4));
                    break;
                case 5:
                    sDecodeShortElement = compositeDecoderBeginStructure.decodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 5);
                    break;
                case 6:
                    iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(localDateTimeComponentSerializer.getDescriptor(), 6);
                    break;
                default:
                    throw new SerializationException("Unexpected index: " + iDecodeElementIndex);
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, LocalDateTime value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        LocalDateTimeComponentSerializer localDateTimeComponentSerializer = INSTANCE;
        compositeEncoderBeginStructure.encodeIntElement(localDateTimeComponentSerializer.getDescriptor(), 0, value.getYear());
        compositeEncoderBeginStructure.encodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 1, (short) value.getMonthNumber());
        compositeEncoderBeginStructure.encodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 2, (short) value.getDayOfMonth());
        compositeEncoderBeginStructure.encodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 3, (short) value.getHour());
        compositeEncoderBeginStructure.encodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 4, (short) value.getMinute());
        if (value.getSecond() != 0 || value.getNanosecond() != 0) {
            compositeEncoderBeginStructure.encodeShortElement(localDateTimeComponentSerializer.getDescriptor(), 5, (short) value.getSecond());
            if (value.getNanosecond() != 0) {
                compositeEncoderBeginStructure.encodeIntElement(localDateTimeComponentSerializer.getDescriptor(), 6, value.getNanosecond());
            }
        }
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }
}
