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
import com.stripe.proto.model.common.ReportedConfigFile;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReportConfigRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated(message = "ReportConfigRequest is deprecated")
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ,\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\fR\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\f¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/armada/ReportConfigRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reported_config", "", "Lcom/stripe/proto/model/common/ReportedConfigFile;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lokio/ByteString;)V", "getDevice_info$annotations", "()V", "getReported_config$annotations", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReportConfigRequest extends Message<ReportConfigRequest, Builder> {
    public static final ProtoAdapter<ReportConfigRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.model.common.ReportedConfigFile#ADAPTER", jsonName = "reportedConfig", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<ReportedConfigFile> reported_config;

    public ReportConfigRequest() {
        this(null, null, null, 7, null);
    }

    @Deprecated(message = "device_info is deprecated")
    public static /* synthetic */ void getDevice_info$annotations() {
    }

    @Deprecated(message = "reported_config is deprecated")
    public static /* synthetic */ void getReported_config$annotations() {
    }

    public /* synthetic */ ReportConfigRequest(DeviceInfo deviceInfo, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportConfigRequest(DeviceInfo deviceInfo, List<ReportedConfigFile> reported_config, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(reported_config, "reported_config");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.reported_config = Internal.immutableCopyOf("reported_config", reported_config);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.reported_config = this.reported_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReportConfigRequest)) {
            return false;
        }
        ReportConfigRequest reportConfigRequest = (ReportConfigRequest) other;
        return Intrinsics.areEqual(unknownFields(), reportConfigRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, reportConfigRequest.device_info) && Intrinsics.areEqual(this.reported_config, reportConfigRequest.reported_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.reported_config.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (!this.reported_config.isEmpty()) {
            arrayList.add("reported_config=" + this.reported_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReportConfigRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReportConfigRequest copy$default(ReportConfigRequest reportConfigRequest, DeviceInfo deviceInfo, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = reportConfigRequest.device_info;
        }
        if ((i & 2) != 0) {
            list = reportConfigRequest.reported_config;
        }
        if ((i & 4) != 0) {
            byteString = reportConfigRequest.unknownFields();
        }
        return reportConfigRequest.copy(deviceInfo, list, byteString);
    }

    public final ReportConfigRequest copy(DeviceInfo device_info, List<ReportedConfigFile> reported_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(reported_config, "reported_config");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReportConfigRequest(device_info, reported_config, unknownFields);
    }

    /* JADX INFO: compiled from: ReportConfigRequest.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u0016\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/ReportConfigRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reported_config", "", "Lcom/stripe/proto/model/common/ReportedConfigFile;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReportConfigRequest, Builder> {
        public DeviceInfo device_info;
        public List<ReportedConfigFile> reported_config = CollectionsKt.emptyList();

        @Deprecated(message = "device_info is deprecated")
        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        @Deprecated(message = "reported_config is deprecated")
        public final Builder reported_config(List<ReportedConfigFile> reported_config) {
            Intrinsics.checkNotNullParameter(reported_config, "reported_config");
            Internal.checkElementsNotNull(reported_config);
            this.reported_config = reported_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReportConfigRequest build() {
            return new ReportConfigRequest(this.device_info, this.reported_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReportConfigRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/ReportConfigRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/ReportConfigRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReportConfigRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReportConfigRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReportConfigRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.ReportConfigRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReportConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                return size + ReportedConfigFile.ADAPTER.asRepeated().encodedSizeWithTag(2, value.reported_config);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReportConfigRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                ReportedConfigFile.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.reported_config);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReportConfigRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ReportedConfigFile.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.reported_config);
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReportConfigRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReportConfigRequest(deviceInfoDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(ReportedConfigFile.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReportConfigRequest redact(ReportConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return value.copy(deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, Internal.m361redactElements(value.reported_config, ReportedConfigFile.ADAPTER), ByteString.EMPTY);
            }
        };
    }
}
