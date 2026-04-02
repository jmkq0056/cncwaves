package com.stripe.proto.api.warden;

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

/* JADX INFO: compiled from: CheckVersionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B;\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ<\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/warden/CheckVersionRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;", "store_id", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/LaneStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckVersionRequest extends Message<CheckVersionRequest, Builder> {
    public static final ProtoAdapter<CheckVersionRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.model.common.LaneStatus#ADAPTER", jsonName = "laneStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final LaneStatus lane_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "storeId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String store_id;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final VersionInfoPb version_info;

    public CheckVersionRequest() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ CheckVersionRequest(String str, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, LaneStatus laneStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : deviceInfo, (i & 4) != 0 ? null : versionInfoPb, (i & 8) != 0 ? LaneStatus.OPEN : laneStatus, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckVersionRequest(String store_id, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, LaneStatus lane_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(store_id, "store_id");
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.store_id = store_id;
        this.device_info = deviceInfo;
        this.version_info = versionInfoPb;
        this.lane_status = lane_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.store_id = this.store_id;
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
        if (!(other instanceof CheckVersionRequest)) {
            return false;
        }
        CheckVersionRequest checkVersionRequest = (CheckVersionRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkVersionRequest.unknownFields()) && Intrinsics.areEqual(this.store_id, checkVersionRequest.store_id) && Intrinsics.areEqual(this.device_info, checkVersionRequest.device_info) && Intrinsics.areEqual(this.version_info, checkVersionRequest.version_info) && this.lane_status == checkVersionRequest.lane_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.store_id.hashCode()) * 37;
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
        ArrayList arrayList2 = arrayList;
        arrayList2.add("store_id=" + Internal.sanitize(this.store_id));
        if (this.device_info != null) {
            arrayList2.add("device_info=" + this.device_info);
        }
        if (this.version_info != null) {
            arrayList2.add("version_info=" + this.version_info);
        }
        arrayList2.add("lane_status=" + this.lane_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckVersionRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CheckVersionRequest copy$default(CheckVersionRequest checkVersionRequest, String str, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, LaneStatus laneStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = checkVersionRequest.store_id;
        }
        if ((i & 2) != 0) {
            deviceInfo = checkVersionRequest.device_info;
        }
        if ((i & 4) != 0) {
            versionInfoPb = checkVersionRequest.version_info;
        }
        if ((i & 8) != 0) {
            laneStatus = checkVersionRequest.lane_status;
        }
        if ((i & 16) != 0) {
            byteString = checkVersionRequest.unknownFields();
        }
        ByteString byteString2 = byteString;
        VersionInfoPb versionInfoPb2 = versionInfoPb;
        return checkVersionRequest.copy(str, deviceInfo, versionInfoPb2, laneStatus, byteString2);
    }

    public final CheckVersionRequest copy(String store_id, DeviceInfo device_info, VersionInfoPb version_info, LaneStatus lane_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(store_id, "store_id");
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckVersionRequest(store_id, device_info, version_info, lane_status, unknownFields);
    }

    /* JADX INFO: compiled from: CheckVersionRequest.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckVersionRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "store_id", "", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckVersionRequest, Builder> {
        public DeviceInfo device_info;
        public VersionInfoPb version_info;
        public String store_id = "";
        public LaneStatus lane_status = LaneStatus.OPEN;

        public final Builder store_id(String store_id) {
            Intrinsics.checkNotNullParameter(store_id, "store_id");
            this.store_id = store_id;
            return this;
        }

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
        public CheckVersionRequest build() {
            return new CheckVersionRequest(this.store_id, this.device_info, this.version_info, this.lane_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckVersionRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckVersionRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckVersionRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckVersionRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckVersionRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckVersionRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckVersionRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckVersionRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.store_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.store_id);
                }
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(2, value.device_info);
                }
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(3, value.version_info);
                }
                return value.lane_status != LaneStatus.OPEN ? size + LaneStatus.ADAPTER.encodedSizeWithTag(4, value.lane_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckVersionRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.store_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.store_id);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.device_info);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 3, value.version_info);
                }
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 4, value.lane_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckVersionRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 4, value.lane_status);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 3, value.version_info);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.device_info);
                }
                if (Intrinsics.areEqual(value.store_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.store_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckVersionRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LaneStatus laneStatusDecode = LaneStatus.OPEN;
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                VersionInfoPb versionInfoPbDecode = null;
                String strDecode = "";
                while (true) {
                    LaneStatus laneStatus = laneStatusDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CheckVersionRequest(strDecode, deviceInfoDecode, versionInfoPbDecode, laneStatus, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            try {
                                laneStatusDecode = LaneStatus.ADAPTER.decode(reader);
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
            public CheckVersionRequest redact(CheckVersionRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                VersionInfoPb versionInfoPb = value.version_info;
                return CheckVersionRequest.copy$default(value, null, deviceInfoRedact, versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null, null, ByteString.EMPTY, 9, null);
            }
        };
    }
}
