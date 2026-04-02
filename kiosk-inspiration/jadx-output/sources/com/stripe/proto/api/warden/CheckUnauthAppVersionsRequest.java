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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
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

/* JADX INFO: compiled from: CheckUnauthAppVersionsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dBU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JV\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u000eH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\"\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0012\u0010\u0013R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "version_info", "", "Lcom/stripe/proto/model/common/VersionInfoPb;", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "is_debug", "", "environment_variables", "", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/Map;Lokio/ByteString;)V", "getEnvironment_variables$annotations", "()V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckUnauthAppVersionsRequest extends Message<CheckUnauthAppVersionsRequest, Builder> {
    public static final ProtoAdapter<CheckUnauthAppVersionsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "environmentVariables", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 4, tag = 5)
    public final Map<String, String> environment_variables;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isDebug", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean is_debug;

    @WireField(adapter = "com.stripe.proto.model.common.LaneStatus#ADAPTER", jsonName = "laneStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final LaneStatus lane_status;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<VersionInfoPb> version_info;

    public CheckUnauthAppVersionsRequest() {
        this(null, null, null, false, null, null, 63, null);
    }

    @Deprecated(message = "environment_variables is deprecated")
    public static /* synthetic */ void getEnvironment_variables$annotations() {
    }

    public /* synthetic */ CheckUnauthAppVersionsRequest(DeviceInfo deviceInfo, List list, LaneStatus laneStatus, boolean z, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? LaneStatus.OPEN : laneStatus, (i & 8) != 0 ? false : z, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckUnauthAppVersionsRequest(DeviceInfo deviceInfo, List<VersionInfoPb> version_info, LaneStatus lane_status, boolean z, Map<String, String> environment_variables, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(version_info, "version_info");
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(environment_variables, "environment_variables");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.lane_status = lane_status;
        this.is_debug = z;
        this.version_info = Internal.immutableCopyOf("version_info", version_info);
        this.environment_variables = Internal.immutableCopyOf("environment_variables", environment_variables);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.version_info = this.version_info;
        builder.lane_status = this.lane_status;
        builder.is_debug = this.is_debug;
        builder.environment_variables = this.environment_variables;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckUnauthAppVersionsRequest)) {
            return false;
        }
        CheckUnauthAppVersionsRequest checkUnauthAppVersionsRequest = (CheckUnauthAppVersionsRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkUnauthAppVersionsRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, checkUnauthAppVersionsRequest.device_info) && Intrinsics.areEqual(this.version_info, checkUnauthAppVersionsRequest.version_info) && this.lane_status == checkUnauthAppVersionsRequest.lane_status && this.is_debug == checkUnauthAppVersionsRequest.is_debug && Intrinsics.areEqual(this.environment_variables, checkUnauthAppVersionsRequest.environment_variables);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.version_info.hashCode()) * 37) + this.lane_status.hashCode()) * 37) + Boolean.hashCode(this.is_debug)) * 37) + this.environment_variables.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (!this.version_info.isEmpty()) {
            arrayList.add("version_info=" + this.version_info);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("lane_status=" + this.lane_status);
        arrayList2.add("is_debug=" + this.is_debug);
        if (!this.environment_variables.isEmpty()) {
            arrayList2.add("environment_variables=" + this.environment_variables);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckUnauthAppVersionsRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CheckUnauthAppVersionsRequest copy$default(CheckUnauthAppVersionsRequest checkUnauthAppVersionsRequest, DeviceInfo deviceInfo, List list, LaneStatus laneStatus, boolean z, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = checkUnauthAppVersionsRequest.device_info;
        }
        if ((i & 2) != 0) {
            list = checkUnauthAppVersionsRequest.version_info;
        }
        if ((i & 4) != 0) {
            laneStatus = checkUnauthAppVersionsRequest.lane_status;
        }
        if ((i & 8) != 0) {
            z = checkUnauthAppVersionsRequest.is_debug;
        }
        if ((i & 16) != 0) {
            map = checkUnauthAppVersionsRequest.environment_variables;
        }
        if ((i & 32) != 0) {
            byteString = checkUnauthAppVersionsRequest.unknownFields();
        }
        Map map2 = map;
        ByteString byteString2 = byteString;
        return checkUnauthAppVersionsRequest.copy(deviceInfo, list, laneStatus, z, map2, byteString2);
    }

    public final CheckUnauthAppVersionsRequest copy(DeviceInfo device_info, List<VersionInfoPb> version_info, LaneStatus lane_status, boolean is_debug, Map<String, String> environment_variables, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(version_info, "version_info");
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(environment_variables, "environment_variables");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckUnauthAppVersionsRequest(device_info, version_info, lane_status, is_debug, environment_variables, unknownFields);
    }

    /* JADX INFO: compiled from: CheckUnauthAppVersionsRequest.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u0014\u0010\r\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "environment_variables", "", "", "is_debug", "", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "version_info", "", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckUnauthAppVersionsRequest, Builder> {
        public DeviceInfo device_info;
        public boolean is_debug;
        public List<VersionInfoPb> version_info = CollectionsKt.emptyList();
        public LaneStatus lane_status = LaneStatus.OPEN;
        public Map<String, String> environment_variables = MapsKt.emptyMap();

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder version_info(List<VersionInfoPb> version_info) {
            Intrinsics.checkNotNullParameter(version_info, "version_info");
            Internal.checkElementsNotNull(version_info);
            this.version_info = version_info;
            return this;
        }

        public final Builder lane_status(LaneStatus lane_status) {
            Intrinsics.checkNotNullParameter(lane_status, "lane_status");
            this.lane_status = lane_status;
            return this;
        }

        public final Builder is_debug(boolean is_debug) {
            this.is_debug = is_debug;
            return this;
        }

        @Deprecated(message = "environment_variables is deprecated")
        public final Builder environment_variables(Map<String, String> environment_variables) {
            Intrinsics.checkNotNullParameter(environment_variables, "environment_variables");
            this.environment_variables = environment_variables;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckUnauthAppVersionsRequest build() {
            return new CheckUnauthAppVersionsRequest(this.device_info, this.version_info, this.lane_status, this.is_debug, this.environment_variables, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckUnauthAppVersionsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckUnauthAppVersionsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckUnauthAppVersionsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckUnauthAppVersionsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckUnauthAppVersionsRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: environment_variablesAdapter$delegate, reason: from kotlin metadata */
            private final Lazy environment_variablesAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.warden.CheckUnauthAppVersionsRequest$Companion$ADAPTER$1$environment_variablesAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getEnvironment_variablesAdapter() {
                return (ProtoAdapter) this.environment_variablesAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckUnauthAppVersionsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                int iEncodedSizeWithTag = size + VersionInfoPb.ADAPTER.asRepeated().encodedSizeWithTag(2, value.version_info);
                if (value.lane_status != LaneStatus.OPEN) {
                    iEncodedSizeWithTag += LaneStatus.ADAPTER.encodedSizeWithTag(3, value.lane_status);
                }
                if (value.is_debug) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.is_debug));
                }
                return iEncodedSizeWithTag + getEnvironment_variablesAdapter().encodedSizeWithTag(5, value.environment_variables);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckUnauthAppVersionsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                VersionInfoPb.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.version_info);
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 3, value.lane_status);
                }
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.is_debug));
                }
                getEnvironment_variablesAdapter().encodeWithTag(writer, 5, value.environment_variables);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckUnauthAppVersionsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getEnvironment_variablesAdapter().encodeWithTag(writer, 5, value.environment_variables);
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.is_debug));
                }
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 3, value.lane_status);
                }
                VersionInfoPb.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.version_info);
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckUnauthAppVersionsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LaneStatus laneStatusDecode = LaneStatus.OPEN;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                DeviceInfo deviceInfoDecode = null;
                while (true) {
                    LaneStatus laneStatus = laneStatusDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CheckUnauthAppVersionsRequest(deviceInfoDecode, arrayList, laneStatus, zBooleanValue, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            arrayList.add(VersionInfoPb.ADAPTER.decode(reader));
                        } else if (iNextTag == 3) {
                            try {
                                laneStatusDecode = LaneStatus.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 4) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 5) {
                            linkedHashMap.putAll(getEnvironment_variablesAdapter().decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckUnauthAppVersionsRequest redact(CheckUnauthAppVersionsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return CheckUnauthAppVersionsRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, Internal.m361redactElements(value.version_info, VersionInfoPb.ADAPTER), null, false, null, ByteString.EMPTY, 28, null);
            }
        };
    }
}
