package com.stripe.spos.sentry.http.models;

import com.stripe.spos.sentry.http.models.Contexts;
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

/* JADX INFO: compiled from: Contexts.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/stripe/spos/sentry/http/models/Contexts.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/stripe/spos/sentry/http/models/Contexts;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
public final class Contexts$$serializer implements GeneratedSerializer<Contexts> {
    public static final Contexts$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Contexts$$serializer contexts$$serializer = new Contexts$$serializer();
        INSTANCE = contexts$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.stripe.spos.sentry.http.models.Contexts", contexts$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("app", false);
        pluginGeneratedSerialDescriptor.addElement("os", false);
        pluginGeneratedSerialDescriptor.addElement("device", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Contexts$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{Contexts$AppInfo$$serializer.INSTANCE, Contexts$OsInfo$$serializer.INSTANCE, Contexts$DeviceInfo$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Contexts deserialize(Decoder decoder) {
        int i;
        Contexts.AppInfo appInfo;
        Contexts.OsInfo osInfo;
        Contexts.DeviceInfo deviceInfo;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        Contexts.AppInfo appInfo2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            Contexts.AppInfo appInfo3 = (Contexts.AppInfo) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 0, Contexts$AppInfo$$serializer.INSTANCE, null);
            Contexts.OsInfo osInfo2 = (Contexts.OsInfo) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 1, Contexts$OsInfo$$serializer.INSTANCE, null);
            appInfo = appInfo3;
            deviceInfo = (Contexts.DeviceInfo) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 2, Contexts$DeviceInfo$$serializer.INSTANCE, null);
            osInfo = osInfo2;
            i = 7;
        } else {
            boolean z = true;
            int i2 = 0;
            Contexts.OsInfo osInfo3 = null;
            Contexts.DeviceInfo deviceInfo2 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    appInfo2 = (Contexts.AppInfo) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 0, Contexts$AppInfo$$serializer.INSTANCE, appInfo2);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    osInfo3 = (Contexts.OsInfo) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 1, Contexts$OsInfo$$serializer.INSTANCE, osInfo3);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    deviceInfo2 = (Contexts.DeviceInfo) compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 2, Contexts$DeviceInfo$$serializer.INSTANCE, deviceInfo2);
                    i2 |= 4;
                }
            }
            i = i2;
            appInfo = appInfo2;
            osInfo = osInfo3;
            deviceInfo = deviceInfo2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Contexts(i, appInfo, osInfo, deviceInfo, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Contexts value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Contexts.write$Self$sentry_http(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
