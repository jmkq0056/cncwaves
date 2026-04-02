package com.stripe.proto.model.common;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.monitor.HealthSummary;
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

/* JADX INFO: compiled from: ApplicationStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/common/ApplicationStatus;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/ApplicationStatus$Builder;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "health_summary", "Lcom/stripe/proto/model/monitor/HealthSummary;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/monitor/HealthSummary;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationStatus extends Message<ApplicationStatus, Builder> {
    public static final ProtoAdapter<ApplicationStatus> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthSummary#ADAPTER", jsonName = "healthSummary", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final HealthSummary health_summary;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final VersionInfoPb version_info;

    public ApplicationStatus() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ApplicationStatus(VersionInfoPb versionInfoPb, HealthSummary healthSummary, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : versionInfoPb, (i & 2) != 0 ? null : healthSummary, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationStatus(VersionInfoPb versionInfoPb, HealthSummary healthSummary, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.version_info = versionInfoPb;
        this.health_summary = healthSummary;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.version_info = this.version_info;
        builder.health_summary = this.health_summary;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApplicationStatus)) {
            return false;
        }
        ApplicationStatus applicationStatus = (ApplicationStatus) other;
        return Intrinsics.areEqual(unknownFields(), applicationStatus.unknownFields()) && Intrinsics.areEqual(this.version_info, applicationStatus.version_info) && Intrinsics.areEqual(this.health_summary, applicationStatus.health_summary);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        VersionInfoPb versionInfoPb = this.version_info;
        int iHashCode2 = (iHashCode + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        HealthSummary healthSummary = this.health_summary;
        int iHashCode3 = iHashCode2 + (healthSummary != null ? healthSummary.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.version_info != null) {
            arrayList.add("version_info=" + this.version_info);
        }
        if (this.health_summary != null) {
            arrayList.add("health_summary=" + this.health_summary);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApplicationStatus{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApplicationStatus copy$default(ApplicationStatus applicationStatus, VersionInfoPb versionInfoPb, HealthSummary healthSummary, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            versionInfoPb = applicationStatus.version_info;
        }
        if ((i & 2) != 0) {
            healthSummary = applicationStatus.health_summary;
        }
        if ((i & 4) != 0) {
            byteString = applicationStatus.unknownFields();
        }
        return applicationStatus.copy(versionInfoPb, healthSummary, byteString);
    }

    public final ApplicationStatus copy(VersionInfoPb version_info, HealthSummary health_summary, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApplicationStatus(version_info, health_summary, unknownFields);
    }

    /* JADX INFO: compiled from: ApplicationStatus.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ApplicationStatus$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/ApplicationStatus;", "()V", "health_summary", "Lcom/stripe/proto/model/monitor/HealthSummary;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApplicationStatus, Builder> {
        public HealthSummary health_summary;
        public VersionInfoPb version_info;

        public final Builder version_info(VersionInfoPb version_info) {
            this.version_info = version_info;
            return this;
        }

        public final Builder health_summary(HealthSummary health_summary) {
            this.health_summary = health_summary;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApplicationStatus build() {
            return new ApplicationStatus(this.version_info, this.health_summary, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApplicationStatus.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/ApplicationStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ApplicationStatus;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/ApplicationStatus$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApplicationStatus build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApplicationStatus>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.ApplicationStatus$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApplicationStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(1, value.version_info);
                }
                return value.health_summary != null ? size + HealthSummary.ADAPTER.encodedSizeWithTag(2, value.health_summary) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApplicationStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 1, value.version_info);
                }
                if (value.health_summary != null) {
                    HealthSummary.ADAPTER.encodeWithTag(writer, 2, value.health_summary);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApplicationStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.health_summary != null) {
                    HealthSummary.ADAPTER.encodeWithTag(writer, 2, value.health_summary);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 1, value.version_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationStatus redact(ApplicationStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                VersionInfoPb versionInfoPb = value.version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                HealthSummary healthSummary = value.health_summary;
                return value.copy(versionInfoPbRedact, healthSummary != null ? HealthSummary.ADAPTER.redact(healthSummary) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationStatus decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                VersionInfoPb versionInfoPbDecode = null;
                HealthSummary healthSummaryDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApplicationStatus(versionInfoPbDecode, healthSummaryDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        healthSummaryDecode = HealthSummary.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
