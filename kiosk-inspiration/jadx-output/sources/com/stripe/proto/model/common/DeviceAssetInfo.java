package com.stripe.proto.model.common;

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
import com.stripe.proto.model.common.DeviceAssetInfo;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DeviceAssetInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetInfo;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;", "name", "", "asset_type", "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "installer_package_name", "asset_version_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "AssetType", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceAssetInfo extends Message<DeviceAssetInfo, Builder> {
    public static final ProtoAdapter<DeviceAssetInfo> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetInfo$AssetType#ADAPTER", jsonName = "assetType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final AssetType asset_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "assetVersionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String asset_version_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "installerPackageName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String installer_package_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final VersionInfoPb version_info;

    public DeviceAssetInfo() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ DeviceAssetInfo(String str, AssetType assetType, VersionInfoPb versionInfoPb, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? AssetType.ASSET_TYPE_INVALID : assetType, (i & 4) != 0 ? null : versionInfoPb, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAssetInfo(String name, AssetType asset_type, VersionInfoPb versionInfoPb, String installer_package_name, String asset_version_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(asset_type, "asset_type");
        Intrinsics.checkNotNullParameter(installer_package_name, "installer_package_name");
        Intrinsics.checkNotNullParameter(asset_version_id, "asset_version_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.asset_type = asset_type;
        this.version_info = versionInfoPb;
        this.installer_package_name = installer_package_name;
        this.asset_version_id = asset_version_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.asset_type = this.asset_type;
        builder.version_info = this.version_info;
        builder.installer_package_name = this.installer_package_name;
        builder.asset_version_id = this.asset_version_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceAssetInfo)) {
            return false;
        }
        DeviceAssetInfo deviceAssetInfo = (DeviceAssetInfo) other;
        return Intrinsics.areEqual(unknownFields(), deviceAssetInfo.unknownFields()) && Intrinsics.areEqual(this.name, deviceAssetInfo.name) && this.asset_type == deviceAssetInfo.asset_type && Intrinsics.areEqual(this.version_info, deviceAssetInfo.version_info) && Intrinsics.areEqual(this.installer_package_name, deviceAssetInfo.installer_package_name) && Intrinsics.areEqual(this.asset_version_id, deviceAssetInfo.asset_version_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.asset_type.hashCode()) * 37;
        VersionInfoPb versionInfoPb = this.version_info;
        int iHashCode2 = ((((iHashCode + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37) + this.installer_package_name.hashCode()) * 37) + this.asset_version_id.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        arrayList2.add("asset_type=" + this.asset_type);
        if (this.version_info != null) {
            arrayList2.add("version_info=" + this.version_info);
        }
        arrayList2.add("installer_package_name=" + Internal.sanitize(this.installer_package_name));
        arrayList2.add("asset_version_id=" + Internal.sanitize(this.asset_version_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceAssetInfo{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceAssetInfo copy$default(DeviceAssetInfo deviceAssetInfo, String str, AssetType assetType, VersionInfoPb versionInfoPb, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deviceAssetInfo.name;
        }
        if ((i & 2) != 0) {
            assetType = deviceAssetInfo.asset_type;
        }
        if ((i & 4) != 0) {
            versionInfoPb = deviceAssetInfo.version_info;
        }
        if ((i & 8) != 0) {
            str2 = deviceAssetInfo.installer_package_name;
        }
        if ((i & 16) != 0) {
            str3 = deviceAssetInfo.asset_version_id;
        }
        if ((i & 32) != 0) {
            byteString = deviceAssetInfo.unknownFields();
        }
        String str4 = str3;
        ByteString byteString2 = byteString;
        return deviceAssetInfo.copy(str, assetType, versionInfoPb, str2, str4, byteString2);
    }

    public final DeviceAssetInfo copy(String name, AssetType asset_type, VersionInfoPb version_info, String installer_package_name, String asset_version_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(asset_type, "asset_type");
        Intrinsics.checkNotNullParameter(installer_package_name, "installer_package_name");
        Intrinsics.checkNotNullParameter(asset_version_id, "asset_version_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceAssetInfo(name, asset_type, version_info, installer_package_name, asset_version_id, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceAssetInfo.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "()V", "asset_type", "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;", "asset_version_id", "", "installer_package_name", "name", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceAssetInfo, Builder> {
        public VersionInfoPb version_info;
        public String name = "";
        public AssetType asset_type = AssetType.ASSET_TYPE_INVALID;
        public String installer_package_name = "";
        public String asset_version_id = "";

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder asset_type(AssetType asset_type) {
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            this.asset_type = asset_type;
            return this;
        }

        public final Builder version_info(VersionInfoPb version_info) {
            this.version_info = version_info;
            return this;
        }

        public final Builder installer_package_name(String installer_package_name) {
            Intrinsics.checkNotNullParameter(installer_package_name, "installer_package_name");
            this.installer_package_name = installer_package_name;
            return this;
        }

        public final Builder asset_version_id(String asset_version_id) {
            Intrinsics.checkNotNullParameter(asset_version_id, "asset_version_id");
            this.asset_version_id = asset_version_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceAssetInfo build() {
            return new DeviceAssetInfo(this.name, this.asset_type, this.version_info, this.installer_package_name, this.asset_version_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceAssetInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetInfo$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceAssetInfo build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceAssetInfo.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceAssetInfo>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeviceAssetInfo$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceAssetInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                if (value.asset_type != DeviceAssetInfo.AssetType.ASSET_TYPE_INVALID) {
                    size += DeviceAssetInfo.AssetType.ADAPTER.encodedSizeWithTag(2, value.asset_type);
                }
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(3, value.version_info);
                }
                if (!Intrinsics.areEqual(value.installer_package_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.installer_package_name);
                }
                return !Intrinsics.areEqual(value.asset_version_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(5, value.asset_version_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceAssetInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                if (value.asset_type != DeviceAssetInfo.AssetType.ASSET_TYPE_INVALID) {
                    DeviceAssetInfo.AssetType.ADAPTER.encodeWithTag(writer, 2, value.asset_type);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 3, value.version_info);
                }
                if (!Intrinsics.areEqual(value.installer_package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.installer_package_name);
                }
                if (!Intrinsics.areEqual(value.asset_version_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.asset_version_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceAssetInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.asset_version_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.asset_version_id);
                }
                if (!Intrinsics.areEqual(value.installer_package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.installer_package_name);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 3, value.version_info);
                }
                if (value.asset_type != DeviceAssetInfo.AssetType.ASSET_TYPE_INVALID) {
                    DeviceAssetInfo.AssetType.ADAPTER.encodeWithTag(writer, 2, value.asset_type);
                }
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAssetInfo decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DeviceAssetInfo.AssetType assetType = DeviceAssetInfo.AssetType.ASSET_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                VersionInfoPb versionInfoPbDecode = null;
                DeviceAssetInfo.AssetType assetTypeDecode = assetType;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceAssetInfo(strDecode3, assetTypeDecode, versionInfoPbDecode, strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            assetTypeDecode = DeviceAssetInfo.AssetType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceAssetInfo redact(DeviceAssetInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                VersionInfoPb versionInfoPb = value.version_info;
                return DeviceAssetInfo.copy$default(value, null, null, versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null, null, null, ByteString.EMPTY, 27, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DeviceAssetInfo.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\u0081\u0002\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0019B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ASSET_TYPE_INVALID", "P400_RACCOON", "P400_WARDEN", "RACCOON_UX_BUNDLE", "RACCOON_LOCALIZATION_BUNDLE", "EMV_CONFIG", "WISEPOS_READER", "WISEPOS_UPDATER", "BBPOS_FIRMWARE", "BBPOS_CONFIG", "BBPOS_KEY_PROFILE", "ANDROID_APK", "ANDROID_ROM", "FACTORY_IMAGE", "INTERNAL_ANDROID_APK", "UBER_LANGUAGE_PACK", "LANGUAGE_PACK", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AssetType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AssetType[] $VALUES;
        public static final ProtoAdapter<AssetType> ADAPTER;
        public static final AssetType ANDROID_APK;
        public static final AssetType ANDROID_ROM;
        public static final AssetType ASSET_TYPE_INVALID;
        public static final AssetType BBPOS_CONFIG;
        public static final AssetType BBPOS_FIRMWARE;
        public static final AssetType BBPOS_KEY_PROFILE;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final AssetType EMV_CONFIG;
        public static final AssetType FACTORY_IMAGE;
        public static final AssetType INTERNAL_ANDROID_APK;
        public static final AssetType LANGUAGE_PACK;
        public static final AssetType P400_RACCOON;
        public static final AssetType P400_WARDEN;
        public static final AssetType RACCOON_LOCALIZATION_BUNDLE;
        public static final AssetType RACCOON_UX_BUNDLE;
        public static final AssetType UBER_LANGUAGE_PACK;
        public static final AssetType WISEPOS_READER;
        public static final AssetType WISEPOS_UPDATER;
        private final int value;

        private static final /* synthetic */ AssetType[] $values() {
            return new AssetType[]{ASSET_TYPE_INVALID, P400_RACCOON, P400_WARDEN, RACCOON_UX_BUNDLE, RACCOON_LOCALIZATION_BUNDLE, EMV_CONFIG, WISEPOS_READER, WISEPOS_UPDATER, BBPOS_FIRMWARE, BBPOS_CONFIG, BBPOS_KEY_PROFILE, ANDROID_APK, ANDROID_ROM, FACTORY_IMAGE, INTERNAL_ANDROID_APK, UBER_LANGUAGE_PACK, LANGUAGE_PACK};
        }

        @JvmStatic
        public static final AssetType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<AssetType> getEntries() {
            return $ENTRIES;
        }

        public static AssetType valueOf(String str) {
            return (AssetType) Enum.valueOf(AssetType.class, str);
        }

        public static AssetType[] values() {
            return (AssetType[]) $VALUES.clone();
        }

        private AssetType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final AssetType assetType = new AssetType("ASSET_TYPE_INVALID", 0, 0);
            ASSET_TYPE_INVALID = assetType;
            P400_RACCOON = new AssetType("P400_RACCOON", 1, 1);
            P400_WARDEN = new AssetType("P400_WARDEN", 2, 2);
            RACCOON_UX_BUNDLE = new AssetType("RACCOON_UX_BUNDLE", 3, 3);
            RACCOON_LOCALIZATION_BUNDLE = new AssetType("RACCOON_LOCALIZATION_BUNDLE", 4, 4);
            EMV_CONFIG = new AssetType("EMV_CONFIG", 5, 5);
            WISEPOS_READER = new AssetType("WISEPOS_READER", 6, 6);
            WISEPOS_UPDATER = new AssetType("WISEPOS_UPDATER", 7, 7);
            BBPOS_FIRMWARE = new AssetType("BBPOS_FIRMWARE", 8, 8);
            BBPOS_CONFIG = new AssetType("BBPOS_CONFIG", 9, 9);
            BBPOS_KEY_PROFILE = new AssetType("BBPOS_KEY_PROFILE", 10, 10);
            ANDROID_APK = new AssetType("ANDROID_APK", 11, 11);
            ANDROID_ROM = new AssetType("ANDROID_ROM", 12, 12);
            FACTORY_IMAGE = new AssetType("FACTORY_IMAGE", 13, 13);
            INTERNAL_ANDROID_APK = new AssetType("INTERNAL_ANDROID_APK", 14, 14);
            UBER_LANGUAGE_PACK = new AssetType("UBER_LANGUAGE_PACK", 15, 15);
            LANGUAGE_PACK = new AssetType("LANGUAGE_PACK", 16, 16);
            AssetType[] assetTypeArr$values = $values();
            $VALUES = assetTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(assetTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AssetType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<AssetType>(orCreateKotlinClass, syntax, assetType) { // from class: com.stripe.proto.model.common.DeviceAssetInfo$AssetType$Companion$ADAPTER$1
                {
                    DeviceAssetInfo.AssetType assetType2 = assetType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public DeviceAssetInfo.AssetType fromValue(int value) {
                    return DeviceAssetInfo.AssetType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: DeviceAssetInfo.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final AssetType fromValue(int value) {
                switch (value) {
                    case 0:
                        return AssetType.ASSET_TYPE_INVALID;
                    case 1:
                        return AssetType.P400_RACCOON;
                    case 2:
                        return AssetType.P400_WARDEN;
                    case 3:
                        return AssetType.RACCOON_UX_BUNDLE;
                    case 4:
                        return AssetType.RACCOON_LOCALIZATION_BUNDLE;
                    case 5:
                        return AssetType.EMV_CONFIG;
                    case 6:
                        return AssetType.WISEPOS_READER;
                    case 7:
                        return AssetType.WISEPOS_UPDATER;
                    case 8:
                        return AssetType.BBPOS_FIRMWARE;
                    case 9:
                        return AssetType.BBPOS_CONFIG;
                    case 10:
                        return AssetType.BBPOS_KEY_PROFILE;
                    case 11:
                        return AssetType.ANDROID_APK;
                    case 12:
                        return AssetType.ANDROID_ROM;
                    case 13:
                        return AssetType.FACTORY_IMAGE;
                    case 14:
                        return AssetType.INTERNAL_ANDROID_APK;
                    case 15:
                        return AssetType.UBER_LANGUAGE_PACK;
                    case 16:
                        return AssetType.LANGUAGE_PACK;
                    default:
                        return null;
                }
            }
        }
    }
}
