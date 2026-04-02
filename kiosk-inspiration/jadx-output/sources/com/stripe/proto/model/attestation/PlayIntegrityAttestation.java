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

/* JADX INFO: compiled from: PlayIntegrityAttestation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation$Builder;", "jws", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PlayIntegrityAttestation extends Message<PlayIntegrityAttestation, Builder> {
    public static final ProtoAdapter<PlayIntegrityAttestation> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String jws;

    /* JADX WARN: Multi-variable type inference failed */
    public PlayIntegrityAttestation() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ PlayIntegrityAttestation(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayIntegrityAttestation(String jws, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(jws, "jws");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.jws = jws;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.jws = this.jws;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PlayIntegrityAttestation)) {
            return false;
        }
        PlayIntegrityAttestation playIntegrityAttestation = (PlayIntegrityAttestation) other;
        return Intrinsics.areEqual(unknownFields(), playIntegrityAttestation.unknownFields()) && Intrinsics.areEqual(this.jws, playIntegrityAttestation.jws);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.jws.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("jws=" + Internal.sanitize(this.jws));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PlayIntegrityAttestation{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PlayIntegrityAttestation copy$default(PlayIntegrityAttestation playIntegrityAttestation, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = playIntegrityAttestation.jws;
        }
        if ((i & 2) != 0) {
            byteString = playIntegrityAttestation.unknownFields();
        }
        return playIntegrityAttestation.copy(str, byteString);
    }

    public final PlayIntegrityAttestation copy(String jws, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(jws, "jws");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PlayIntegrityAttestation(jws, unknownFields);
    }

    /* JADX INFO: compiled from: PlayIntegrityAttestation.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;", "()V", "jws", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PlayIntegrityAttestation, Builder> {
        public String jws = "";

        public final Builder jws(String jws) {
            Intrinsics.checkNotNullParameter(jws, "jws");
            this.jws = jws;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PlayIntegrityAttestation build() {
            return new PlayIntegrityAttestation(this.jws, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PlayIntegrityAttestation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PlayIntegrityAttestation build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PlayIntegrityAttestation.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PlayIntegrityAttestation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.PlayIntegrityAttestation$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PlayIntegrityAttestation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return !Intrinsics.areEqual(value.jws, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.jws) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PlayIntegrityAttestation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.jws, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.jws);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PlayIntegrityAttestation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (Intrinsics.areEqual(value.jws, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.jws);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PlayIntegrityAttestation redact(PlayIntegrityAttestation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return PlayIntegrityAttestation.copy$default(value, null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PlayIntegrityAttestation decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PlayIntegrityAttestation(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
