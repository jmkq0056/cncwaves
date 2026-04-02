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
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: KeyAttestation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ*\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/attestation/KeyAttestation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;", "public_key", "", "certificates", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KeyAttestation extends Message<KeyAttestation, Builder> {
    public static final ProtoAdapter<KeyAttestation> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<String> certificates;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "publicKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String public_key;

    public KeyAttestation() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ KeyAttestation(String str, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyAttestation(String public_key, List<String> certificates, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(public_key, "public_key");
        Intrinsics.checkNotNullParameter(certificates, "certificates");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.public_key = public_key;
        this.certificates = Internal.immutableCopyOf("certificates", certificates);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.public_key = this.public_key;
        builder.certificates = this.certificates;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof KeyAttestation)) {
            return false;
        }
        KeyAttestation keyAttestation = (KeyAttestation) other;
        return Intrinsics.areEqual(unknownFields(), keyAttestation.unknownFields()) && Intrinsics.areEqual(this.public_key, keyAttestation.public_key) && Intrinsics.areEqual(this.certificates, keyAttestation.certificates);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.public_key.hashCode()) * 37) + this.certificates.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("public_key=" + Internal.sanitize(this.public_key));
        if (!this.certificates.isEmpty()) {
            arrayList2.add("certificates=" + Internal.sanitize(this.certificates));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "KeyAttestation{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KeyAttestation copy$default(KeyAttestation keyAttestation, String str, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = keyAttestation.public_key;
        }
        if ((i & 2) != 0) {
            list = keyAttestation.certificates;
        }
        if ((i & 4) != 0) {
            byteString = keyAttestation.unknownFields();
        }
        return keyAttestation.copy(str, list, byteString);
    }

    public final KeyAttestation copy(String public_key, List<String> certificates, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(public_key, "public_key");
        Intrinsics.checkNotNullParameter(certificates, "certificates");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new KeyAttestation(public_key, certificates, unknownFields);
    }

    /* JADX INFO: compiled from: KeyAttestation.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/KeyAttestation;", "()V", "certificates", "", "", "public_key", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<KeyAttestation, Builder> {
        public String public_key = "";
        public List<String> certificates = CollectionsKt.emptyList();

        public final Builder public_key(String public_key) {
            Intrinsics.checkNotNullParameter(public_key, "public_key");
            this.public_key = public_key;
            return this;
        }

        public final Builder certificates(List<String> certificates) {
            Intrinsics.checkNotNullParameter(certificates, "certificates");
            Internal.checkElementsNotNull(certificates);
            this.certificates = certificates;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public KeyAttestation build() {
            return new KeyAttestation(this.public_key, this.certificates, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: KeyAttestation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/KeyAttestation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/KeyAttestation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/KeyAttestation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ KeyAttestation build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KeyAttestation.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<KeyAttestation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.KeyAttestation$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(KeyAttestation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.public_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.public_key);
                }
                return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.certificates);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, KeyAttestation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.public_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.public_key);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.certificates);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, KeyAttestation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.certificates);
                if (Intrinsics.areEqual(value.public_key, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.public_key);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public KeyAttestation decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new KeyAttestation(strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public KeyAttestation redact(KeyAttestation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return KeyAttestation.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
