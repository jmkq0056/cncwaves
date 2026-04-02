package com.stripe.proto.api.warden;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.DeviceAssetInfo;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.LaneStatus;
import com.stripe.proto.model.common.VersionInfoPb;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: CheckAppVersionsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002%&B{\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\b\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J|\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\b2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u001e\u001a\u00020\r2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0002H\u0016J\b\u0010$\u001a\u00020\u0004H\u0016R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0018R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0019\u0010\u0018R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001a\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001b\u0010\u0018R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001c\u0010\u0018¨\u0006'"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;", "store_id", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "version_info", "", "Lcom/stripe/proto/model/common/VersionInfoPb;", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "is_debug", "", "asset_versions", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "environment_variables", "", "capabilities", "Lcom/stripe/proto/api/warden/ReaderCapabilities;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V", "getEnvironment_variables$annotations", "()V", "is_debug$annotations", "getLane_status$annotations", "getStore_id$annotations", "getVersion_info$annotations", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckAppVersionsRequest extends Message<CheckAppVersionsRequest, Builder> {
    public static final ProtoAdapter<CheckAppVersionsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetInfo#ADAPTER", jsonName = "assetVersions", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 6)
    public final List<DeviceAssetInfo> asset_versions;

    @WireField(adapter = "com.stripe.proto.api.warden.ReaderCapabilities#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final ReaderCapabilities capabilities;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "environmentVariables", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 6, tag = 7)
    public final Map<String, String> environment_variables;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isDebug", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final boolean is_debug;

    @WireField(adapter = "com.stripe.proto.model.common.LaneStatus#ADAPTER", jsonName = "laneStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final LaneStatus lane_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "storeId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String store_id;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<VersionInfoPb> version_info;

    public CheckAppVersionsRequest() {
        this(null, null, null, null, false, null, null, null, null, 511, null);
    }

    @Deprecated(message = "environment_variables is deprecated")
    public static /* synthetic */ void getEnvironment_variables$annotations() {
    }

    @Deprecated(message = "lane_status is deprecated")
    public static /* synthetic */ void getLane_status$annotations() {
    }

    @Deprecated(message = "store_id is deprecated")
    public static /* synthetic */ void getStore_id$annotations() {
    }

    @Deprecated(message = "version_info is deprecated")
    public static /* synthetic */ void getVersion_info$annotations() {
    }

    @Deprecated(message = "is_debug is deprecated")
    public static /* synthetic */ void is_debug$annotations() {
    }

    public /* synthetic */ CheckAppVersionsRequest(String str, DeviceInfo deviceInfo, List list, LaneStatus laneStatus, boolean z, List list2, Map map, ReaderCapabilities readerCapabilities, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : deviceInfo, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? LaneStatus.OPEN : laneStatus, (i & 16) != 0 ? false : z, (i & 32) != 0 ? CollectionsKt.emptyList() : list2, (i & 64) != 0 ? MapsKt.emptyMap() : map, (i & 128) != 0 ? null : readerCapabilities, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckAppVersionsRequest(String store_id, DeviceInfo deviceInfo, List<VersionInfoPb> version_info, LaneStatus lane_status, boolean z, List<DeviceAssetInfo> asset_versions, Map<String, String> environment_variables, ReaderCapabilities readerCapabilities, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(store_id, "store_id");
        Intrinsics.checkNotNullParameter(version_info, "version_info");
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(asset_versions, "asset_versions");
        Intrinsics.checkNotNullParameter(environment_variables, "environment_variables");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.store_id = store_id;
        this.device_info = deviceInfo;
        this.lane_status = lane_status;
        this.is_debug = z;
        this.capabilities = readerCapabilities;
        this.version_info = Internal.immutableCopyOf("version_info", version_info);
        this.asset_versions = Internal.immutableCopyOf("asset_versions", asset_versions);
        this.environment_variables = Internal.immutableCopyOf("environment_variables", environment_variables);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.store_id = this.store_id;
        builder.device_info = this.device_info;
        builder.version_info = this.version_info;
        builder.lane_status = this.lane_status;
        builder.is_debug = this.is_debug;
        builder.asset_versions = this.asset_versions;
        builder.environment_variables = this.environment_variables;
        builder.capabilities = this.capabilities;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckAppVersionsRequest)) {
            return false;
        }
        CheckAppVersionsRequest checkAppVersionsRequest = (CheckAppVersionsRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkAppVersionsRequest.unknownFields()) && Intrinsics.areEqual(this.store_id, checkAppVersionsRequest.store_id) && Intrinsics.areEqual(this.device_info, checkAppVersionsRequest.device_info) && Intrinsics.areEqual(this.version_info, checkAppVersionsRequest.version_info) && this.lane_status == checkAppVersionsRequest.lane_status && this.is_debug == checkAppVersionsRequest.is_debug && Intrinsics.areEqual(this.asset_versions, checkAppVersionsRequest.asset_versions) && Intrinsics.areEqual(this.environment_variables, checkAppVersionsRequest.environment_variables) && Intrinsics.areEqual(this.capabilities, checkAppVersionsRequest.capabilities);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.store_id.hashCode()) * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (((((((((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.version_info.hashCode()) * 37) + this.lane_status.hashCode()) * 37) + Boolean.hashCode(this.is_debug)) * 37) + this.asset_versions.hashCode()) * 37) + this.environment_variables.hashCode()) * 37;
        ReaderCapabilities readerCapabilities = this.capabilities;
        int iHashCode3 = iHashCode2 + (readerCapabilities != null ? readerCapabilities.hashCode() : 0);
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
        if (!this.version_info.isEmpty()) {
            arrayList2.add("version_info=" + this.version_info);
        }
        arrayList2.add("lane_status=" + this.lane_status);
        arrayList2.add("is_debug=" + this.is_debug);
        if (!this.asset_versions.isEmpty()) {
            arrayList2.add("asset_versions=" + this.asset_versions);
        }
        if (!this.environment_variables.isEmpty()) {
            arrayList2.add("environment_variables=" + this.environment_variables);
        }
        if (this.capabilities != null) {
            arrayList2.add("capabilities=" + this.capabilities);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckAppVersionsRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CheckAppVersionsRequest copy$default(CheckAppVersionsRequest checkAppVersionsRequest, String str, DeviceInfo deviceInfo, List list, LaneStatus laneStatus, boolean z, List list2, Map map, ReaderCapabilities readerCapabilities, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = checkAppVersionsRequest.store_id;
        }
        if ((i & 2) != 0) {
            deviceInfo = checkAppVersionsRequest.device_info;
        }
        if ((i & 4) != 0) {
            list = checkAppVersionsRequest.version_info;
        }
        if ((i & 8) != 0) {
            laneStatus = checkAppVersionsRequest.lane_status;
        }
        if ((i & 16) != 0) {
            z = checkAppVersionsRequest.is_debug;
        }
        if ((i & 32) != 0) {
            list2 = checkAppVersionsRequest.asset_versions;
        }
        if ((i & 64) != 0) {
            map = checkAppVersionsRequest.environment_variables;
        }
        if ((i & 128) != 0) {
            readerCapabilities = checkAppVersionsRequest.capabilities;
        }
        if ((i & 256) != 0) {
            byteString = checkAppVersionsRequest.unknownFields();
        }
        ReaderCapabilities readerCapabilities2 = readerCapabilities;
        ByteString byteString2 = byteString;
        List list3 = list2;
        Map map2 = map;
        boolean z2 = z;
        List list4 = list;
        return checkAppVersionsRequest.copy(str, deviceInfo, list4, laneStatus, z2, list3, map2, readerCapabilities2, byteString2);
    }

    public final CheckAppVersionsRequest copy(String store_id, DeviceInfo device_info, List<VersionInfoPb> version_info, LaneStatus lane_status, boolean is_debug, List<DeviceAssetInfo> asset_versions, Map<String, String> environment_variables, ReaderCapabilities capabilities, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(store_id, "store_id");
        Intrinsics.checkNotNullParameter(version_info, "version_info");
        Intrinsics.checkNotNullParameter(lane_status, "lane_status");
        Intrinsics.checkNotNullParameter(asset_versions, "asset_versions");
        Intrinsics.checkNotNullParameter(environment_variables, "environment_variables");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckAppVersionsRequest(store_id, device_info, version_info, lane_status, is_debug, asset_versions, environment_variables, capabilities, unknownFields);
    }

    /* JADX INFO: compiled from: CheckAppVersionsRequest.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u001c\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\fH\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rH\u0007J\u0016\u0010\u0013\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005H\u0007R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;", "()V", "asset_versions", "", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "capabilities", "Lcom/stripe/proto/api/warden/ReaderCapabilities;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "environment_variables", "", "", "is_debug", "", "lane_status", "Lcom/stripe/proto/model/common/LaneStatus;", "store_id", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckAppVersionsRequest, Builder> {
        public ReaderCapabilities capabilities;
        public DeviceInfo device_info;
        public boolean is_debug;
        public String store_id = "";
        public List<VersionInfoPb> version_info = CollectionsKt.emptyList();
        public LaneStatus lane_status = LaneStatus.OPEN;
        public List<DeviceAssetInfo> asset_versions = CollectionsKt.emptyList();
        public Map<String, String> environment_variables = MapsKt.emptyMap();

        @Deprecated(message = "store_id is deprecated")
        public final Builder store_id(String store_id) {
            Intrinsics.checkNotNullParameter(store_id, "store_id");
            this.store_id = store_id;
            return this;
        }

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        @Deprecated(message = "version_info is deprecated")
        public final Builder version_info(List<VersionInfoPb> version_info) {
            Intrinsics.checkNotNullParameter(version_info, "version_info");
            Internal.checkElementsNotNull(version_info);
            this.version_info = version_info;
            return this;
        }

        @Deprecated(message = "lane_status is deprecated")
        public final Builder lane_status(LaneStatus lane_status) {
            Intrinsics.checkNotNullParameter(lane_status, "lane_status");
            this.lane_status = lane_status;
            return this;
        }

        @Deprecated(message = "is_debug is deprecated")
        public final Builder is_debug(boolean is_debug) {
            this.is_debug = is_debug;
            return this;
        }

        public final Builder asset_versions(List<DeviceAssetInfo> asset_versions) {
            Intrinsics.checkNotNullParameter(asset_versions, "asset_versions");
            Internal.checkElementsNotNull(asset_versions);
            this.asset_versions = asset_versions;
            return this;
        }

        @Deprecated(message = "environment_variables is deprecated")
        public final Builder environment_variables(Map<String, String> environment_variables) {
            Intrinsics.checkNotNullParameter(environment_variables, "environment_variables");
            this.environment_variables = environment_variables;
            return this;
        }

        public final Builder capabilities(ReaderCapabilities capabilities) {
            this.capabilities = capabilities;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckAppVersionsRequest build() {
            return new CheckAppVersionsRequest(this.store_id, this.device_info, this.version_info, this.lane_status, this.is_debug, this.asset_versions, this.environment_variables, this.capabilities, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckAppVersionsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckAppVersionsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckAppVersionsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckAppVersionsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckAppVersionsRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: environment_variablesAdapter$delegate, reason: from kotlin metadata */
            private final Lazy environment_variablesAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.warden.CheckAppVersionsRequest$Companion$ADAPTER$1$environment_variablesAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getEnvironment_variablesAdapter() {
                return (ProtoAdapter) this.environment_variablesAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckAppVersionsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.store_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.store_id);
                }
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(2, value.device_info);
                }
                int iEncodedSizeWithTag = size + VersionInfoPb.ADAPTER.asRepeated().encodedSizeWithTag(3, value.version_info);
                if (value.lane_status != LaneStatus.OPEN) {
                    iEncodedSizeWithTag += LaneStatus.ADAPTER.encodedSizeWithTag(4, value.lane_status);
                }
                if (value.is_debug) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.is_debug));
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + DeviceAssetInfo.ADAPTER.asRepeated().encodedSizeWithTag(6, value.asset_versions) + getEnvironment_variablesAdapter().encodedSizeWithTag(7, value.environment_variables);
                return value.capabilities != null ? iEncodedSizeWithTag2 + ReaderCapabilities.ADAPTER.encodedSizeWithTag(8, value.capabilities) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckAppVersionsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.store_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.store_id);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.device_info);
                }
                VersionInfoPb.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.version_info);
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 4, value.lane_status);
                }
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.is_debug));
                }
                DeviceAssetInfo.ADAPTER.asRepeated().encodeWithTag(writer, 6, value.asset_versions);
                getEnvironment_variablesAdapter().encodeWithTag(writer, 7, value.environment_variables);
                if (value.capabilities != null) {
                    ReaderCapabilities.ADAPTER.encodeWithTag(writer, 8, value.capabilities);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckAppVersionsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.capabilities != null) {
                    ReaderCapabilities.ADAPTER.encodeWithTag(writer, 8, value.capabilities);
                }
                getEnvironment_variablesAdapter().encodeWithTag(writer, 7, value.environment_variables);
                DeviceAssetInfo.ADAPTER.asRepeated().encodeWithTag(writer, 6, value.asset_versions);
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.is_debug));
                }
                if (value.lane_status != LaneStatus.OPEN) {
                    LaneStatus.ADAPTER.encodeWithTag(writer, 4, value.lane_status);
                }
                VersionInfoPb.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.version_info);
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.device_info);
                }
                if (Intrinsics.areEqual(value.store_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.store_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.api.warden.CheckAppVersionsRequest decode(com.squareup.wire.ProtoReader r17) throws java.io.IOException {
                /*
                    r16 = this;
                    r1 = r17
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    java.util.ArrayList r0 = new java.util.ArrayList
                    r0.<init>()
                    r4 = r0
                    java.util.List r4 = (java.util.List) r4
                    com.stripe.proto.model.common.LaneStatus r0 = com.stripe.proto.model.common.LaneStatus.OPEN
                    java.util.ArrayList r2 = new java.util.ArrayList
                    r2.<init>()
                    r7 = r2
                    java.util.List r7 = (java.util.List) r7
                    java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
                    r2.<init>()
                    r8 = r2
                    java.util.Map r8 = (java.util.Map) r8
                    long r2 = r1.beginMessage()
                    java.lang.String r5 = ""
                    r6 = 0
                    r9 = 0
                    r10 = r6
                    r11 = r9
                    r6 = r5
                    r9 = r10
                L2d:
                    r5 = r0
                L2e:
                    int r12 = r1.nextTag()
                    r0 = -1
                    if (r12 == r0) goto L99
                    switch(r12) {
                        case 1: goto L91;
                        case 2: goto L89;
                        case 3: goto L7f;
                        case 4: goto L6a;
                        case 5: goto L5c;
                        case 6: goto L52;
                        case 7: goto L44;
                        case 8: goto L3c;
                        default: goto L38;
                    }
                L38:
                    r1.readUnknownField(r12)
                    goto L2e
                L3c:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.api.warden.ReaderCapabilities> r0 = com.stripe.proto.api.warden.ReaderCapabilities.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r10 = r0
                    goto L2e
                L44:
                    com.squareup.wire.ProtoAdapter r0 = r16.getEnvironment_variablesAdapter()
                    java.lang.Object r0 = r0.decode(r1)
                    java.util.Map r0 = (java.util.Map) r0
                    r8.putAll(r0)
                    goto L2e
                L52:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.DeviceAssetInfo> r0 = com.stripe.proto.model.common.DeviceAssetInfo.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r7.add(r0)
                    goto L2e
                L5c:
                    com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL
                    java.lang.Object r0 = r0.decode(r1)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    r11 = r0
                    goto L2e
                L6a:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.LaneStatus> r0 = com.stripe.proto.model.common.LaneStatus.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L71
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L71
                    goto L2d
                L71:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r13 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r14 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r14)
                    r1.addUnknownField(r12, r13, r0)
                    goto L2e
                L7f:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.VersionInfoPb> r0 = com.stripe.proto.model.common.VersionInfoPb.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r4.add(r0)
                    goto L2e
                L89:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.DeviceInfo> r0 = com.stripe.proto.model.common.DeviceInfo.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r9 = r0
                    goto L2e
                L91:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r6 = r0
                    goto L2e
                L99:
                    okio.ByteString r0 = r1.endMessageAndGetUnknownFields(r2)
                    com.stripe.proto.api.warden.CheckAppVersionsRequest r1 = new com.stripe.proto.api.warden.CheckAppVersionsRequest
                    r2 = r6
                    java.lang.String r2 = (java.lang.String) r2
                    r3 = r9
                    com.stripe.proto.model.common.DeviceInfo r3 = (com.stripe.proto.model.common.DeviceInfo) r3
                    com.stripe.proto.model.common.LaneStatus r5 = (com.stripe.proto.model.common.LaneStatus) r5
                    r9 = r10
                    com.stripe.proto.api.warden.ReaderCapabilities r9 = (com.stripe.proto.api.warden.ReaderCapabilities) r9
                    r10 = r0
                    r6 = r11
                    r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.api.warden.CheckAppVersionsRequest$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.api.warden.CheckAppVersionsRequest");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckAppVersionsRequest redact(CheckAppVersionsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                List listM361redactElements = Internal.m361redactElements(value.version_info, VersionInfoPb.ADAPTER);
                List listM361redactElements2 = Internal.m361redactElements(value.asset_versions, DeviceAssetInfo.ADAPTER);
                ReaderCapabilities readerCapabilities = value.capabilities;
                return CheckAppVersionsRequest.copy$default(value, null, deviceInfoRedact, listM361redactElements, null, false, listM361redactElements2, null, readerCapabilities != null ? ReaderCapabilities.ADAPTER.redact(readerCapabilities) : null, ByteString.EMPTY, 89, null);
            }
        };
    }
}
