package com.stripe.proto.api.warden;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.LaneStatus;
import com.stripe.proto.model.common.VersionInfoPb;
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

/* JADX INFO: compiled from: CheckUnauthVersionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/LaneStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckUnauthVersionRequest extends Message<CheckUnauthVersionRequest, Builder> {
    public static final ProtoAdapter<CheckUnauthVersionRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.model.common.LaneStatus#ADAPTER", jsonName = "laneStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final LaneStatus lane_status;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final VersionInfoPb version_info;

    public CheckUnauthVersionRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CheckUnauthVersionRequest(DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, LaneStatus laneStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? null : versionInfoPb, (i & 4) != 0 ? LaneStatus.OPEN : laneStatus, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckUnauthVersionRequest(DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, LaneStatus lane_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.version_info = versionInfoPb;
        this.lane_status = lane_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.version_info = this.version_info;
        builder.lane_status = this.lane_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckUnauthVersionRequest)) {
            return false;
        }
        CheckUnauthVersionRequest checkUnauthVersionRequest = (CheckUnauthVersionRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkUnauthVersionRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, checkUnauthVersionRequest.device_info) && Intrinsics.areEqual(this.version_info, checkUnauthVersionRequest.version_info) && this.lane_status == checkUnauthVersionRequest.lane_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb = this.version_info;
        int iHashCode3 = ((iHashCode2 + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37) + this.lane_status.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (this.version_info != null) {
            arrayList.add("version_info=" + this.version_info);
        }
        arrayList.add("lane_status=" + this.lane_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckUnauthVersionRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CheckUnauthVersionRequest copy$default(CheckUnauthVersionRequest checkUnauthVersionRequest, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, LaneStatus laneStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = checkUnauthVersionRequest.device_info;
        }
        if ((i & 2) != 0) {
            versionInfoPb = checkUnauthVersionRequest.version_info;
        }
        if ((i & 4) != 0) {
            laneStatus = checkUnauthVersionRequest.lane_status;
        }
        if ((i & 8) != 0) {
            byteString = checkUnauthVersionRequest.unknownFields();
        }
        return checkUnauthVersionRequest.copy(deviceInfo, versionInfoPb, laneStatus, byteString);
    }

    public final CheckUnauthVersionRequest copy(DeviceInfo device_info, VersionInfoPb version_info, LaneStatus lane_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckUnauthVersionRequest(device_info, version_info, lane_status, unknownFields);
    }

    /* JADX INFO: compiled from: CheckUnauthVersionRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckUnauthVersionRequest, Builder> {
        public DeviceInfo device_info;
        public LaneStatus lane_status = LaneStatus.OPEN;
        public VersionInfoPb version_info;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder version_info(VersionInfoPb version_info) {
            this.version_info = version_info;
            return this;
        }

        public final Builder lane_status(LaneStatus lane_status) {
            Intrinsics.checkNotNullParameter(lane_status, "lane_status");
            this.lane_status = lane_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckUnauthVersionRequest build() {
            return new CheckUnauthVersionRequest(this.device_info, this.version_info, this.lane_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckUnauthVersionRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckUnauthVersionRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckUnauthVersionRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckUnauthVersionRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckUnauthVersionRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckUnauthVersionRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(2, value.version_info);
                }
                return value.lane_status != LaneStatus.OPEN ? size + LaneStatus.ADAPTER.encodedSizeWithTag(3, value.lane_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckUnauthVersionRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 2, value.version_info);
                }
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 3, value.lane_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckUnauthVersionRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 3, value.lane_status);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 2, value.version_info);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckUnauthVersionRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LaneStatus laneStatusDecode = LaneStatus.OPEN;
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                VersionInfoPb versionInfoPbDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CheckUnauthVersionRequest(deviceInfoDecode, versionInfoPbDecode, laneStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            laneStatusDecode = LaneStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckUnauthVersionRequest redact(CheckUnauthVersionRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                VersionInfoPb versionInfoPb = value.version_info;
                return CheckUnauthVersionRequest.copy$default(value, deviceInfoRedact, versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null, null, ByteString.EMPTY, 4, null);
            }
        };
    }
}
