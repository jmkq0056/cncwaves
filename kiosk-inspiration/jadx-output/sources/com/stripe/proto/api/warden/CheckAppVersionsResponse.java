package com.stripe.proto.api.warden;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.warden.CheckAppVersionsResponse;
import com.stripe.proto.model.common.ClientVersionSpecPb;
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

/* JADX INFO: compiled from: CheckAppVersionsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eB]\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ^\u0010\u0013\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u000bH\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0012\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;", "client_upgrade_spec", "", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "default_app_on_device", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;", "os_upgrade_spec", "firmware_upgrade_spec", "device_assets_snapshot_id", "", "deploy_group_snapshot_ids", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "getFirmware_upgrade_spec$annotations", "()V", "getOs_upgrade_spec$annotations", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "DefaultApp", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckAppVersionsResponse extends Message<CheckAppVersionsResponse, Builder> {
    public static final ProtoAdapter<CheckAppVersionsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "clientUpgradeSpec", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<ClientVersionSpecPb> client_upgrade_spec;

    @WireField(adapter = "com.stripe.proto.api.warden.CheckAppVersionsResponse$DefaultApp#ADAPTER", jsonName = "defaultAppOnDevice", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 4)
    public final DefaultApp default_app_on_device;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deployGroupSnapshotIds", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 6)
    public final List<String> deploy_group_snapshot_ids;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceAssetsSnapshotId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String device_assets_snapshot_id;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "firmwareUpgradeSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 3)
    public final ClientVersionSpecPb firmware_upgrade_spec;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "osUpgradeSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 2)
    public final ClientVersionSpecPb os_upgrade_spec;

    public CheckAppVersionsResponse() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    @Deprecated(message = "firmware_upgrade_spec is deprecated")
    public static /* synthetic */ void getFirmware_upgrade_spec$annotations() {
    }

    @Deprecated(message = "os_upgrade_spec is deprecated")
    public static /* synthetic */ void getOs_upgrade_spec$annotations() {
    }

    public /* synthetic */ CheckAppVersionsResponse(List list, DefaultApp defaultApp, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String str, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : defaultApp, (i & 4) != 0 ? null : clientVersionSpecPb, (i & 8) != 0 ? null : clientVersionSpecPb2, (i & 16) != 0 ? "" : str, (i & 32) != 0 ? CollectionsKt.emptyList() : list2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckAppVersionsResponse(List<ClientVersionSpecPb> client_upgrade_spec, DefaultApp defaultApp, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String device_assets_snapshot_id, List<String> deploy_group_snapshot_ids, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(client_upgrade_spec, "client_upgrade_spec");
        Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
        Intrinsics.checkNotNullParameter(deploy_group_snapshot_ids, "deploy_group_snapshot_ids");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.default_app_on_device = defaultApp;
        this.os_upgrade_spec = clientVersionSpecPb;
        this.firmware_upgrade_spec = clientVersionSpecPb2;
        this.device_assets_snapshot_id = device_assets_snapshot_id;
        this.client_upgrade_spec = Internal.immutableCopyOf("client_upgrade_spec", client_upgrade_spec);
        this.deploy_group_snapshot_ids = Internal.immutableCopyOf("deploy_group_snapshot_ids", deploy_group_snapshot_ids);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_upgrade_spec = this.client_upgrade_spec;
        builder.default_app_on_device = this.default_app_on_device;
        builder.os_upgrade_spec = this.os_upgrade_spec;
        builder.firmware_upgrade_spec = this.firmware_upgrade_spec;
        builder.device_assets_snapshot_id = this.device_assets_snapshot_id;
        builder.deploy_group_snapshot_ids = this.deploy_group_snapshot_ids;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckAppVersionsResponse)) {
            return false;
        }
        CheckAppVersionsResponse checkAppVersionsResponse = (CheckAppVersionsResponse) other;
        return Intrinsics.areEqual(unknownFields(), checkAppVersionsResponse.unknownFields()) && Intrinsics.areEqual(this.client_upgrade_spec, checkAppVersionsResponse.client_upgrade_spec) && Intrinsics.areEqual(this.default_app_on_device, checkAppVersionsResponse.default_app_on_device) && Intrinsics.areEqual(this.os_upgrade_spec, checkAppVersionsResponse.os_upgrade_spec) && Intrinsics.areEqual(this.firmware_upgrade_spec, checkAppVersionsResponse.firmware_upgrade_spec) && Intrinsics.areEqual(this.device_assets_snapshot_id, checkAppVersionsResponse.device_assets_snapshot_id) && Intrinsics.areEqual(this.deploy_group_snapshot_ids, checkAppVersionsResponse.deploy_group_snapshot_ids);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.client_upgrade_spec.hashCode()) * 37;
        DefaultApp defaultApp = this.default_app_on_device;
        int iHashCode2 = (iHashCode + (defaultApp != null ? defaultApp.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb = this.os_upgrade_spec;
        int iHashCode3 = (iHashCode2 + (clientVersionSpecPb != null ? clientVersionSpecPb.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb2 = this.firmware_upgrade_spec;
        int iHashCode4 = ((((iHashCode3 + (clientVersionSpecPb2 != null ? clientVersionSpecPb2.hashCode() : 0)) * 37) + this.device_assets_snapshot_id.hashCode()) * 37) + this.deploy_group_snapshot_ids.hashCode();
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.client_upgrade_spec.isEmpty()) {
            arrayList.add("client_upgrade_spec=" + this.client_upgrade_spec);
        }
        if (this.default_app_on_device != null) {
            arrayList.add("default_app_on_device=" + this.default_app_on_device);
        }
        if (this.os_upgrade_spec != null) {
            arrayList.add("os_upgrade_spec=" + this.os_upgrade_spec);
        }
        if (this.firmware_upgrade_spec != null) {
            arrayList.add("firmware_upgrade_spec=" + this.firmware_upgrade_spec);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_assets_snapshot_id=" + Internal.sanitize(this.device_assets_snapshot_id));
        if (!this.deploy_group_snapshot_ids.isEmpty()) {
            arrayList2.add("deploy_group_snapshot_ids=" + Internal.sanitize(this.deploy_group_snapshot_ids));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckAppVersionsResponse{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CheckAppVersionsResponse copy$default(CheckAppVersionsResponse checkAppVersionsResponse, List list, DefaultApp defaultApp, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String str, List list2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = checkAppVersionsResponse.client_upgrade_spec;
        }
        if ((i & 2) != 0) {
            defaultApp = checkAppVersionsResponse.default_app_on_device;
        }
        if ((i & 4) != 0) {
            clientVersionSpecPb = checkAppVersionsResponse.os_upgrade_spec;
        }
        if ((i & 8) != 0) {
            clientVersionSpecPb2 = checkAppVersionsResponse.firmware_upgrade_spec;
        }
        if ((i & 16) != 0) {
            str = checkAppVersionsResponse.device_assets_snapshot_id;
        }
        if ((i & 32) != 0) {
            list2 = checkAppVersionsResponse.deploy_group_snapshot_ids;
        }
        if ((i & 64) != 0) {
            byteString = checkAppVersionsResponse.unknownFields();
        }
        List list3 = list2;
        ByteString byteString2 = byteString;
        String str2 = str;
        ClientVersionSpecPb clientVersionSpecPb3 = clientVersionSpecPb;
        return checkAppVersionsResponse.copy(list, defaultApp, clientVersionSpecPb3, clientVersionSpecPb2, str2, list3, byteString2);
    }

    public final CheckAppVersionsResponse copy(List<ClientVersionSpecPb> client_upgrade_spec, DefaultApp default_app_on_device, ClientVersionSpecPb os_upgrade_spec, ClientVersionSpecPb firmware_upgrade_spec, String device_assets_snapshot_id, List<String> deploy_group_snapshot_ids, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(client_upgrade_spec, "client_upgrade_spec");
        Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
        Intrinsics.checkNotNullParameter(deploy_group_snapshot_ids, "deploy_group_snapshot_ids");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckAppVersionsResponse(client_upgrade_spec, default_app_on_device, os_upgrade_spec, firmware_upgrade_spec, device_assets_snapshot_id, deploy_group_snapshot_ids, unknownFields);
    }

    /* JADX INFO: compiled from: CheckAppVersionsResponse.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u0012\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0007R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;", "()V", "client_upgrade_spec", "", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "default_app_on_device", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;", "deploy_group_snapshot_ids", "", "device_assets_snapshot_id", "firmware_upgrade_spec", "os_upgrade_spec", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckAppVersionsResponse, Builder> {
        public DefaultApp default_app_on_device;
        public ClientVersionSpecPb firmware_upgrade_spec;
        public ClientVersionSpecPb os_upgrade_spec;
        public List<ClientVersionSpecPb> client_upgrade_spec = CollectionsKt.emptyList();
        public String device_assets_snapshot_id = "";
        public List<String> deploy_group_snapshot_ids = CollectionsKt.emptyList();

        public final Builder client_upgrade_spec(List<ClientVersionSpecPb> client_upgrade_spec) {
            Intrinsics.checkNotNullParameter(client_upgrade_spec, "client_upgrade_spec");
            Internal.checkElementsNotNull(client_upgrade_spec);
            this.client_upgrade_spec = client_upgrade_spec;
            return this;
        }

        public final Builder default_app_on_device(DefaultApp default_app_on_device) {
            this.default_app_on_device = default_app_on_device;
            return this;
        }

        @Deprecated(message = "os_upgrade_spec is deprecated")
        public final Builder os_upgrade_spec(ClientVersionSpecPb os_upgrade_spec) {
            this.os_upgrade_spec = os_upgrade_spec;
            return this;
        }

        @Deprecated(message = "firmware_upgrade_spec is deprecated")
        public final Builder firmware_upgrade_spec(ClientVersionSpecPb firmware_upgrade_spec) {
            this.firmware_upgrade_spec = firmware_upgrade_spec;
            return this;
        }

        public final Builder device_assets_snapshot_id(String device_assets_snapshot_id) {
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            this.device_assets_snapshot_id = device_assets_snapshot_id;
            return this;
        }

        public final Builder deploy_group_snapshot_ids(List<String> deploy_group_snapshot_ids) {
            Intrinsics.checkNotNullParameter(deploy_group_snapshot_ids, "deploy_group_snapshot_ids");
            Internal.checkElementsNotNull(deploy_group_snapshot_ids);
            this.deploy_group_snapshot_ids = deploy_group_snapshot_ids;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckAppVersionsResponse build() {
            return new CheckAppVersionsResponse(this.client_upgrade_spec, this.default_app_on_device, this.os_upgrade_spec, this.firmware_upgrade_spec, this.device_assets_snapshot_id, this.deploy_group_snapshot_ids, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckAppVersionsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckAppVersionsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckAppVersionsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckAppVersionsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckAppVersionsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckAppVersionsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ClientVersionSpecPb.ADAPTER.asRepeated().encodedSizeWithTag(1, value.client_upgrade_spec);
                if (value.default_app_on_device != null) {
                    size += CheckAppVersionsResponse.DefaultApp.ADAPTER.encodedSizeWithTag(4, value.default_app_on_device);
                }
                if (value.os_upgrade_spec != null) {
                    size += ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(2, value.os_upgrade_spec);
                }
                if (value.firmware_upgrade_spec != null) {
                    size += ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(3, value.firmware_upgrade_spec);
                }
                if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.device_assets_snapshot_id);
                }
                return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(6, value.deploy_group_snapshot_ids);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckAppVersionsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ClientVersionSpecPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.client_upgrade_spec);
                if (value.default_app_on_device != null) {
                    CheckAppVersionsResponse.DefaultApp.ADAPTER.encodeWithTag(writer, 4, value.default_app_on_device);
                }
                if (value.os_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 2, value.os_upgrade_spec);
                }
                if (value.firmware_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 3, value.firmware_upgrade_spec);
                }
                if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.device_assets_snapshot_id);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.deploy_group_snapshot_ids);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckAppVersionsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.deploy_group_snapshot_ids);
                if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.device_assets_snapshot_id);
                }
                if (value.firmware_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 3, value.firmware_upgrade_spec);
                }
                if (value.os_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 2, value.os_upgrade_spec);
                }
                if (value.default_app_on_device != null) {
                    CheckAppVersionsResponse.DefaultApp.ADAPTER.encodeWithTag(writer, 4, value.default_app_on_device);
                }
                ClientVersionSpecPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.client_upgrade_spec);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckAppVersionsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                CheckAppVersionsResponse.DefaultApp defaultAppDecode = null;
                ClientVersionSpecPb clientVersionSpecPbDecode = null;
                String strDecode = "";
                ClientVersionSpecPb clientVersionSpecPbDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(ClientVersionSpecPb.ADAPTER.decode(reader));
                                break;
                            case 2:
                                clientVersionSpecPbDecode2 = ClientVersionSpecPb.ADAPTER.decode(reader);
                                break;
                            case 3:
                                clientVersionSpecPbDecode = ClientVersionSpecPb.ADAPTER.decode(reader);
                                break;
                            case 4:
                                defaultAppDecode = CheckAppVersionsResponse.DefaultApp.ADAPTER.decode(reader);
                                break;
                            case 5:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new CheckAppVersionsResponse(arrayList, defaultAppDecode, clientVersionSpecPbDecode2, clientVersionSpecPbDecode, strDecode, arrayList2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckAppVersionsResponse redact(CheckAppVersionsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List listM361redactElements = Internal.m361redactElements(value.client_upgrade_spec, ClientVersionSpecPb.ADAPTER);
                CheckAppVersionsResponse.DefaultApp defaultApp = value.default_app_on_device;
                CheckAppVersionsResponse.DefaultApp defaultAppRedact = defaultApp != null ? CheckAppVersionsResponse.DefaultApp.ADAPTER.redact(defaultApp) : null;
                ClientVersionSpecPb clientVersionSpecPb = value.os_upgrade_spec;
                ClientVersionSpecPb clientVersionSpecPbRedact = clientVersionSpecPb != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb) : null;
                ClientVersionSpecPb clientVersionSpecPb2 = value.firmware_upgrade_spec;
                return CheckAppVersionsResponse.copy$default(value, listM361redactElements, defaultAppRedact, clientVersionSpecPbRedact, clientVersionSpecPb2 != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb2) : null, null, null, ByteString.EMPTY, 48, null);
            }
        };
    }

    /* JADX INFO: compiled from: CheckAppVersionsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp$Builder;", "package_name", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultApp extends Message<DefaultApp, Builder> {
        public static final ProtoAdapter<DefaultApp> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String package_name;

        /* JADX WARN: Multi-variable type inference failed */
        public DefaultApp() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ DefaultApp(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DefaultApp(String package_name, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.package_name = package_name;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.package_name = this.package_name;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof DefaultApp)) {
                return false;
            }
            DefaultApp defaultApp = (DefaultApp) other;
            return Intrinsics.areEqual(unknownFields(), defaultApp.unknownFields()) && Intrinsics.areEqual(this.package_name, defaultApp.package_name);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.package_name.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("package_name=" + Internal.sanitize(this.package_name));
            return CollectionsKt.joinToString$default(arrayList, ", ", "DefaultApp{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ DefaultApp copy$default(DefaultApp defaultApp, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = defaultApp.package_name;
            }
            if ((i & 2) != 0) {
                byteString = defaultApp.unknownFields();
            }
            return defaultApp.copy(str, byteString);
        }

        public final DefaultApp copy(String package_name, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new DefaultApp(package_name, unknownFields);
        }

        /* JADX INFO: compiled from: CheckAppVersionsResponse.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;", "()V", "package_name", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<DefaultApp, Builder> {
            public String package_name = "";

            public final Builder package_name(String package_name) {
                Intrinsics.checkNotNullParameter(package_name, "package_name");
                this.package_name = package_name;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public DefaultApp build() {
                return new DefaultApp(this.package_name, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CheckAppVersionsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ DefaultApp build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DefaultApp.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<DefaultApp>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckAppVersionsResponse$DefaultApp$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CheckAppVersionsResponse.DefaultApp value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.package_name, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.package_name) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CheckAppVersionsResponse.DefaultApp value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.package_name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.package_name);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CheckAppVersionsResponse.DefaultApp value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.package_name, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.package_name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CheckAppVersionsResponse.DefaultApp redact(CheckAppVersionsResponse.DefaultApp value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CheckAppVersionsResponse.DefaultApp.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CheckAppVersionsResponse.DefaultApp decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CheckAppVersionsResponse.DefaultApp(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
