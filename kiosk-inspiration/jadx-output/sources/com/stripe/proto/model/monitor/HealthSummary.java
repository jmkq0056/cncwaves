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

/* JADX INFO: compiled from: HealthSummary.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ4\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthSummary;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;", "role", "", "health_voters", "", "Lcom/stripe/proto/model/monitor/HealthVoterStatus;", "health_status", "Lcom/stripe/proto/model/monitor/HealthStatus;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthSummary extends Message<HealthSummary, Builder> {
    public static final ProtoAdapter<HealthSummary> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthStatus#ADAPTER", jsonName = "healthStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final HealthStatus health_status;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthVoterStatus#ADAPTER", jsonName = "healthVoters", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<HealthVoterStatus> health_voters;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String role;

    public HealthSummary() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ HealthSummary(String str, List list, HealthStatus healthStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? HealthStatus.HEALTH_STATUS_INVALID : healthStatus, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HealthSummary(String role, List<HealthVoterStatus> health_voters, HealthStatus health_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(health_voters, "health_voters");
        Intrinsics.checkNotNullParameter(health_status, "health_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.role = role;
        this.health_status = health_status;
        this.health_voters = Internal.immutableCopyOf("health_voters", health_voters);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.role = this.role;
        builder.health_voters = this.health_voters;
        builder.health_status = this.health_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HealthSummary)) {
            return false;
        }
        HealthSummary healthSummary = (HealthSummary) other;
        return Intrinsics.areEqual(unknownFields(), healthSummary.unknownFields()) && Intrinsics.areEqual(this.role, healthSummary.role) && Intrinsics.areEqual(this.health_voters, healthSummary.health_voters) && this.health_status == healthSummary.health_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.role.hashCode()) * 37) + this.health_voters.hashCode()) * 37) + this.health_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("role=" + Internal.sanitize(this.role));
        if (!this.health_voters.isEmpty()) {
            arrayList2.add("health_voters=" + this.health_voters);
        }
        arrayList2.add("health_status=" + this.health_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "HealthSummary{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HealthSummary copy$default(HealthSummary healthSummary, String str, List list, HealthStatus healthStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = healthSummary.role;
        }
        if ((i & 2) != 0) {
            list = healthSummary.health_voters;
        }
        if ((i & 4) != 0) {
            healthStatus = healthSummary.health_status;
        }
        if ((i & 8) != 0) {
            byteString = healthSummary.unknownFields();
        }
        return healthSummary.copy(str, list, healthStatus, byteString);
    }

    public final HealthSummary copy(String role, List<HealthVoterStatus> health_voters, HealthStatus health_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(health_voters, "health_voters");
        Intrinsics.checkNotNullParameter(health_status, "health_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HealthSummary(role, health_voters, health_status, unknownFields);
    }

    /* JADX INFO: compiled from: HealthSummary.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthSummary$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/monitor/HealthSummary;", "()V", "health_status", "Lcom/stripe/proto/model/monitor/HealthStatus;", "health_voters", "", "Lcom/stripe/proto/model/monitor/HealthVoterStatus;", "role", "", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HealthSummary, Builder> {
        public String role = "";
        public List<HealthVoterStatus> health_voters = CollectionsKt.emptyList();
        public HealthStatus health_status = HealthStatus.HEALTH_STATUS_INVALID;

        public final Builder role(String role) {
            Intrinsics.checkNotNullParameter(role, "role");
            this.role = role;
            return this;
        }

        public final Builder health_voters(List<HealthVoterStatus> health_voters) {
            Intrinsics.checkNotNullParameter(health_voters, "health_voters");
            Internal.checkElementsNotNull(health_voters);
            this.health_voters = health_voters;
            return this;
        }

        public final Builder health_status(HealthStatus health_status) {
            Intrinsics.checkNotNullParameter(health_status, "health_status");
            this.health_status = health_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HealthSummary build() {
            return new HealthSummary(this.role, this.health_voters, this.health_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HealthSummary.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/monitor/HealthSummary$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/monitor/HealthSummary;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HealthSummary build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HealthSummary.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HealthSummary>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.monitor.HealthSummary$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HealthSummary value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.role, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.role);
                }
                int iEncodedSizeWithTag = size + HealthVoterStatus.ADAPTER.asRepeated().encodedSizeWithTag(2, value.health_voters);
                return value.health_status != HealthStatus.HEALTH_STATUS_INVALID ? iEncodedSizeWithTag + HealthStatus.ADAPTER.encodedSizeWithTag(3, value.health_status) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HealthSummary value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.role, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.role);
                }
                HealthVoterStatus.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.health_voters);
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    HealthStatus.ADAPTER.encodeWithTag(writer, 3, value.health_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HealthSummary value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.health_status != HealthStatus.HEALTH_STATUS_INVALID) {
                    HealthStatus.ADAPTER.encodeWithTag(writer, 3, value.health_status);
                }
                HealthVoterStatus.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.health_voters);
                if (Intrinsics.areEqual(value.role, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.role);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HealthSummary decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                HealthStatus healthStatusDecode = HealthStatus.HEALTH_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new HealthSummary(strDecode, arrayList, healthStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(HealthVoterStatus.ADAPTER.decode(reader));
                    } else if (iNextTag == 3) {
                        try {
                            healthStatusDecode = HealthStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HealthSummary redact(HealthSummary value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return HealthSummary.copy$default(value, null, Internal.m361redactElements(value.health_voters, HealthVoterStatus.ADAPTER), null, ByteString.EMPTY, 5, null);
            }
        };
    }
}
