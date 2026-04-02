package com.stripe.spos.sentry.http.models;

import com.stripe.spos.sentry.http.models.BuildConfigData;
import com.stripe.spos.sentry.http.models.Report;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: compiled from: Report.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/spos/sentry/http/models/Report.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/spos/sentry/http/models/Report;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class Report$$serializer implements GeneratedSerializer<Report> {
    public static final Report$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Report$$serializer report$$serializer = new Report$$serializer();
        INSTANCE = report$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.spos.sentry.http.models.Report", report$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("release", false);
        pluginGeneratedSerialDescriptor.addElement("exception", false);
        pluginGeneratedSerialDescriptor.addElement("tags", false);
        pluginGeneratedSerialDescriptor.addElement("contexts", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Report$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuildConfigData.Serializer.INSTANCE, Report$ExceptionValuesSchema$$serializer.INSTANCE, Report.$childSerializers[2], Contexts$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Report deserialize(Decoder decoder) {
        int i;
        BuildConfigData buildConfigData;
        Report.ExceptionValuesSchema exceptionValuesSchema;
        Map map;
        Contexts contexts;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = Report.$childSerializers;
        BuildConfigData buildConfigData2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            BuildConfigData buildConfigData3 = (BuildConfigData) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 0, BuildConfigData.Serializer.INSTANCE, null);
            Report.ExceptionValuesSchema exceptionValuesSchema2 = (Report.ExceptionValuesSchema) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 1, Report$ExceptionValuesSchema$$serializer.INSTANCE, null);
            map = (Map) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], null);
            buildConfigData = buildConfigData3;
            contexts = (Contexts) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 3, Contexts$$serializer.INSTANCE, null);
            i = 15;
            exceptionValuesSchema = exceptionValuesSchema2;
        } else {
            boolean z = true;
            int i2 = 0;
            Report.ExceptionValuesSchema exceptionValuesSchema3 = null;
            Map map2 = null;
            Contexts contexts2 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    buildConfigData2 = (BuildConfigData) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 0, BuildConfigData.Serializer.INSTANCE, buildConfigData2);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    exceptionValuesSchema3 = (Report.ExceptionValuesSchema) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 1, Report$ExceptionValuesSchema$$serializer.INSTANCE, exceptionValuesSchema3);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    map2 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 2, kSerializerArr[2], map2);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    contexts2 = (Contexts) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 3, Contexts$$serializer.INSTANCE, contexts2);
                    i2 |= 8;
                }
            }
            i = i2;
            buildConfigData = buildConfigData2;
            exceptionValuesSchema = exceptionValuesSchema3;
            map = map2;
            contexts = contexts2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Report(i, buildConfigData, exceptionValuesSchema, map, contexts, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Report value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Report.write$Self$sentry_http(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
