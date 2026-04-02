package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: MetricData.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BG\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJH\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\tH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;", "event_result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;", "health_metric", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "tags", "", "", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MetricData extends Message<MetricData, Builder> {
    public static final ProtoAdapter<MetricData> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventResult#ADAPTER", jsonName = "eventResult", oneofName = "metric", schemaIndex = 0, tag = 2)
    public final EventResult event_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric#ADAPTER", jsonName = "healthMetric", oneofName = "metric", schemaIndex = 1, tag = 3)
    public final HealthMetric health_metric;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.MetricResult#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final MetricResult result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 4)
    public final Map<String, String> tags;

    public MetricData() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ MetricData(EventResult eventResult, HealthMetric healthMetric, Map map, MetricResult metricResult, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : eventResult, (i & 2) != 0 ? null : healthMetric, (i & 4) != 0 ? MapsKt.emptyMap() : map, (i & 8) != 0 ? MetricResult.METRIC_RESULT_INVALID : metricResult, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricData(EventResult eventResult, HealthMetric healthMetric, Map<String, String> tags, MetricResult result, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.event_result = eventResult;
        this.health_metric = healthMetric;
        this.result = result;
        this.tags = Internal.immutableCopyOf("tags", tags);
        if (Internal.countNonNull(eventResult, healthMetric) > 1) {
            throw new IllegalArgumentException("At most one of event_result, health_metric may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.event_result = this.event_result;
        builder.health_metric = this.health_metric;
        builder.tags = this.tags;
        builder.result = this.result;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MetricData)) {
            return false;
        }
        MetricData metricData = (MetricData) other;
        return Intrinsics.areEqual(unknownFields(), metricData.unknownFields()) && Intrinsics.areEqual(this.event_result, metricData.event_result) && Intrinsics.areEqual(this.health_metric, metricData.health_metric) && Intrinsics.areEqual(this.tags, metricData.tags) && this.result == metricData.result;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        EventResult eventResult = this.event_result;
        int iHashCode2 = (iHashCode + (eventResult != null ? eventResult.hashCode() : 0)) * 37;
        HealthMetric healthMetric = this.health_metric;
        int iHashCode3 = ((((iHashCode2 + (healthMetric != null ? healthMetric.hashCode() : 0)) * 37) + this.tags.hashCode()) * 37) + this.result.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.event_result != null) {
            arrayList.add("event_result=" + this.event_result);
        }
        if (this.health_metric != null) {
            arrayList.add("health_metric=" + this.health_metric);
        }
        if (!this.tags.isEmpty()) {
            arrayList.add("tags=" + this.tags);
        }
        arrayList.add("result=" + this.result);
        return CollectionsKt.joinToString$default(arrayList, ", ", "MetricData{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MetricData copy$default(MetricData metricData, EventResult eventResult, HealthMetric healthMetric, Map map, MetricResult metricResult, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            eventResult = metricData.event_result;
        }
        if ((i & 2) != 0) {
            healthMetric = metricData.health_metric;
        }
        if ((i & 4) != 0) {
            map = metricData.tags;
        }
        if ((i & 8) != 0) {
            metricResult = metricData.result;
        }
        if ((i & 16) != 0) {
            byteString = metricData.unknownFields();
        }
        ByteString byteString2 = byteString;
        Map map2 = map;
        return metricData.copy(eventResult, healthMetric, map2, metricResult, byteString2);
    }

    public final MetricData copy(EventResult event_result, HealthMetric health_metric, Map<String, String> tags, MetricResult result, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new MetricData(event_result, health_metric, tags, result, unknownFields);
    }

    /* JADX INFO: compiled from: MetricData.kt */
    @kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;", "()V", "event_result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;", "health_metric", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;", "tags", "", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<MetricData, Builder> {
        public EventResult event_result;
        public HealthMetric health_metric;
        public Map<String, String> tags = MapsKt.emptyMap();
        public MetricResult result = MetricResult.METRIC_RESULT_INVALID;

        public final Builder tags(Map<String, String> tags) {
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.tags = tags;
            return this;
        }

        public final Builder result(MetricResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
            return this;
        }

        public final Builder event_result(EventResult event_result) {
            this.event_result = event_result;
            this.health_metric = null;
            return this;
        }

        public final Builder health_metric(HealthMetric health_metric) {
            this.health_metric = health_metric;
            this.event_result = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public MetricData build() {
            return new MetricData(this.event_result, this.health_metric, this.tags, this.result, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: MetricData.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ MetricData build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MetricData.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<MetricData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.MetricData$Companion$ADAPTER$1

            /* JADX INFO: renamed from: tagsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy tagsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.MetricData$Companion$ADAPTER$1$tagsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getTagsAdapter() {
                return (ProtoAdapter) this.tagsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(MetricData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + EventResult.ADAPTER.encodedSizeWithTag(2, value.event_result) + HealthMetric.ADAPTER.encodedSizeWithTag(3, value.health_metric) + getTagsAdapter().encodedSizeWithTag(4, value.tags);
                return value.result != MetricResult.METRIC_RESULT_INVALID ? size + MetricResult.ADAPTER.encodedSizeWithTag(5, value.result) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, MetricData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                getTagsAdapter().encodeWithTag(writer, 4, value.tags);
                if (value.result != MetricResult.METRIC_RESULT_INVALID) {
                    MetricResult.ADAPTER.encodeWithTag(writer, 5, value.result);
                }
                EventResult.ADAPTER.encodeWithTag(writer, 2, value.event_result);
                HealthMetric.ADAPTER.encodeWithTag(writer, 3, value.health_metric);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, MetricData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                HealthMetric.ADAPTER.encodeWithTag(writer, 3, value.health_metric);
                EventResult.ADAPTER.encodeWithTag(writer, 2, value.event_result);
                if (value.result != MetricResult.METRIC_RESULT_INVALID) {
                    MetricResult.ADAPTER.encodeWithTag(writer, 5, value.result);
                }
                getTagsAdapter().encodeWithTag(writer, 4, value.tags);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public MetricData decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                MetricResult metricResultDecode = MetricResult.METRIC_RESULT_INVALID;
                long jBeginMessage = reader.beginMessage();
                EventResult eventResultDecode = null;
                HealthMetric healthMetricDecode = null;
                while (true) {
                    MetricResult metricResult = metricResultDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new MetricData(eventResultDecode, healthMetricDecode, linkedHashMap, metricResult, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 2) {
                            eventResultDecode = EventResult.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            healthMetricDecode = HealthMetric.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            linkedHashMap.putAll(getTagsAdapter().decode(reader));
                        } else if (iNextTag == 5) {
                            try {
                                metricResultDecode = MetricResult.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public MetricData redact(MetricData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                EventResult eventResult = value.event_result;
                EventResult eventResultRedact = eventResult != null ? EventResult.ADAPTER.redact(eventResult) : null;
                HealthMetric healthMetric = value.health_metric;
                return MetricData.copy$default(value, eventResultRedact, healthMetric != null ? HealthMetric.ADAPTER.redact(healthMetric) : null, null, null, ByteString.EMPTY, 12, null);
            }
        };
    }
}
