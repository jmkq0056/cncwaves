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

/* JADX INFO: compiled from: SignedResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0006H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/attestation/SignedResponse$Builder;", "bind_device_response", "Lcom/stripe/proto/api/attestation/BindDeviceResponse;", "nonce", "", "attest_device_response", "Lcom/stripe/proto/api/attestation/AttestDeviceResponse;", "rotate_key_response", "Lcom/stripe/proto/api/attestation/RotateKeyResponse;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/attestation/BindDeviceResponse;Ljava/lang/String;Lcom/stripe/proto/api/attestation/AttestDeviceResponse;Lcom/stripe/proto/api/attestation/RotateKeyResponse;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignedResponse extends Message<SignedResponse, Builder> {
    public static final ProtoAdapter<SignedResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.attestation.AttestDeviceResponse#ADAPTER", jsonName = "attestDeviceResponse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final AttestDeviceResponse attest_device_response;

    @WireField(adapter = "com.stripe.proto.api.attestation.BindDeviceResponse#ADAPTER", jsonName = "bindDeviceResponse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final BindDeviceResponse bind_device_response;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String nonce;

    @WireField(adapter = "com.stripe.proto.api.attestation.RotateKeyResponse#ADAPTER", jsonName = "rotateKeyResponse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final RotateKeyResponse rotate_key_response;

    public SignedResponse() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ SignedResponse(BindDeviceResponse bindDeviceResponse, String str, AttestDeviceResponse attestDeviceResponse, RotateKeyResponse rotateKeyResponse, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bindDeviceResponse, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : attestDeviceResponse, (i & 8) != 0 ? null : rotateKeyResponse, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignedResponse(BindDeviceResponse bindDeviceResponse, String nonce, AttestDeviceResponse attestDeviceResponse, RotateKeyResponse rotateKeyResponse, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bind_device_response = bindDeviceResponse;
        this.nonce = nonce;
        this.attest_device_response = attestDeviceResponse;
        this.rotate_key_response = rotateKeyResponse;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bind_device_response = this.bind_device_response;
        builder.nonce = this.nonce;
        builder.attest_device_response = this.attest_device_response;
        builder.rotate_key_response = this.rotate_key_response;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SignedResponse)) {
            return false;
        }
        SignedResponse signedResponse = (SignedResponse) other;
        return Intrinsics.areEqual(unknownFields(), signedResponse.unknownFields()) && Intrinsics.areEqual(this.bind_device_response, signedResponse.bind_device_response) && Intrinsics.areEqual(this.nonce, signedResponse.nonce) && Intrinsics.areEqual(this.attest_device_response, signedResponse.attest_device_response) && Intrinsics.areEqual(this.rotate_key_response, signedResponse.rotate_key_response);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BindDeviceResponse bindDeviceResponse = this.bind_device_response;
        int iHashCode2 = (((iHashCode + (bindDeviceResponse != null ? bindDeviceResponse.hashCode() : 0)) * 37) + this.nonce.hashCode()) * 37;
        AttestDeviceResponse attestDeviceResponse = this.attest_device_response;
        int iHashCode3 = (iHashCode2 + (attestDeviceResponse != null ? attestDeviceResponse.hashCode() : 0)) * 37;
        RotateKeyResponse rotateKeyResponse = this.rotate_key_response;
        int iHashCode4 = iHashCode3 + (rotateKeyResponse != null ? rotateKeyResponse.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.bind_device_response != null) {
            arrayList.add("bind_device_response=" + this.bind_device_response);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("nonce=" + Internal.sanitize(this.nonce));
        if (this.attest_device_response != null) {
            arrayList2.add("attest_device_response=" + this.attest_device_response);
        }
        if (this.rotate_key_response != null) {
            arrayList2.add("rotate_key_response=" + this.rotate_key_response);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SignedResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SignedResponse copy$default(SignedResponse signedResponse, BindDeviceResponse bindDeviceResponse, String str, AttestDeviceResponse attestDeviceResponse, RotateKeyResponse rotateKeyResponse, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bindDeviceResponse = signedResponse.bind_device_response;
        }
        if ((i & 2) != 0) {
            str = signedResponse.nonce;
        }
        if ((i & 4) != 0) {
            attestDeviceResponse = signedResponse.attest_device_response;
        }
        if ((i & 8) != 0) {
            rotateKeyResponse = signedResponse.rotate_key_response;
        }
        if ((i & 16) != 0) {
            byteString = signedResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        AttestDeviceResponse attestDeviceResponse2 = attestDeviceResponse;
        return signedResponse.copy(bindDeviceResponse, str, attestDeviceResponse2, rotateKeyResponse, byteString2);
    }

    public final SignedResponse copy(BindDeviceResponse bind_device_response, String nonce, AttestDeviceResponse attest_device_response, RotateKeyResponse rotate_key_response, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SignedResponse(bind_device_response, nonce, attest_device_response, rotate_key_response, unknownFields);
    }

    /* JADX INFO: compiled from: SignedResponse.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/attestation/SignedResponse;", "()V", "attest_device_response", "Lcom/stripe/proto/api/attestation/AttestDeviceResponse;", "bind_device_response", "Lcom/stripe/proto/api/attestation/BindDeviceResponse;", "nonce", "", "rotate_key_response", "Lcom/stripe/proto/api/attestation/RotateKeyResponse;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SignedResponse, Builder> {
        public AttestDeviceResponse attest_device_response;
        public BindDeviceResponse bind_device_response;
        public String nonce = "";
        public RotateKeyResponse rotate_key_response;

        public final Builder bind_device_response(BindDeviceResponse bind_device_response) {
            this.bind_device_response = bind_device_response;
            return this;
        }

        public final Builder nonce(String nonce) {
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            this.nonce = nonce;
            return this;
        }

        public final Builder attest_device_response(AttestDeviceResponse attest_device_response) {
            this.attest_device_response = attest_device_response;
            return this;
        }

        public final Builder rotate_key_response(RotateKeyResponse rotate_key_response) {
            this.rotate_key_response = rotate_key_response;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SignedResponse build() {
            return new SignedResponse(this.bind_device_response, this.nonce, this.attest_device_response, this.rotate_key_response, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SignedResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/attestation/SignedResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/attestation/SignedResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SignedResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SignedResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SignedResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.attestation.SignedResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SignedResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.bind_device_response != null) {
                    size += BindDeviceResponse.ADAPTER.encodedSizeWithTag(1, value.bind_device_response);
                }
                if (!Intrinsics.areEqual(value.nonce, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.nonce);
                }
                if (value.attest_device_response != null) {
                    size += AttestDeviceResponse.ADAPTER.encodedSizeWithTag(3, value.attest_device_response);
                }
                return value.rotate_key_response != null ? size + RotateKeyResponse.ADAPTER.encodedSizeWithTag(4, value.rotate_key_response) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SignedResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.bind_device_response != null) {
                    BindDeviceResponse.ADAPTER.encodeWithTag(writer, 1, value.bind_device_response);
                }
                if (!Intrinsics.areEqual(value.nonce, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.nonce);
                }
                if (value.attest_device_response != null) {
                    AttestDeviceResponse.ADAPTER.encodeWithTag(writer, 3, value.attest_device_response);
                }
                if (value.rotate_key_response != null) {
                    RotateKeyResponse.ADAPTER.encodeWithTag(writer, 4, value.rotate_key_response);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SignedResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.rotate_key_response != null) {
                    RotateKeyResponse.ADAPTER.encodeWithTag(writer, 4, value.rotate_key_response);
                }
                if (value.attest_device_response != null) {
                    AttestDeviceResponse.ADAPTER.encodeWithTag(writer, 3, value.attest_device_response);
                }
                if (!Intrinsics.areEqual(value.nonce, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.nonce);
                }
                if (value.bind_device_response != null) {
                    BindDeviceResponse.ADAPTER.encodeWithTag(writer, 1, value.bind_device_response);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SignedResponse redact(SignedResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                BindDeviceResponse bindDeviceResponse = value.bind_device_response;
                BindDeviceResponse bindDeviceResponseRedact = bindDeviceResponse != null ? BindDeviceResponse.ADAPTER.redact(bindDeviceResponse) : null;
                AttestDeviceResponse attestDeviceResponse = value.attest_device_response;
                AttestDeviceResponse attestDeviceResponseRedact = attestDeviceResponse != null ? AttestDeviceResponse.ADAPTER.redact(attestDeviceResponse) : null;
                RotateKeyResponse rotateKeyResponse = value.rotate_key_response;
                return SignedResponse.copy$default(value, bindDeviceResponseRedact, null, attestDeviceResponseRedact, rotateKeyResponse != null ? RotateKeyResponse.ADAPTER.redact(rotateKeyResponse) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SignedResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                BindDeviceResponse bindDeviceResponseDecode = null;
                RotateKeyResponse rotateKeyResponseDecode = null;
                String strDecode = "";
                AttestDeviceResponse attestDeviceResponseDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SignedResponse(bindDeviceResponseDecode, strDecode, attestDeviceResponseDecode, rotateKeyResponseDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        bindDeviceResponseDecode = BindDeviceResponse.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        attestDeviceResponseDecode = AttestDeviceResponse.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        rotateKeyResponseDecode = RotateKeyResponse.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
