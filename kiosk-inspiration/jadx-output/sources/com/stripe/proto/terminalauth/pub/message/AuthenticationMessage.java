package com.stripe.proto.terminalauth.pub.message;

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

/* JADX INFO: compiled from: AuthenticationMessage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0004J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage$Builder;", "nonce", "Lokio/ByteString;", "signature", "", "authentication_key_id", "signature_algorithm", "Lcom/stripe/proto/terminalauth/pub/message/Algorithm;", "unknownFields", "(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminalauth/pub/message/Algorithm;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AuthenticationMessage extends Message<AuthenticationMessage, Builder> {
    public static final ProtoAdapter<AuthenticationMessage> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "authenticationKeyId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String authentication_key_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ByteString nonce;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String signature;

    @WireField(adapter = "com.stripe.proto.terminalauth.pub.message.Algorithm#ADAPTER", jsonName = "signatureAlgorithm", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final Algorithm signature_algorithm;

    public AuthenticationMessage() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ AuthenticationMessage(ByteString byteString, String str, String str2, Algorithm algorithm, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ByteString.EMPTY : byteString, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? Algorithm.ALGORITHM_INVALID : algorithm, (i & 16) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationMessage(ByteString nonce, String signature, String authentication_key_id, Algorithm signature_algorithm, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(authentication_key_id, "authentication_key_id");
        Intrinsics.checkNotNullParameter(signature_algorithm, "signature_algorithm");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.nonce = nonce;
        this.signature = signature;
        this.authentication_key_id = authentication_key_id;
        this.signature_algorithm = signature_algorithm;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.nonce = this.nonce;
        builder.signature = this.signature;
        builder.authentication_key_id = this.authentication_key_id;
        builder.signature_algorithm = this.signature_algorithm;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AuthenticationMessage)) {
            return false;
        }
        AuthenticationMessage authenticationMessage = (AuthenticationMessage) other;
        return Intrinsics.areEqual(unknownFields(), authenticationMessage.unknownFields()) && Intrinsics.areEqual(this.nonce, authenticationMessage.nonce) && Intrinsics.areEqual(this.signature, authenticationMessage.signature) && Intrinsics.areEqual(this.authentication_key_id, authenticationMessage.authentication_key_id) && this.signature_algorithm == authenticationMessage.signature_algorithm;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.nonce.hashCode()) * 37) + this.signature.hashCode()) * 37) + this.authentication_key_id.hashCode()) * 37) + this.signature_algorithm.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("nonce=" + this.nonce);
        arrayList2.add("signature=" + Internal.sanitize(this.signature));
        arrayList2.add("authentication_key_id=" + Internal.sanitize(this.authentication_key_id));
        arrayList2.add("signature_algorithm=" + this.signature_algorithm);
        return CollectionsKt.joinToString$default(arrayList, ", ", "AuthenticationMessage{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AuthenticationMessage copy$default(AuthenticationMessage authenticationMessage, ByteString byteString, String str, String str2, Algorithm algorithm, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            byteString = authenticationMessage.nonce;
        }
        if ((i & 2) != 0) {
            str = authenticationMessage.signature;
        }
        if ((i & 4) != 0) {
            str2 = authenticationMessage.authentication_key_id;
        }
        if ((i & 8) != 0) {
            algorithm = authenticationMessage.signature_algorithm;
        }
        if ((i & 16) != 0) {
            byteString2 = authenticationMessage.unknownFields();
        }
        ByteString byteString3 = byteString2;
        String str3 = str2;
        return authenticationMessage.copy(byteString, str, str3, algorithm, byteString3);
    }

    public final AuthenticationMessage copy(ByteString nonce, String signature, String authentication_key_id, Algorithm signature_algorithm, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(authentication_key_id, "authentication_key_id");
        Intrinsics.checkNotNullParameter(signature_algorithm, "signature_algorithm");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AuthenticationMessage(nonce, signature, authentication_key_id, signature_algorithm, unknownFields);
    }

    /* JADX INFO: compiled from: AuthenticationMessage.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage;", "()V", "authentication_key_id", "", "nonce", "Lokio/ByteString;", "signature", "signature_algorithm", "Lcom/stripe/proto/terminalauth/pub/message/Algorithm;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AuthenticationMessage, Builder> {
        public ByteString nonce = ByteString.EMPTY;
        public String signature = "";
        public String authentication_key_id = "";
        public Algorithm signature_algorithm = Algorithm.ALGORITHM_INVALID;

        public final Builder nonce(ByteString nonce) {
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            this.nonce = nonce;
            return this;
        }

        public final Builder signature(String signature) {
            Intrinsics.checkNotNullParameter(signature, "signature");
            this.signature = signature;
            return this;
        }

        public final Builder authentication_key_id(String authentication_key_id) {
            Intrinsics.checkNotNullParameter(authentication_key_id, "authentication_key_id");
            this.authentication_key_id = authentication_key_id;
            return this;
        }

        public final Builder signature_algorithm(Algorithm signature_algorithm) {
            Intrinsics.checkNotNullParameter(signature_algorithm, "signature_algorithm");
            this.signature_algorithm = signature_algorithm;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AuthenticationMessage build() {
            return new AuthenticationMessage(this.nonce, this.signature, this.authentication_key_id, this.signature_algorithm, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AuthenticationMessage.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminalauth/pub/message/AuthenticationMessage$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AuthenticationMessage build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AuthenticationMessage.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AuthenticationMessage>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminalauth.pub.message.AuthenticationMessage$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AuthenticationMessage value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.nonce, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(1, value.nonce);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.signature);
                }
                if (!Intrinsics.areEqual(value.authentication_key_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.authentication_key_id);
                }
                return value.signature_algorithm != Algorithm.ALGORITHM_INVALID ? size + Algorithm.ADAPTER.encodedSizeWithTag(4, value.signature_algorithm) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AuthenticationMessage value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.nonce, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 1, value.nonce);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.signature);
                }
                if (!Intrinsics.areEqual(value.authentication_key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.authentication_key_id);
                }
                if (value.signature_algorithm != Algorithm.ALGORITHM_INVALID) {
                    Algorithm.ADAPTER.encodeWithTag(writer, 4, value.signature_algorithm);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AuthenticationMessage value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.signature_algorithm != Algorithm.ALGORITHM_INVALID) {
                    Algorithm.ADAPTER.encodeWithTag(writer, 4, value.signature_algorithm);
                }
                if (!Intrinsics.areEqual(value.authentication_key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.authentication_key_id);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.signature);
                }
                if (Intrinsics.areEqual(value.nonce, ByteString.EMPTY)) {
                    return;
                }
                ProtoAdapter.BYTES.encodeWithTag(writer, 1, value.nonce);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AuthenticationMessage decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                Algorithm algorithm = Algorithm.ALGORITHM_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                Algorithm algorithmDecode = algorithm;
                while (true) {
                    ByteString byteString = byteStringDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AuthenticationMessage(byteString, strDecode, strDecode2, algorithmDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag != 1) {
                            if (iNextTag == 2) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 3) {
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 4) {
                                try {
                                    algorithmDecode = Algorithm.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                    byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AuthenticationMessage redact(AuthenticationMessage value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return AuthenticationMessage.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
