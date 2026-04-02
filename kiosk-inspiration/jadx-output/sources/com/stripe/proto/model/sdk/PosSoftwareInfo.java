package com.stripe.proto.model.sdk;

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

/* JADX INFO: compiled from: PosSoftwareInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/sdk/PosSoftwareInfo;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/PosSoftwareInfo$Builder;", "os_version", "", "pos_type", "pos_version", "sdk_version", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PosSoftwareInfo extends Message<PosSoftwareInfo, Builder> {
    public static final ProtoAdapter<PosSoftwareInfo> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "osVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String os_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "posType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String pos_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "posVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String pos_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.SDK_VERSION, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String sdk_version;

    public PosSoftwareInfo() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ PosSoftwareInfo(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PosSoftwareInfo(String os_version, String pos_type, String pos_version, String sdk_version, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(os_version, "os_version");
        Intrinsics.checkNotNullParameter(pos_type, "pos_type");
        Intrinsics.checkNotNullParameter(pos_version, "pos_version");
        Intrinsics.checkNotNullParameter(sdk_version, "sdk_version");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.os_version = os_version;
        this.pos_type = pos_type;
        this.pos_version = pos_version;
        this.sdk_version = sdk_version;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.os_version = this.os_version;
        builder.pos_type = this.pos_type;
        builder.pos_version = this.pos_version;
        builder.sdk_version = this.sdk_version;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PosSoftwareInfo)) {
            return false;
        }
        PosSoftwareInfo posSoftwareInfo = (PosSoftwareInfo) other;
        return Intrinsics.areEqual(unknownFields(), posSoftwareInfo.unknownFields()) && Intrinsics.areEqual(this.os_version, posSoftwareInfo.os_version) && Intrinsics.areEqual(this.pos_type, posSoftwareInfo.pos_type) && Intrinsics.areEqual(this.pos_version, posSoftwareInfo.pos_version) && Intrinsics.areEqual(this.sdk_version, posSoftwareInfo.sdk_version);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.os_version.hashCode()) * 37) + this.pos_type.hashCode()) * 37) + this.pos_version.hashCode()) * 37) + this.sdk_version.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("os_version=" + Internal.sanitize(this.os_version));
        arrayList2.add("pos_type=" + Internal.sanitize(this.pos_type));
        arrayList2.add("pos_version=" + Internal.sanitize(this.pos_version));
        arrayList2.add("sdk_version=" + Internal.sanitize(this.sdk_version));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PosSoftwareInfo{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PosSoftwareInfo copy$default(PosSoftwareInfo posSoftwareInfo, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = posSoftwareInfo.os_version;
        }
        if ((i & 2) != 0) {
            str2 = posSoftwareInfo.pos_type;
        }
        if ((i & 4) != 0) {
            str3 = posSoftwareInfo.pos_version;
        }
        if ((i & 8) != 0) {
            str4 = posSoftwareInfo.sdk_version;
        }
        if ((i & 16) != 0) {
            byteString = posSoftwareInfo.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str5 = str3;
        return posSoftwareInfo.copy(str, str2, str5, str4, byteString2);
    }

    public final PosSoftwareInfo copy(String os_version, String pos_type, String pos_version, String sdk_version, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(os_version, "os_version");
        Intrinsics.checkNotNullParameter(pos_type, "pos_type");
        Intrinsics.checkNotNullParameter(pos_version, "pos_version");
        Intrinsics.checkNotNullParameter(sdk_version, "sdk_version");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PosSoftwareInfo(os_version, pos_type, pos_version, sdk_version, unknownFields);
    }

    /* JADX INFO: compiled from: PosSoftwareInfo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/model/sdk/PosSoftwareInfo$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/PosSoftwareInfo;", "()V", "os_version", "", "pos_type", "pos_version", "sdk_version", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PosSoftwareInfo, Builder> {
        public String os_version = "";
        public String pos_type = "";
        public String pos_version = "";
        public String sdk_version = "";

        public final Builder os_version(String os_version) {
            Intrinsics.checkNotNullParameter(os_version, "os_version");
            this.os_version = os_version;
            return this;
        }

        public final Builder pos_type(String pos_type) {
            Intrinsics.checkNotNullParameter(pos_type, "pos_type");
            this.pos_type = pos_type;
            return this;
        }

        public final Builder pos_version(String pos_version) {
            Intrinsics.checkNotNullParameter(pos_version, "pos_version");
            this.pos_version = pos_version;
            return this;
        }

        public final Builder sdk_version(String sdk_version) {
            Intrinsics.checkNotNullParameter(sdk_version, "sdk_version");
            this.sdk_version = sdk_version;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PosSoftwareInfo build() {
            return new PosSoftwareInfo(this.os_version, this.pos_type, this.pos_version, this.sdk_version, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PosSoftwareInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/PosSoftwareInfo$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/PosSoftwareInfo;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/PosSoftwareInfo$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PosSoftwareInfo build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PosSoftwareInfo.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PosSoftwareInfo>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.PosSoftwareInfo$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PosSoftwareInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.os_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.os_version);
                }
                if (!Intrinsics.areEqual(value.pos_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.pos_type);
                }
                if (!Intrinsics.areEqual(value.pos_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.pos_version);
                }
                return !Intrinsics.areEqual(value.sdk_version, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.sdk_version) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PosSoftwareInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.os_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.os_version);
                }
                if (!Intrinsics.areEqual(value.pos_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.pos_type);
                }
                if (!Intrinsics.areEqual(value.pos_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.pos_version);
                }
                if (!Intrinsics.areEqual(value.sdk_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.sdk_version);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PosSoftwareInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.sdk_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.sdk_version);
                }
                if (!Intrinsics.areEqual(value.pos_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.pos_version);
                }
                if (!Intrinsics.areEqual(value.pos_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.pos_type);
                }
                if (Intrinsics.areEqual(value.os_version, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.os_version);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PosSoftwareInfo redact(PosSoftwareInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return PosSoftwareInfo.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PosSoftwareInfo decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PosSoftwareInfo(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode4 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
