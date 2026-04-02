package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data;

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
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: BucketedDataUsageEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B5\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ6\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;", "entire_device_usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;", "application_usage_event", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;", "data_connection_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;Ljava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BucketedDataUsageEvent extends Message<BucketedDataUsageEvent, Builder> {
    public static final ProtoAdapter<BucketedDataUsageEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.ApplicationUsageEvent#ADAPTER", jsonName = "applicationUsageEvent", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<ApplicationUsageEvent> application_usage_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataConnectionType#ADAPTER", jsonName = "dataConnectionType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final DataConnectionType data_connection_type;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.EntireDeviceUsageEvent#ADAPTER", jsonName = "entireDeviceUsage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final EntireDeviceUsageEvent entire_device_usage;

    public BucketedDataUsageEvent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ BucketedDataUsageEvent(EntireDeviceUsageEvent entireDeviceUsageEvent, List list, DataConnectionType dataConnectionType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : entireDeviceUsageEvent, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? DataConnectionType.DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET : dataConnectionType, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BucketedDataUsageEvent(EntireDeviceUsageEvent entireDeviceUsageEvent, List<ApplicationUsageEvent> application_usage_event, DataConnectionType data_connection_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(application_usage_event, "application_usage_event");
        Intrinsics.checkNotNullParameter(data_connection_type, "data_connection_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.entire_device_usage = entireDeviceUsageEvent;
        this.data_connection_type = data_connection_type;
        this.application_usage_event = Internal.immutableCopyOf("application_usage_event", application_usage_event);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.entire_device_usage = this.entire_device_usage;
        builder.application_usage_event = this.application_usage_event;
        builder.data_connection_type = this.data_connection_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BucketedDataUsageEvent)) {
            return false;
        }
        BucketedDataUsageEvent bucketedDataUsageEvent = (BucketedDataUsageEvent) other;
        return Intrinsics.areEqual(unknownFields(), bucketedDataUsageEvent.unknownFields()) && Intrinsics.areEqual(this.entire_device_usage, bucketedDataUsageEvent.entire_device_usage) && Intrinsics.areEqual(this.application_usage_event, bucketedDataUsageEvent.application_usage_event) && this.data_connection_type == bucketedDataUsageEvent.data_connection_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        EntireDeviceUsageEvent entireDeviceUsageEvent = this.entire_device_usage;
        int iHashCode2 = ((((iHashCode + (entireDeviceUsageEvent != null ? entireDeviceUsageEvent.hashCode() : 0)) * 37) + this.application_usage_event.hashCode()) * 37) + this.data_connection_type.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.entire_device_usage != null) {
            arrayList.add("entire_device_usage=" + this.entire_device_usage);
        }
        if (!this.application_usage_event.isEmpty()) {
            arrayList.add("application_usage_event=" + this.application_usage_event);
        }
        arrayList.add("data_connection_type=" + this.data_connection_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "BucketedDataUsageEvent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BucketedDataUsageEvent copy$default(BucketedDataUsageEvent bucketedDataUsageEvent, EntireDeviceUsageEvent entireDeviceUsageEvent, List list, DataConnectionType dataConnectionType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            entireDeviceUsageEvent = bucketedDataUsageEvent.entire_device_usage;
        }
        if ((i & 2) != 0) {
            list = bucketedDataUsageEvent.application_usage_event;
        }
        if ((i & 4) != 0) {
            dataConnectionType = bucketedDataUsageEvent.data_connection_type;
        }
        if ((i & 8) != 0) {
            byteString = bucketedDataUsageEvent.unknownFields();
        }
        return bucketedDataUsageEvent.copy(entireDeviceUsageEvent, list, dataConnectionType, byteString);
    }

    public final BucketedDataUsageEvent copy(EntireDeviceUsageEvent entire_device_usage, List<ApplicationUsageEvent> application_usage_event, DataConnectionType data_connection_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(application_usage_event, "application_usage_event");
        Intrinsics.checkNotNullParameter(data_connection_type, "data_connection_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BucketedDataUsageEvent(entire_device_usage, application_usage_event, data_connection_type, unknownFields);
    }

    /* JADX INFO: compiled from: BucketedDataUsageEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;", "()V", "application_usage_event", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;", "data_connection_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;", "entire_device_usage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BucketedDataUsageEvent, Builder> {
        public List<ApplicationUsageEvent> application_usage_event = CollectionsKt.emptyList();
        public DataConnectionType data_connection_type = DataConnectionType.DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET;
        public EntireDeviceUsageEvent entire_device_usage;

        public final Builder entire_device_usage(EntireDeviceUsageEvent entire_device_usage) {
            this.entire_device_usage = entire_device_usage;
            return this;
        }

        public final Builder application_usage_event(List<ApplicationUsageEvent> application_usage_event) {
            Intrinsics.checkNotNullParameter(application_usage_event, "application_usage_event");
            Internal.checkElementsNotNull(application_usage_event);
            this.application_usage_event = application_usage_event;
            return this;
        }

        public final Builder data_connection_type(DataConnectionType data_connection_type) {
            Intrinsics.checkNotNullParameter(data_connection_type, "data_connection_type");
            this.data_connection_type = data_connection_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BucketedDataUsageEvent build() {
            return new BucketedDataUsageEvent(this.entire_device_usage, this.application_usage_event, this.data_connection_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BucketedDataUsageEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BucketedDataUsageEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BucketedDataUsageEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BucketedDataUsageEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.BucketedDataUsageEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BucketedDataUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.entire_device_usage != null) {
                    size += EntireDeviceUsageEvent.ADAPTER.encodedSizeWithTag(1, value.entire_device_usage);
                }
                int iEncodedSizeWithTag = size + ApplicationUsageEvent.ADAPTER.asRepeated().encodedSizeWithTag(2, value.application_usage_event);
                return value.data_connection_type != DataConnectionType.DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET ? iEncodedSizeWithTag + DataConnectionType.ADAPTER.encodedSizeWithTag(3, value.data_connection_type) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BucketedDataUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.entire_device_usage != null) {
                    EntireDeviceUsageEvent.ADAPTER.encodeWithTag(writer, 1, value.entire_device_usage);
                }
                ApplicationUsageEvent.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.application_usage_event);
                if (value.data_connection_type != DataConnectionType.DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET) {
                    DataConnectionType.ADAPTER.encodeWithTag(writer, 3, value.data_connection_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BucketedDataUsageEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.data_connection_type != DataConnectionType.DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET) {
                    DataConnectionType.ADAPTER.encodeWithTag(writer, 3, value.data_connection_type);
                }
                ApplicationUsageEvent.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.application_usage_event);
                if (value.entire_device_usage != null) {
                    EntireDeviceUsageEvent.ADAPTER.encodeWithTag(writer, 1, value.entire_device_usage);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BucketedDataUsageEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                DataConnectionType dataConnectionTypeDecode = DataConnectionType.DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET;
                long jBeginMessage = reader.beginMessage();
                EntireDeviceUsageEvent entireDeviceUsageEventDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new BucketedDataUsageEvent(entireDeviceUsageEventDecode, arrayList, dataConnectionTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        entireDeviceUsageEventDecode = EntireDeviceUsageEvent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(ApplicationUsageEvent.ADAPTER.decode(reader));
                    } else if (iNextTag == 3) {
                        try {
                            dataConnectionTypeDecode = DataConnectionType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BucketedDataUsageEvent redact(BucketedDataUsageEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                EntireDeviceUsageEvent entireDeviceUsageEvent = value.entire_device_usage;
                return BucketedDataUsageEvent.copy$default(value, entireDeviceUsageEvent != null ? EntireDeviceUsageEvent.ADAPTER.redact(entireDeviceUsageEvent) : null, Internal.m361redactElements(value.application_usage_event, ApplicationUsageEvent.ADAPTER), null, ByteString.EMPTY, 4, null);
            }
        };
    }
}
