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

/* JADX INFO: compiled from: AttestationResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/attestation/AttestationResponse$Builder;", "signed_response", "Lcom/stripe/proto/api/attestation/SignedResponse;", "signature", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/attestation/SignedResponse;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationResponse extends Message<AttestationResponse, Builder> {
    public static final ProtoAdapter<AttestationResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String signature;

    @WireField(adapter = "com.stripe.proto.api.attestation.SignedResponse#ADAPTER", jsonName = "signedResponse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SignedResponse signed_response;

    public AttestationResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ AttestationResponse(SignedResponse signedResponse, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : signedResponse, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttestationResponse(SignedResponse signedResponse, String signature, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.signed_response = signedResponse;
        this.signature = signature;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.signed_response = this.signed_response;
        builder.signature = this.signature;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AttestationResponse)) {
            return false;
        }
        AttestationResponse attestationResponse = (AttestationResponse) other;
        return Intrinsics.areEqual(unknownFields(), attestationResponse.unknownFields()) && Intrinsics.areEqual(this.signed_response, attestationResponse.signed_response) && Intrinsics.areEqual(this.signature, attestationResponse.signature);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SignedResponse signedResponse = this.signed_response;
        int iHashCode2 = ((iHashCode + (signedResponse != null ? signedResponse.hashCode() : 0)) * 37) + this.signature.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.signed_response != null) {
            arrayList.add("signed_response=" + this.signed_response);
        }
        arrayList.add("signature=" + Internal.sanitize(this.signature));
        return CollectionsKt.joinToString$default(arrayList, ", ", "AttestationResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AttestationResponse copy$default(AttestationResponse attestationResponse, SignedResponse signedResponse, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            signedResponse = attestationResponse.signed_response;
        }
        if ((i & 2) != 0) {
            str = attestationResponse.signature;
        }
        if ((i & 4) != 0) {
            byteString = attestationResponse.unknownFields();
        }
        return attestationResponse.copy(signedResponse, str, byteString);
    }

    public final AttestationResponse copy(SignedResponse signed_response, String signature, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AttestationResponse(signed_response, signature, unknownFields);
    }

    /* JADX INFO: compiled from: AttestationResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/attestation/AttestationResponse;", "()V", "signature", "", "signed_response", "Lcom/stripe/proto/api/attestation/SignedResponse;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AttestationResponse, Builder> {
        public String signature = "";
        public SignedResponse signed_response;

        public final Builder signed_response(SignedResponse signed_response) {
            this.signed_response = signed_response;
            return this;
        }

        public final Builder signature(String signature) {
            Intrinsics.checkNotNullParameter(signature, "signature");
            this.signature = signature;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AttestationResponse build() {
            return new AttestationResponse(this.signed_response, this.signature, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AttestationResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/attestation/AttestationResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/attestation/AttestationResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AttestationResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AttestationResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AttestationResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.attestation.AttestationResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AttestationResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.signed_response != null) {
                    size += SignedResponse.ADAPTER.encodedSizeWithTag(1, value.signed_response);
                }
                return !Intrinsics.areEqual(value.signature, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.signature) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AttestationResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.signed_response != null) {
                    SignedResponse.ADAPTER.encodeWithTag(writer, 1, value.signed_response);
                }
                if (!Intrinsics.areEqual(value.signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.signature);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AttestationResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.signature);
                }
                if (value.signed_response != null) {
                    SignedResponse.ADAPTER.encodeWithTag(writer, 1, value.signed_response);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AttestationResponse redact(AttestationResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SignedResponse signedResponse = value.signed_response;
                return AttestationResponse.copy$default(value, signedResponse != null ? SignedResponse.ADAPTER.redact(signedResponse) : null, null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AttestationResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SignedResponse signedResponseDecode = null;
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AttestationResponse(signedResponseDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        signedResponseDecode = SignedResponse.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
