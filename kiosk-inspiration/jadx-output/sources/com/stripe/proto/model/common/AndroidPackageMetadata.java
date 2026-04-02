package com.stripe.proto.model.common;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
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

/* JADX INFO: compiled from: AndroidPackageMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJB\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;", "package_name", "", "version_code", "", "version_name", "is_debug", "", "is_factory_image", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;ILjava/lang/String;ZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AndroidPackageMetadata extends Message<AndroidPackageMetadata, Builder> {
    public static final ProtoAdapter<AndroidPackageMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isDebug", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean is_debug;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isFactoryImage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final boolean is_factory_image;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String package_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "versionCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int version_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "versionName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String version_name;

    public AndroidPackageMetadata() {
        this(null, 0, null, false, false, null, 63, null);
    }

    public /* synthetic */ AndroidPackageMetadata(String str, int i, String str2, boolean z, boolean z2, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPackageMetadata(String package_name, int i, String version_name, boolean z, boolean z2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(package_name, "package_name");
        Intrinsics.checkNotNullParameter(version_name, "version_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.package_name = package_name;
        this.version_code = i;
        this.version_name = version_name;
        this.is_debug = z;
        this.is_factory_image = z2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.package_name = this.package_name;
        builder.version_code = this.version_code;
        builder.version_name = this.version_name;
        builder.is_debug = this.is_debug;
        builder.is_factory_image = this.is_factory_image;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AndroidPackageMetadata)) {
            return false;
        }
        AndroidPackageMetadata androidPackageMetadata = (AndroidPackageMetadata) other;
        return Intrinsics.areEqual(unknownFields(), androidPackageMetadata.unknownFields()) && Intrinsics.areEqual(this.package_name, androidPackageMetadata.package_name) && this.version_code == androidPackageMetadata.version_code && Intrinsics.areEqual(this.version_name, androidPackageMetadata.version_name) && this.is_debug == androidPackageMetadata.is_debug && this.is_factory_image == androidPackageMetadata.is_factory_image;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + this.package_name.hashCode()) * 37) + Integer.hashCode(this.version_code)) * 37) + this.version_name.hashCode()) * 37) + Boolean.hashCode(this.is_debug)) * 37) + Boolean.hashCode(this.is_factory_image);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("package_name=" + Internal.sanitize(this.package_name));
        arrayList2.add("version_code=" + this.version_code);
        arrayList2.add("version_name=" + Internal.sanitize(this.version_name));
        arrayList2.add("is_debug=" + this.is_debug);
        arrayList2.add("is_factory_image=" + this.is_factory_image);
        return CollectionsKt.joinToString$default(arrayList, ", ", "AndroidPackageMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AndroidPackageMetadata copy$default(AndroidPackageMetadata androidPackageMetadata, String str, int i, String str2, boolean z, boolean z2, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = androidPackageMetadata.package_name;
        }
        if ((i2 & 2) != 0) {
            i = androidPackageMetadata.version_code;
        }
        if ((i2 & 4) != 0) {
            str2 = androidPackageMetadata.version_name;
        }
        if ((i2 & 8) != 0) {
            z = androidPackageMetadata.is_debug;
        }
        if ((i2 & 16) != 0) {
            z2 = androidPackageMetadata.is_factory_image;
        }
        if ((i2 & 32) != 0) {
            byteString = androidPackageMetadata.unknownFields();
        }
        boolean z3 = z2;
        ByteString byteString2 = byteString;
        return androidPackageMetadata.copy(str, i, str2, z, z3, byteString2);
    }

    public final AndroidPackageMetadata copy(String package_name, int version_code, String version_name, boolean is_debug, boolean is_factory_image, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(package_name, "package_name");
        Intrinsics.checkNotNullParameter(version_name, "version_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AndroidPackageMetadata(package_name, version_code, version_name, is_debug, is_factory_image, unknownFields);
    }

    /* JADX INFO: compiled from: AndroidPackageMetadata.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "()V", "is_debug", "", "is_factory_image", "package_name", "", "version_code", "", "version_name", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AndroidPackageMetadata, Builder> {
        public boolean is_debug;
        public boolean is_factory_image;
        public int version_code;
        public String package_name = "";
        public String version_name = "";

        public final Builder package_name(String package_name) {
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            this.package_name = package_name;
            return this;
        }

        public final Builder version_code(int version_code) {
            this.version_code = version_code;
            return this;
        }

        public final Builder version_name(String version_name) {
            Intrinsics.checkNotNullParameter(version_name, "version_name");
            this.version_name = version_name;
            return this;
        }

        public final Builder is_debug(boolean is_debug) {
            this.is_debug = is_debug;
            return this;
        }

        public final Builder is_factory_image(boolean is_factory_image) {
            this.is_factory_image = is_factory_image;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AndroidPackageMetadata build() {
            return new AndroidPackageMetadata(this.package_name, this.version_code, this.version_name, this.is_debug, this.is_factory_image, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AndroidPackageMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/AndroidPackageMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/AndroidPackageMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/AndroidPackageMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AndroidPackageMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AndroidPackageMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AndroidPackageMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.AndroidPackageMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AndroidPackageMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.package_name);
                }
                if (value.version_code != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.version_code));
                }
                if (!Intrinsics.areEqual(value.version_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.version_name);
                }
                if (value.is_debug) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.is_debug));
                }
                return value.is_factory_image ? size + ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.is_factory_image)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AndroidPackageMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.package_name);
                }
                if (value.version_code != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.version_code));
                }
                if (!Intrinsics.areEqual(value.version_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.version_name);
                }
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.is_debug));
                }
                if (value.is_factory_image) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.is_factory_image));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AndroidPackageMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.is_factory_image) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.is_factory_image));
                }
                if (value.is_debug) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.is_debug));
                }
                if (!Intrinsics.areEqual(value.version_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.version_name);
                }
                if (value.version_code != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.version_code));
                }
                if (Intrinsics.areEqual(value.package_name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.package_name);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AndroidPackageMetadata redact(AndroidPackageMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return AndroidPackageMetadata.copy$default(value, null, 0, null, false, false, ByteString.EMPTY, 31, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AndroidPackageMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                int iIntValue = 0;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AndroidPackageMetadata(strDecode, iIntValue, strDecode2, zBooleanValue, zBooleanValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 5) {
                        zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
