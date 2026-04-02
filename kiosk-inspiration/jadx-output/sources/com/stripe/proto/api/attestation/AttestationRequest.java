package com.stripe.proto.api.attestation;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: AttestationRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ2\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;", "signed_request", "Lcom/stripe/proto/api/attestation/SignedRequest;", "signature", "", OfflineStorageConstantsKt.ID, "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationRequest extends Message<AttestationRequest, Builder> {
    public static final ProtoAdapter<AttestationRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String signature;

    @WireField(adapter = "com.stripe.proto.api.attestation.SignedRequest#ADAPTER", jsonName = "signedRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SignedRequest signed_request;

    public AttestationRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ AttestationRequest(SignedRequest signedRequest, String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : signedRequest, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttestationRequest(SignedRequest signedRequest, String signature, String str, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.signed_request = signedRequest;
        this.signature = signature;
        this.id = str;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.signed_request = this.signed_request;
        builder.signature = this.signature;
        builder.id = this.id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AttestationRequest)) {
            return false;
        }
        AttestationRequest attestationRequest = (AttestationRequest) other;
        return Intrinsics.areEqual(unknownFields(), attestationRequest.unknownFields()) && Intrinsics.areEqual(this.signed_request, attestationRequest.signed_request) && Intrinsics.areEqual(this.signature, attestationRequest.signature) && Intrinsics.areEqual(this.id, attestationRequest.id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SignedRequest signedRequest = this.signed_request;
        int iHashCode2 = (((iHashCode + (signedRequest != null ? signedRequest.hashCode() : 0)) * 37) + this.signature.hashCode()) * 37;
        String str = this.id;
        int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.signed_request != null) {
            arrayList.add("signed_request=" + this.signed_request);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("signature=" + Internal.sanitize(this.signature));
        if (this.id != null) {
            arrayList2.add("id=" + this.id);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AttestationRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AttestationRequest copy$default(AttestationRequest attestationRequest, SignedRequest signedRequest, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            signedRequest = attestationRequest.signed_request;
        }
        if ((i & 2) != 0) {
            str = attestationRequest.signature;
        }
        if ((i & 4) != 0) {
            str2 = attestationRequest.id;
        }
        if ((i & 8) != 0) {
            byteString = attestationRequest.unknownFields();
        }
        return attestationRequest.copy(signedRequest, str, str2, byteString);
    }

    public final AttestationRequest copy(SignedRequest signed_request, String signature, String id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AttestationRequest(signed_request, signature, id, unknownFields);
    }

    /* JADX INFO: compiled from: AttestationRequest.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/attestation/AttestationRequest;", "()V", OfflineStorageConstantsKt.ID, "", "signature", "signed_request", "Lcom/stripe/proto/api/attestation/SignedRequest;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AttestationRequest, Builder> {
        public String id;
        public String signature = "";
        public SignedRequest signed_request;

        public final Builder signed_request(SignedRequest signed_request) {
            this.signed_request = signed_request;
            return this;
        }

        public final Builder signature(String signature) {
            Intrinsics.checkNotNullParameter(signature, "signature");
            this.signature = signature;
            return this;
        }

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AttestationRequest build() {
            return new AttestationRequest(this.signed_request, this.signature, this.id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AttestationRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/attestation/AttestationRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AttestationRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AttestationRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AttestationRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.attestation.AttestationRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AttestationRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.signed_request != null) {
                    size += SignedRequest.ADAPTER.encodedSizeWithTag(1, value.signed_request);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.signature);
                }
                return value.id != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AttestationRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.signed_request != null) {
                    SignedRequest.ADAPTER.encodeWithTag(writer, 1, value.signed_request);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.signature);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AttestationRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.id);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.signature);
                }
                if (value.signed_request != null) {
                    SignedRequest.ADAPTER.encodeWithTag(writer, 1, value.signed_request);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AttestationRequest redact(AttestationRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SignedRequest signedRequest = value.signed_request;
                SignedRequest signedRequestRedact = signedRequest != null ? SignedRequest.ADAPTER.redact(signedRequest) : null;
                String str = value.id;
                return AttestationRequest.copy$default(value, signedRequestRedact, null, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AttestationRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SignedRequest signedRequestDecode = null;
                String strDecode = "";
                String strDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AttestationRequest(signedRequestDecode, strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        signedRequestDecode = SignedRequest.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
