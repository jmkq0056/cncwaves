package com.stripe.proto.api.attestation;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.attestation.InstallationFingerprint;
import com.stripe.proto.model.attestation.KeyAttestation;
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

/* JADX INFO: compiled from: BindDeviceRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/attestation/BindDeviceRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;", "installation_fingerprint", "Lcom/stripe/proto/model/attestation/InstallationFingerprint;", "device_authentication_key", "Lcom/stripe/proto/model/attestation/KeyAttestation;", "key_transport_key", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/attestation/InstallationFingerprint;Lcom/stripe/proto/model/attestation/KeyAttestation;Lcom/stripe/proto/model/attestation/KeyAttestation;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BindDeviceRequest extends Message<BindDeviceRequest, Builder> {
    public static final ProtoAdapter<BindDeviceRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.attestation.KeyAttestation#ADAPTER", jsonName = "deviceAuthenticationKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final KeyAttestation device_authentication_key;

    @WireField(adapter = "com.stripe.proto.model.attestation.InstallationFingerprint#ADAPTER", jsonName = "installationFingerprint", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final InstallationFingerprint installation_fingerprint;

    @WireField(adapter = "com.stripe.proto.model.attestation.KeyAttestation#ADAPTER", jsonName = "keyTransportKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final KeyAttestation key_transport_key;

    public BindDeviceRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ BindDeviceRequest(InstallationFingerprint installationFingerprint, KeyAttestation keyAttestation, KeyAttestation keyAttestation2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : installationFingerprint, (i & 2) != 0 ? null : keyAttestation, (i & 4) != 0 ? null : keyAttestation2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BindDeviceRequest(InstallationFingerprint installationFingerprint, KeyAttestation keyAttestation, KeyAttestation keyAttestation2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.installation_fingerprint = installationFingerprint;
        this.device_authentication_key = keyAttestation;
        this.key_transport_key = keyAttestation2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.installation_fingerprint = this.installation_fingerprint;
        builder.device_authentication_key = this.device_authentication_key;
        builder.key_transport_key = this.key_transport_key;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BindDeviceRequest)) {
            return false;
        }
        BindDeviceRequest bindDeviceRequest = (BindDeviceRequest) other;
        return Intrinsics.areEqual(unknownFields(), bindDeviceRequest.unknownFields()) && Intrinsics.areEqual(this.installation_fingerprint, bindDeviceRequest.installation_fingerprint) && Intrinsics.areEqual(this.device_authentication_key, bindDeviceRequest.device_authentication_key) && Intrinsics.areEqual(this.key_transport_key, bindDeviceRequest.key_transport_key);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        InstallationFingerprint installationFingerprint = this.installation_fingerprint;
        int iHashCode2 = (iHashCode + (installationFingerprint != null ? installationFingerprint.hashCode() : 0)) * 37;
        KeyAttestation keyAttestation = this.device_authentication_key;
        int iHashCode3 = (iHashCode2 + (keyAttestation != null ? keyAttestation.hashCode() : 0)) * 37;
        KeyAttestation keyAttestation2 = this.key_transport_key;
        int iHashCode4 = iHashCode3 + (keyAttestation2 != null ? keyAttestation2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.installation_fingerprint != null) {
            arrayList.add("installation_fingerprint=" + this.installation_fingerprint);
        }
        if (this.device_authentication_key != null) {
            arrayList.add("device_authentication_key=" + this.device_authentication_key);
        }
        if (this.key_transport_key != null) {
            arrayList.add("key_transport_key=" + this.key_transport_key);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BindDeviceRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BindDeviceRequest copy$default(BindDeviceRequest bindDeviceRequest, InstallationFingerprint installationFingerprint, KeyAttestation keyAttestation, KeyAttestation keyAttestation2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            installationFingerprint = bindDeviceRequest.installation_fingerprint;
        }
        if ((i & 2) != 0) {
            keyAttestation = bindDeviceRequest.device_authentication_key;
        }
        if ((i & 4) != 0) {
            keyAttestation2 = bindDeviceRequest.key_transport_key;
        }
        if ((i & 8) != 0) {
            byteString = bindDeviceRequest.unknownFields();
        }
        return bindDeviceRequest.copy(installationFingerprint, keyAttestation, keyAttestation2, byteString);
    }

    public final BindDeviceRequest copy(InstallationFingerprint installation_fingerprint, KeyAttestation device_authentication_key, KeyAttestation key_transport_key, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BindDeviceRequest(installation_fingerprint, device_authentication_key, key_transport_key, unknownFields);
    }

    /* JADX INFO: compiled from: BindDeviceRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/attestation/BindDeviceRequest;", "()V", "device_authentication_key", "Lcom/stripe/proto/model/attestation/KeyAttestation;", "installation_fingerprint", "Lcom/stripe/proto/model/attestation/InstallationFingerprint;", "key_transport_key", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BindDeviceRequest, Builder> {
        public KeyAttestation device_authentication_key;
        public InstallationFingerprint installation_fingerprint;
        public KeyAttestation key_transport_key;

        public final Builder installation_fingerprint(InstallationFingerprint installation_fingerprint) {
            this.installation_fingerprint = installation_fingerprint;
            return this;
        }

        public final Builder device_authentication_key(KeyAttestation device_authentication_key) {
            this.device_authentication_key = device_authentication_key;
            return this;
        }

        public final Builder key_transport_key(KeyAttestation key_transport_key) {
            this.key_transport_key = key_transport_key;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BindDeviceRequest build() {
            return new BindDeviceRequest(this.installation_fingerprint, this.device_authentication_key, this.key_transport_key, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BindDeviceRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/attestation/BindDeviceRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/attestation/BindDeviceRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BindDeviceRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BindDeviceRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BindDeviceRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.attestation.BindDeviceRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BindDeviceRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.installation_fingerprint != null) {
                    size += InstallationFingerprint.ADAPTER.encodedSizeWithTag(1, value.installation_fingerprint);
                }
                if (value.device_authentication_key != null) {
                    size += KeyAttestation.ADAPTER.encodedSizeWithTag(2, value.device_authentication_key);
                }
                return value.key_transport_key != null ? size + KeyAttestation.ADAPTER.encodedSizeWithTag(3, value.key_transport_key) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BindDeviceRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.installation_fingerprint != null) {
                    InstallationFingerprint.ADAPTER.encodeWithTag(writer, 1, value.installation_fingerprint);
                }
                if (value.device_authentication_key != null) {
                    KeyAttestation.ADAPTER.encodeWithTag(writer, 2, value.device_authentication_key);
                }
                if (value.key_transport_key != null) {
                    KeyAttestation.ADAPTER.encodeWithTag(writer, 3, value.key_transport_key);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BindDeviceRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.key_transport_key != null) {
                    KeyAttestation.ADAPTER.encodeWithTag(writer, 3, value.key_transport_key);
                }
                if (value.device_authentication_key != null) {
                    KeyAttestation.ADAPTER.encodeWithTag(writer, 2, value.device_authentication_key);
                }
                if (value.installation_fingerprint != null) {
                    InstallationFingerprint.ADAPTER.encodeWithTag(writer, 1, value.installation_fingerprint);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BindDeviceRequest redact(BindDeviceRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstallationFingerprint installationFingerprint = value.installation_fingerprint;
                InstallationFingerprint installationFingerprintRedact = installationFingerprint != null ? InstallationFingerprint.ADAPTER.redact(installationFingerprint) : null;
                KeyAttestation keyAttestation = value.device_authentication_key;
                KeyAttestation keyAttestationRedact = keyAttestation != null ? KeyAttestation.ADAPTER.redact(keyAttestation) : null;
                KeyAttestation keyAttestation2 = value.key_transport_key;
                return value.copy(installationFingerprintRedact, keyAttestationRedact, keyAttestation2 != null ? KeyAttestation.ADAPTER.redact(keyAttestation2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BindDeviceRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                InstallationFingerprint installationFingerprintDecode = null;
                KeyAttestation keyAttestationDecode = null;
                KeyAttestation keyAttestationDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new BindDeviceRequest(installationFingerprintDecode, keyAttestationDecode, keyAttestationDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        installationFingerprintDecode = InstallationFingerprint.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        keyAttestationDecode = KeyAttestation.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        keyAttestationDecode2 = KeyAttestation.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
