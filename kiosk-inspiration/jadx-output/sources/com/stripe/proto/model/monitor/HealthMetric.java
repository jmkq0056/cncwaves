package com.stripe.proto.model.monitor;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: HealthMetric.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ8\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthMetric;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/monitor/HealthMetric$Builder;", "name", "", "health_status", "Lcom/stripe/proto/model/monitor/HealthStatus;", "detail", "metric_value", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthMetric extends Message<HealthMetric, Builder> {
    public static final ProtoAdapter<HealthMetric> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String detail;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthStatus#ADAPTER", jsonName = "healthStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final HealthStatus health_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "metricValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long metric_value;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    public HealthMetric() {
        this(null, null, null, 0L, null, 31, null);
    }

    public /* synthetic */ HealthMetric(String str, HealthStatus healthStatus, String str2, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? HealthStatus.HEALTH_STATUS_INVALID : healthStatus, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HealthMetric(String name, HealthStatus health_status, String detail, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(health_status, "health_status");
        Intrinsics.checkNotNullParameter(detail, "detail");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.health_status = health_status;
        this.detail = detail;
        this.metric_value = j;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.health_status = this.health_status;
        builder.detail = this.detail;
        builder.metric_value = this.metric_value;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HealthMetric)) {
            return false;
        }
        HealthMetric healthMetric = (HealthMetric) other;
        return Intrinsics.areEqual(unknownFields(), healthMetric.unknownFields()) && Intrinsics.areEqual(this.name, healthMetric.name) && this.health_status == healthMetric.health_status && Intrinsics.areEqual(this.detail, healthMetric.detail) && this.metric_value == healthMetric.metric_value;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.health_status.hashCode()) * 37) + this.detail.hashCode()) * 37) + Long.hashCode(this.metric_value);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        arrayList2.add("health_status=" + this.health_status);
        arrayList2.add("detail=" + Internal.sanitize(this.detail));
        arrayList2.add("metric_value=" + this.metric_value);
        return CollectionsKt.joinToString$default(arrayList, ", ", "HealthMetric{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HealthMetric copy$default(HealthMetric healthMetric, String str, HealthStatus healthStatus, String str2, long j, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = healthMetric.name;
        }
        if ((i & 2) != 0) {
            healthStatus = healthMetric.health_status;
        }
        if ((i & 4) != 0) {
            str2 = healthMetric.detail;
        }
        if ((i & 8) != 0) {
            j = healthMetric.metric_value;
        }
        if ((i & 16) != 0) {
            byteString = healthMetric.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str3 = str2;
        return healthMetric.copy(str, healthStatus, str3, j, byteString2);
    }

    public final HealthMetric copy(String name, HealthStatus health_status, String detail, long metric_value, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(health_status, "health_status");
        Intrinsics.checkNotNullParameter(detail, "detail");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HealthMetric(name, health_status, detail, metric_value, unknownFields);
    }

    /* JADX INFO: compiled from: HealthMetric.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthMetric$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/monitor/HealthMetric;", "()V", "detail", "", "health_status", "Lcom/stripe/proto/model/monitor/HealthStatus;", "metric_value", "", "name", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HealthMetric, Builder> {
        public long metric_value;
        public String name = "";
        public HealthStatus health_status = HealthStatus.HEALTH_STATUS_INVALID;
        public String detail = "";

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder health_status(HealthStatus health_status) {
            Intrinsics.checkNotNullParameter(health_status, "health_status");
            this.health_status = health_status;
            return this;
        }

        public final Builder detail(String detail) {
            Intrinsics.checkNotNullParameter(detail, "detail");
            this.detail = detail;
            return this;
        }

        public final Builder metric_value(long metric_value) {
            this.metric_value = metric_value;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HealthMetric build() {
            return new HealthMetric(this.name, this.health_status, this.detail, this.metric_value, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HealthMetric.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthMetric$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/monitor/HealthMetric;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/monitor/HealthMetric$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HealthMetric build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HealthMetric.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HealthMetric>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.monitor.HealthMetric$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HealthMetric value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    size += HealthStatus.ADAPTER.encodedSizeWithTag(2, value.health_status);
                }
                if (!Intrinsics.areEqual(value.detail, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.detail);
                }
                return value.metric_value != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.metric_value)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HealthMetric value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    HealthStatus.ADAPTER.encodeWithTag(writer, 2, value.health_status);
                }
                if (!Intrinsics.areEqual(value.detail, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.detail);
                }
                if (value.metric_value != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.metric_value));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HealthMetric value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.metric_value != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.metric_value));
                }
                if (!Intrinsics.areEqual(value.detail, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.detail);
                }
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    HealthStatus.ADAPTER.encodeWithTag(writer, 2, value.health_status);
                }
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HealthMetric decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                HealthStatus healthStatusDecode = HealthStatus.HEALTH_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                String strDecode = "";
                String strDecode2 = strDecode;
                while (true) {
                    HealthStatus healthStatus = healthStatusDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new HealthMetric(strDecode, healthStatus, strDecode2, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                healthStatusDecode = HealthStatus.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HealthMetric redact(HealthMetric value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return HealthMetric.copy$default(value, null, null, null, 0L, ByteString.EMPTY, 15, null);
            }
        };
    }
}
