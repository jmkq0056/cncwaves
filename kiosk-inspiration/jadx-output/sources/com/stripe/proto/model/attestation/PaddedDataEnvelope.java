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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: PaddedDataEnvelope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/attestation/PaddedDataEnvelope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/PaddedDataEnvelope$Builder;", "pad", "", "encrypted_padded_data", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaddedDataEnvelope extends Message<PaddedDataEnvelope, Builder> {
    public static final ProtoAdapter<PaddedDataEnvelope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "encryptedPaddedData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String encrypted_padded_data;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String pad;

    public PaddedDataEnvelope() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ PaddedDataEnvelope(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaddedDataEnvelope(String pad, String encrypted_padded_data, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(pad, "pad");
        Intrinsics.checkNotNullParameter(encrypted_padded_data, "encrypted_padded_data");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pad = pad;
        this.encrypted_padded_data = encrypted_padded_data;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pad = this.pad;
        builder.encrypted_padded_data = this.encrypted_padded_data;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaddedDataEnvelope)) {
            return false;
        }
        PaddedDataEnvelope paddedDataEnvelope = (PaddedDataEnvelope) other;
        return Intrinsics.areEqual(unknownFields(), paddedDataEnvelope.unknownFields()) && Intrinsics.areEqual(this.pad, paddedDataEnvelope.pad) && Intrinsics.areEqual(this.encrypted_padded_data, paddedDataEnvelope.encrypted_padded_data);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.pad.hashCode()) * 37) + this.encrypted_padded_data.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("pad=" + Internal.sanitize(this.pad));
        arrayList2.add("encrypted_padded_data=" + Internal.sanitize(this.encrypted_padded_data));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaddedDataEnvelope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaddedDataEnvelope copy$default(PaddedDataEnvelope paddedDataEnvelope, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paddedDataEnvelope.pad;
        }
        if ((i & 2) != 0) {
            str2 = paddedDataEnvelope.encrypted_padded_data;
        }
        if ((i & 4) != 0) {
            byteString = paddedDataEnvelope.unknownFields();
        }
        return paddedDataEnvelope.copy(str, str2, byteString);
    }

    public final PaddedDataEnvelope copy(String pad, String encrypted_padded_data, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(pad, "pad");
        Intrinsics.checkNotNullParameter(encrypted_padded_data, "encrypted_padded_data");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaddedDataEnvelope(pad, encrypted_padded_data, unknownFields);
    }

    /* JADX INFO: compiled from: PaddedDataEnvelope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/attestation/PaddedDataEnvelope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/PaddedDataEnvelope;", "()V", "encrypted_padded_data", "", "pad", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaddedDataEnvelope, Builder> {
        public String pad = "";
        public String encrypted_padded_data = "";

        public final Builder pad(String pad) {
            Intrinsics.checkNotNullParameter(pad, "pad");
            this.pad = pad;
            return this;
        }

        public final Builder encrypted_padded_data(String encrypted_padded_data) {
            Intrinsics.checkNotNullParameter(encrypted_padded_data, "encrypted_padded_data");
            this.encrypted_padded_data = encrypted_padded_data;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaddedDataEnvelope build() {
            return new PaddedDataEnvelope(this.pad, this.encrypted_padded_data, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaddedDataEnvelope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/PaddedDataEnvelope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/PaddedDataEnvelope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/PaddedDataEnvelope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaddedDataEnvelope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaddedDataEnvelope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaddedDataEnvelope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.PaddedDataEnvelope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaddedDataEnvelope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.pad, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.pad);
                }
                return !Intrinsics.areEqual(value.encrypted_padded_data, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.encrypted_padded_data) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaddedDataEnvelope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.pad, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.pad);
                }
                if (!Intrinsics.areEqual(value.encrypted_padded_data, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.encrypted_padded_data);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaddedDataEnvelope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.encrypted_padded_data, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.encrypted_padded_data);
                }
                if (Intrinsics.areEqual(value.pad, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.pad);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaddedDataEnvelope redact(PaddedDataEnvelope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return PaddedDataEnvelope.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaddedDataEnvelope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PaddedDataEnvelope(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
