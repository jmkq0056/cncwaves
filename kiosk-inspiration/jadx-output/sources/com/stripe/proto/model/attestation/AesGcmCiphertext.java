package com.stripe.proto.model.attestation;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: AesGcmCiphertext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007J$\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0004J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/attestation/AesGcmCiphertext;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;", "ciphertext", "Lokio/ByteString;", "initialization_vector", "unknownFields", "(Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AesGcmCiphertext extends Message<AesGcmCiphertext, Builder> {
    public static final ProtoAdapter<AesGcmCiphertext> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ByteString ciphertext;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "initializationVector", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final ByteString initialization_vector;

    public AesGcmCiphertext() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ AesGcmCiphertext(ByteString byteString, ByteString byteString2, ByteString byteString3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ByteString.EMPTY : byteString, (i & 2) != 0 ? ByteString.EMPTY : byteString2, (i & 4) != 0 ? ByteString.EMPTY : byteString3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AesGcmCiphertext(ByteString ciphertext, ByteString initialization_vector, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ciphertext, "ciphertext");
        Intrinsics.checkNotNullParameter(initialization_vector, "initialization_vector");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ciphertext = ciphertext;
        this.initialization_vector = initialization_vector;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ciphertext = this.ciphertext;
        builder.initialization_vector = this.initialization_vector;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AesGcmCiphertext)) {
            return false;
        }
        AesGcmCiphertext aesGcmCiphertext = (AesGcmCiphertext) other;
        return Intrinsics.areEqual(unknownFields(), aesGcmCiphertext.unknownFields()) && Intrinsics.areEqual(this.ciphertext, aesGcmCiphertext.ciphertext) && Intrinsics.areEqual(this.initialization_vector, aesGcmCiphertext.initialization_vector);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.ciphertext.hashCode()) * 37) + this.initialization_vector.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("ciphertext=" + this.ciphertext);
        arrayList2.add("initialization_vector=" + this.initialization_vector);
        return CollectionsKt.joinToString$default(arrayList, ", ", "AesGcmCiphertext{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AesGcmCiphertext copy$default(AesGcmCiphertext aesGcmCiphertext, ByteString byteString, ByteString byteString2, ByteString byteString3, int i, Object obj) {
        if ((i & 1) != 0) {
            byteString = aesGcmCiphertext.ciphertext;
        }
        if ((i & 2) != 0) {
            byteString2 = aesGcmCiphertext.initialization_vector;
        }
        if ((i & 4) != 0) {
            byteString3 = aesGcmCiphertext.unknownFields();
        }
        return aesGcmCiphertext.copy(byteString, byteString2, byteString3);
    }

    public final AesGcmCiphertext copy(ByteString ciphertext, ByteString initialization_vector, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ciphertext, "ciphertext");
        Intrinsics.checkNotNullParameter(initialization_vector, "initialization_vector");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AesGcmCiphertext(ciphertext, initialization_vector, unknownFields);
    }

    /* JADX INFO: compiled from: AesGcmCiphertext.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/AesGcmCiphertext;", "()V", "ciphertext", "Lokio/ByteString;", "initialization_vector", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AesGcmCiphertext, Builder> {
        public ByteString ciphertext = ByteString.EMPTY;
        public ByteString initialization_vector = ByteString.EMPTY;

        public final Builder ciphertext(ByteString ciphertext) {
            Intrinsics.checkNotNullParameter(ciphertext, "ciphertext");
            this.ciphertext = ciphertext;
            return this;
        }

        public final Builder initialization_vector(ByteString initialization_vector) {
            Intrinsics.checkNotNullParameter(initialization_vector, "initialization_vector");
            this.initialization_vector = initialization_vector;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AesGcmCiphertext build() {
            return new AesGcmCiphertext(this.ciphertext, this.initialization_vector, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AesGcmCiphertext.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/AesGcmCiphertext;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/AesGcmCiphertext$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AesGcmCiphertext build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AesGcmCiphertext.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AesGcmCiphertext>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.AesGcmCiphertext$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AesGcmCiphertext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.ciphertext, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(1, value.ciphertext);
                }
                return !Intrinsics.areEqual(value.initialization_vector, ByteString.EMPTY) ? size + ProtoAdapter.BYTES.encodedSizeWithTag(3, value.initialization_vector) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AesGcmCiphertext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.ciphertext, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 1, value.ciphertext);
                }
                if (!Intrinsics.areEqual(value.initialization_vector, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 3, value.initialization_vector);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AesGcmCiphertext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.initialization_vector, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 3, value.initialization_vector);
                }
                if (Intrinsics.areEqual(value.ciphertext, ByteString.EMPTY)) {
                    return;
                }
                ProtoAdapter.BYTES.encodeWithTag(writer, 1, value.ciphertext);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AesGcmCiphertext decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                ByteString byteStringDecode2 = ByteString.EMPTY;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AesGcmCiphertext(byteStringDecode, byteStringDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                    } else if (iNextTag == 3) {
                        byteStringDecode2 = ProtoAdapter.BYTES.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AesGcmCiphertext redact(AesGcmCiphertext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return AesGcmCiphertext.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
