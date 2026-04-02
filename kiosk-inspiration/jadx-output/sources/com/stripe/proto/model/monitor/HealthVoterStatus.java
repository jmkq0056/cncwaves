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

/* JADX INFO: compiled from: HealthVoterStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthVoterStatus;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;", "name", "", "metrics", "", "Lcom/stripe/proto/model/monitor/HealthMetric;", "health_status", "Lcom/stripe/proto/model/monitor/HealthStatus;", "detail", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthVoterStatus extends Message<HealthVoterStatus, Builder> {
    public static final ProtoAdapter<HealthVoterStatus> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String detail;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthStatus#ADAPTER", jsonName = "healthStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final HealthStatus health_status;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthMetric#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<HealthMetric> metrics;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    public HealthVoterStatus() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ HealthVoterStatus(String str, List list, HealthStatus healthStatus, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? HealthStatus.HEALTH_STATUS_INVALID : healthStatus, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HealthVoterStatus(String name, List<HealthMetric> metrics, HealthStatus health_status, String detail, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Intrinsics.checkNotNullParameter(health_status, "health_status");
        Intrinsics.checkNotNullParameter(detail, "detail");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.health_status = health_status;
        this.detail = detail;
        this.metrics = Internal.immutableCopyOf("metrics", metrics);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.metrics = this.metrics;
        builder.health_status = this.health_status;
        builder.detail = this.detail;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HealthVoterStatus)) {
            return false;
        }
        HealthVoterStatus healthVoterStatus = (HealthVoterStatus) other;
        return Intrinsics.areEqual(unknownFields(), healthVoterStatus.unknownFields()) && Intrinsics.areEqual(this.name, healthVoterStatus.name) && Intrinsics.areEqual(this.metrics, healthVoterStatus.metrics) && this.health_status == healthVoterStatus.health_status && Intrinsics.areEqual(this.detail, healthVoterStatus.detail);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.metrics.hashCode()) * 37) + this.health_status.hashCode()) * 37) + this.detail.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        if (!this.metrics.isEmpty()) {
            arrayList2.add("metrics=" + this.metrics);
        }
        arrayList2.add("health_status=" + this.health_status);
        arrayList2.add("detail=" + Internal.sanitize(this.detail));
        return CollectionsKt.joinToString$default(arrayList, ", ", "HealthVoterStatus{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HealthVoterStatus copy$default(HealthVoterStatus healthVoterStatus, String str, List list, HealthStatus healthStatus, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = healthVoterStatus.name;
        }
        if ((i & 2) != 0) {
            list = healthVoterStatus.metrics;
        }
        if ((i & 4) != 0) {
            healthStatus = healthVoterStatus.health_status;
        }
        if ((i & 8) != 0) {
            str2 = healthVoterStatus.detail;
        }
        if ((i & 16) != 0) {
            byteString = healthVoterStatus.unknownFields();
        }
        ByteString byteString2 = byteString;
        HealthStatus healthStatus2 = healthStatus;
        return healthVoterStatus.copy(str, list, healthStatus2, str2, byteString2);
    }

    public final HealthVoterStatus copy(String name, List<HealthMetric> metrics, HealthStatus health_status, String detail, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Intrinsics.checkNotNullParameter(health_status, "health_status");
        Intrinsics.checkNotNullParameter(detail, "detail");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HealthVoterStatus(name, metrics, health_status, detail, unknownFields);
    }

    /* JADX INFO: compiled from: HealthVoterStatus.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/monitor/HealthVoterStatus;", "()V", "detail", "", "health_status", "Lcom/stripe/proto/model/monitor/HealthStatus;", "metrics", "", "Lcom/stripe/proto/model/monitor/HealthMetric;", "name", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HealthVoterStatus, Builder> {
        public String name = "";
        public List<HealthMetric> metrics = CollectionsKt.emptyList();
        public HealthStatus health_status = HealthStatus.HEALTH_STATUS_INVALID;
        public String detail = "";

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder metrics(List<HealthMetric> metrics) {
            Intrinsics.checkNotNullParameter(metrics, "metrics");
            Internal.checkElementsNotNull(metrics);
            this.metrics = metrics;
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

        @Override // com.squareup.wire.Message.Builder
        public HealthVoterStatus build() {
            return new HealthVoterStatus(this.name, this.metrics, this.health_status, this.detail, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HealthVoterStatus.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/monitor/HealthVoterStatus;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HealthVoterStatus build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HealthVoterStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HealthVoterStatus>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.monitor.HealthVoterStatus$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HealthVoterStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                int iEncodedSizeWithTag = size + HealthMetric.ADAPTER.asRepeated().encodedSizeWithTag(2, value.metrics);
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    iEncodedSizeWithTag += HealthStatus.ADAPTER.encodedSizeWithTag(3, value.health_status);
                }
                return !Intrinsics.areEqual(value.detail, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(4, value.detail) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HealthVoterStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                HealthMetric.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.metrics);
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    HealthStatus.ADAPTER.encodeWithTag(writer, 3, value.health_status);
                }
                if (!Intrinsics.areEqual(value.detail, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.detail);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HealthVoterStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.detail, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.detail);
                }
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    HealthStatus.ADAPTER.encodeWithTag(writer, 3, value.health_status);
                }
                HealthMetric.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.metrics);
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HealthVoterStatus decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                HealthStatus healthStatusDecode = HealthStatus.HEALTH_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                while (true) {
                    HealthStatus healthStatus = healthStatusDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new HealthVoterStatus(strDecode, arrayList, healthStatus, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            arrayList.add(HealthMetric.ADAPTER.decode(reader));
                        } else if (iNextTag == 3) {
                            try {
                                healthStatusDecode = HealthStatus.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 4) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HealthVoterStatus redact(HealthVoterStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return HealthVoterStatus.copy$default(value, null, Internal.m361redactElements(value.metrics, HealthMetric.ADAPTER), null, null, ByteString.EMPTY, 13, null);
            }
        };
    }
}
