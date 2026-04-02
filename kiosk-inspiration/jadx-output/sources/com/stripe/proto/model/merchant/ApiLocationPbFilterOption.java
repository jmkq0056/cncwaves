package com.stripe.proto.model.merchant;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: ApiLocationPbFilterOption.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BQ\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJW\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;", "pinpad_config_id", "", "device_deploy_group_id", "location_name", "zone_ids", "", "query_no_zone_locations", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiLocationPbFilterOption extends Message<ApiLocationPbFilterOption, Builder> {
    public static final ProtoAdapter<ApiLocationPbFilterOption> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceDeployGroupId", schemaIndex = 1, tag = 2)
    public final String device_deploy_group_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "locationName", schemaIndex = 2, tag = 3)
    public final String location_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "pinpadConfigId", schemaIndex = 0, tag = 1)
    public final String pinpad_config_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "queryNoZoneLocations", schemaIndex = 4, tag = 5)
    public final Boolean query_no_zone_locations;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "zoneIds", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 4)
    public final List<String> zone_ids;

    public ApiLocationPbFilterOption() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ ApiLocationPbFilterOption(String str, String str2, String str3, List list, Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? CollectionsKt.emptyList() : list, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiLocationPbFilterOption(String str, String str2, String str3, List<String> zone_ids, Boolean bool, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(zone_ids, "zone_ids");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pinpad_config_id = str;
        this.device_deploy_group_id = str2;
        this.location_name = str3;
        this.query_no_zone_locations = bool;
        this.zone_ids = Internal.immutableCopyOf("zone_ids", zone_ids);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pinpad_config_id = this.pinpad_config_id;
        builder.device_deploy_group_id = this.device_deploy_group_id;
        builder.location_name = this.location_name;
        builder.zone_ids = this.zone_ids;
        builder.query_no_zone_locations = this.query_no_zone_locations;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApiLocationPbFilterOption)) {
            return false;
        }
        ApiLocationPbFilterOption apiLocationPbFilterOption = (ApiLocationPbFilterOption) other;
        return Intrinsics.areEqual(unknownFields(), apiLocationPbFilterOption.unknownFields()) && Intrinsics.areEqual(this.pinpad_config_id, apiLocationPbFilterOption.pinpad_config_id) && Intrinsics.areEqual(this.device_deploy_group_id, apiLocationPbFilterOption.device_deploy_group_id) && Intrinsics.areEqual(this.location_name, apiLocationPbFilterOption.location_name) && Intrinsics.areEqual(this.zone_ids, apiLocationPbFilterOption.zone_ids) && Intrinsics.areEqual(this.query_no_zone_locations, apiLocationPbFilterOption.query_no_zone_locations);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.pinpad_config_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.device_deploy_group_id;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.location_name;
        int iHashCode4 = (((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37) + this.zone_ids.hashCode()) * 37;
        Boolean bool = this.query_no_zone_locations;
        int iHashCode5 = iHashCode4 + (bool != null ? bool.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.pinpad_config_id != null) {
            arrayList.add("pinpad_config_id=" + this.pinpad_config_id);
        }
        if (this.device_deploy_group_id != null) {
            arrayList.add("device_deploy_group_id=" + this.device_deploy_group_id);
        }
        if (this.location_name != null) {
            arrayList.add("location_name=" + this.location_name);
        }
        if (!this.zone_ids.isEmpty()) {
            arrayList.add("zone_ids=" + this.zone_ids);
        }
        if (this.query_no_zone_locations != null) {
            arrayList.add("query_no_zone_locations=" + this.query_no_zone_locations);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApiLocationPbFilterOption{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ApiLocationPbFilterOption copy$default(ApiLocationPbFilterOption apiLocationPbFilterOption, String str, String str2, String str3, List list, Boolean bool, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = apiLocationPbFilterOption.pinpad_config_id;
        }
        if ((i & 2) != 0) {
            str2 = apiLocationPbFilterOption.device_deploy_group_id;
        }
        if ((i & 4) != 0) {
            str3 = apiLocationPbFilterOption.location_name;
        }
        if ((i & 8) != 0) {
            list = apiLocationPbFilterOption.zone_ids;
        }
        if ((i & 16) != 0) {
            bool = apiLocationPbFilterOption.query_no_zone_locations;
        }
        if ((i & 32) != 0) {
            byteString = apiLocationPbFilterOption.unknownFields();
        }
        Boolean bool2 = bool;
        ByteString byteString2 = byteString;
        return apiLocationPbFilterOption.copy(str, str2, str3, list, bool2, byteString2);
    }

    public final ApiLocationPbFilterOption copy(String pinpad_config_id, String device_deploy_group_id, String location_name, List<String> zone_ids, Boolean query_no_zone_locations, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(zone_ids, "zone_ids");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApiLocationPbFilterOption(pinpad_config_id, device_deploy_group_id, location_name, zone_ids, query_no_zone_locations, unknownFields);
    }

    /* JADX INFO: compiled from: ApiLocationPbFilterOption.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u000b\u001a\u00020\u00002\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u001a\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;", "()V", "device_deploy_group_id", "", "location_name", "pinpad_config_id", "query_no_zone_locations", "", "Ljava/lang/Boolean;", "zone_ids", "", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApiLocationPbFilterOption, Builder> {
        public String device_deploy_group_id;
        public String location_name;
        public String pinpad_config_id;
        public Boolean query_no_zone_locations;
        public List<String> zone_ids = CollectionsKt.emptyList();

        public final Builder pinpad_config_id(String pinpad_config_id) {
            this.pinpad_config_id = pinpad_config_id;
            return this;
        }

        public final Builder device_deploy_group_id(String device_deploy_group_id) {
            this.device_deploy_group_id = device_deploy_group_id;
            return this;
        }

        public final Builder location_name(String location_name) {
            this.location_name = location_name;
            return this;
        }

        public final Builder zone_ids(List<String> zone_ids) {
            Intrinsics.checkNotNullParameter(zone_ids, "zone_ids");
            Internal.checkElementsNotNull(zone_ids);
            this.zone_ids = zone_ids;
            return this;
        }

        public final Builder query_no_zone_locations(Boolean query_no_zone_locations) {
            this.query_no_zone_locations = query_no_zone_locations;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApiLocationPbFilterOption build() {
            return new ApiLocationPbFilterOption(this.pinpad_config_id, this.device_deploy_group_id, this.location_name, this.zone_ids, this.query_no_zone_locations, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApiLocationPbFilterOption.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApiLocationPbFilterOption build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApiLocationPbFilterOption.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApiLocationPbFilterOption>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.merchant.ApiLocationPbFilterOption$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApiLocationPbFilterOption value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.pinpad_config_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.pinpad_config_id);
                }
                if (value.device_deploy_group_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.device_deploy_group_id);
                }
                if (value.location_name != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.location_name);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING_VALUE.asRepeated().encodedSizeWithTag(4, value.zone_ids);
                return value.query_no_zone_locations != null ? iEncodedSizeWithTag + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(5, value.query_no_zone_locations) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApiLocationPbFilterOption value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.pinpad_config_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.pinpad_config_id);
                }
                if (value.device_deploy_group_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.device_deploy_group_id);
                }
                if (value.location_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.location_name);
                }
                ProtoAdapter.STRING_VALUE.asRepeated().encodeWithTag(writer, 4, value.zone_ids);
                if (value.query_no_zone_locations != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.query_no_zone_locations);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApiLocationPbFilterOption value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.query_no_zone_locations != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.query_no_zone_locations);
                }
                ProtoAdapter.STRING_VALUE.asRepeated().encodeWithTag(writer, 4, value.zone_ids);
                if (value.location_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.location_name);
                }
                if (value.device_deploy_group_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.device_deploy_group_id);
                }
                if (value.pinpad_config_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.pinpad_config_id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApiLocationPbFilterOption decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Boolean boolDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApiLocationPbFilterOption(strDecode, strDecode2, strDecode3, arrayList, boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 4) {
                        arrayList.add(ProtoAdapter.STRING_VALUE.decode(reader));
                    } else if (iNextTag == 5) {
                        boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApiLocationPbFilterOption redact(ApiLocationPbFilterOption value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.pinpad_config_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.device_deploy_group_id;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.location_name;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                List<String> listM361redactElements = Internal.m361redactElements(value.zone_ids, ProtoAdapter.STRING_VALUE);
                Boolean bool = value.query_no_zone_locations;
                return value.copy(strRedact, strRedact2, strRedact3, listM361redactElements, bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, ByteString.EMPTY);
            }
        };
    }
}
