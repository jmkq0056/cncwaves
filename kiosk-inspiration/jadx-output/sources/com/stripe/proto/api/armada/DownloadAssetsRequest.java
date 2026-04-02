package com.stripe.proto.api.armada;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.armada.DownloadAssetsRequest;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.config.FontBundle;
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

/* JADX INFO: compiled from: DownloadAssetsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B+\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$Builder;", "asset_descriptor", "", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AssetDescriptor", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadAssetsRequest extends Message<DownloadAssetsRequest, Builder> {
    public static final ProtoAdapter<DownloadAssetsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.armada.DownloadAssetsRequest$AssetDescriptor#ADAPTER", jsonName = "assetDescriptor", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<AssetDescriptor> asset_descriptor;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DeviceInfo device_info;

    public DownloadAssetsRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DownloadAssetsRequest(List list, DeviceInfo deviceInfo, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : deviceInfo, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadAssetsRequest(List<AssetDescriptor> asset_descriptor, DeviceInfo deviceInfo, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(asset_descriptor, "asset_descriptor");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.asset_descriptor = Internal.immutableCopyOf("asset_descriptor", asset_descriptor);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.asset_descriptor = this.asset_descriptor;
        builder.device_info = this.device_info;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DownloadAssetsRequest)) {
            return false;
        }
        DownloadAssetsRequest downloadAssetsRequest = (DownloadAssetsRequest) other;
        return Intrinsics.areEqual(unknownFields(), downloadAssetsRequest.unknownFields()) && Intrinsics.areEqual(this.asset_descriptor, downloadAssetsRequest.asset_descriptor) && Intrinsics.areEqual(this.device_info, downloadAssetsRequest.device_info);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.asset_descriptor.hashCode()) * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.asset_descriptor.isEmpty()) {
            arrayList.add("asset_descriptor=" + this.asset_descriptor);
        }
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadAssetsRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DownloadAssetsRequest copy$default(DownloadAssetsRequest downloadAssetsRequest, List list, DeviceInfo deviceInfo, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = downloadAssetsRequest.asset_descriptor;
        }
        if ((i & 2) != 0) {
            deviceInfo = downloadAssetsRequest.device_info;
        }
        if ((i & 4) != 0) {
            byteString = downloadAssetsRequest.unknownFields();
        }
        return downloadAssetsRequest.copy(list, deviceInfo, byteString);
    }

    public final DownloadAssetsRequest copy(List<AssetDescriptor> asset_descriptor, DeviceInfo device_info, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(asset_descriptor, "asset_descriptor");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DownloadAssetsRequest(asset_descriptor, device_info, unknownFields);
    }

    /* JADX INFO: compiled from: DownloadAssetsRequest.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest;", "()V", "asset_descriptor", "", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DownloadAssetsRequest, Builder> {
        public List<AssetDescriptor> asset_descriptor = CollectionsKt.emptyList();
        public DeviceInfo device_info;

        public final Builder asset_descriptor(List<AssetDescriptor> asset_descriptor) {
            Intrinsics.checkNotNullParameter(asset_descriptor, "asset_descriptor");
            Internal.checkElementsNotNull(asset_descriptor);
            this.asset_descriptor = asset_descriptor;
            return this;
        }

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DownloadAssetsRequest build() {
            return new DownloadAssetsRequest(this.asset_descriptor, this.device_info, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DownloadAssetsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DownloadAssetsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadAssetsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DownloadAssetsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadAssetsRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DownloadAssetsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + DownloadAssetsRequest.AssetDescriptor.ADAPTER.asRepeated().encodedSizeWithTag(1, value.asset_descriptor);
                return value.device_info != null ? size + DeviceInfo.ADAPTER.encodedSizeWithTag(2, value.device_info) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DownloadAssetsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DownloadAssetsRequest.AssetDescriptor.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.asset_descriptor);
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.device_info);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DownloadAssetsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 2, value.device_info);
                }
                DownloadAssetsRequest.AssetDescriptor.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.asset_descriptor);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DownloadAssetsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DownloadAssetsRequest(arrayList, deviceInfoDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(DownloadAssetsRequest.AssetDescriptor.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DownloadAssetsRequest redact(DownloadAssetsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List<DownloadAssetsRequest.AssetDescriptor> listM361redactElements = Internal.m361redactElements(value.asset_descriptor, DownloadAssetsRequest.AssetDescriptor.ADAPTER);
                DeviceInfo deviceInfo = value.device_info;
                return value.copy(listM361redactElements, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: DownloadAssetsRequest.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ8\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;", "checksum", "", "asset_type", "Lcom/stripe/proto/api/armada/AssetType;", "image_id", "font_bundle", "Lcom/stripe/proto/model/config/FontBundle;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/config/FontBundle;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AssetDescriptor extends Message<AssetDescriptor, Builder> {
        public static final ProtoAdapter<AssetDescriptor> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.armada.AssetType#ADAPTER", jsonName = "assetType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final AssetType asset_type;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String checksum;

        @WireField(adapter = "com.stripe.proto.model.config.FontBundle#ADAPTER", jsonName = "fontBundle", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final FontBundle font_bundle;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "imageId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String image_id;

        public AssetDescriptor() {
            this(null, null, null, null, null, 31, null);
        }

        public /* synthetic */ AssetDescriptor(String str, AssetType assetType, String str2, FontBundle fontBundle, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? AssetType.ASSET_TYPE_INVALID : assetType, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? FontBundle.UNKNOWN : fontBundle, (i & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetDescriptor(String checksum, AssetType asset_type, String image_id, FontBundle font_bundle, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(checksum, "checksum");
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            Intrinsics.checkNotNullParameter(image_id, "image_id");
            Intrinsics.checkNotNullParameter(font_bundle, "font_bundle");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.checksum = checksum;
            this.asset_type = asset_type;
            this.image_id = image_id;
            this.font_bundle = font_bundle;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.checksum = this.checksum;
            builder.asset_type = this.asset_type;
            builder.image_id = this.image_id;
            builder.font_bundle = this.font_bundle;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AssetDescriptor)) {
                return false;
            }
            AssetDescriptor assetDescriptor = (AssetDescriptor) other;
            return Intrinsics.areEqual(unknownFields(), assetDescriptor.unknownFields()) && Intrinsics.areEqual(this.checksum, assetDescriptor.checksum) && this.asset_type == assetDescriptor.asset_type && Intrinsics.areEqual(this.image_id, assetDescriptor.image_id) && this.font_bundle == assetDescriptor.font_bundle;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((unknownFields().hashCode() * 37) + this.checksum.hashCode()) * 37) + this.asset_type.hashCode()) * 37) + this.image_id.hashCode()) * 37) + this.font_bundle.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("checksum=" + Internal.sanitize(this.checksum));
            arrayList2.add("asset_type=" + this.asset_type);
            arrayList2.add("image_id=" + Internal.sanitize(this.image_id));
            arrayList2.add("font_bundle=" + this.font_bundle);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AssetDescriptor{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AssetDescriptor copy$default(AssetDescriptor assetDescriptor, String str, AssetType assetType, String str2, FontBundle fontBundle, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = assetDescriptor.checksum;
            }
            if ((i & 2) != 0) {
                assetType = assetDescriptor.asset_type;
            }
            if ((i & 4) != 0) {
                str2 = assetDescriptor.image_id;
            }
            if ((i & 8) != 0) {
                fontBundle = assetDescriptor.font_bundle;
            }
            if ((i & 16) != 0) {
                byteString = assetDescriptor.unknownFields();
            }
            ByteString byteString2 = byteString;
            String str3 = str2;
            return assetDescriptor.copy(str, assetType, str3, fontBundle, byteString2);
        }

        public final AssetDescriptor copy(String checksum, AssetType asset_type, String image_id, FontBundle font_bundle, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(checksum, "checksum");
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            Intrinsics.checkNotNullParameter(image_id, "image_id");
            Intrinsics.checkNotNullParameter(font_bundle, "font_bundle");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AssetDescriptor(checksum, asset_type, image_id, font_bundle, unknownFields);
        }

        /* JADX INFO: compiled from: DownloadAssetsRequest.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;", "()V", "asset_type", "Lcom/stripe/proto/api/armada/AssetType;", "checksum", "", "font_bundle", "Lcom/stripe/proto/model/config/FontBundle;", "image_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AssetDescriptor, Builder> {
            public String checksum = "";
            public AssetType asset_type = AssetType.ASSET_TYPE_INVALID;
            public String image_id = "";
            public FontBundle font_bundle = FontBundle.UNKNOWN;

            public final Builder checksum(String checksum) {
                Intrinsics.checkNotNullParameter(checksum, "checksum");
                this.checksum = checksum;
                return this;
            }

            public final Builder asset_type(AssetType asset_type) {
                Intrinsics.checkNotNullParameter(asset_type, "asset_type");
                this.asset_type = asset_type;
                return this;
            }

            public final Builder image_id(String image_id) {
                Intrinsics.checkNotNullParameter(image_id, "image_id");
                this.image_id = image_id;
                return this;
            }

            public final Builder font_bundle(FontBundle font_bundle) {
                Intrinsics.checkNotNullParameter(font_bundle, "font_bundle");
                this.font_bundle = font_bundle;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AssetDescriptor build() {
                return new AssetDescriptor(this.checksum, this.asset_type, this.image_id, this.font_bundle, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DownloadAssetsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AssetDescriptor build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AssetDescriptor.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AssetDescriptor>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadAssetsRequest$AssetDescriptor$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DownloadAssetsRequest.AssetDescriptor value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.checksum, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.checksum);
                    }
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        size += AssetType.ADAPTER.encodedSizeWithTag(2, value.asset_type);
                    }
                    if (!Intrinsics.areEqual(value.image_id, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.image_id);
                    }
                    return value.font_bundle != FontBundle.UNKNOWN ? size + FontBundle.ADAPTER.encodedSizeWithTag(4, value.font_bundle) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DownloadAssetsRequest.AssetDescriptor value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.checksum, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.checksum);
                    }
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        AssetType.ADAPTER.encodeWithTag(writer, 2, value.asset_type);
                    }
                    if (!Intrinsics.areEqual(value.image_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.image_id);
                    }
                    if (value.font_bundle != FontBundle.UNKNOWN) {
                        FontBundle.ADAPTER.encodeWithTag(writer, 4, value.font_bundle);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DownloadAssetsRequest.AssetDescriptor value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.font_bundle != FontBundle.UNKNOWN) {
                        FontBundle.ADAPTER.encodeWithTag(writer, 4, value.font_bundle);
                    }
                    if (!Intrinsics.areEqual(value.image_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.image_id);
                    }
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        AssetType.ADAPTER.encodeWithTag(writer, 2, value.asset_type);
                    }
                    if (Intrinsics.areEqual(value.checksum, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.checksum);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DownloadAssetsRequest.AssetDescriptor decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    AssetType assetTypeDecode = AssetType.ASSET_TYPE_INVALID;
                    FontBundle fontBundle = FontBundle.UNKNOWN;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = strDecode;
                    FontBundle fontBundleDecode = fontBundle;
                    while (true) {
                        AssetType assetType = assetTypeDecode;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new DownloadAssetsRequest.AssetDescriptor(strDecode, assetType, strDecode2, fontBundleDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                try {
                                    assetTypeDecode = AssetType.ADAPTER.decode(reader);
                                    break;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 3) {
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 4) {
                                try {
                                    fontBundleDecode = FontBundle.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DownloadAssetsRequest.AssetDescriptor redact(DownloadAssetsRequest.AssetDescriptor value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return DownloadAssetsRequest.AssetDescriptor.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
                }
            };
        }
    }
}
