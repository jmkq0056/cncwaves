package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DeviceTemperatureEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ4\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent$Builder;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureType;", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureSource;", "temperatures", "", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureType;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureSource;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTemperatureEvent extends Message<DeviceTemperatureEvent, Builder> {
    public static final ProtoAdapter<DeviceTemperatureEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureSource#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DeviceTemperatureSource source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", label = WireField.Label.PACKED, schemaIndex = 2, tag = 3)
    public final List<Float> temperatures;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceTemperatureType type;

    public DeviceTemperatureEvent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ DeviceTemperatureEvent(DeviceTemperatureType deviceTemperatureType, DeviceTemperatureSource deviceTemperatureSource, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID : deviceTemperatureType, (i & 2) != 0 ? DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID : deviceTemperatureSource, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceTemperatureEvent(DeviceTemperatureType type, DeviceTemperatureSource source, List<Float> temperatures, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(temperatures, "temperatures");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.source = source;
        this.temperatures = Internal.immutableCopyOf("temperatures", temperatures);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.source = this.source;
        builder.temperatures = this.temperatures;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceTemperatureEvent)) {
            return false;
        }
        DeviceTemperatureEvent deviceTemperatureEvent = (DeviceTemperatureEvent) other;
        return Intrinsics.areEqual(unknownFields(), deviceTemperatureEvent.unknownFields()) && this.type == deviceTemperatureEvent.type && this.source == deviceTemperatureEvent.source && Intrinsics.areEqual(this.temperatures, deviceTemperatureEvent.temperatures);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37) + this.source.hashCode()) * 37) + this.temperatures.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        arrayList2.add("source=" + this.source);
        if (!this.temperatures.isEmpty()) {
            arrayList2.add("temperatures=" + this.temperatures);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceTemperatureEvent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeviceTemperatureEvent copy$default(DeviceTemperatureEvent deviceTemperatureEvent, DeviceTemperatureType deviceTemperatureType, DeviceTemperatureSource deviceTemperatureSource, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceTemperatureType = deviceTemperatureEvent.type;
        }
        if ((i & 2) != 0) {
            deviceTemperatureSource = deviceTemperatureEvent.source;
        }
        if ((i & 4) != 0) {
            list = deviceTemperatureEvent.temperatures;
        }
        if ((i & 8) != 0) {
            byteString = deviceTemperatureEvent.unknownFields();
        }
        return deviceTemperatureEvent.copy(deviceTemperatureType, deviceTemperatureSource, list, byteString);
    }

    public final DeviceTemperatureEvent copy(DeviceTemperatureType type, DeviceTemperatureSource source, List<Float> temperatures, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(temperatures, "temperatures");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceTemperatureEvent(type, source, temperatures, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceTemperatureEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;", "()V", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureSource;", "temperatures", "", "", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceTemperatureEvent, Builder> {
        public DeviceTemperatureType type = DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID;
        public DeviceTemperatureSource source = DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID;
        public List<Float> temperatures = CollectionsKt.emptyList();

        public final Builder type(DeviceTemperatureType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder source(DeviceTemperatureSource source) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.source = source;
            return this;
        }

        public final Builder temperatures(List<Float> temperatures) {
            Intrinsics.checkNotNullParameter(temperatures, "temperatures");
            Internal.checkElementsNotNull(temperatures);
            this.temperatures = temperatures;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceTemperatureEvent build() {
            return new DeviceTemperatureEvent(this.type, this.source, this.temperatures, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceTemperatureEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceTemperatureEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceTemperatureEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceTemperatureEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceTemperatureEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID) {
                    size += DeviceTemperatureType.ADAPTER.encodedSizeWithTag(1, value.type);
                }
                if (value.source != DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID) {
                    size += DeviceTemperatureSource.ADAPTER.encodedSizeWithTag(2, value.source);
                }
                return size + ProtoAdapter.FLOAT.asPacked().encodedSizeWithTag(3, value.temperatures);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceTemperatureEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID) {
                    DeviceTemperatureType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                if (value.source != DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID) {
                    DeviceTemperatureSource.ADAPTER.encodeWithTag(writer, 2, value.source);
                }
                ProtoAdapter.FLOAT.asPacked().encodeWithTag(writer, 3, value.temperatures);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceTemperatureEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.FLOAT.asPacked().encodeWithTag(writer, 3, value.temperatures);
                if (value.source != DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID) {
                    DeviceTemperatureSource.ADAPTER.encodeWithTag(writer, 2, value.source);
                }
                if (value.type != DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID) {
                    DeviceTemperatureType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceTemperatureEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DeviceTemperatureType deviceTemperatureTypeDecode = DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID;
                DeviceTemperatureSource deviceTemperatureSourceDecode = DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID;
                long jBeginMessage = reader.beginMessage();
                ArrayList arrayList = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        break;
                    }
                    if (iNextTag == 1) {
                        try {
                            deviceTemperatureTypeDecode = DeviceTemperatureType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        try {
                            deviceTemperatureSourceDecode = DeviceTemperatureSource.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                        }
                    } else if (iNextTag == 3) {
                        if (arrayList == null) {
                            arrayList = new ArrayList((int) RangesKt.coerceAtMost(reader.nextFieldMinLengthInBytes() / ((long) 4), 2147483647L));
                        }
                        arrayList.add(ProtoAdapter.FLOAT.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
                ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                DeviceTemperatureType deviceTemperatureType = deviceTemperatureTypeDecode;
                DeviceTemperatureSource deviceTemperatureSource = deviceTemperatureSourceDecode;
                ArrayList arrayListEmptyList = arrayList;
                if (arrayListEmptyList == null) {
                    arrayListEmptyList = CollectionsKt.emptyList();
                }
                return new DeviceTemperatureEvent(deviceTemperatureType, deviceTemperatureSource, arrayListEmptyList, byteStringEndMessageAndGetUnknownFields);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceTemperatureEvent redact(DeviceTemperatureEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DeviceTemperatureEvent.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }
        };
    }
}
