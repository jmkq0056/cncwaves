package com.stripe.proto.terminal.terminal.pub.message.core;

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

/* JADX INFO: compiled from: UberLanguagePackAssetMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;", "name", "", "version_code", "language_codes", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UberLanguagePackAssetMetadata extends Message<UberLanguagePackAssetMetadata, Builder> {
    public static final ProtoAdapter<UberLanguagePackAssetMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "languageCodes", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<String> language_codes;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "versionCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String version_code;

    public UberLanguagePackAssetMetadata() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ UberLanguagePackAssetMetadata(String str, String str2, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UberLanguagePackAssetMetadata(String name, String version_code, List<String> language_codes, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version_code, "version_code");
        Intrinsics.checkNotNullParameter(language_codes, "language_codes");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.version_code = version_code;
        this.language_codes = Internal.immutableCopyOf("language_codes", language_codes);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.version_code = this.version_code;
        builder.language_codes = this.language_codes;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UberLanguagePackAssetMetadata)) {
            return false;
        }
        UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata = (UberLanguagePackAssetMetadata) other;
        return Intrinsics.areEqual(unknownFields(), uberLanguagePackAssetMetadata.unknownFields()) && Intrinsics.areEqual(this.name, uberLanguagePackAssetMetadata.name) && Intrinsics.areEqual(this.version_code, uberLanguagePackAssetMetadata.version_code) && Intrinsics.areEqual(this.language_codes, uberLanguagePackAssetMetadata.language_codes);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.version_code.hashCode()) * 37) + this.language_codes.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        arrayList2.add("version_code=" + Internal.sanitize(this.version_code));
        if (!this.language_codes.isEmpty()) {
            arrayList2.add("language_codes=" + Internal.sanitize(this.language_codes));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UberLanguagePackAssetMetadata{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UberLanguagePackAssetMetadata copy$default(UberLanguagePackAssetMetadata uberLanguagePackAssetMetadata, String str, String str2, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = uberLanguagePackAssetMetadata.name;
        }
        if ((i & 2) != 0) {
            str2 = uberLanguagePackAssetMetadata.version_code;
        }
        if ((i & 4) != 0) {
            list = uberLanguagePackAssetMetadata.language_codes;
        }
        if ((i & 8) != 0) {
            byteString = uberLanguagePackAssetMetadata.unknownFields();
        }
        return uberLanguagePackAssetMetadata.copy(str, str2, list, byteString);
    }

    public final UberLanguagePackAssetMetadata copy(String name, String version_code, List<String> language_codes, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version_code, "version_code");
        Intrinsics.checkNotNullParameter(language_codes, "language_codes");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UberLanguagePackAssetMetadata(name, version_code, language_codes, unknownFields);
    }

    /* JADX INFO: compiled from: UberLanguagePackAssetMetadata.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;", "()V", "language_codes", "", "", "name", "version_code", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UberLanguagePackAssetMetadata, Builder> {
        public String name = "";
        public String version_code = "";
        public List<String> language_codes = CollectionsKt.emptyList();

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder version_code(String version_code) {
            Intrinsics.checkNotNullParameter(version_code, "version_code");
            this.version_code = version_code;
            return this;
        }

        public final Builder language_codes(List<String> language_codes) {
            Intrinsics.checkNotNullParameter(language_codes, "language_codes");
            Internal.checkElementsNotNull(language_codes);
            this.language_codes = language_codes;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UberLanguagePackAssetMetadata build() {
            return new UberLanguagePackAssetMetadata(this.name, this.version_code, this.language_codes, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UberLanguagePackAssetMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UberLanguagePackAssetMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UberLanguagePackAssetMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UberLanguagePackAssetMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.core.UberLanguagePackAssetMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UberLanguagePackAssetMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                if (!Intrinsics.areEqual(value.version_code, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.version_code);
                }
                return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(3, value.language_codes);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UberLanguagePackAssetMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                if (!Intrinsics.areEqual(value.version_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.version_code);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.language_codes);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UberLanguagePackAssetMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.language_codes);
                if (!Intrinsics.areEqual(value.version_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.version_code);
                }
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UberLanguagePackAssetMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UberLanguagePackAssetMetadata(strDecode, strDecode2, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UberLanguagePackAssetMetadata redact(UberLanguagePackAssetMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return UberLanguagePackAssetMetadata.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }
        };
    }
}
