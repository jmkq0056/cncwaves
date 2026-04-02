package com.stripe.proto.api.armada;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.monitor.HealthSummary;
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

/* JADX INFO: compiled from: ReportHealthRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/armada/ReportHealthRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/ReportHealthRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "attached_devices", "", "health_summary", "Lcom/stripe/proto/model/monitor/HealthSummary;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthSummary;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReportHealthRequest extends Message<ReportHealthRequest, Builder> {
    public static final ProtoAdapter<ReportHealthRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "attachedDevices", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 3)
    public final List<DeviceInfo> attached_devices;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.model.monitor.HealthSummary#ADAPTER", jsonName = "healthSummary", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 2)
    public final HealthSummary health_summary;

    public ReportHealthRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ReportHealthRequest(DeviceInfo deviceInfo, List list, HealthSummary healthSummary, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? null : healthSummary, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportHealthRequest(DeviceInfo deviceInfo, List<DeviceInfo> attached_devices, HealthSummary healthSummary, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(attached_devices, "attached_devices");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.health_summary = healthSummary;
        this.attached_devices = Internal.immutableCopyOf("attached_devices", attached_devices);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.attached_devices = this.attached_devices;
        builder.health_summary = this.health_summary;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReportHealthRequest)) {
            return false;
        }
        ReportHealthRequest reportHealthRequest = (ReportHealthRequest) other;
        return Intrinsics.areEqual(unknownFields(), reportHealthRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, reportHealthRequest.device_info) && Intrinsics.areEqual(this.attached_devices, reportHealthRequest.attached_devices) && Intrinsics.areEqual(this.health_summary, reportHealthRequest.health_summary);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.attached_devices.hashCode()) * 37;
        HealthSummary healthSummary = this.health_summary;
        int iHashCode3 = iHashCode2 + (healthSummary != null ? healthSummary.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (!this.attached_devices.isEmpty()) {
            arrayList.add("attached_devices=" + this.attached_devices);
        }
        if (this.health_summary != null) {
            arrayList.add("health_summary=" + this.health_summary);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReportHealthRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReportHealthRequest copy$default(ReportHealthRequest reportHealthRequest, DeviceInfo deviceInfo, List list, HealthSummary healthSummary, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = reportHealthRequest.device_info;
        }
        if ((i & 2) != 0) {
            list = reportHealthRequest.attached_devices;
        }
        if ((i & 4) != 0) {
            healthSummary = reportHealthRequest.health_summary;
        }
        if ((i & 8) != 0) {
            byteString = reportHealthRequest.unknownFields();
        }
        return reportHealthRequest.copy(deviceInfo, list, healthSummary, byteString);
    }

    public final ReportHealthRequest copy(DeviceInfo device_info, List<DeviceInfo> attached_devices, HealthSummary health_summary, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(attached_devices, "attached_devices");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReportHealthRequest(device_info, attached_devices, health_summary, unknownFields);
    }

    /* JADX INFO: compiled from: ReportHealthRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/armada/ReportHealthRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/ReportHealthRequest;", "()V", "attached_devices", "", "Lcom/stripe/proto/model/common/DeviceInfo;", "device_info", "health_summary", "Lcom/stripe/proto/model/monitor/HealthSummary;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReportHealthRequest, Builder> {
        public List<DeviceInfo> attached_devices = CollectionsKt.emptyList();
        public DeviceInfo device_info;
        public HealthSummary health_summary;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder attached_devices(List<DeviceInfo> attached_devices) {
            Intrinsics.checkNotNullParameter(attached_devices, "attached_devices");
            Internal.checkElementsNotNull(attached_devices);
            this.attached_devices = attached_devices;
            return this;
        }

        public final Builder health_summary(HealthSummary health_summary) {
            this.health_summary = health_summary;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReportHealthRequest build() {
            return new ReportHealthRequest(this.device_info, this.attached_devices, this.health_summary, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReportHealthRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/ReportHealthRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/ReportHealthRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/ReportHealthRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReportHealthRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReportHealthRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReportHealthRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.ReportHealthRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReportHealthRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                int iEncodedSizeWithTag = size + DeviceInfo.ADAPTER.asRepeated().encodedSizeWithTag(3, value.attached_devices);
                return value.health_summary != null ? iEncodedSizeWithTag + HealthSummary.ADAPTER.encodedSizeWithTag(2, value.health_summary) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReportHealthRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                DeviceInfo.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.attached_devices);
                if (value.health_summary != null) {
                    HealthSummary.ADAPTER.encodeWithTag(writer, 2, value.health_summary);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReportHealthRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.health_summary != null) {
                    HealthSummary.ADAPTER.encodeWithTag(writer, 2, value.health_summary);
                }
                DeviceInfo.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.attached_devices);
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReportHealthRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                HealthSummary healthSummaryDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReportHealthRequest(deviceInfoDecode, arrayList, healthSummaryDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        healthSummaryDecode = HealthSummary.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        arrayList.add(DeviceInfo.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReportHealthRequest redact(ReportHealthRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                List<DeviceInfo> listM361redactElements = Internal.m361redactElements(value.attached_devices, DeviceInfo.ADAPTER);
                HealthSummary healthSummary = value.health_summary;
                return value.copy(deviceInfoRedact, listM361redactElements, healthSummary != null ? HealthSummary.ADAPTER.redact(healthSummary) : null, ByteString.EMPTY);
            }
        };
    }
}
