package com.stripe.proto.api.sdk;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.sdk.PosHardwareInfo;
import com.stripe.proto.model.sdk.PosSoftwareInfo;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: ActivateTerminalRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$B{\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J|\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0004H\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0018\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0019\u0010\u0017R\u0016\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001a\u0010\u0017¨\u0006%"}, d2 = {"Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;", "pos_activation_token", "", "pos_device_id", "pos_hardware_info", "Lcom/stripe/proto/model/sdk/PosHardwareInfo;", "pos_software_info", "Lcom/stripe/proto/model/sdk/PosSoftwareInfo;", "fail_if_in_use", "", "pos_secondary_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "terminal_id", "terminal_ip", "store_name", "store_address", "Lcom/stripe/proto/api/sdk/Address;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V", "getStore_address$annotations", "()V", "getStore_name$annotations", "getTerminal_id$annotations", "getTerminal_ip$annotations", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivateTerminalRequest extends Message<ActivateTerminalRequest, Builder> {
    public static final ProtoAdapter<ActivateTerminalRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "failIfInUse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 9)
    public final boolean fail_if_in_use;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "posActivationToken", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String pos_activation_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "posDeviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 6)
    public final String pos_device_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.PosHardwareInfo#ADAPTER", jsonName = "posHardwareInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final PosHardwareInfo pos_hardware_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "posSecondaryVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 10)
    public final VersionInfoPb pos_secondary_version_info;

    @WireField(adapter = "com.stripe.proto.model.sdk.PosSoftwareInfo#ADAPTER", jsonName = "posSoftwareInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final PosSoftwareInfo pos_software_info;

    @WireField(adapter = "com.stripe.proto.api.sdk.Address#ADAPTER", jsonName = "storeAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 8)
    public final Address store_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "storeName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 7)
    public final String store_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 2)
    public final String terminal_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 3)
    public final String terminal_ip;

    public ActivateTerminalRequest() {
        this(null, null, null, null, false, null, null, null, null, null, null, 2047, null);
    }

    @Deprecated(message = "store_address is deprecated")
    public static /* synthetic */ void getStore_address$annotations() {
    }

    @Deprecated(message = "store_name is deprecated")
    public static /* synthetic */ void getStore_name$annotations() {
    }

    @Deprecated(message = "terminal_id is deprecated")
    public static /* synthetic */ void getTerminal_id$annotations() {
    }

    @Deprecated(message = "terminal_ip is deprecated")
    public static /* synthetic */ void getTerminal_ip$annotations() {
    }

    public /* synthetic */ ActivateTerminalRequest(String str, String str2, PosHardwareInfo posHardwareInfo, PosSoftwareInfo posSoftwareInfo, boolean z, VersionInfoPb versionInfoPb, String str3, String str4, String str5, Address address, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : posHardwareInfo, (i & 8) != 0 ? null : posSoftwareInfo, (i & 16) != 0 ? false : z, (i & 32) != 0 ? null : versionInfoPb, (i & 64) != 0 ? "" : str3, (i & 128) != 0 ? "" : str4, (i & 256) != 0 ? "" : str5, (i & 512) != 0 ? null : address, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivateTerminalRequest(String pos_activation_token, String pos_device_id, PosHardwareInfo posHardwareInfo, PosSoftwareInfo posSoftwareInfo, boolean z, VersionInfoPb versionInfoPb, String terminal_id, String terminal_ip, String store_name, Address address, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(pos_activation_token, "pos_activation_token");
        Intrinsics.checkNotNullParameter(pos_device_id, "pos_device_id");
        Intrinsics.checkNotNullParameter(terminal_id, "terminal_id");
        Intrinsics.checkNotNullParameter(terminal_ip, "terminal_ip");
        Intrinsics.checkNotNullParameter(store_name, "store_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pos_activation_token = pos_activation_token;
        this.pos_device_id = pos_device_id;
        this.pos_hardware_info = posHardwareInfo;
        this.pos_software_info = posSoftwareInfo;
        this.fail_if_in_use = z;
        this.pos_secondary_version_info = versionInfoPb;
        this.terminal_id = terminal_id;
        this.terminal_ip = terminal_ip;
        this.store_name = store_name;
        this.store_address = address;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pos_activation_token = this.pos_activation_token;
        builder.pos_device_id = this.pos_device_id;
        builder.pos_hardware_info = this.pos_hardware_info;
        builder.pos_software_info = this.pos_software_info;
        builder.fail_if_in_use = this.fail_if_in_use;
        builder.pos_secondary_version_info = this.pos_secondary_version_info;
        builder.terminal_id = this.terminal_id;
        builder.terminal_ip = this.terminal_ip;
        builder.store_name = this.store_name;
        builder.store_address = this.store_address;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ActivateTerminalRequest)) {
            return false;
        }
        ActivateTerminalRequest activateTerminalRequest = (ActivateTerminalRequest) other;
        return Intrinsics.areEqual(unknownFields(), activateTerminalRequest.unknownFields()) && Intrinsics.areEqual(this.pos_activation_token, activateTerminalRequest.pos_activation_token) && Intrinsics.areEqual(this.pos_device_id, activateTerminalRequest.pos_device_id) && Intrinsics.areEqual(this.pos_hardware_info, activateTerminalRequest.pos_hardware_info) && Intrinsics.areEqual(this.pos_software_info, activateTerminalRequest.pos_software_info) && this.fail_if_in_use == activateTerminalRequest.fail_if_in_use && Intrinsics.areEqual(this.pos_secondary_version_info, activateTerminalRequest.pos_secondary_version_info) && Intrinsics.areEqual(this.terminal_id, activateTerminalRequest.terminal_id) && Intrinsics.areEqual(this.terminal_ip, activateTerminalRequest.terminal_ip) && Intrinsics.areEqual(this.store_name, activateTerminalRequest.store_name) && Intrinsics.areEqual(this.store_address, activateTerminalRequest.store_address);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.pos_activation_token.hashCode()) * 37) + this.pos_device_id.hashCode()) * 37;
        PosHardwareInfo posHardwareInfo = this.pos_hardware_info;
        int iHashCode2 = (iHashCode + (posHardwareInfo != null ? posHardwareInfo.hashCode() : 0)) * 37;
        PosSoftwareInfo posSoftwareInfo = this.pos_software_info;
        int iHashCode3 = (((iHashCode2 + (posSoftwareInfo != null ? posSoftwareInfo.hashCode() : 0)) * 37) + Boolean.hashCode(this.fail_if_in_use)) * 37;
        VersionInfoPb versionInfoPb = this.pos_secondary_version_info;
        int iHashCode4 = (((((((iHashCode3 + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37) + this.terminal_id.hashCode()) * 37) + this.terminal_ip.hashCode()) * 37) + this.store_name.hashCode()) * 37;
        Address address = this.store_address;
        int iHashCode5 = iHashCode4 + (address != null ? address.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("pos_activation_token=██");
        arrayList2.add("pos_device_id=" + Internal.sanitize(this.pos_device_id));
        if (this.pos_hardware_info != null) {
            arrayList2.add("pos_hardware_info=" + this.pos_hardware_info);
        }
        if (this.pos_software_info != null) {
            arrayList2.add("pos_software_info=" + this.pos_software_info);
        }
        arrayList2.add("fail_if_in_use=" + this.fail_if_in_use);
        if (this.pos_secondary_version_info != null) {
            arrayList2.add("pos_secondary_version_info=" + this.pos_secondary_version_info);
        }
        arrayList2.add("terminal_id=" + Internal.sanitize(this.terminal_id));
        arrayList2.add("terminal_ip=" + Internal.sanitize(this.terminal_ip));
        arrayList2.add("store_name=" + Internal.sanitize(this.store_name));
        if (this.store_address != null) {
            arrayList2.add("store_address=" + this.store_address);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ActivateTerminalRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ActivateTerminalRequest copy$default(ActivateTerminalRequest activateTerminalRequest, String str, String str2, PosHardwareInfo posHardwareInfo, PosSoftwareInfo posSoftwareInfo, boolean z, VersionInfoPb versionInfoPb, String str3, String str4, String str5, Address address, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = activateTerminalRequest.pos_activation_token;
        }
        if ((i & 2) != 0) {
            str2 = activateTerminalRequest.pos_device_id;
        }
        if ((i & 4) != 0) {
            posHardwareInfo = activateTerminalRequest.pos_hardware_info;
        }
        if ((i & 8) != 0) {
            posSoftwareInfo = activateTerminalRequest.pos_software_info;
        }
        if ((i & 16) != 0) {
            z = activateTerminalRequest.fail_if_in_use;
        }
        if ((i & 32) != 0) {
            versionInfoPb = activateTerminalRequest.pos_secondary_version_info;
        }
        if ((i & 64) != 0) {
            str3 = activateTerminalRequest.terminal_id;
        }
        if ((i & 128) != 0) {
            str4 = activateTerminalRequest.terminal_ip;
        }
        if ((i & 256) != 0) {
            str5 = activateTerminalRequest.store_name;
        }
        if ((i & 512) != 0) {
            address = activateTerminalRequest.store_address;
        }
        if ((i & 1024) != 0) {
            byteString = activateTerminalRequest.unknownFields();
        }
        Address address2 = address;
        ByteString byteString2 = byteString;
        String str6 = str4;
        String str7 = str5;
        VersionInfoPb versionInfoPb2 = versionInfoPb;
        String str8 = str3;
        boolean z2 = z;
        PosHardwareInfo posHardwareInfo2 = posHardwareInfo;
        return activateTerminalRequest.copy(str, str2, posHardwareInfo2, posSoftwareInfo, z2, versionInfoPb2, str8, str6, str7, address2, byteString2);
    }

    public final ActivateTerminalRequest copy(String pos_activation_token, String pos_device_id, PosHardwareInfo pos_hardware_info, PosSoftwareInfo pos_software_info, boolean fail_if_in_use, VersionInfoPb pos_secondary_version_info, String terminal_id, String terminal_ip, String store_name, Address store_address, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(pos_activation_token, "pos_activation_token");
        Intrinsics.checkNotNullParameter(pos_device_id, "pos_device_id");
        Intrinsics.checkNotNullParameter(terminal_id, "terminal_id");
        Intrinsics.checkNotNullParameter(terminal_ip, "terminal_ip");
        Intrinsics.checkNotNullParameter(store_name, "store_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ActivateTerminalRequest(pos_activation_token, pos_device_id, pos_hardware_info, pos_software_info, fail_if_in_use, pos_secondary_version_info, terminal_id, terminal_ip, store_name, store_address, unknownFields);
    }

    /* JADX INFO: compiled from: ActivateTerminalRequest.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007H\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0007H\u0007J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007H\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;", "()V", "fail_if_in_use", "", "pos_activation_token", "", "pos_device_id", "pos_hardware_info", "Lcom/stripe/proto/model/sdk/PosHardwareInfo;", "pos_secondary_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "pos_software_info", "Lcom/stripe/proto/model/sdk/PosSoftwareInfo;", "store_address", "Lcom/stripe/proto/api/sdk/Address;", "store_name", "terminal_id", "terminal_ip", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ActivateTerminalRequest, Builder> {
        public boolean fail_if_in_use;
        public PosHardwareInfo pos_hardware_info;
        public VersionInfoPb pos_secondary_version_info;
        public PosSoftwareInfo pos_software_info;
        public Address store_address;
        public String pos_activation_token = "";
        public String pos_device_id = "";
        public String terminal_id = "";
        public String terminal_ip = "";
        public String store_name = "";

        public final Builder pos_activation_token(String pos_activation_token) {
            Intrinsics.checkNotNullParameter(pos_activation_token, "pos_activation_token");
            this.pos_activation_token = pos_activation_token;
            return this;
        }

        public final Builder pos_device_id(String pos_device_id) {
            Intrinsics.checkNotNullParameter(pos_device_id, "pos_device_id");
            this.pos_device_id = pos_device_id;
            return this;
        }

        public final Builder pos_hardware_info(PosHardwareInfo pos_hardware_info) {
            this.pos_hardware_info = pos_hardware_info;
            return this;
        }

        public final Builder pos_software_info(PosSoftwareInfo pos_software_info) {
            this.pos_software_info = pos_software_info;
            return this;
        }

        public final Builder fail_if_in_use(boolean fail_if_in_use) {
            this.fail_if_in_use = fail_if_in_use;
            return this;
        }

        public final Builder pos_secondary_version_info(VersionInfoPb pos_secondary_version_info) {
            this.pos_secondary_version_info = pos_secondary_version_info;
            return this;
        }

        @Deprecated(message = "terminal_id is deprecated")
        public final Builder terminal_id(String terminal_id) {
            Intrinsics.checkNotNullParameter(terminal_id, "terminal_id");
            this.terminal_id = terminal_id;
            return this;
        }

        @Deprecated(message = "terminal_ip is deprecated")
        public final Builder terminal_ip(String terminal_ip) {
            Intrinsics.checkNotNullParameter(terminal_ip, "terminal_ip");
            this.terminal_ip = terminal_ip;
            return this;
        }

        @Deprecated(message = "store_name is deprecated")
        public final Builder store_name(String store_name) {
            Intrinsics.checkNotNullParameter(store_name, "store_name");
            this.store_name = store_name;
            return this;
        }

        @Deprecated(message = "store_address is deprecated")
        public final Builder store_address(Address store_address) {
            this.store_address = store_address;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ActivateTerminalRequest build() {
            return new ActivateTerminalRequest(this.pos_activation_token, this.pos_device_id, this.pos_hardware_info, this.pos_software_info, this.fail_if_in_use, this.pos_secondary_version_info, this.terminal_id, this.terminal_ip, this.store_name, this.store_address, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ActivateTerminalRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ActivateTerminalRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ActivateTerminalRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ActivateTerminalRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ActivateTerminalRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ActivateTerminalRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.pos_activation_token, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.pos_activation_token);
                }
                if (!Intrinsics.areEqual(value.pos_device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.pos_device_id);
                }
                if (value.pos_hardware_info != null) {
                    size += PosHardwareInfo.ADAPTER.encodedSizeWithTag(4, value.pos_hardware_info);
                }
                if (value.pos_software_info != null) {
                    size += PosSoftwareInfo.ADAPTER.encodedSizeWithTag(5, value.pos_software_info);
                }
                if (value.fail_if_in_use) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.fail_if_in_use));
                }
                if (value.pos_secondary_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(10, value.pos_secondary_version_info);
                }
                if (!Intrinsics.areEqual(value.terminal_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.terminal_id);
                }
                if (!Intrinsics.areEqual(value.terminal_ip, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.terminal_ip);
                }
                if (!Intrinsics.areEqual(value.store_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.store_name);
                }
                return value.store_address != null ? size + Address.ADAPTER.encodedSizeWithTag(8, value.store_address) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ActivateTerminalRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.pos_activation_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.pos_activation_token);
                }
                if (!Intrinsics.areEqual(value.pos_device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.pos_device_id);
                }
                if (value.pos_hardware_info != null) {
                    PosHardwareInfo.ADAPTER.encodeWithTag(writer, 4, value.pos_hardware_info);
                }
                if (value.pos_software_info != null) {
                    PosSoftwareInfo.ADAPTER.encodeWithTag(writer, 5, value.pos_software_info);
                }
                if (value.fail_if_in_use) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.fail_if_in_use));
                }
                if (value.pos_secondary_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 10, value.pos_secondary_version_info);
                }
                if (!Intrinsics.areEqual(value.terminal_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.terminal_id);
                }
                if (!Intrinsics.areEqual(value.terminal_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.terminal_ip);
                }
                if (!Intrinsics.areEqual(value.store_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.store_name);
                }
                if (value.store_address != null) {
                    Address.ADAPTER.encodeWithTag(writer, 8, value.store_address);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ActivateTerminalRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.store_address != null) {
                    Address.ADAPTER.encodeWithTag(writer, 8, value.store_address);
                }
                if (!Intrinsics.areEqual(value.store_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.store_name);
                }
                if (!Intrinsics.areEqual(value.terminal_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.terminal_ip);
                }
                if (!Intrinsics.areEqual(value.terminal_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.terminal_id);
                }
                if (value.pos_secondary_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 10, value.pos_secondary_version_info);
                }
                if (value.fail_if_in_use) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.fail_if_in_use));
                }
                if (value.pos_software_info != null) {
                    PosSoftwareInfo.ADAPTER.encodeWithTag(writer, 5, value.pos_software_info);
                }
                if (value.pos_hardware_info != null) {
                    PosHardwareInfo.ADAPTER.encodeWithTag(writer, 4, value.pos_hardware_info);
                }
                if (!Intrinsics.areEqual(value.pos_device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.pos_device_id);
                }
                if (Intrinsics.areEqual(value.pos_activation_token, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.pos_activation_token);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ActivateTerminalRequest redact(ActivateTerminalRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PosHardwareInfo posHardwareInfo = value.pos_hardware_info;
                PosHardwareInfo posHardwareInfoRedact = posHardwareInfo != null ? PosHardwareInfo.ADAPTER.redact(posHardwareInfo) : null;
                PosSoftwareInfo posSoftwareInfo = value.pos_software_info;
                PosSoftwareInfo posSoftwareInfoRedact = posSoftwareInfo != null ? PosSoftwareInfo.ADAPTER.redact(posSoftwareInfo) : null;
                VersionInfoPb versionInfoPb = value.pos_secondary_version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                Address address = value.store_address;
                return ActivateTerminalRequest.copy$default(value, "", null, posHardwareInfoRedact, posSoftwareInfoRedact, false, versionInfoPbRedact, null, null, null, address != null ? Address.ADAPTER.redact(address) : null, ByteString.EMPTY, 466, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ActivateTerminalRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                PosHardwareInfo posHardwareInfoDecode = null;
                PosSoftwareInfo posSoftwareInfoDecode = null;
                VersionInfoPb versionInfoPbDecode = null;
                Address addressDecode = null;
                boolean zBooleanValue = false;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                posHardwareInfoDecode = PosHardwareInfo.ADAPTER.decode(reader);
                                break;
                            case 5:
                                posSoftwareInfoDecode = PosSoftwareInfo.ADAPTER.decode(reader);
                                break;
                            case 6:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                addressDecode = Address.ADAPTER.decode(reader);
                                break;
                            case 9:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 10:
                                versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ActivateTerminalRequest(strDecode, strDecode4, posHardwareInfoDecode, posSoftwareInfoDecode, zBooleanValue, versionInfoPbDecode, strDecode5, strDecode2, strDecode3, addressDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
