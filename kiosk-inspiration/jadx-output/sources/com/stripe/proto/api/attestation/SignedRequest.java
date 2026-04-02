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

/* JADX INFO: compiled from: SignedRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0006H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/attestation/SignedRequest$Builder;", "bind_device_request", "Lcom/stripe/proto/api/attestation/BindDeviceRequest;", "nonce", "", "attest_device_request", "Lcom/stripe/proto/api/attestation/AttestDeviceRequest;", "rotate_key_request", "Lcom/stripe/proto/api/attestation/RotateKeyRequest;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;Lcom/stripe/proto/api/attestation/AttestDeviceRequest;Lcom/stripe/proto/api/attestation/RotateKeyRequest;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignedRequest extends Message<SignedRequest, Builder> {
    public static final ProtoAdapter<SignedRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.attestation.AttestDeviceRequest#ADAPTER", jsonName = "attestDeviceRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final AttestDeviceRequest attest_device_request;

    @WireField(adapter = "com.stripe.proto.api.attestation.BindDeviceRequest#ADAPTER", jsonName = "bindDeviceRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final BindDeviceRequest bind_device_request;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String nonce;

    @WireField(adapter = "com.stripe.proto.api.attestation.RotateKeyRequest#ADAPTER", jsonName = "rotateKeyRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final RotateKeyRequest rotate_key_request;

    public SignedRequest() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ SignedRequest(BindDeviceRequest bindDeviceRequest, String str, AttestDeviceRequest attestDeviceRequest, RotateKeyRequest rotateKeyRequest, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bindDeviceRequest, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : attestDeviceRequest, (i & 8) != 0 ? null : rotateKeyRequest, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignedRequest(BindDeviceRequest bindDeviceRequest, String nonce, AttestDeviceRequest attestDeviceRequest, RotateKeyRequest rotateKeyRequest, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bind_device_request = bindDeviceRequest;
        this.nonce = nonce;
        this.attest_device_request = attestDeviceRequest;
        this.rotate_key_request = rotateKeyRequest;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bind_device_request = this.bind_device_request;
        builder.nonce = this.nonce;
        builder.attest_device_request = this.attest_device_request;
        builder.rotate_key_request = this.rotate_key_request;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SignedRequest)) {
            return false;
        }
        SignedRequest signedRequest = (SignedRequest) other;
        return Intrinsics.areEqual(unknownFields(), signedRequest.unknownFields()) && Intrinsics.areEqual(this.bind_device_request, signedRequest.bind_device_request) && Intrinsics.areEqual(this.nonce, signedRequest.nonce) && Intrinsics.areEqual(this.attest_device_request, signedRequest.attest_device_request) && Intrinsics.areEqual(this.rotate_key_request, signedRequest.rotate_key_request);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BindDeviceRequest bindDeviceRequest = this.bind_device_request;
        int iHashCode2 = (((iHashCode + (bindDeviceRequest != null ? bindDeviceRequest.hashCode() : 0)) * 37) + this.nonce.hashCode()) * 37;
        AttestDeviceRequest attestDeviceRequest = this.attest_device_request;
        int iHashCode3 = (iHashCode2 + (attestDeviceRequest != null ? attestDeviceRequest.hashCode() : 0)) * 37;
        RotateKeyRequest rotateKeyRequest = this.rotate_key_request;
        int iHashCode4 = iHashCode3 + (rotateKeyRequest != null ? rotateKeyRequest.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.bind_device_request != null) {
            arrayList.add("bind_device_request=" + this.bind_device_request);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("nonce=" + Internal.sanitize(this.nonce));
        if (this.attest_device_request != null) {
            arrayList2.add("attest_device_request=" + this.attest_device_request);
        }
        if (this.rotate_key_request != null) {
            arrayList2.add("rotate_key_request=" + this.rotate_key_request);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SignedRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SignedRequest copy$default(SignedRequest signedRequest, BindDeviceRequest bindDeviceRequest, String str, AttestDeviceRequest attestDeviceRequest, RotateKeyRequest rotateKeyRequest, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bindDeviceRequest = signedRequest.bind_device_request;
        }
        if ((i & 2) != 0) {
            str = signedRequest.nonce;
        }
        if ((i & 4) != 0) {
            attestDeviceRequest = signedRequest.attest_device_request;
        }
        if ((i & 8) != 0) {
            rotateKeyRequest = signedRequest.rotate_key_request;
        }
        if ((i & 16) != 0) {
            byteString = signedRequest.unknownFields();
        }
        ByteString byteString2 = byteString;
        AttestDeviceRequest attestDeviceRequest2 = attestDeviceRequest;
        return signedRequest.copy(bindDeviceRequest, str, attestDeviceRequest2, rotateKeyRequest, byteString2);
    }

    public final SignedRequest copy(BindDeviceRequest bind_device_request, String nonce, AttestDeviceRequest attest_device_request, RotateKeyRequest rotate_key_request, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SignedRequest(bind_device_request, nonce, attest_device_request, rotate_key_request, unknownFields);
    }

    /* JADX INFO: compiled from: SignedRequest.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/attestation/SignedRequest;", "()V", "attest_device_request", "Lcom/stripe/proto/api/attestation/AttestDeviceRequest;", "bind_device_request", "Lcom/stripe/proto/api/attestation/BindDeviceRequest;", "nonce", "", "rotate_key_request", "Lcom/stripe/proto/api/attestation/RotateKeyRequest;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SignedRequest, Builder> {
        public AttestDeviceRequest attest_device_request;
        public BindDeviceRequest bind_device_request;
        public String nonce = "";
        public RotateKeyRequest rotate_key_request;

        public final Builder bind_device_request(BindDeviceRequest bind_device_request) {
            this.bind_device_request = bind_device_request;
            return this;
        }

        public final Builder nonce(String nonce) {
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            this.nonce = nonce;
            return this;
        }

        public final Builder attest_device_request(AttestDeviceRequest attest_device_request) {
            this.attest_device_request = attest_device_request;
            return this;
        }

        public final Builder rotate_key_request(RotateKeyRequest rotate_key_request) {
            this.rotate_key_request = rotate_key_request;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SignedRequest build() {
            return new SignedRequest(this.bind_device_request, this.nonce, this.attest_device_request, this.rotate_key_request, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SignedRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/attestation/SignedRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/attestation/SignedRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SignedRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SignedRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SignedRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.attestation.SignedRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SignedRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.bind_device_request != null) {
                    size += BindDeviceRequest.ADAPTER.encodedSizeWithTag(1, value.bind_device_request);
                }
                if (!Intrinsics.areEqual(value.nonce, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.nonce);
                }
                if (value.attest_device_request != null) {
                    size += AttestDeviceRequest.ADAPTER.encodedSizeWithTag(3, value.attest_device_request);
                }
                return value.rotate_key_request != null ? size + RotateKeyRequest.ADAPTER.encodedSizeWithTag(4, value.rotate_key_request) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SignedRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.bind_device_request != null) {
                    BindDeviceRequest.ADAPTER.encodeWithTag(writer, 1, value.bind_device_request);
                }
                if (!Intrinsics.areEqual(value.nonce, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.nonce);
                }
                if (value.attest_device_request != null) {
                    AttestDeviceRequest.ADAPTER.encodeWithTag(writer, 3, value.attest_device_request);
                }
                if (value.rotate_key_request != null) {
                    RotateKeyRequest.ADAPTER.encodeWithTag(writer, 4, value.rotate_key_request);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SignedRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.rotate_key_request != null) {
                    RotateKeyRequest.ADAPTER.encodeWithTag(writer, 4, value.rotate_key_request);
                }
                if (value.attest_device_request != null) {
                    AttestDeviceRequest.ADAPTER.encodeWithTag(writer, 3, value.attest_device_request);
                }
                if (!Intrinsics.areEqual(value.nonce, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.nonce);
                }
                if (value.bind_device_request != null) {
                    BindDeviceRequest.ADAPTER.encodeWithTag(writer, 1, value.bind_device_request);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SignedRequest redact(SignedRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                BindDeviceRequest bindDeviceRequest = value.bind_device_request;
                BindDeviceRequest bindDeviceRequestRedact = bindDeviceRequest != null ? BindDeviceRequest.ADAPTER.redact(bindDeviceRequest) : null;
                AttestDeviceRequest attestDeviceRequest = value.attest_device_request;
                AttestDeviceRequest attestDeviceRequestRedact = attestDeviceRequest != null ? AttestDeviceRequest.ADAPTER.redact(attestDeviceRequest) : null;
                RotateKeyRequest rotateKeyRequest = value.rotate_key_request;
                return SignedRequest.copy$default(value, bindDeviceRequestRedact, null, attestDeviceRequestRedact, rotateKeyRequest != null ? RotateKeyRequest.ADAPTER.redact(rotateKeyRequest) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SignedRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                BindDeviceRequest bindDeviceRequestDecode = null;
                RotateKeyRequest rotateKeyRequestDecode = null;
                String strDecode = "";
                AttestDeviceRequest attestDeviceRequestDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SignedRequest(bindDeviceRequestDecode, strDecode, attestDeviceRequestDecode, rotateKeyRequestDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        bindDeviceRequestDecode = BindDeviceRequest.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        attestDeviceRequestDecode = AttestDeviceRequest.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        rotateKeyRequestDecode = RotateKeyRequest.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
