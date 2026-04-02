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
import com.stripe.proto.api.armada.DownloadAssetsResponse;
import com.stripe.proto.model.common.UrlPb;
import com.stripe.proto.model.config.BinConfigRule;
import com.stripe.proto.model.config.LocalizationBundlePb;
import com.stripe.proto.terminal.terminal.pub.message.common.ImagePb;
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

/* JADX INFO: compiled from: DownloadAssetsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B/\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ0\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;", "asset_s3url_content", "", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;", "inline_assets", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AssetS3UrlContent", "Builder", "Companion", "InlineAssetContent", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadAssetsResponse extends Message<DownloadAssetsResponse, Builder> {
    public static final ProtoAdapter<DownloadAssetsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.armada.DownloadAssetsResponse$AssetS3UrlContent#ADAPTER", jsonName = "assetS3urlContent", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<AssetS3UrlContent> asset_s3url_content;

    @WireField(adapter = "com.stripe.proto.api.armada.DownloadAssetsResponse$InlineAssetContent#ADAPTER", jsonName = "inlineAssets", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<InlineAssetContent> inline_assets;

    public DownloadAssetsResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DownloadAssetsResponse(List list, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadAssetsResponse(List<AssetS3UrlContent> asset_s3url_content, List<InlineAssetContent> inline_assets, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(asset_s3url_content, "asset_s3url_content");
        Intrinsics.checkNotNullParameter(inline_assets, "inline_assets");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.asset_s3url_content = Internal.immutableCopyOf("asset_s3url_content", asset_s3url_content);
        this.inline_assets = Internal.immutableCopyOf("inline_assets", inline_assets);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.asset_s3url_content = this.asset_s3url_content;
        builder.inline_assets = this.inline_assets;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DownloadAssetsResponse)) {
            return false;
        }
        DownloadAssetsResponse downloadAssetsResponse = (DownloadAssetsResponse) other;
        return Intrinsics.areEqual(unknownFields(), downloadAssetsResponse.unknownFields()) && Intrinsics.areEqual(this.asset_s3url_content, downloadAssetsResponse.asset_s3url_content) && Intrinsics.areEqual(this.inline_assets, downloadAssetsResponse.inline_assets);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.asset_s3url_content.hashCode()) * 37) + this.inline_assets.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.asset_s3url_content.isEmpty()) {
            arrayList.add("asset_s3url_content=" + this.asset_s3url_content);
        }
        if (!this.inline_assets.isEmpty()) {
            arrayList.add("inline_assets=" + this.inline_assets);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadAssetsResponse{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DownloadAssetsResponse copy$default(DownloadAssetsResponse downloadAssetsResponse, List list, List list2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = downloadAssetsResponse.asset_s3url_content;
        }
        if ((i & 2) != 0) {
            list2 = downloadAssetsResponse.inline_assets;
        }
        if ((i & 4) != 0) {
            byteString = downloadAssetsResponse.unknownFields();
        }
        return downloadAssetsResponse.copy(list, list2, byteString);
    }

    public final DownloadAssetsResponse copy(List<AssetS3UrlContent> asset_s3url_content, List<InlineAssetContent> inline_assets, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(asset_s3url_content, "asset_s3url_content");
        Intrinsics.checkNotNullParameter(inline_assets, "inline_assets");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DownloadAssetsResponse(asset_s3url_content, inline_assets, unknownFields);
    }

    /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse;", "()V", "asset_s3url_content", "", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;", "inline_assets", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DownloadAssetsResponse, Builder> {
        public List<AssetS3UrlContent> asset_s3url_content = CollectionsKt.emptyList();
        public List<InlineAssetContent> inline_assets = CollectionsKt.emptyList();

        public final Builder asset_s3url_content(List<AssetS3UrlContent> asset_s3url_content) {
            Intrinsics.checkNotNullParameter(asset_s3url_content, "asset_s3url_content");
            Internal.checkElementsNotNull(asset_s3url_content);
            this.asset_s3url_content = asset_s3url_content;
            return this;
        }

        public final Builder inline_assets(List<InlineAssetContent> inline_assets) {
            Intrinsics.checkNotNullParameter(inline_assets, "inline_assets");
            Internal.checkElementsNotNull(inline_assets);
            this.inline_assets = inline_assets;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DownloadAssetsResponse build() {
            return new DownloadAssetsResponse(this.asset_s3url_content, this.inline_assets, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DownloadAssetsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadAssetsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DownloadAssetsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadAssetsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DownloadAssetsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + DownloadAssetsResponse.AssetS3UrlContent.ADAPTER.asRepeated().encodedSizeWithTag(1, value.asset_s3url_content) + DownloadAssetsResponse.InlineAssetContent.ADAPTER.asRepeated().encodedSizeWithTag(2, value.inline_assets);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DownloadAssetsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DownloadAssetsResponse.AssetS3UrlContent.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.asset_s3url_content);
                DownloadAssetsResponse.InlineAssetContent.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.inline_assets);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DownloadAssetsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DownloadAssetsResponse.InlineAssetContent.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.inline_assets);
                DownloadAssetsResponse.AssetS3UrlContent.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.asset_s3url_content);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DownloadAssetsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DownloadAssetsResponse(arrayList, arrayList2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(DownloadAssetsResponse.AssetS3UrlContent.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        arrayList2.add(DownloadAssetsResponse.InlineAssetContent.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DownloadAssetsResponse redact(DownloadAssetsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.asset_s3url_content, DownloadAssetsResponse.AssetS3UrlContent.ADAPTER), Internal.m361redactElements(value.inline_assets, DownloadAssetsResponse.InlineAssetContent.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;", "asset_type", "Lcom/stripe/proto/api/armada/AssetType;", "checksum", "", "presigned_s3_url", "Lcom/stripe/proto/model/common/UrlPb;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AssetS3UrlContent extends Message<AssetS3UrlContent, Builder> {
        public static final ProtoAdapter<AssetS3UrlContent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.armada.AssetType#ADAPTER", jsonName = "assetType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final AssetType asset_type;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String checksum;

        @WireField(adapter = "com.stripe.proto.model.common.UrlPb#ADAPTER", jsonName = "presignedS3Url", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final UrlPb presigned_s3_url;

        public AssetS3UrlContent() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ AssetS3UrlContent(AssetType assetType, String str, UrlPb urlPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? AssetType.ASSET_TYPE_INVALID : assetType, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : urlPb, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetS3UrlContent(AssetType asset_type, String checksum, UrlPb urlPb, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            Intrinsics.checkNotNullParameter(checksum, "checksum");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.asset_type = asset_type;
            this.checksum = checksum;
            this.presigned_s3_url = urlPb;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.asset_type = this.asset_type;
            builder.checksum = this.checksum;
            builder.presigned_s3_url = this.presigned_s3_url;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AssetS3UrlContent)) {
                return false;
            }
            AssetS3UrlContent assetS3UrlContent = (AssetS3UrlContent) other;
            return Intrinsics.areEqual(unknownFields(), assetS3UrlContent.unknownFields()) && this.asset_type == assetS3UrlContent.asset_type && Intrinsics.areEqual(this.checksum, assetS3UrlContent.checksum) && Intrinsics.areEqual(this.presigned_s3_url, assetS3UrlContent.presigned_s3_url);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((unknownFields().hashCode() * 37) + this.asset_type.hashCode()) * 37) + this.checksum.hashCode()) * 37;
            UrlPb urlPb = this.presigned_s3_url;
            int iHashCode2 = iHashCode + (urlPb != null ? urlPb.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("asset_type=" + this.asset_type);
            arrayList2.add("checksum=" + Internal.sanitize(this.checksum));
            if (this.presigned_s3_url != null) {
                arrayList2.add("presigned_s3_url=" + this.presigned_s3_url);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "AssetS3UrlContent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AssetS3UrlContent copy$default(AssetS3UrlContent assetS3UrlContent, AssetType assetType, String str, UrlPb urlPb, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                assetType = assetS3UrlContent.asset_type;
            }
            if ((i & 2) != 0) {
                str = assetS3UrlContent.checksum;
            }
            if ((i & 4) != 0) {
                urlPb = assetS3UrlContent.presigned_s3_url;
            }
            if ((i & 8) != 0) {
                byteString = assetS3UrlContent.unknownFields();
            }
            return assetS3UrlContent.copy(assetType, str, urlPb, byteString);
        }

        public final AssetS3UrlContent copy(AssetType asset_type, String checksum, UrlPb presigned_s3_url, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            Intrinsics.checkNotNullParameter(checksum, "checksum");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AssetS3UrlContent(asset_type, checksum, presigned_s3_url, unknownFields);
        }

        /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;", "()V", "asset_type", "Lcom/stripe/proto/api/armada/AssetType;", "checksum", "", "presigned_s3_url", "Lcom/stripe/proto/model/common/UrlPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AssetS3UrlContent, Builder> {
            public AssetType asset_type = AssetType.ASSET_TYPE_INVALID;
            public String checksum = "";
            public UrlPb presigned_s3_url;

            public final Builder asset_type(AssetType asset_type) {
                Intrinsics.checkNotNullParameter(asset_type, "asset_type");
                this.asset_type = asset_type;
                return this;
            }

            public final Builder checksum(String checksum) {
                Intrinsics.checkNotNullParameter(checksum, "checksum");
                this.checksum = checksum;
                return this;
            }

            public final Builder presigned_s3_url(UrlPb presigned_s3_url) {
                this.presigned_s3_url = presigned_s3_url;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AssetS3UrlContent build() {
                return new AssetS3UrlContent(this.asset_type, this.checksum, this.presigned_s3_url, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AssetS3UrlContent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AssetS3UrlContent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AssetS3UrlContent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DownloadAssetsResponse.AssetS3UrlContent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        size += AssetType.ADAPTER.encodedSizeWithTag(1, value.asset_type);
                    }
                    if (!Intrinsics.areEqual(value.checksum, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.checksum);
                    }
                    return value.presigned_s3_url != null ? size + UrlPb.ADAPTER.encodedSizeWithTag(3, value.presigned_s3_url) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DownloadAssetsResponse.AssetS3UrlContent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        AssetType.ADAPTER.encodeWithTag(writer, 1, value.asset_type);
                    }
                    if (!Intrinsics.areEqual(value.checksum, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.checksum);
                    }
                    if (value.presigned_s3_url != null) {
                        UrlPb.ADAPTER.encodeWithTag(writer, 3, value.presigned_s3_url);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DownloadAssetsResponse.AssetS3UrlContent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.presigned_s3_url != null) {
                        UrlPb.ADAPTER.encodeWithTag(writer, 3, value.presigned_s3_url);
                    }
                    if (!Intrinsics.areEqual(value.checksum, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.checksum);
                    }
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        AssetType.ADAPTER.encodeWithTag(writer, 1, value.asset_type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DownloadAssetsResponse.AssetS3UrlContent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    AssetType assetTypeDecode = AssetType.ASSET_TYPE_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    UrlPb urlPbDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new DownloadAssetsResponse.AssetS3UrlContent(assetTypeDecode, strDecode, urlPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                assetTypeDecode = AssetType.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            urlPbDecode = UrlPb.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DownloadAssetsResponse.AssetS3UrlContent redact(DownloadAssetsResponse.AssetS3UrlContent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    UrlPb urlPb = value.presigned_s3_url;
                    return DownloadAssetsResponse.AssetS3UrlContent.copy$default(value, null, null, urlPb != null ? UrlPb.ADAPTER.redact(urlPb) : null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJB\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;", "asset_type", "Lcom/stripe/proto/api/armada/AssetType;", "image", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;", "bin_config_rules", "", "Lcom/stripe/proto/model/config/BinConfigRule;", "localization_bundle", "Lcom/stripe/proto/model/config/LocalizationBundlePb;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InlineAssetContent extends Message<InlineAssetContent, Builder> {
        public static final ProtoAdapter<InlineAssetContent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.armada.AssetType#ADAPTER", jsonName = "assetType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final AssetType asset_type;

        @WireField(adapter = "com.stripe.proto.model.config.BinConfigRule#ADAPTER", jsonName = "binConfigRules", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
        public final List<BinConfigRule> bin_config_rules;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImagePb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final ImagePb image;

        @WireField(adapter = "com.stripe.proto.model.config.LocalizationBundlePb#ADAPTER", jsonName = "localizationBundle", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final LocalizationBundlePb localization_bundle;

        public InlineAssetContent() {
            this(null, null, null, null, null, 31, null);
        }

        public /* synthetic */ InlineAssetContent(AssetType assetType, ImagePb imagePb, List list, LocalizationBundlePb localizationBundlePb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? AssetType.ASSET_TYPE_INVALID : assetType, (i & 2) != 0 ? null : imagePb, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? null : localizationBundlePb, (i & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InlineAssetContent(AssetType asset_type, ImagePb imagePb, List<BinConfigRule> bin_config_rules, LocalizationBundlePb localizationBundlePb, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            Intrinsics.checkNotNullParameter(bin_config_rules, "bin_config_rules");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.asset_type = asset_type;
            this.image = imagePb;
            this.localization_bundle = localizationBundlePb;
            this.bin_config_rules = Internal.immutableCopyOf("bin_config_rules", bin_config_rules);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.asset_type = this.asset_type;
            builder.image = this.image;
            builder.bin_config_rules = this.bin_config_rules;
            builder.localization_bundle = this.localization_bundle;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof InlineAssetContent)) {
                return false;
            }
            InlineAssetContent inlineAssetContent = (InlineAssetContent) other;
            return Intrinsics.areEqual(unknownFields(), inlineAssetContent.unknownFields()) && this.asset_type == inlineAssetContent.asset_type && Intrinsics.areEqual(this.image, inlineAssetContent.image) && Intrinsics.areEqual(this.bin_config_rules, inlineAssetContent.bin_config_rules) && Intrinsics.areEqual(this.localization_bundle, inlineAssetContent.localization_bundle);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.asset_type.hashCode()) * 37;
            ImagePb imagePb = this.image;
            int iHashCode2 = (((iHashCode + (imagePb != null ? imagePb.hashCode() : 0)) * 37) + this.bin_config_rules.hashCode()) * 37;
            LocalizationBundlePb localizationBundlePb = this.localization_bundle;
            int iHashCode3 = iHashCode2 + (localizationBundlePb != null ? localizationBundlePb.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("asset_type=" + this.asset_type);
            if (this.image != null) {
                arrayList2.add("image=" + this.image);
            }
            if (!this.bin_config_rules.isEmpty()) {
                arrayList2.add("bin_config_rules=" + this.bin_config_rules);
            }
            if (this.localization_bundle != null) {
                arrayList2.add("localization_bundle=" + this.localization_bundle);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "InlineAssetContent{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ InlineAssetContent copy$default(InlineAssetContent inlineAssetContent, AssetType assetType, ImagePb imagePb, List list, LocalizationBundlePb localizationBundlePb, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                assetType = inlineAssetContent.asset_type;
            }
            if ((i & 2) != 0) {
                imagePb = inlineAssetContent.image;
            }
            if ((i & 4) != 0) {
                list = inlineAssetContent.bin_config_rules;
            }
            if ((i & 8) != 0) {
                localizationBundlePb = inlineAssetContent.localization_bundle;
            }
            if ((i & 16) != 0) {
                byteString = inlineAssetContent.unknownFields();
            }
            ByteString byteString2 = byteString;
            List list2 = list;
            return inlineAssetContent.copy(assetType, imagePb, list2, localizationBundlePb, byteString2);
        }

        public final InlineAssetContent copy(AssetType asset_type, ImagePb image, List<BinConfigRule> bin_config_rules, LocalizationBundlePb localization_bundle, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(asset_type, "asset_type");
            Intrinsics.checkNotNullParameter(bin_config_rules, "bin_config_rules");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new InlineAssetContent(asset_type, image, bin_config_rules, localization_bundle, unknownFields);
        }

        /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;", "()V", "asset_type", "Lcom/stripe/proto/api/armada/AssetType;", "bin_config_rules", "", "Lcom/stripe/proto/model/config/BinConfigRule;", "image", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;", "localization_bundle", "Lcom/stripe/proto/model/config/LocalizationBundlePb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<InlineAssetContent, Builder> {
            public AssetType asset_type = AssetType.ASSET_TYPE_INVALID;
            public List<BinConfigRule> bin_config_rules = CollectionsKt.emptyList();
            public ImagePb image;
            public LocalizationBundlePb localization_bundle;

            public final Builder asset_type(AssetType asset_type) {
                Intrinsics.checkNotNullParameter(asset_type, "asset_type");
                this.asset_type = asset_type;
                return this;
            }

            public final Builder image(ImagePb image) {
                this.image = image;
                return this;
            }

            public final Builder bin_config_rules(List<BinConfigRule> bin_config_rules) {
                Intrinsics.checkNotNullParameter(bin_config_rules, "bin_config_rules");
                Internal.checkElementsNotNull(bin_config_rules);
                this.bin_config_rules = bin_config_rules;
                return this;
            }

            public final Builder localization_bundle(LocalizationBundlePb localization_bundle) {
                this.localization_bundle = localization_bundle;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public InlineAssetContent build() {
                return new InlineAssetContent(this.asset_type, this.image, this.bin_config_rules, this.localization_bundle, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DownloadAssetsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ InlineAssetContent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InlineAssetContent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<InlineAssetContent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.DownloadAssetsResponse$InlineAssetContent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DownloadAssetsResponse.InlineAssetContent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        size += AssetType.ADAPTER.encodedSizeWithTag(1, value.asset_type);
                    }
                    if (value.image != null) {
                        size += ImagePb.ADAPTER.encodedSizeWithTag(2, value.image);
                    }
                    int iEncodedSizeWithTag = size + BinConfigRule.ADAPTER.asRepeated().encodedSizeWithTag(3, value.bin_config_rules);
                    return value.localization_bundle != null ? iEncodedSizeWithTag + LocalizationBundlePb.ADAPTER.encodedSizeWithTag(4, value.localization_bundle) : iEncodedSizeWithTag;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DownloadAssetsResponse.InlineAssetContent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        AssetType.ADAPTER.encodeWithTag(writer, 1, value.asset_type);
                    }
                    if (value.image != null) {
                        ImagePb.ADAPTER.encodeWithTag(writer, 2, value.image);
                    }
                    BinConfigRule.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.bin_config_rules);
                    if (value.localization_bundle != null) {
                        LocalizationBundlePb.ADAPTER.encodeWithTag(writer, 4, value.localization_bundle);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DownloadAssetsResponse.InlineAssetContent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.localization_bundle != null) {
                        LocalizationBundlePb.ADAPTER.encodeWithTag(writer, 4, value.localization_bundle);
                    }
                    BinConfigRule.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.bin_config_rules);
                    if (value.image != null) {
                        ImagePb.ADAPTER.encodeWithTag(writer, 2, value.image);
                    }
                    if (value.asset_type != AssetType.ASSET_TYPE_INVALID) {
                        AssetType.ADAPTER.encodeWithTag(writer, 1, value.asset_type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DownloadAssetsResponse.InlineAssetContent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    AssetType assetTypeDecode = AssetType.ASSET_TYPE_INVALID;
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    ImagePb imagePbDecode = null;
                    LocalizationBundlePb localizationBundlePbDecode = null;
                    while (true) {
                        AssetType assetType = assetTypeDecode;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new DownloadAssetsResponse.InlineAssetContent(assetType, imagePbDecode, arrayList, localizationBundlePbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    assetTypeDecode = AssetType.ADAPTER.decode(reader);
                                    break;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 2) {
                                imagePbDecode = ImagePb.ADAPTER.decode(reader);
                            } else if (iNextTag == 3) {
                                arrayList.add(BinConfigRule.ADAPTER.decode(reader));
                            } else if (iNextTag == 4) {
                                localizationBundlePbDecode = LocalizationBundlePb.ADAPTER.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DownloadAssetsResponse.InlineAssetContent redact(DownloadAssetsResponse.InlineAssetContent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    ImagePb imagePb = value.image;
                    ImagePb imagePbRedact = imagePb != null ? ImagePb.ADAPTER.redact(imagePb) : null;
                    List listM361redactElements = Internal.m361redactElements(value.bin_config_rules, BinConfigRule.ADAPTER);
                    LocalizationBundlePb localizationBundlePb = value.localization_bundle;
                    return DownloadAssetsResponse.InlineAssetContent.copy$default(value, null, imagePbRedact, listM361redactElements, localizationBundlePb != null ? LocalizationBundlePb.ADAPTER.redact(localizationBundlePb) : null, ByteString.EMPTY, 1, null);
                }
            };
        }
    }
}
