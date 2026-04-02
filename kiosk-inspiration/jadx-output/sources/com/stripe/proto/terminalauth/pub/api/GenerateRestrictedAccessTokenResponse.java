package com.stripe.proto.terminalauth.pub.api;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminalauth.pub.message.RestrictedTokenAccessType;
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

/* JADX INFO: compiled from: GenerateRestrictedAccessTokenResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ.\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;", "access_token", "", "access_type", "Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;", "expires_at", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GenerateRestrictedAccessTokenResponse extends Message<GenerateRestrictedAccessTokenResponse, Builder> {
    public static final ProtoAdapter<GenerateRestrictedAccessTokenResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accessToken", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String access_token;

    @WireField(adapter = "com.stripe.proto.terminalauth.pub.message.RestrictedTokenAccessType#ADAPTER", jsonName = "accessType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RestrictedTokenAccessType access_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "expiresAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long expires_at;

    public GenerateRestrictedAccessTokenResponse() {
        this(null, null, 0L, null, 15, null);
    }

    public /* synthetic */ GenerateRestrictedAccessTokenResponse(String str, RestrictedTokenAccessType restrictedTokenAccessType, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID : restrictedTokenAccessType, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GenerateRestrictedAccessTokenResponse(String access_token, RestrictedTokenAccessType access_type, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(access_token, "access_token");
        Intrinsics.checkNotNullParameter(access_type, "access_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.access_token = access_token;
        this.access_type = access_type;
        this.expires_at = j;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.access_token = this.access_token;
        builder.access_type = this.access_type;
        builder.expires_at = this.expires_at;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof GenerateRestrictedAccessTokenResponse)) {
            return false;
        }
        GenerateRestrictedAccessTokenResponse generateRestrictedAccessTokenResponse = (GenerateRestrictedAccessTokenResponse) other;
        return Intrinsics.areEqual(unknownFields(), generateRestrictedAccessTokenResponse.unknownFields()) && Intrinsics.areEqual(this.access_token, generateRestrictedAccessTokenResponse.access_token) && this.access_type == generateRestrictedAccessTokenResponse.access_type && this.expires_at == generateRestrictedAccessTokenResponse.expires_at;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.access_token.hashCode()) * 37) + this.access_type.hashCode()) * 37) + Long.hashCode(this.expires_at);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("access_token=" + Internal.sanitize(this.access_token));
        arrayList2.add("access_type=" + this.access_type);
        arrayList2.add("expires_at=" + this.expires_at);
        return CollectionsKt.joinToString$default(arrayList, ", ", "GenerateRestrictedAccessTokenResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GenerateRestrictedAccessTokenResponse copy$default(GenerateRestrictedAccessTokenResponse generateRestrictedAccessTokenResponse, String str, RestrictedTokenAccessType restrictedTokenAccessType, long j, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = generateRestrictedAccessTokenResponse.access_token;
        }
        if ((i & 2) != 0) {
            restrictedTokenAccessType = generateRestrictedAccessTokenResponse.access_type;
        }
        if ((i & 4) != 0) {
            j = generateRestrictedAccessTokenResponse.expires_at;
        }
        if ((i & 8) != 0) {
            byteString = generateRestrictedAccessTokenResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        return generateRestrictedAccessTokenResponse.copy(str, restrictedTokenAccessType, j, byteString2);
    }

    public final GenerateRestrictedAccessTokenResponse copy(String access_token, RestrictedTokenAccessType access_type, long expires_at, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(access_token, "access_token");
        Intrinsics.checkNotNullParameter(access_type, "access_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GenerateRestrictedAccessTokenResponse(access_token, access_type, expires_at, unknownFields);
    }

    /* JADX INFO: compiled from: GenerateRestrictedAccessTokenResponse.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;", "()V", "access_token", "", "access_type", "Lcom/stripe/proto/terminalauth/pub/message/RestrictedTokenAccessType;", "expires_at", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GenerateRestrictedAccessTokenResponse, Builder> {
        public String access_token = "";
        public RestrictedTokenAccessType access_type = RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID;
        public long expires_at;

        public final Builder access_token(String access_token) {
            Intrinsics.checkNotNullParameter(access_token, "access_token");
            this.access_token = access_token;
            return this;
        }

        public final Builder access_type(RestrictedTokenAccessType access_type) {
            Intrinsics.checkNotNullParameter(access_type, "access_type");
            this.access_type = access_type;
            return this;
        }

        public final Builder expires_at(long expires_at) {
            this.expires_at = expires_at;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GenerateRestrictedAccessTokenResponse build() {
            return new GenerateRestrictedAccessTokenResponse(this.access_token, this.access_type, this.expires_at, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GenerateRestrictedAccessTokenResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminalauth/pub/api/GenerateRestrictedAccessTokenResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GenerateRestrictedAccessTokenResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GenerateRestrictedAccessTokenResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GenerateRestrictedAccessTokenResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminalauth.pub.api.GenerateRestrictedAccessTokenResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GenerateRestrictedAccessTokenResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.access_token, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.access_token);
                }
                if (value.access_type != RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID) {
                    size += RestrictedTokenAccessType.ADAPTER.encodedSizeWithTag(2, value.access_type);
                }
                return value.expires_at != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.expires_at)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GenerateRestrictedAccessTokenResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.access_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.access_token);
                }
                if (value.access_type != RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID) {
                    RestrictedTokenAccessType.ADAPTER.encodeWithTag(writer, 2, value.access_type);
                }
                if (value.expires_at != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.expires_at));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GenerateRestrictedAccessTokenResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.expires_at != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.expires_at));
                }
                if (value.access_type != RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID) {
                    RestrictedTokenAccessType.ADAPTER.encodeWithTag(writer, 2, value.access_type);
                }
                if (Intrinsics.areEqual(value.access_token, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.access_token);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GenerateRestrictedAccessTokenResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                RestrictedTokenAccessType restrictedTokenAccessTypeDecode = RestrictedTokenAccessType.RESTRICTED_TOKEN_ACCESS_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                String strDecode = "";
                while (true) {
                    RestrictedTokenAccessType restrictedTokenAccessType = restrictedTokenAccessTypeDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new GenerateRestrictedAccessTokenResponse(strDecode, restrictedTokenAccessType, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                restrictedTokenAccessTypeDecode = RestrictedTokenAccessType.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GenerateRestrictedAccessTokenResponse redact(GenerateRestrictedAccessTokenResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return GenerateRestrictedAccessTokenResponse.copy$default(value, null, null, 0L, ByteString.EMPTY, 7, null);
            }
        };
    }
}
