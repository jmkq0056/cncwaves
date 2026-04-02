package com.stripe.proto.terminal.clientlogger.pub.api;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.api.HealthMetricResult;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: HealthMetricResult.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B;\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ<\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0007H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;", "health_metric", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "tags", "", "", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Result", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthMetricResult extends Message<HealthMetricResult, Builder> {
    public static final ProtoAdapter<HealthMetricResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric#ADAPTER", jsonName = "healthMetric", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final HealthMetric health_metric;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.api.HealthMetricResult$Result#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final Result result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
    public final Map<String, String> tags;

    public HealthMetricResult() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ HealthMetricResult(HealthMetric healthMetric, Map map, Result result, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : healthMetric, (i & 2) != 0 ? MapsKt.emptyMap() : map, (i & 4) != 0 ? Result.OK : result, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HealthMetricResult(HealthMetric healthMetric, Map<String, String> tags, Result result, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.health_metric = healthMetric;
        this.result = result;
        this.tags = Internal.immutableCopyOf("tags", tags);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
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
        if (!(other instanceof HealthMetricResult)) {
            return false;
        }
        HealthMetricResult healthMetricResult = (HealthMetricResult) other;
        return Intrinsics.areEqual(unknownFields(), healthMetricResult.unknownFields()) && Intrinsics.areEqual(this.health_metric, healthMetricResult.health_metric) && Intrinsics.areEqual(this.tags, healthMetricResult.tags) && this.result == healthMetricResult.result;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        HealthMetric healthMetric = this.health_metric;
        int iHashCode2 = ((((iHashCode + (healthMetric != null ? healthMetric.hashCode() : 0)) * 37) + this.tags.hashCode()) * 37) + this.result.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.health_metric != null) {
            arrayList.add("health_metric=" + this.health_metric);
        }
        if (!this.tags.isEmpty()) {
            arrayList.add("tags=" + this.tags);
        }
        arrayList.add("result=" + this.result);
        return CollectionsKt.joinToString$default(arrayList, ", ", "HealthMetricResult{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HealthMetricResult copy$default(HealthMetricResult healthMetricResult, HealthMetric healthMetric, Map map, Result result, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            healthMetric = healthMetricResult.health_metric;
        }
        if ((i & 2) != 0) {
            map = healthMetricResult.tags;
        }
        if ((i & 4) != 0) {
            result = healthMetricResult.result;
        }
        if ((i & 8) != 0) {
            byteString = healthMetricResult.unknownFields();
        }
        return healthMetricResult.copy(healthMetric, map, result, byteString);
    }

    public final HealthMetricResult copy(HealthMetric health_metric, Map<String, String> tags, Result result, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HealthMetricResult(health_metric, tags, result, unknownFields);
    }

    /* JADX INFO: compiled from: HealthMetricResult.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;", "()V", "health_metric", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;", "tags", "", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HealthMetricResult, Builder> {
        public HealthMetric health_metric;
        public Map<String, String> tags = MapsKt.emptyMap();
        public Result result = Result.OK;

        public final Builder health_metric(HealthMetric health_metric) {
            this.health_metric = health_metric;
            return this;
        }

        public final Builder tags(Map<String, String> tags) {
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.tags = tags;
            return this;
        }

        public final Builder result(Result result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HealthMetricResult build() {
            return new HealthMetricResult(this.health_metric, this.tags, this.result, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HealthMetricResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HealthMetricResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HealthMetricResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HealthMetricResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.HealthMetricResult$Companion$ADAPTER$1

            /* JADX INFO: renamed from: tagsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy tagsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.clientlogger.pub.api.HealthMetricResult$Companion$ADAPTER$1$tagsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getTagsAdapter() {
                return (ProtoAdapter) this.tagsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HealthMetricResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.health_metric != null) {
                    size += HealthMetric.ADAPTER.encodedSizeWithTag(1, value.health_metric);
                }
                int iEncodedSizeWithTag = size + getTagsAdapter().encodedSizeWithTag(2, value.tags);
                return value.result != HealthMetricResult.Result.OK ? iEncodedSizeWithTag + HealthMetricResult.Result.ADAPTER.encodedSizeWithTag(3, value.result) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HealthMetricResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.health_metric != null) {
                    HealthMetric.ADAPTER.encodeWithTag(writer, 1, value.health_metric);
                }
                getTagsAdapter().encodeWithTag(writer, 2, value.tags);
                if (value.result != HealthMetricResult.Result.OK) {
                    HealthMetricResult.Result.ADAPTER.encodeWithTag(writer, 3, value.result);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HealthMetricResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.result != HealthMetricResult.Result.OK) {
                    HealthMetricResult.Result.ADAPTER.encodeWithTag(writer, 3, value.result);
                }
                getTagsAdapter().encodeWithTag(writer, 2, value.tags);
                if (value.health_metric != null) {
                    HealthMetric.ADAPTER.encodeWithTag(writer, 1, value.health_metric);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HealthMetricResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                HealthMetricResult.Result resultDecode = HealthMetricResult.Result.OK;
                long jBeginMessage = reader.beginMessage();
                HealthMetric healthMetricDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new HealthMetricResult(healthMetricDecode, linkedHashMap, resultDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        healthMetricDecode = HealthMetric.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        linkedHashMap.putAll(getTagsAdapter().decode(reader));
                    } else if (iNextTag == 3) {
                        try {
                            resultDecode = HealthMetricResult.Result.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HealthMetricResult redact(HealthMetricResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                HealthMetric healthMetric = value.health_metric;
                return HealthMetricResult.copy$default(value, healthMetric != null ? HealthMetric.ADAPTER.redact(healthMetric) : null, null, null, ByteString.EMPTY, 6, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: HealthMetricResult.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "ERROR", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Result implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Result[] $VALUES;
        public static final ProtoAdapter<Result> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Result ERROR;
        public static final Result OK;
        private final int value;

        private static final /* synthetic */ Result[] $values() {
            return new Result[]{OK, ERROR};
        }

        @JvmStatic
        public static final Result fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Result> getEntries() {
            return $ENTRIES;
        }

        public static Result valueOf(String str) {
            return (Result) Enum.valueOf(Result.class, str);
        }

        public static Result[] values() {
            return (Result[]) $VALUES.clone();
        }

        private Result(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Result result = new Result("OK", 0, 0);
            OK = result;
            ERROR = new Result("ERROR", 1, 1);
            Result[] resultArr$values = $values();
            $VALUES = resultArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(resultArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Result.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Result>(orCreateKotlinClass, syntax, result) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.HealthMetricResult$Result$Companion$ADAPTER$1
                {
                    HealthMetricResult.Result result2 = result;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public HealthMetricResult.Result fromValue(int value) {
                    return HealthMetricResult.Result.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: HealthMetricResult.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Result fromValue(int value) {
                if (value == 0) {
                    return Result.OK;
                }
                if (value != 1) {
                    return null;
                }
                return Result.ERROR;
            }
        }
    }
}
