package com.stripe.proto.model.common;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: SignedAssetPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBQ\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJR\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/common/SignedAssetPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/SignedAssetPb$Builder;", "md5_checksum", "", "description", "create_time", "Lcom/stripe/proto/model/common/InstantPb;", "original_publisher", "android_package_metadata", "Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "semantic_versioned_metadata", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignedAssetPb extends Message<SignedAssetPb, Builder> {
    public static final ProtoAdapter<SignedAssetPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.AndroidPackageMetadata#ADAPTER", jsonName = "androidPackageMetadata", oneofName = "additional_metadata", schemaIndex = 4, tag = 5)
    public final AndroidPackageMetadata android_package_metadata;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "createTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final InstantPb create_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "md5Checksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String md5_checksum;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originalPublisher", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String original_publisher;

    @WireField(adapter = "com.stripe.proto.model.common.SemanticVersionedAssetMetadata#ADAPTER", jsonName = "semanticVersionedMetadata", oneofName = "additional_metadata", schemaIndex = 5, tag = 6)
    public final SemanticVersionedAssetMetadata semantic_versioned_metadata;

    public SignedAssetPb() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ SignedAssetPb(String str, String str2, InstantPb instantPb, String str3, AndroidPackageMetadata androidPackageMetadata, SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : instantPb, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? null : androidPackageMetadata, (i & 32) != 0 ? null : semanticVersionedAssetMetadata, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignedAssetPb(String md5_checksum, String description, InstantPb instantPb, String original_publisher, AndroidPackageMetadata androidPackageMetadata, SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(md5_checksum, "md5_checksum");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(original_publisher, "original_publisher");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.md5_checksum = md5_checksum;
        this.description = description;
        this.create_time = instantPb;
        this.original_publisher = original_publisher;
        this.android_package_metadata = androidPackageMetadata;
        this.semantic_versioned_metadata = semanticVersionedAssetMetadata;
        if (Internal.countNonNull(androidPackageMetadata, semanticVersionedAssetMetadata) > 1) {
            throw new IllegalArgumentException("At most one of android_package_metadata, semantic_versioned_metadata may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.md5_checksum = this.md5_checksum;
        builder.description = this.description;
        builder.create_time = this.create_time;
        builder.original_publisher = this.original_publisher;
        builder.android_package_metadata = this.android_package_metadata;
        builder.semantic_versioned_metadata = this.semantic_versioned_metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SignedAssetPb)) {
            return false;
        }
        SignedAssetPb signedAssetPb = (SignedAssetPb) other;
        return Intrinsics.areEqual(unknownFields(), signedAssetPb.unknownFields()) && Intrinsics.areEqual(this.md5_checksum, signedAssetPb.md5_checksum) && Intrinsics.areEqual(this.description, signedAssetPb.description) && Intrinsics.areEqual(this.create_time, signedAssetPb.create_time) && Intrinsics.areEqual(this.original_publisher, signedAssetPb.original_publisher) && Intrinsics.areEqual(this.android_package_metadata, signedAssetPb.android_package_metadata) && Intrinsics.areEqual(this.semantic_versioned_metadata, signedAssetPb.semantic_versioned_metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.md5_checksum.hashCode()) * 37) + this.description.hashCode()) * 37;
        InstantPb instantPb = this.create_time;
        int iHashCode2 = (((iHashCode + (instantPb != null ? instantPb.hashCode() : 0)) * 37) + this.original_publisher.hashCode()) * 37;
        AndroidPackageMetadata androidPackageMetadata = this.android_package_metadata;
        int iHashCode3 = (iHashCode2 + (androidPackageMetadata != null ? androidPackageMetadata.hashCode() : 0)) * 37;
        SemanticVersionedAssetMetadata semanticVersionedAssetMetadata = this.semantic_versioned_metadata;
        int iHashCode4 = iHashCode3 + (semanticVersionedAssetMetadata != null ? semanticVersionedAssetMetadata.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("md5_checksum=" + Internal.sanitize(this.md5_checksum));
        arrayList2.add("description=" + Internal.sanitize(this.description));
        if (this.create_time != null) {
            arrayList2.add("create_time=" + this.create_time);
        }
        arrayList2.add("original_publisher=" + Internal.sanitize(this.original_publisher));
        if (this.android_package_metadata != null) {
            arrayList2.add("android_package_metadata=" + this.android_package_metadata);
        }
        if (this.semantic_versioned_metadata != null) {
            arrayList2.add("semantic_versioned_metadata=" + this.semantic_versioned_metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SignedAssetPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SignedAssetPb copy$default(SignedAssetPb signedAssetPb, String str, String str2, InstantPb instantPb, String str3, AndroidPackageMetadata androidPackageMetadata, SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = signedAssetPb.md5_checksum;
        }
        if ((i & 2) != 0) {
            str2 = signedAssetPb.description;
        }
        if ((i & 4) != 0) {
            instantPb = signedAssetPb.create_time;
        }
        if ((i & 8) != 0) {
            str3 = signedAssetPb.original_publisher;
        }
        if ((i & 16) != 0) {
            androidPackageMetadata = signedAssetPb.android_package_metadata;
        }
        if ((i & 32) != 0) {
            semanticVersionedAssetMetadata = signedAssetPb.semantic_versioned_metadata;
        }
        if ((i & 64) != 0) {
            byteString = signedAssetPb.unknownFields();
        }
        SemanticVersionedAssetMetadata semanticVersionedAssetMetadata2 = semanticVersionedAssetMetadata;
        ByteString byteString2 = byteString;
        AndroidPackageMetadata androidPackageMetadata2 = androidPackageMetadata;
        InstantPb instantPb2 = instantPb;
        return signedAssetPb.copy(str, str2, instantPb2, str3, androidPackageMetadata2, semanticVersionedAssetMetadata2, byteString2);
    }

    public final SignedAssetPb copy(String md5_checksum, String description, InstantPb create_time, String original_publisher, AndroidPackageMetadata android_package_metadata, SemanticVersionedAssetMetadata semantic_versioned_metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(md5_checksum, "md5_checksum");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(original_publisher, "original_publisher");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SignedAssetPb(md5_checksum, description, create_time, original_publisher, android_package_metadata, semantic_versioned_metadata, unknownFields);
    }

    /* JADX INFO: compiled from: SignedAssetPb.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/common/SignedAssetPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/SignedAssetPb;", "()V", "android_package_metadata", "Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "create_time", "Lcom/stripe/proto/model/common/InstantPb;", "description", "", "md5_checksum", "original_publisher", "semantic_versioned_metadata", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SignedAssetPb, Builder> {
        public AndroidPackageMetadata android_package_metadata;
        public InstantPb create_time;
        public SemanticVersionedAssetMetadata semantic_versioned_metadata;
        public String md5_checksum = "";
        public String description = "";
        public String original_publisher = "";

        public final Builder md5_checksum(String md5_checksum) {
            Intrinsics.checkNotNullParameter(md5_checksum, "md5_checksum");
            this.md5_checksum = md5_checksum;
            return this;
        }

        public final Builder description(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.description = description;
            return this;
        }

        public final Builder create_time(InstantPb create_time) {
            this.create_time = create_time;
            return this;
        }

        public final Builder original_publisher(String original_publisher) {
            Intrinsics.checkNotNullParameter(original_publisher, "original_publisher");
            this.original_publisher = original_publisher;
            return this;
        }

        public final Builder android_package_metadata(AndroidPackageMetadata android_package_metadata) {
            this.android_package_metadata = android_package_metadata;
            this.semantic_versioned_metadata = null;
            return this;
        }

        public final Builder semantic_versioned_metadata(SemanticVersionedAssetMetadata semantic_versioned_metadata) {
            this.semantic_versioned_metadata = semantic_versioned_metadata;
            this.android_package_metadata = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SignedAssetPb build() {
            return new SignedAssetPb(this.md5_checksum, this.description, this.create_time, this.original_publisher, this.android_package_metadata, this.semantic_versioned_metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SignedAssetPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/SignedAssetPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/SignedAssetPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/SignedAssetPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SignedAssetPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SignedAssetPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SignedAssetPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.SignedAssetPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SignedAssetPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.md5_checksum, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.md5_checksum);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                }
                if (value.create_time != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(3, value.create_time);
                }
                if (!Intrinsics.areEqual(value.original_publisher, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.original_publisher);
                }
                return size + AndroidPackageMetadata.ADAPTER.encodedSizeWithTag(5, value.android_package_metadata) + SemanticVersionedAssetMetadata.ADAPTER.encodedSizeWithTag(6, value.semantic_versioned_metadata);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SignedAssetPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.md5_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.md5_checksum);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                }
                if (value.create_time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 3, value.create_time);
                }
                if (!Intrinsics.areEqual(value.original_publisher, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.original_publisher);
                }
                AndroidPackageMetadata.ADAPTER.encodeWithTag(writer, 5, value.android_package_metadata);
                SemanticVersionedAssetMetadata.ADAPTER.encodeWithTag(writer, 6, value.semantic_versioned_metadata);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SignedAssetPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                SemanticVersionedAssetMetadata.ADAPTER.encodeWithTag(writer, 6, value.semantic_versioned_metadata);
                AndroidPackageMetadata.ADAPTER.encodeWithTag(writer, 5, value.android_package_metadata);
                if (!Intrinsics.areEqual(value.original_publisher, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.original_publisher);
                }
                if (value.create_time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 3, value.create_time);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                }
                if (Intrinsics.areEqual(value.md5_checksum, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.md5_checksum);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SignedAssetPb redact(SignedAssetPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.create_time;
                InstantPb instantPbRedact = instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null;
                AndroidPackageMetadata androidPackageMetadata = value.android_package_metadata;
                AndroidPackageMetadata androidPackageMetadataRedact = androidPackageMetadata != null ? AndroidPackageMetadata.ADAPTER.redact(androidPackageMetadata) : null;
                SemanticVersionedAssetMetadata semanticVersionedAssetMetadata = value.semantic_versioned_metadata;
                return SignedAssetPb.copy$default(value, null, null, instantPbRedact, null, androidPackageMetadataRedact, semanticVersionedAssetMetadata != null ? SemanticVersionedAssetMetadata.ADAPTER.redact(semanticVersionedAssetMetadata) : null, ByteString.EMPTY, 11, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SignedAssetPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                InstantPb instantPbDecode = null;
                AndroidPackageMetadata androidPackageMetadataDecode = null;
                SemanticVersionedAssetMetadata semanticVersionedAssetMetadataDecode = null;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                instantPbDecode = InstantPb.ADAPTER.decode(reader);
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                androidPackageMetadataDecode = AndroidPackageMetadata.ADAPTER.decode(reader);
                                break;
                            case 6:
                                semanticVersionedAssetMetadataDecode = SemanticVersionedAssetMetadata.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new SignedAssetPb(strDecode, strDecode3, instantPbDecode, strDecode2, androidPackageMetadataDecode, semanticVersionedAssetMetadataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
