package com.stripe.proto.model.attestation;

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

/* JADX INFO: compiled from: InstallationFingerprintStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;", OfflineStorageConstantsKt.ID, "", "attestation_status", "Lcom/stripe/proto/model/attestation/AttestationStatus;", "attestation_cryptogram", "working_nonce", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallationFingerprintStatus extends Message<InstallationFingerprintStatus, Builder> {
    public static final ProtoAdapter<InstallationFingerprintStatus> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "attestationCryptogram", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String attestation_cryptogram;

    @WireField(adapter = "com.stripe.proto.model.attestation.AttestationStatus#ADAPTER", jsonName = "attestationStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final AttestationStatus attestation_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "workingNonce", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String working_nonce;

    public InstallationFingerprintStatus() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ InstallationFingerprintStatus(String str, AttestationStatus attestationStatus, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? AttestationStatus.ATTESTED : attestationStatus, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstallationFingerprintStatus(String id, AttestationStatus attestation_status, String attestation_cryptogram, String working_nonce, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(attestation_status, "attestation_status");
        Intrinsics.checkNotNullParameter(attestation_cryptogram, "attestation_cryptogram");
        Intrinsics.checkNotNullParameter(working_nonce, "working_nonce");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = id;
        this.attestation_status = attestation_status;
        this.attestation_cryptogram = attestation_cryptogram;
        this.working_nonce = working_nonce;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.attestation_status = this.attestation_status;
        builder.attestation_cryptogram = this.attestation_cryptogram;
        builder.working_nonce = this.working_nonce;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof InstallationFingerprintStatus)) {
            return false;
        }
        InstallationFingerprintStatus installationFingerprintStatus = (InstallationFingerprintStatus) other;
        return Intrinsics.areEqual(unknownFields(), installationFingerprintStatus.unknownFields()) && Intrinsics.areEqual(this.id, installationFingerprintStatus.id) && this.attestation_status == installationFingerprintStatus.attestation_status && Intrinsics.areEqual(this.attestation_cryptogram, installationFingerprintStatus.attestation_cryptogram) && Intrinsics.areEqual(this.working_nonce, installationFingerprintStatus.working_nonce);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.id.hashCode()) * 37) + this.attestation_status.hashCode()) * 37) + this.attestation_cryptogram.hashCode()) * 37) + this.working_nonce.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("id=" + Internal.sanitize(this.id));
        arrayList2.add("attestation_status=" + this.attestation_status);
        arrayList2.add("attestation_cryptogram=" + Internal.sanitize(this.attestation_cryptogram));
        arrayList2.add("working_nonce=" + Internal.sanitize(this.working_nonce));
        return CollectionsKt.joinToString$default(arrayList, ", ", "InstallationFingerprintStatus{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ InstallationFingerprintStatus copy$default(InstallationFingerprintStatus installationFingerprintStatus, String str, AttestationStatus attestationStatus, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = installationFingerprintStatus.id;
        }
        if ((i & 2) != 0) {
            attestationStatus = installationFingerprintStatus.attestation_status;
        }
        if ((i & 4) != 0) {
            str2 = installationFingerprintStatus.attestation_cryptogram;
        }
        if ((i & 8) != 0) {
            str3 = installationFingerprintStatus.working_nonce;
        }
        if ((i & 16) != 0) {
            byteString = installationFingerprintStatus.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str2;
        return installationFingerprintStatus.copy(str, attestationStatus, str4, str3, byteString2);
    }

    public final InstallationFingerprintStatus copy(String id, AttestationStatus attestation_status, String attestation_cryptogram, String working_nonce, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(attestation_status, "attestation_status");
        Intrinsics.checkNotNullParameter(attestation_cryptogram, "attestation_cryptogram");
        Intrinsics.checkNotNullParameter(working_nonce, "working_nonce");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new InstallationFingerprintStatus(id, attestation_status, attestation_cryptogram, working_nonce, unknownFields);
    }

    /* JADX INFO: compiled from: InstallationFingerprintStatus.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;", "()V", "attestation_cryptogram", "", "attestation_status", "Lcom/stripe/proto/model/attestation/AttestationStatus;", OfflineStorageConstantsKt.ID, "working_nonce", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<InstallationFingerprintStatus, Builder> {
        public String id = "";
        public AttestationStatus attestation_status = AttestationStatus.ATTESTED;
        public String attestation_cryptogram = "";
        public String working_nonce = "";

        public final Builder id(String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            return this;
        }

        public final Builder attestation_status(AttestationStatus attestation_status) {
            Intrinsics.checkNotNullParameter(attestation_status, "attestation_status");
            this.attestation_status = attestation_status;
            return this;
        }

        public final Builder attestation_cryptogram(String attestation_cryptogram) {
            Intrinsics.checkNotNullParameter(attestation_cryptogram, "attestation_cryptogram");
            this.attestation_cryptogram = attestation_cryptogram;
            return this;
        }

        public final Builder working_nonce(String working_nonce) {
            Intrinsics.checkNotNullParameter(working_nonce, "working_nonce");
            this.working_nonce = working_nonce;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public InstallationFingerprintStatus build() {
            return new InstallationFingerprintStatus(this.id, this.attestation_status, this.attestation_cryptogram, this.working_nonce, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: InstallationFingerprintStatus.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ InstallationFingerprintStatus build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstallationFingerprintStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<InstallationFingerprintStatus>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.InstallationFingerprintStatus$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(InstallationFingerprintStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.id);
                }
                if (value.attestation_status != AttestationStatus.ATTESTED) {
                    size += AttestationStatus.ADAPTER.encodedSizeWithTag(2, value.attestation_status);
                }
                if (!Intrinsics.areEqual(value.attestation_cryptogram, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.attestation_cryptogram);
                }
                return !Intrinsics.areEqual(value.working_nonce, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.working_nonce) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, InstallationFingerprintStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                }
                if (value.attestation_status != AttestationStatus.ATTESTED) {
                    AttestationStatus.ADAPTER.encodeWithTag(writer, 2, value.attestation_status);
                }
                if (!Intrinsics.areEqual(value.attestation_cryptogram, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.attestation_cryptogram);
                }
                if (!Intrinsics.areEqual(value.working_nonce, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.working_nonce);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, InstallationFingerprintStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.working_nonce, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.working_nonce);
                }
                if (!Intrinsics.areEqual(value.attestation_cryptogram, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.attestation_cryptogram);
                }
                if (value.attestation_status != AttestationStatus.ATTESTED) {
                    AttestationStatus.ADAPTER.encodeWithTag(writer, 2, value.attestation_status);
                }
                if (Intrinsics.areEqual(value.id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public InstallationFingerprintStatus decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                AttestationStatus attestationStatusDecode = AttestationStatus.ATTESTED;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                while (true) {
                    AttestationStatus attestationStatus = attestationStatusDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new InstallationFingerprintStatus(strDecode, attestationStatus, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                attestationStatusDecode = AttestationStatus.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public InstallationFingerprintStatus redact(InstallationFingerprintStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return InstallationFingerprintStatus.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
