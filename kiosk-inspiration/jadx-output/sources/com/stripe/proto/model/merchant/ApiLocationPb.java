package com.stripe.proto.model.merchant;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.InstantPb;
import com.stripe.proto.model.merchant.ApiLocationPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ApiLocationPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003%&'Bá\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0012\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001aJç\u0001\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00122\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0002H\u0016J\b\u0010$\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;", OfflineStorageConstantsKt.ID, "", "display_name", "address", "Lcom/stripe/proto/model/merchant/WrappedAddressPb;", "timezone", "release_config_id", "pinpad_config_id", "is_default", "", "is_livemode", "livemode", OfflineStorageConstantsKt.DELETED, "merchant", "metadata", "", "device_deploy_groups", "zone_id", "created_at", "Lcom/stripe/proto/model/common/InstantPb;", "creation_request", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/merchant/ApiLocationPb;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "QueryField", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiLocationPb extends Message<ApiLocationPb, Builder> {
    public static final ProtoAdapter<ApiLocationPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.merchant.WrappedAddressPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final WrappedAddressPb address;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "createdAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final InstantPb created_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "creationRequest", schemaIndex = 15, tag = 16)
    public final String creation_request;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 8)
    public final boolean deleted;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceDeployGroups", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 12, tag = 13)
    public final Map<String, String> device_deploy_groups;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "displayName", schemaIndex = 1, tag = 2)
    public final String display_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "isDefault", schemaIndex = 6, tag = 6)
    public final Boolean is_default;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "isLivemode", schemaIndex = 7, tag = 7)
    public final Boolean is_livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 8, tag = 11)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 10, tag = 10)
    public final String merchant;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 11, tag = 12)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "pinpadConfigId", schemaIndex = 5, tag = 5)
    public final String pinpad_config_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "releaseConfigId", schemaIndex = 4, tag = 4)
    public final String release_config_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 3, tag = 9)
    public final String timezone;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "zoneId", schemaIndex = 13, tag = 14)
    public final String zone_id;

    public ApiLocationPb() {
        this(null, null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, null, 131071, null);
    }

    public /* synthetic */ ApiLocationPb(String str, String str2, WrappedAddressPb wrappedAddressPb, String str3, String str4, String str5, Boolean bool, Boolean bool2, Boolean bool3, boolean z, String str6, Map map, Map map2, String str7, InstantPb instantPb, String str8, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : wrappedAddressPb, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : bool, (i & 128) != 0 ? null : bool2, (i & 256) != 0 ? null : bool3, (i & 512) != 0 ? false : z, (i & 1024) != 0 ? null : str6, (i & 2048) != 0 ? MapsKt.emptyMap() : map, (i & 4096) != 0 ? MapsKt.emptyMap() : map2, (i & 8192) != 0 ? null : str7, (i & 16384) != 0 ? null : instantPb, (i & 32768) != 0 ? null : str8, (i & 65536) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiLocationPb(String str, String str2, WrappedAddressPb wrappedAddressPb, String str3, String str4, String str5, Boolean bool, Boolean bool2, Boolean bool3, boolean z, String str6, Map<String, String> metadata, Map<String, String> device_deploy_groups, String str7, InstantPb instantPb, String str8, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(device_deploy_groups, "device_deploy_groups");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.display_name = str2;
        this.address = wrappedAddressPb;
        this.timezone = str3;
        this.release_config_id = str4;
        this.pinpad_config_id = str5;
        this.is_default = bool;
        this.is_livemode = bool2;
        this.livemode = bool3;
        this.deleted = z;
        this.merchant = str6;
        this.zone_id = str7;
        this.created_at = instantPb;
        this.creation_request = str8;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        this.device_deploy_groups = Internal.immutableCopyOf("device_deploy_groups", device_deploy_groups);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.display_name = this.display_name;
        builder.address = this.address;
        builder.timezone = this.timezone;
        builder.release_config_id = this.release_config_id;
        builder.pinpad_config_id = this.pinpad_config_id;
        builder.is_default = this.is_default;
        builder.is_livemode = this.is_livemode;
        builder.livemode = this.livemode;
        builder.deleted = this.deleted;
        builder.merchant = this.merchant;
        builder.metadata = this.metadata;
        builder.device_deploy_groups = this.device_deploy_groups;
        builder.zone_id = this.zone_id;
        builder.created_at = this.created_at;
        builder.creation_request = this.creation_request;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApiLocationPb)) {
            return false;
        }
        ApiLocationPb apiLocationPb = (ApiLocationPb) other;
        return Intrinsics.areEqual(unknownFields(), apiLocationPb.unknownFields()) && Intrinsics.areEqual(this.id, apiLocationPb.id) && Intrinsics.areEqual(this.display_name, apiLocationPb.display_name) && Intrinsics.areEqual(this.address, apiLocationPb.address) && Intrinsics.areEqual(this.timezone, apiLocationPb.timezone) && Intrinsics.areEqual(this.release_config_id, apiLocationPb.release_config_id) && Intrinsics.areEqual(this.pinpad_config_id, apiLocationPb.pinpad_config_id) && Intrinsics.areEqual(this.is_default, apiLocationPb.is_default) && Intrinsics.areEqual(this.is_livemode, apiLocationPb.is_livemode) && Intrinsics.areEqual(this.livemode, apiLocationPb.livemode) && this.deleted == apiLocationPb.deleted && Intrinsics.areEqual(this.merchant, apiLocationPb.merchant) && Intrinsics.areEqual(this.metadata, apiLocationPb.metadata) && Intrinsics.areEqual(this.device_deploy_groups, apiLocationPb.device_deploy_groups) && Intrinsics.areEqual(this.zone_id, apiLocationPb.zone_id) && Intrinsics.areEqual(this.created_at, apiLocationPb.created_at) && Intrinsics.areEqual(this.creation_request, apiLocationPb.creation_request);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.display_name;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        WrappedAddressPb wrappedAddressPb = this.address;
        int iHashCode4 = (iHashCode3 + (wrappedAddressPb != null ? wrappedAddressPb.hashCode() : 0)) * 37;
        String str3 = this.timezone;
        int iHashCode5 = (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.release_config_id;
        int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.pinpad_config_id;
        int iHashCode7 = (iHashCode6 + (str5 != null ? str5.hashCode() : 0)) * 37;
        Boolean bool = this.is_default;
        int iHashCode8 = (iHashCode7 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.is_livemode;
        int iHashCode9 = (iHashCode8 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Boolean bool3 = this.livemode;
        int iHashCode10 = (((iHashCode9 + (bool3 != null ? bool3.hashCode() : 0)) * 37) + Boolean.hashCode(this.deleted)) * 37;
        String str6 = this.merchant;
        int iHashCode11 = (((((iHashCode10 + (str6 != null ? str6.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37) + this.device_deploy_groups.hashCode()) * 37;
        String str7 = this.zone_id;
        int iHashCode12 = (iHashCode11 + (str7 != null ? str7.hashCode() : 0)) * 37;
        InstantPb instantPb = this.created_at;
        int iHashCode13 = (iHashCode12 + (instantPb != null ? instantPb.hashCode() : 0)) * 37;
        String str8 = this.creation_request;
        int iHashCode14 = iHashCode13 + (str8 != null ? str8.hashCode() : 0);
        this.hashCode = iHashCode14;
        return iHashCode14;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.display_name != null) {
            arrayList.add("display_name=" + this.display_name);
        }
        if (this.address != null) {
            arrayList.add("address=" + this.address);
        }
        if (this.timezone != null) {
            arrayList.add("timezone=" + this.timezone);
        }
        if (this.release_config_id != null) {
            arrayList.add("release_config_id=" + this.release_config_id);
        }
        if (this.pinpad_config_id != null) {
            arrayList.add("pinpad_config_id=" + this.pinpad_config_id);
        }
        if (this.is_default != null) {
            arrayList.add("is_default=" + this.is_default);
        }
        if (this.is_livemode != null) {
            arrayList.add("is_livemode=" + this.is_livemode);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("deleted=" + this.deleted);
        if (this.merchant != null) {
            arrayList2.add("merchant=" + this.merchant);
        }
        if (!this.metadata.isEmpty()) {
            arrayList2.add("metadata=" + this.metadata);
        }
        if (!this.device_deploy_groups.isEmpty()) {
            arrayList2.add("device_deploy_groups=" + this.device_deploy_groups);
        }
        if (this.zone_id != null) {
            arrayList2.add("zone_id=" + this.zone_id);
        }
        if (this.created_at != null) {
            arrayList2.add("created_at=" + this.created_at);
        }
        if (this.creation_request != null) {
            arrayList2.add("creation_request=" + this.creation_request);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApiLocationPb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ApiLocationPb copy$default(ApiLocationPb apiLocationPb, String str, String str2, WrappedAddressPb wrappedAddressPb, String str3, String str4, String str5, Boolean bool, Boolean bool2, Boolean bool3, boolean z, String str6, Map map, Map map2, String str7, InstantPb instantPb, String str8, ByteString byteString, int i, Object obj) {
        String str9 = (i & 1) != 0 ? apiLocationPb.id : str;
        return apiLocationPb.copy(str9, (i & 2) != 0 ? apiLocationPb.display_name : str2, (i & 4) != 0 ? apiLocationPb.address : wrappedAddressPb, (i & 8) != 0 ? apiLocationPb.timezone : str3, (i & 16) != 0 ? apiLocationPb.release_config_id : str4, (i & 32) != 0 ? apiLocationPb.pinpad_config_id : str5, (i & 64) != 0 ? apiLocationPb.is_default : bool, (i & 128) != 0 ? apiLocationPb.is_livemode : bool2, (i & 256) != 0 ? apiLocationPb.livemode : bool3, (i & 512) != 0 ? apiLocationPb.deleted : z, (i & 1024) != 0 ? apiLocationPb.merchant : str6, (i & 2048) != 0 ? apiLocationPb.metadata : map, (i & 4096) != 0 ? apiLocationPb.device_deploy_groups : map2, (i & 8192) != 0 ? apiLocationPb.zone_id : str7, (i & 16384) != 0 ? apiLocationPb.created_at : instantPb, (i & 32768) != 0 ? apiLocationPb.creation_request : str8, (i & 65536) != 0 ? apiLocationPb.unknownFields() : byteString);
    }

    public final ApiLocationPb copy(String id, String display_name, WrappedAddressPb address, String timezone, String release_config_id, String pinpad_config_id, Boolean is_default, Boolean is_livemode, Boolean livemode, boolean deleted, String merchant, Map<String, String> metadata, Map<String, String> device_deploy_groups, String zone_id, InstantPb created_at, String creation_request, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(device_deploy_groups, "device_deploy_groups");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApiLocationPb(id, display_name, address, timezone, release_config_id, pinpad_config_id, is_default, is_livemode, livemode, deleted, merchant, metadata, device_deploy_groups, zone_id, created_at, creation_request, unknownFields);
    }

    /* JADX INFO: compiled from: ApiLocationPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\f\u001a\u00020\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u001bJ\u0015\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u001bJ\u0015\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\tJ\u001a\u0010\u0015\u001a\u00020\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\rJ\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "()V", "address", "Lcom/stripe/proto/model/merchant/WrappedAddressPb;", "created_at", "Lcom/stripe/proto/model/common/InstantPb;", "creation_request", "", OfflineStorageConstantsKt.DELETED, "", "device_deploy_groups", "", "display_name", OfflineStorageConstantsKt.ID, "is_default", "Ljava/lang/Boolean;", "is_livemode", "livemode", "merchant", "metadata", "pinpad_config_id", "release_config_id", "timezone", "zone_id", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApiLocationPb, Builder> {
        public WrappedAddressPb address;
        public InstantPb created_at;
        public String creation_request;
        public boolean deleted;
        public String display_name;
        public String id;
        public Boolean is_default;
        public Boolean is_livemode;
        public Boolean livemode;
        public String merchant;
        public String pinpad_config_id;
        public String release_config_id;
        public String timezone;
        public String zone_id;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public Map<String, String> device_deploy_groups = MapsKt.emptyMap();

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder display_name(String display_name) {
            this.display_name = display_name;
            return this;
        }

        public final Builder address(WrappedAddressPb address) {
            this.address = address;
            return this;
        }

        public final Builder timezone(String timezone) {
            this.timezone = timezone;
            return this;
        }

        public final Builder release_config_id(String release_config_id) {
            this.release_config_id = release_config_id;
            return this;
        }

        public final Builder pinpad_config_id(String pinpad_config_id) {
            this.pinpad_config_id = pinpad_config_id;
            return this;
        }

        public final Builder is_default(Boolean is_default) {
            this.is_default = is_default;
            return this;
        }

        public final Builder is_livemode(Boolean is_livemode) {
            this.is_livemode = is_livemode;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder deleted(boolean deleted) {
            this.deleted = deleted;
            return this;
        }

        public final Builder merchant(String merchant) {
            this.merchant = merchant;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder device_deploy_groups(Map<String, String> device_deploy_groups) {
            Intrinsics.checkNotNullParameter(device_deploy_groups, "device_deploy_groups");
            this.device_deploy_groups = device_deploy_groups;
            return this;
        }

        public final Builder zone_id(String zone_id) {
            this.zone_id = zone_id;
            return this;
        }

        public final Builder created_at(InstantPb created_at) {
            this.created_at = created_at;
            return this;
        }

        public final Builder creation_request(String creation_request) {
            this.creation_request = creation_request;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApiLocationPb build() {
            return new ApiLocationPb(this.id, this.display_name, this.address, this.timezone, this.release_config_id, this.pinpad_config_id, this.is_default, this.is_livemode, this.livemode, this.deleted, this.merchant, this.metadata, this.device_deploy_groups, this.zone_id, this.created_at, this.creation_request, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApiLocationPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApiLocationPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApiLocationPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApiLocationPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.merchant.ApiLocationPb$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.merchant.ApiLocationPb$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            /* JADX INFO: renamed from: device_deploy_groupsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy device_deploy_groupsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.merchant.ApiLocationPb$Companion$ADAPTER$1$device_deploy_groupsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            private final ProtoAdapter<Map<String, String>> getDevice_deploy_groupsAdapter() {
                return (ProtoAdapter) this.device_deploy_groupsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApiLocationPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.display_name != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.display_name);
                }
                if (value.address != null) {
                    size += WrappedAddressPb.ADAPTER.encodedSizeWithTag(3, value.address);
                }
                if (value.timezone != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.timezone);
                }
                if (value.release_config_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.release_config_id);
                }
                if (value.pinpad_config_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.pinpad_config_id);
                }
                if (value.is_default != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.is_default);
                }
                if (value.is_livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(7, value.is_livemode);
                }
                if (value.livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(11, value.livemode);
                }
                if (value.deleted) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(8, Boolean.valueOf(value.deleted));
                }
                if (value.merchant != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.merchant);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(12, value.metadata) + getDevice_deploy_groupsAdapter().encodedSizeWithTag(13, value.device_deploy_groups);
                if (value.zone_id != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(14, value.zone_id);
                }
                if (value.created_at != null) {
                    iEncodedSizeWithTag += InstantPb.ADAPTER.encodedSizeWithTag(15, value.created_at);
                }
                return value.creation_request != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(16, value.creation_request) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApiLocationPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.display_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.display_name);
                }
                if (value.address != null) {
                    WrappedAddressPb.ADAPTER.encodeWithTag(writer, 3, value.address);
                }
                if (value.timezone != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.timezone);
                }
                if (value.release_config_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.release_config_id);
                }
                if (value.pinpad_config_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.pinpad_config_id);
                }
                if (value.is_default != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.is_default);
                }
                if (value.is_livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.is_livemode);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 11, value.livemode);
                }
                if (value.deleted) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.deleted));
                }
                if (value.merchant != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.merchant);
                }
                getMetadataAdapter().encodeWithTag(writer, 12, value.metadata);
                getDevice_deploy_groupsAdapter().encodeWithTag(writer, 13, value.device_deploy_groups);
                if (value.zone_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.zone_id);
                }
                if (value.created_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 15, value.created_at);
                }
                if (value.creation_request != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 16, value.creation_request);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApiLocationPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.creation_request != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 16, value.creation_request);
                }
                if (value.created_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 15, value.created_at);
                }
                if (value.zone_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.zone_id);
                }
                getDevice_deploy_groupsAdapter().encodeWithTag(writer, 13, value.device_deploy_groups);
                getMetadataAdapter().encodeWithTag(writer, 12, value.metadata);
                if (value.merchant != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.merchant);
                }
                if (value.deleted) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.deleted));
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 11, value.livemode);
                }
                if (value.is_livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.is_livemode);
                }
                if (value.is_default != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.is_default);
                }
                if (value.pinpad_config_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.pinpad_config_id);
                }
                if (value.release_config_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.release_config_id);
                }
                if (value.timezone != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.timezone);
                }
                if (value.address != null) {
                    WrappedAddressPb.ADAPTER.encodeWithTag(writer, 3, value.address);
                }
                if (value.display_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.display_name);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApiLocationPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                WrappedAddressPb wrappedAddressPbDecode = null;
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                Boolean boolDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                InstantPb instantPbDecode = null;
                String strDecode6 = null;
                String strDecode7 = null;
                boolean zBooleanValue = false;
                String strDecode8 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode8;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 3:
                                wrappedAddressPbDecode = WrappedAddressPb.ADAPTER.decode(reader);
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 7:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 8:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 9:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 11:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 12:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 13:
                                linkedHashMap2.putAll(getDevice_deploy_groupsAdapter().decode(reader));
                                break;
                            case 14:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 15:
                                instantPbDecode = InstantPb.ADAPTER.decode(reader);
                                break;
                            case 16:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode8 = str;
                    } else {
                        return new ApiLocationPb(strDecode7, str, wrappedAddressPbDecode, strDecode, strDecode2, strDecode3, boolDecode, boolDecode2, boolDecode3, zBooleanValue, strDecode4, linkedHashMap, linkedHashMap2, strDecode5, instantPbDecode, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApiLocationPb redact(ApiLocationPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.display_name;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                WrappedAddressPb wrappedAddressPb = value.address;
                WrappedAddressPb wrappedAddressPbRedact = wrappedAddressPb != null ? WrappedAddressPb.ADAPTER.redact(wrappedAddressPb) : null;
                String str3 = value.timezone;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.release_config_id;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.pinpad_config_id;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                Boolean bool = value.is_default;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.is_livemode;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Boolean bool3 = value.livemode;
                Boolean boolRedact3 = bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null;
                String str6 = value.merchant;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.zone_id;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                InstantPb instantPb = value.created_at;
                InstantPb instantPbRedact = instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null;
                String str8 = value.creation_request;
                return ApiLocationPb.copy$default(value, strRedact, strRedact2, wrappedAddressPbRedact, strRedact3, strRedact4, strRedact5, boolRedact, boolRedact2, boolRedact3, false, strRedact6, null, null, strRedact7, instantPbRedact, str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null, ByteString.EMPTY, 6656, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ApiLocationPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\tB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPb$QueryField;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NAME", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class QueryField implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ QueryField[] $VALUES;
        public static final ProtoAdapter<QueryField> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final QueryField NAME;
        private final int value;

        private static final /* synthetic */ QueryField[] $values() {
            return new QueryField[]{NAME};
        }

        @JvmStatic
        public static final QueryField fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<QueryField> getEntries() {
            return $ENTRIES;
        }

        public static QueryField valueOf(String str) {
            return (QueryField) Enum.valueOf(QueryField.class, str);
        }

        public static QueryField[] values() {
            return (QueryField[]) $VALUES.clone();
        }

        private QueryField(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final QueryField queryField = new QueryField("NAME", 0, 0);
            NAME = queryField;
            QueryField[] queryFieldArr$values = $values();
            $VALUES = queryFieldArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(queryFieldArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryField.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<QueryField>(orCreateKotlinClass, syntax, queryField) { // from class: com.stripe.proto.model.merchant.ApiLocationPb$QueryField$Companion$ADAPTER$1
                {
                    ApiLocationPb.QueryField queryField2 = queryField;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ApiLocationPb.QueryField fromValue(int value) {
                    return ApiLocationPb.QueryField.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ApiLocationPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPb$QueryField$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/merchant/ApiLocationPb$QueryField;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final QueryField fromValue(int value) {
                if (value == 0) {
                    return QueryField.NAME;
                }
                return null;
            }
        }
    }
}
