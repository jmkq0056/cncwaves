package com.stripe.proto.model.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: UserAgent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ4\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/UserAgent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/UserAgent$Builder;", "client_type", "", "client_version", "device_uuid", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UserAgent extends Message<UserAgent, Builder> {
    public static final ProtoAdapter<UserAgent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "clientType", schemaIndex = 0, tag = 1)
    public final String client_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "clientVersion", schemaIndex = 1, tag = 2)
    public final String client_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceUuid", schemaIndex = 2, tag = 3)
    public final String device_uuid;

    public UserAgent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ UserAgent(String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserAgent(String str, String str2, String str3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_type = str;
        this.client_version = str2;
        this.device_uuid = str3;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_type = this.client_type;
        builder.client_version = this.client_version;
        builder.device_uuid = this.device_uuid;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UserAgent)) {
            return false;
        }
        UserAgent userAgent = (UserAgent) other;
        return Intrinsics.areEqual(unknownFields(), userAgent.unknownFields()) && Intrinsics.areEqual(this.client_type, userAgent.client_type) && Intrinsics.areEqual(this.client_version, userAgent.client_version) && Intrinsics.areEqual(this.device_uuid, userAgent.device_uuid);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.client_type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.client_version;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.device_uuid;
        int iHashCode4 = iHashCode3 + (str3 != null ? str3.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.client_type != null) {
            arrayList.add("client_type=" + this.client_type);
        }
        if (this.client_version != null) {
            arrayList.add("client_version=" + this.client_version);
        }
        if (this.device_uuid != null) {
            arrayList.add("device_uuid=" + this.device_uuid);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UserAgent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UserAgent copy$default(UserAgent userAgent, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userAgent.client_type;
        }
        if ((i & 2) != 0) {
            str2 = userAgent.client_version;
        }
        if ((i & 4) != 0) {
            str3 = userAgent.device_uuid;
        }
        if ((i & 8) != 0) {
            byteString = userAgent.unknownFields();
        }
        return userAgent.copy(str, str2, str3, byteString);
    }

    public final UserAgent copy(String client_type, String client_version, String device_uuid, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UserAgent(client_type, client_version, device_uuid, unknownFields);
    }

    /* JADX INFO: compiled from: UserAgent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/UserAgent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/UserAgent;", "()V", "client_type", "", "client_version", "device_uuid", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UserAgent, Builder> {
        public String client_type;
        public String client_version;
        public String device_uuid;

        public final Builder client_type(String client_type) {
            this.client_type = client_type;
            return this;
        }

        public final Builder client_version(String client_version) {
            this.client_version = client_version;
            return this;
        }

        public final Builder device_uuid(String device_uuid) {
            this.device_uuid = device_uuid;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UserAgent build() {
            return new UserAgent(this.client_type, this.client_version, this.device_uuid, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UserAgent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/UserAgent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/UserAgent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/UserAgent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UserAgent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UserAgent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UserAgent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.UserAgent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UserAgent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.client_type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.client_type);
                }
                if (value.client_version != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.client_version);
                }
                return value.device_uuid != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.device_uuid) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UserAgent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.client_type);
                }
                if (value.client_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.client_version);
                }
                if (value.device_uuid != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.device_uuid);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UserAgent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.device_uuid != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.device_uuid);
                }
                if (value.client_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.client_version);
                }
                if (value.client_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.client_type);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UserAgent redact(UserAgent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.client_type;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.client_version;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.device_uuid;
                return value.copy(strRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UserAgent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UserAgent(strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
