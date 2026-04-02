package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: ListAllReadersRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBs\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jy\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\rH\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;", "device_type", "", FirebaseAnalytics.Param.LOCATION, "expand", "", "starting_after", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "compatible_sdk_type", "compatible_sdk_version", "limit", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListAllReadersRequest extends Message<ListAllReadersRequest, Builder> {
    public static final ProtoAdapter<ListAllReadersRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "compatibleSdkType", schemaIndex = 5, tag = 6)
    public final String compatible_sdk_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "compatibleSdkVersion", schemaIndex = 6, tag = 7)
    public final String compatible_sdk_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceType", schemaIndex = 0, tag = 1)
    public final String device_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", schemaIndex = 7, tag = 8)
    public final Integer limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "serialNumber", schemaIndex = 4, tag = 5)
    public final String serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "startingAfter", schemaIndex = 3, tag = 4)
    public final String starting_after;

    public ListAllReadersRequest() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ ListAllReadersRequest(String str, String str2, List list, String str3, String str4, String str5, String str6, Integer num, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : num, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListAllReadersRequest(String str, String str2, List<String> expand, String str3, String str4, String str5, String str6, Integer num, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_type = str;
        this.location = str2;
        this.starting_after = str3;
        this.serial_number = str4;
        this.compatible_sdk_type = str5;
        this.compatible_sdk_version = str6;
        this.limit = num;
        this.expand = Internal.immutableCopyOf("expand", expand);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_type = this.device_type;
        builder.location = this.location;
        builder.expand = this.expand;
        builder.starting_after = this.starting_after;
        builder.serial_number = this.serial_number;
        builder.compatible_sdk_type = this.compatible_sdk_type;
        builder.compatible_sdk_version = this.compatible_sdk_version;
        builder.limit = this.limit;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ListAllReadersRequest)) {
            return false;
        }
        ListAllReadersRequest listAllReadersRequest = (ListAllReadersRequest) other;
        return Intrinsics.areEqual(unknownFields(), listAllReadersRequest.unknownFields()) && Intrinsics.areEqual(this.device_type, listAllReadersRequest.device_type) && Intrinsics.areEqual(this.location, listAllReadersRequest.location) && Intrinsics.areEqual(this.expand, listAllReadersRequest.expand) && Intrinsics.areEqual(this.starting_after, listAllReadersRequest.starting_after) && Intrinsics.areEqual(this.serial_number, listAllReadersRequest.serial_number) && Intrinsics.areEqual(this.compatible_sdk_type, listAllReadersRequest.compatible_sdk_type) && Intrinsics.areEqual(this.compatible_sdk_version, listAllReadersRequest.compatible_sdk_version) && Intrinsics.areEqual(this.limit, listAllReadersRequest.limit);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.device_type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.location;
        int iHashCode3 = (((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37) + this.expand.hashCode()) * 37;
        String str3 = this.starting_after;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.serial_number;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.compatible_sdk_type;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.compatible_sdk_version;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        Integer num = this.limit;
        int iHashCode8 = iHashCode7 + (num != null ? num.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_type != null) {
            arrayList.add("device_type=" + this.device_type);
        }
        if (this.location != null) {
            arrayList.add("location=" + this.location);
        }
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.starting_after != null) {
            arrayList.add("starting_after=" + this.starting_after);
        }
        if (this.serial_number != null) {
            arrayList.add("serial_number=" + this.serial_number);
        }
        if (this.compatible_sdk_type != null) {
            arrayList.add("compatible_sdk_type=" + this.compatible_sdk_type);
        }
        if (this.compatible_sdk_version != null) {
            arrayList.add("compatible_sdk_version=" + this.compatible_sdk_version);
        }
        if (this.limit != null) {
            arrayList.add("limit=" + this.limit);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ListAllReadersRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ListAllReadersRequest copy$default(ListAllReadersRequest listAllReadersRequest, String str, String str2, List list, String str3, String str4, String str5, String str6, Integer num, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = listAllReadersRequest.device_type;
        }
        if ((i & 2) != 0) {
            str2 = listAllReadersRequest.location;
        }
        if ((i & 4) != 0) {
            list = listAllReadersRequest.expand;
        }
        if ((i & 8) != 0) {
            str3 = listAllReadersRequest.starting_after;
        }
        if ((i & 16) != 0) {
            str4 = listAllReadersRequest.serial_number;
        }
        if ((i & 32) != 0) {
            str5 = listAllReadersRequest.compatible_sdk_type;
        }
        if ((i & 64) != 0) {
            str6 = listAllReadersRequest.compatible_sdk_version;
        }
        if ((i & 128) != 0) {
            num = listAllReadersRequest.limit;
        }
        if ((i & 256) != 0) {
            byteString = listAllReadersRequest.unknownFields();
        }
        Integer num2 = num;
        ByteString byteString2 = byteString;
        String str7 = str5;
        String str8 = str6;
        String str9 = str4;
        List list2 = list;
        return listAllReadersRequest.copy(str, str2, list2, str3, str9, str7, str8, num2, byteString2);
    }

    public final ListAllReadersRequest copy(String device_type, String location, List<String> expand, String starting_after, String serial_number, String compatible_sdk_type, String compatible_sdk_version, Integer limit, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ListAllReadersRequest(device_type, location, expand, starting_after, serial_number, compatible_sdk_type, compatible_sdk_version, limit, unknownFields);
    }

    /* JADX INFO: compiled from: ListAllReadersRequest.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tJ\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "()V", "compatible_sdk_type", "", "compatible_sdk_version", "device_type", "expand", "", "limit", "", "Ljava/lang/Integer;", FirebaseAnalytics.Param.LOCATION, OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "starting_after", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ListAllReadersRequest, Builder> {
        public String compatible_sdk_type;
        public String compatible_sdk_version;
        public String device_type;
        public List<String> expand = CollectionsKt.emptyList();
        public Integer limit;
        public String location;
        public String serial_number;
        public String starting_after;

        public final Builder device_type(String device_type) {
            this.device_type = device_type;
            return this;
        }

        public final Builder location(String location) {
            this.location = location;
            return this;
        }

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder starting_after(String starting_after) {
            this.starting_after = starting_after;
            return this;
        }

        public final Builder serial_number(String serial_number) {
            this.serial_number = serial_number;
            return this;
        }

        public final Builder compatible_sdk_type(String compatible_sdk_type) {
            this.compatible_sdk_type = compatible_sdk_type;
            return this;
        }

        public final Builder compatible_sdk_version(String compatible_sdk_version) {
            this.compatible_sdk_version = compatible_sdk_version;
            return this;
        }

        public final Builder limit(Integer limit) {
            this.limit = limit;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ListAllReadersRequest build() {
            return new ListAllReadersRequest(this.device_type, this.location, this.expand, this.starting_after, this.serial_number, this.compatible_sdk_type, this.compatible_sdk_version, this.limit, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ListAllReadersRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ListAllReadersRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ListAllReadersRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ListAllReadersRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ListAllReadersRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ListAllReadersRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ListAllReadersRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.device_type);
                }
                if (value.location != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.location);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(3, value.expand);
                if (value.starting_after != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.starting_after);
                }
                if (value.serial_number != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.serial_number);
                }
                if (value.compatible_sdk_type != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.compatible_sdk_type);
                }
                if (value.compatible_sdk_version != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.compatible_sdk_version);
                }
                return value.limit != null ? iEncodedSizeWithTag + ProtoAdapter.INT32_VALUE.encodedSizeWithTag(8, value.limit) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ListAllReadersRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.device_type);
                }
                if (value.location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.location);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.expand);
                if (value.starting_after != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.starting_after);
                }
                if (value.serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.serial_number);
                }
                if (value.compatible_sdk_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.compatible_sdk_type);
                }
                if (value.compatible_sdk_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.compatible_sdk_version);
                }
                if (value.limit != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 8, value.limit);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ListAllReadersRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.limit != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 8, value.limit);
                }
                if (value.compatible_sdk_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.compatible_sdk_version);
                }
                if (value.compatible_sdk_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.compatible_sdk_type);
                }
                if (value.serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.serial_number);
                }
                if (value.starting_after != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.starting_after);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.expand);
                if (value.location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.location);
                }
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.device_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ListAllReadersRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                Integer numDecode = null;
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
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ListAllReadersRequest(strDecode, strDecode2, arrayList, strDecode3, strDecode4, strDecode5, strDecode6, numDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ListAllReadersRequest redact(ListAllReadersRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.device_type;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.location;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.starting_after;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.serial_number;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.compatible_sdk_type;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.compatible_sdk_version;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                Integer num = value.limit;
                return ListAllReadersRequest.copy$default(value, strRedact, strRedact2, null, strRedact3, strRedact4, strRedact5, strRedact6, num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null, ByteString.EMPTY, 4, null);
            }
        };
    }
}
