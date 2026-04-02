package com.stripe.proto.api.armada;

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

/* JADX INFO: compiled from: ReaderMetadata.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ.\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/armada/ReaderMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/ReaderMetadata$Builder;", "label", "", "country", "merchant_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderMetadata extends Message<ReaderMetadata, Builder> {
    public static final ProtoAdapter<ReaderMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String country;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String label;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "merchantId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String merchant_id;

    public ReaderMetadata() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ReaderMetadata(String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderMetadata(String label, String country, String merchant_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(country, "country");
        Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.label = label;
        this.country = country;
        this.merchant_id = merchant_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.label = this.label;
        builder.country = this.country;
        builder.merchant_id = this.merchant_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderMetadata)) {
            return false;
        }
        ReaderMetadata readerMetadata = (ReaderMetadata) other;
        return Intrinsics.areEqual(unknownFields(), readerMetadata.unknownFields()) && Intrinsics.areEqual(this.label, readerMetadata.label) && Intrinsics.areEqual(this.country, readerMetadata.country) && Intrinsics.areEqual(this.merchant_id, readerMetadata.merchant_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.label.hashCode()) * 37) + this.country.hashCode()) * 37) + this.merchant_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("label=" + Internal.sanitize(this.label));
        arrayList2.add("country=" + Internal.sanitize(this.country));
        arrayList2.add("merchant_id=" + Internal.sanitize(this.merchant_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderMetadata copy$default(ReaderMetadata readerMetadata, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerMetadata.label;
        }
        if ((i & 2) != 0) {
            str2 = readerMetadata.country;
        }
        if ((i & 4) != 0) {
            str3 = readerMetadata.merchant_id;
        }
        if ((i & 8) != 0) {
            byteString = readerMetadata.unknownFields();
        }
        return readerMetadata.copy(str, str2, str3, byteString);
    }

    public final ReaderMetadata copy(String label, String country, String merchant_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(country, "country");
        Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderMetadata(label, country, merchant_id, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderMetadata.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/ReaderMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/ReaderMetadata;", "()V", "country", "", "label", "merchant_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderMetadata, Builder> {
        public String label = "";
        public String country = "";
        public String merchant_id = "";

        public final Builder label(String label) {
            Intrinsics.checkNotNullParameter(label, "label");
            this.label = label;
            return this;
        }

        public final Builder country(String country) {
            Intrinsics.checkNotNullParameter(country, "country");
            this.country = country;
            return this;
        }

        public final Builder merchant_id(String merchant_id) {
            Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
            this.merchant_id = merchant_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderMetadata build() {
            return new ReaderMetadata(this.label, this.country, this.merchant_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/ReaderMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/ReaderMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/ReaderMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.ReaderMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.label, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.label);
                }
                if (!Intrinsics.areEqual(value.country, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.country);
                }
                return !Intrinsics.areEqual(value.merchant_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.merchant_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.label, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.label);
                }
                if (!Intrinsics.areEqual(value.country, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.country);
                }
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.merchant_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.merchant_id);
                }
                if (!Intrinsics.areEqual(value.country, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.country);
                }
                if (Intrinsics.areEqual(value.label, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.label);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderMetadata redact(ReaderMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReaderMetadata.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReaderMetadata(strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
