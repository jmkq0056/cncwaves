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

/* JADX INFO: compiled from: AttestationCryptogram.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/attestation/AttestationCryptogram;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;", "inner_key_id", "", "pdk_key_id", "session_token", "expiration", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationCryptogram extends Message<AttestationCryptogram, Builder> {
    public static final ProtoAdapter<AttestationCryptogram> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long expiration;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "innerKeyId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String inner_key_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "pdkKeyId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String pdk_key_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sessionToken", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String session_token;

    public AttestationCryptogram() {
        this(null, null, null, 0L, null, 31, null);
    }

    public /* synthetic */ AttestationCryptogram(String str, String str2, String str3, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttestationCryptogram(String inner_key_id, String pdk_key_id, String session_token, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(inner_key_id, "inner_key_id");
        Intrinsics.checkNotNullParameter(pdk_key_id, "pdk_key_id");
        Intrinsics.checkNotNullParameter(session_token, "session_token");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.inner_key_id = inner_key_id;
        this.pdk_key_id = pdk_key_id;
        this.session_token = session_token;
        this.expiration = j;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.inner_key_id = this.inner_key_id;
        builder.pdk_key_id = this.pdk_key_id;
        builder.session_token = this.session_token;
        builder.expiration = this.expiration;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AttestationCryptogram)) {
            return false;
        }
        AttestationCryptogram attestationCryptogram = (AttestationCryptogram) other;
        return Intrinsics.areEqual(unknownFields(), attestationCryptogram.unknownFields()) && Intrinsics.areEqual(this.inner_key_id, attestationCryptogram.inner_key_id) && Intrinsics.areEqual(this.pdk_key_id, attestationCryptogram.pdk_key_id) && Intrinsics.areEqual(this.session_token, attestationCryptogram.session_token) && this.expiration == attestationCryptogram.expiration;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.inner_key_id.hashCode()) * 37) + this.pdk_key_id.hashCode()) * 37) + this.session_token.hashCode()) * 37) + Long.hashCode(this.expiration);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("inner_key_id=" + Internal.sanitize(this.inner_key_id));
        arrayList2.add("pdk_key_id=" + Internal.sanitize(this.pdk_key_id));
        arrayList2.add("session_token=" + Internal.sanitize(this.session_token));
        arrayList2.add("expiration=" + this.expiration);
        return CollectionsKt.joinToString$default(arrayList, ", ", "AttestationCryptogram{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AttestationCryptogram copy$default(AttestationCryptogram attestationCryptogram, String str, String str2, String str3, long j, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = attestationCryptogram.inner_key_id;
        }
        if ((i & 2) != 0) {
            str2 = attestationCryptogram.pdk_key_id;
        }
        if ((i & 4) != 0) {
            str3 = attestationCryptogram.session_token;
        }
        if ((i & 8) != 0) {
            j = attestationCryptogram.expiration;
        }
        if ((i & 16) != 0) {
            byteString = attestationCryptogram.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str3;
        return attestationCryptogram.copy(str, str2, str4, j, byteString2);
    }

    public final AttestationCryptogram copy(String inner_key_id, String pdk_key_id, String session_token, long expiration, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(inner_key_id, "inner_key_id");
        Intrinsics.checkNotNullParameter(pdk_key_id, "pdk_key_id");
        Intrinsics.checkNotNullParameter(session_token, "session_token");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AttestationCryptogram(inner_key_id, pdk_key_id, session_token, expiration, unknownFields);
    }

    /* JADX INFO: compiled from: AttestationCryptogram.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/AttestationCryptogram;", "()V", "expiration", "", "inner_key_id", "", "pdk_key_id", "session_token", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AttestationCryptogram, Builder> {
        public long expiration;
        public String inner_key_id = "";
        public String pdk_key_id = "";
        public String session_token = "";

        public final Builder inner_key_id(String inner_key_id) {
            Intrinsics.checkNotNullParameter(inner_key_id, "inner_key_id");
            this.inner_key_id = inner_key_id;
            return this;
        }

        public final Builder pdk_key_id(String pdk_key_id) {
            Intrinsics.checkNotNullParameter(pdk_key_id, "pdk_key_id");
            this.pdk_key_id = pdk_key_id;
            return this;
        }

        public final Builder session_token(String session_token) {
            Intrinsics.checkNotNullParameter(session_token, "session_token");
            this.session_token = session_token;
            return this;
        }

        public final Builder expiration(long expiration) {
            this.expiration = expiration;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AttestationCryptogram build() {
            return new AttestationCryptogram(this.inner_key_id, this.pdk_key_id, this.session_token, this.expiration, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AttestationCryptogram.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/AttestationCryptogram$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/AttestationCryptogram;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/AttestationCryptogram$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AttestationCryptogram build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AttestationCryptogram.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AttestationCryptogram>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.AttestationCryptogram$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AttestationCryptogram value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.inner_key_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.inner_key_id);
                }
                if (!Intrinsics.areEqual(value.pdk_key_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.pdk_key_id);
                }
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.session_token);
                }
                return value.expiration != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.expiration)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AttestationCryptogram value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.inner_key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.inner_key_id);
                }
                if (!Intrinsics.areEqual(value.pdk_key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.pdk_key_id);
                }
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.session_token);
                }
                if (value.expiration != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.expiration));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AttestationCryptogram value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.expiration != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.expiration));
                }
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.session_token);
                }
                if (!Intrinsics.areEqual(value.pdk_key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.pdk_key_id);
                }
                if (Intrinsics.areEqual(value.inner_key_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.inner_key_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AttestationCryptogram redact(AttestationCryptogram value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return AttestationCryptogram.copy$default(value, null, null, null, 0L, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AttestationCryptogram decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                long jLongValue = 0;
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AttestationCryptogram(strDecode, strDecode2, strDecode3, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
