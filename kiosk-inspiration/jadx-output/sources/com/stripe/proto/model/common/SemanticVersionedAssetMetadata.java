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
import com.stripe.proto.model.common.SemanticVersionedAssetMetadata;
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

/* JADX INFO: compiled from: SemanticVersionedAssetMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJL\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;", "name", "", "version", "is_debug", "", "signed_key", "build_variant", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;", "product_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "BuildVariantType", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SemanticVersionedAssetMetadata extends Message<SemanticVersionedAssetMetadata, Builder> {
    public static final ProtoAdapter<SemanticVersionedAssetMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.SemanticVersionedAssetMetadata$BuildVariantType#ADAPTER", jsonName = "buildVariant", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final BuildVariantType build_variant;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isDebug", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean is_debug;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "productId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String product_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "signedKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String signed_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String version;

    public SemanticVersionedAssetMetadata() {
        this(null, null, false, null, null, null, null, 127, null);
    }

    public /* synthetic */ SemanticVersionedAssetMetadata(String str, String str2, boolean z, String str3, BuildVariantType buildVariantType, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? BuildVariantType.BUILD_VARIANT_TYPE_INVALID : buildVariantType, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SemanticVersionedAssetMetadata(String name, String version, boolean z, String signed_key, BuildVariantType build_variant, String product_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(signed_key, "signed_key");
        Intrinsics.checkNotNullParameter(build_variant, "build_variant");
        Intrinsics.checkNotNullParameter(product_id, "product_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.version = version;
        this.is_debug = z;
        this.signed_key = signed_key;
        this.build_variant = build_variant;
        this.product_id = product_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.version = this.version;
        builder.is_debug = this.is_debug;
        builder.signed_key = this.signed_key;
        builder.build_variant = this.build_variant;
        builder.product_id = this.product_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SemanticVersionedAssetMetadata)) {
            return false;
        }
        SemanticVersionedAssetMetadata semanticVersionedAssetMetadata = (SemanticVersionedAssetMetadata) other;
        return Intrinsics.areEqual(unknownFields(), semanticVersionedAssetMetadata.unknownFields()) && Intrinsics.areEqual(this.name, semanticVersionedAssetMetadata.name) && Intrinsics.areEqual(this.version, semanticVersionedAssetMetadata.version) && this.is_debug == semanticVersionedAssetMetadata.is_debug && Intrinsics.areEqual(this.signed_key, semanticVersionedAssetMetadata.signed_key) && this.build_variant == semanticVersionedAssetMetadata.build_variant && Intrinsics.areEqual(this.product_id, semanticVersionedAssetMetadata.product_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.version.hashCode()) * 37) + Boolean.hashCode(this.is_debug)) * 37) + this.signed_key.hashCode()) * 37) + this.build_variant.hashCode()) * 37) + this.product_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        arrayList2.add("version=" + Internal.sanitize(this.version));
        arrayList2.add("is_debug=" + this.is_debug);
        arrayList2.add("signed_key=" + Internal.sanitize(this.signed_key));
        arrayList2.add("build_variant=" + this.build_variant);
        arrayList2.add("product_id=" + Internal.sanitize(this.product_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "SemanticVersionedAssetMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SemanticVersionedAssetMetadata copy$default(SemanticVersionedAssetMetadata semanticVersionedAssetMetadata, String str, String str2, boolean z, String str3, BuildVariantType buildVariantType, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = semanticVersionedAssetMetadata.name;
        }
        if ((i & 2) != 0) {
            str2 = semanticVersionedAssetMetadata.version;
        }
        if ((i & 4) != 0) {
            z = semanticVersionedAssetMetadata.is_debug;
        }
        if ((i & 8) != 0) {
            str3 = semanticVersionedAssetMetadata.signed_key;
        }
        if ((i & 16) != 0) {
            buildVariantType = semanticVersionedAssetMetadata.build_variant;
        }
        if ((i & 32) != 0) {
            str4 = semanticVersionedAssetMetadata.product_id;
        }
        if ((i & 64) != 0) {
            byteString = semanticVersionedAssetMetadata.unknownFields();
        }
        String str5 = str4;
        ByteString byteString2 = byteString;
        BuildVariantType buildVariantType2 = buildVariantType;
        boolean z2 = z;
        return semanticVersionedAssetMetadata.copy(str, str2, z2, str3, buildVariantType2, str5, byteString2);
    }

    public final SemanticVersionedAssetMetadata copy(String name, String version, boolean is_debug, String signed_key, BuildVariantType build_variant, String product_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(signed_key, "signed_key");
        Intrinsics.checkNotNullParameter(build_variant, "build_variant");
        Intrinsics.checkNotNullParameter(product_id, "product_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SemanticVersionedAssetMetadata(name, version, is_debug, signed_key, build_variant, product_id, unknownFields);
    }

    /* JADX INFO: compiled from: SemanticVersionedAssetMetadata.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "()V", "build_variant", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;", "is_debug", "", "name", "", "product_id", "signed_key", "version", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SemanticVersionedAssetMetadata, Builder> {
        public boolean is_debug;
        public String name = "";
        public String version = "";
        public String signed_key = "";
        public BuildVariantType build_variant = BuildVariantType.BUILD_VARIANT_TYPE_INVALID;
        public String product_id = "";

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder version(String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            this.version = version;
            return this;
        }

        public final Builder is_debug(boolean is_debug) {
            this.is_debug = is_debug;
            return this;
        }

        public final Builder signed_key(String signed_key) {
            Intrinsics.checkNotNullParameter(signed_key, "signed_key");
            this.signed_key = signed_key;
            return this;
        }

        public final Builder build_variant(BuildVariantType build_variant) {
            Intrinsics.checkNotNullParameter(build_variant, "build_variant");
            this.build_variant = build_variant;
            return this;
        }

        public final Builder product_id(String product_id) {
            Intrinsics.checkNotNullParameter(product_id, "product_id");
            this.product_id = product_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SemanticVersionedAssetMetadata build() {
            return new SemanticVersionedAssetMetadata(this.name, this.version, this.is_debug, this.signed_key, this.build_variant, this.product_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SemanticVersionedAssetMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SemanticVersionedAssetMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SemanticVersionedAssetMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SemanticVersionedAssetMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.SemanticVersionedAssetMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SemanticVersionedAssetMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                if (!Intrinsics.areEqual(value.version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.version);
                }
                if (value.is_debug) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.is_debug));
                }
                if (!Intrinsics.areEqual(value.signed_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.signed_key);
                }
                if (value.build_variant != SemanticVersionedAssetMetadata.BuildVariantType.BUILD_VARIANT_TYPE_INVALID) {
                    size += SemanticVersionedAssetMetadata.BuildVariantType.ADAPTER.encodedSizeWithTag(5, value.build_variant);
                }
                return !Intrinsics.areEqual(value.product_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.product_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SemanticVersionedAssetMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                if (!Intrinsics.areEqual(value.version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.version);
                }
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.is_debug));
                }
                if (!Intrinsics.areEqual(value.signed_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.signed_key);
                }
                if (value.build_variant != SemanticVersionedAssetMetadata.BuildVariantType.BUILD_VARIANT_TYPE_INVALID) {
                    SemanticVersionedAssetMetadata.BuildVariantType.ADAPTER.encodeWithTag(writer, 5, value.build_variant);
                }
                if (!Intrinsics.areEqual(value.product_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.product_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SemanticVersionedAssetMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.product_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.product_id);
                }
                if (value.build_variant != SemanticVersionedAssetMetadata.BuildVariantType.BUILD_VARIANT_TYPE_INVALID) {
                    SemanticVersionedAssetMetadata.BuildVariantType.ADAPTER.encodeWithTag(writer, 5, value.build_variant);
                }
                if (!Intrinsics.areEqual(value.signed_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.signed_key);
                }
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.is_debug));
                }
                if (!Intrinsics.areEqual(value.version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.version);
                }
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SemanticVersionedAssetMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                SemanticVersionedAssetMetadata.BuildVariantType buildVariantType = SemanticVersionedAssetMetadata.BuildVariantType.BUILD_VARIANT_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                boolean zBooleanValue = false;
                SemanticVersionedAssetMetadata.BuildVariantType buildVariantTypeDecode = buildVariantType;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                try {
                                    buildVariantTypeDecode = SemanticVersionedAssetMetadata.BuildVariantType.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new SemanticVersionedAssetMetadata(strDecode4, strDecode, zBooleanValue, strDecode2, buildVariantTypeDecode, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SemanticVersionedAssetMetadata redact(SemanticVersionedAssetMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return SemanticVersionedAssetMetadata.copy$default(value, null, null, false, null, null, null, ByteString.EMPTY, 63, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: SemanticVersionedAssetMetadata.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "BUILD_VARIANT_TYPE_INVALID", "USER", "USERDEBUG", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BuildVariantType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ BuildVariantType[] $VALUES;
        public static final ProtoAdapter<BuildVariantType> ADAPTER;
        public static final BuildVariantType BUILD_VARIANT_TYPE_INVALID;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final BuildVariantType USER;
        public static final BuildVariantType USERDEBUG;
        private final int value;

        private static final /* synthetic */ BuildVariantType[] $values() {
            return new BuildVariantType[]{BUILD_VARIANT_TYPE_INVALID, USER, USERDEBUG};
        }

        @JvmStatic
        public static final BuildVariantType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<BuildVariantType> getEntries() {
            return $ENTRIES;
        }

        public static BuildVariantType valueOf(String str) {
            return (BuildVariantType) Enum.valueOf(BuildVariantType.class, str);
        }

        public static BuildVariantType[] values() {
            return (BuildVariantType[]) $VALUES.clone();
        }

        private BuildVariantType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final BuildVariantType buildVariantType = new BuildVariantType("BUILD_VARIANT_TYPE_INVALID", 0, 0);
            BUILD_VARIANT_TYPE_INVALID = buildVariantType;
            USER = new BuildVariantType("USER", 1, 1);
            USERDEBUG = new BuildVariantType("USERDEBUG", 2, 2);
            BuildVariantType[] buildVariantTypeArr$values = $values();
            $VALUES = buildVariantTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(buildVariantTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BuildVariantType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<BuildVariantType>(orCreateKotlinClass, syntax, buildVariantType) { // from class: com.stripe.proto.model.common.SemanticVersionedAssetMetadata$BuildVariantType$Companion$ADAPTER$1
                {
                    SemanticVersionedAssetMetadata.BuildVariantType buildVariantType2 = buildVariantType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public SemanticVersionedAssetMetadata.BuildVariantType fromValue(int value) {
                    return SemanticVersionedAssetMetadata.BuildVariantType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: SemanticVersionedAssetMetadata.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final BuildVariantType fromValue(int value) {
                if (value == 0) {
                    return BuildVariantType.BUILD_VARIANT_TYPE_INVALID;
                }
                if (value == 1) {
                    return BuildVariantType.USER;
                }
                if (value != 2) {
                    return null;
                }
                return BuildVariantType.USERDEBUG;
            }
        }
    }
}
