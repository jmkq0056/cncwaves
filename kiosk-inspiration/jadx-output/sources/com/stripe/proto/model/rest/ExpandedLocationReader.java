package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.merchant.ApiLocationPb;
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

/* JADX INFO: compiled from: ExpandedLocationReader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u0093\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0099\u0001\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u0004H\u0016R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;", OfflineStorageConstantsKt.ID, "", "object_", "device_sw_version", "device_type", "ip_address", "label", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, NotificationCompat.CATEGORY_STATUS, "livemode", "", "base_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/ApiLocationPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExpandedLocationReader extends Message<ExpandedLocationReader, Builder> {
    public static final ProtoAdapter<ExpandedLocationReader> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "baseUrl", schemaIndex = 10, tag = 11)
    public final String base_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceSwVersion", schemaIndex = 2, tag = 3)
    public final String device_sw_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceType", schemaIndex = 3, tag = 4)
    public final String device_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "ipAddress", schemaIndex = 4, tag = 5)
    public final String ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 5, tag = 6)
    public final String label;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 9, tag = 10)
    public final Boolean livemode;

    @WireField(adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final ApiLocationPb location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "object", schemaIndex = 1, tag = 2)
    public final String object_;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "serialNumber", schemaIndex = 7, tag = 8)
    public final String serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 8, tag = 9)
    public final String status;

    public ExpandedLocationReader() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public /* synthetic */ ExpandedLocationReader(String str, String str2, String str3, String str4, String str5, String str6, ApiLocationPb apiLocationPb, String str7, String str8, Boolean bool, String str9, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : apiLocationPb, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : str8, (i & 512) != 0 ? null : bool, (i & 1024) != 0 ? null : str9, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandedLocationReader(String str, String str2, String str3, String str4, String str5, String str6, ApiLocationPb apiLocationPb, String str7, String str8, Boolean bool, String str9, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.object_ = str2;
        this.device_sw_version = str3;
        this.device_type = str4;
        this.ip_address = str5;
        this.label = str6;
        this.location = apiLocationPb;
        this.serial_number = str7;
        this.status = str8;
        this.livemode = bool;
        this.base_url = str9;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.object_ = this.object_;
        builder.device_sw_version = this.device_sw_version;
        builder.device_type = this.device_type;
        builder.ip_address = this.ip_address;
        builder.label = this.label;
        builder.location = this.location;
        builder.serial_number = this.serial_number;
        builder.status = this.status;
        builder.livemode = this.livemode;
        builder.base_url = this.base_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ExpandedLocationReader)) {
            return false;
        }
        ExpandedLocationReader expandedLocationReader = (ExpandedLocationReader) other;
        return Intrinsics.areEqual(unknownFields(), expandedLocationReader.unknownFields()) && Intrinsics.areEqual(this.id, expandedLocationReader.id) && Intrinsics.areEqual(this.object_, expandedLocationReader.object_) && Intrinsics.areEqual(this.device_sw_version, expandedLocationReader.device_sw_version) && Intrinsics.areEqual(this.device_type, expandedLocationReader.device_type) && Intrinsics.areEqual(this.ip_address, expandedLocationReader.ip_address) && Intrinsics.areEqual(this.label, expandedLocationReader.label) && Intrinsics.areEqual(this.location, expandedLocationReader.location) && Intrinsics.areEqual(this.serial_number, expandedLocationReader.serial_number) && Intrinsics.areEqual(this.status, expandedLocationReader.status) && Intrinsics.areEqual(this.livemode, expandedLocationReader.livemode) && Intrinsics.areEqual(this.base_url, expandedLocationReader.base_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.object_;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.device_sw_version;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.device_type;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.ip_address;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.label;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        ApiLocationPb apiLocationPb = this.location;
        int iHashCode8 = (iHashCode7 + (apiLocationPb != null ? apiLocationPb.hashCode() : 0)) * 37;
        String str7 = this.serial_number;
        int iHashCode9 = (iHashCode8 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.status;
        int iHashCode10 = (iHashCode9 + (str8 != null ? str8.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode11 = (iHashCode10 + (bool != null ? bool.hashCode() : 0)) * 37;
        String str9 = this.base_url;
        int iHashCode12 = iHashCode11 + (str9 != null ? str9.hashCode() : 0);
        this.hashCode = iHashCode12;
        return iHashCode12;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.object_ != null) {
            arrayList.add("object_=" + this.object_);
        }
        if (this.device_sw_version != null) {
            arrayList.add("device_sw_version=" + this.device_sw_version);
        }
        if (this.device_type != null) {
            arrayList.add("device_type=" + this.device_type);
        }
        if (this.ip_address != null) {
            arrayList.add("ip_address=" + this.ip_address);
        }
        if (this.label != null) {
            arrayList.add("label=" + this.label);
        }
        if (this.location != null) {
            arrayList.add("location=" + this.location);
        }
        if (this.serial_number != null) {
            arrayList.add("serial_number=" + this.serial_number);
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        if (this.base_url != null) {
            arrayList.add("base_url=" + this.base_url);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ExpandedLocationReader{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ExpandedLocationReader copy$default(ExpandedLocationReader expandedLocationReader, String str, String str2, String str3, String str4, String str5, String str6, ApiLocationPb apiLocationPb, String str7, String str8, Boolean bool, String str9, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = expandedLocationReader.id;
        }
        if ((i & 2) != 0) {
            str2 = expandedLocationReader.object_;
        }
        if ((i & 4) != 0) {
            str3 = expandedLocationReader.device_sw_version;
        }
        if ((i & 8) != 0) {
            str4 = expandedLocationReader.device_type;
        }
        if ((i & 16) != 0) {
            str5 = expandedLocationReader.ip_address;
        }
        if ((i & 32) != 0) {
            str6 = expandedLocationReader.label;
        }
        if ((i & 64) != 0) {
            apiLocationPb = expandedLocationReader.location;
        }
        if ((i & 128) != 0) {
            str7 = expandedLocationReader.serial_number;
        }
        if ((i & 256) != 0) {
            str8 = expandedLocationReader.status;
        }
        if ((i & 512) != 0) {
            bool = expandedLocationReader.livemode;
        }
        if ((i & 1024) != 0) {
            str9 = expandedLocationReader.base_url;
        }
        if ((i & 2048) != 0) {
            byteString = expandedLocationReader.unknownFields();
        }
        String str10 = str9;
        ByteString byteString2 = byteString;
        String str11 = str8;
        Boolean bool2 = bool;
        ApiLocationPb apiLocationPb2 = apiLocationPb;
        String str12 = str7;
        String str13 = str5;
        String str14 = str6;
        return expandedLocationReader.copy(str, str2, str3, str4, str13, str14, apiLocationPb2, str12, str11, bool2, str10, byteString2);
    }

    public final ExpandedLocationReader copy(String id, String object_, String device_sw_version, String device_type, String ip_address, String label, ApiLocationPb location, String serial_number, String status, Boolean livemode, String base_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ExpandedLocationReader(id, object_, device_sw_version, device_type, ip_address, label, location, serial_number, status, livemode, base_url, unknownFields);
    }

    /* JADX INFO: compiled from: ExpandedLocationReader.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0014J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "()V", "base_url", "", "device_sw_version", "device_type", OfflineStorageConstantsKt.ID, "ip_address", "label", "livemode", "", "Ljava/lang/Boolean;", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "object_", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, NotificationCompat.CATEGORY_STATUS, "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ExpandedLocationReader, Builder> {
        public String base_url;
        public String device_sw_version;
        public String device_type;
        public String id;
        public String ip_address;
        public String label;
        public Boolean livemode;
        public ApiLocationPb location;
        public String object_;
        public String serial_number;
        public String status;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder object_(String object_) {
            this.object_ = object_;
            return this;
        }

        public final Builder device_sw_version(String device_sw_version) {
            this.device_sw_version = device_sw_version;
            return this;
        }

        public final Builder device_type(String device_type) {
            this.device_type = device_type;
            return this;
        }

        public final Builder ip_address(String ip_address) {
            this.ip_address = ip_address;
            return this;
        }

        public final Builder label(String label) {
            this.label = label;
            return this;
        }

        public final Builder location(ApiLocationPb location) {
            this.location = location;
            return this;
        }

        public final Builder serial_number(String serial_number) {
            this.serial_number = serial_number;
            return this;
        }

        public final Builder status(String status) {
            this.status = status;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder base_url(String base_url) {
            this.base_url = base_url;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ExpandedLocationReader build() {
            return new ExpandedLocationReader(this.id, this.object_, this.device_sw_version, this.device_type, this.ip_address, this.label, this.location, this.serial_number, this.status, this.livemode, this.base_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ExpandedLocationReader.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ExpandedLocationReader$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ExpandedLocationReader$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ExpandedLocationReader build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ExpandedLocationReader.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ExpandedLocationReader>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ExpandedLocationReader$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ExpandedLocationReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.object_ != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.object_);
                }
                if (value.device_sw_version != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.device_sw_version);
                }
                if (value.device_type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.device_type);
                }
                if (value.ip_address != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.ip_address);
                }
                if (value.label != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.label);
                }
                if (value.location != null) {
                    size += ApiLocationPb.ADAPTER.encodedSizeWithTag(7, value.location);
                }
                if (value.serial_number != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.serial_number);
                }
                if (value.status != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.status);
                }
                if (value.livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(10, value.livemode);
                }
                return value.base_url != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.base_url) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ExpandedLocationReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.object_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.object_);
                }
                if (value.device_sw_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.device_sw_version);
                }
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.device_type);
                }
                if (value.ip_address != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.ip_address);
                }
                if (value.label != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.label);
                }
                if (value.location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 7, value.location);
                }
                if (value.serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.serial_number);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.status);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 10, value.livemode);
                }
                if (value.base_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.base_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ExpandedLocationReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.base_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.base_url);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 10, value.livemode);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.status);
                }
                if (value.serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.serial_number);
                }
                if (value.location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 7, value.location);
                }
                if (value.label != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.label);
                }
                if (value.ip_address != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.ip_address);
                }
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.device_type);
                }
                if (value.device_sw_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.device_sw_version);
                }
                if (value.object_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.object_);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ExpandedLocationReader redact(ExpandedLocationReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.object_;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.device_sw_version;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.device_type;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.ip_address;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.label;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                ApiLocationPb apiLocationPb = value.location;
                ApiLocationPb apiLocationPbRedact = apiLocationPb != null ? ApiLocationPb.ADAPTER.redact(apiLocationPb) : null;
                String str7 = value.serial_number;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                String str8 = value.status;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                Boolean bool = value.livemode;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str9 = value.base_url;
                return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, strRedact6, apiLocationPbRedact, strRedact7, strRedact8, boolRedact, str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ExpandedLocationReader decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                ApiLocationPb apiLocationPbDecode = null;
                String strDecode7 = null;
                String strDecode8 = null;
                Boolean boolDecode = null;
                String strDecode9 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                apiLocationPbDecode = ApiLocationPb.ADAPTER.decode(reader);
                                break;
                            case 8:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 11:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ExpandedLocationReader(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, apiLocationPbDecode, strDecode7, strDecode8, boolDecode, strDecode9, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
