package com.stripe.proto.terminal.clientlogger.pub.api;

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

/* JADX INFO: compiled from: ClientSummaryPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb$Builder;", "summary_type", "", "summary_message", "Lokio/ByteString;", "unknownFields", "(Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientSummaryPb extends Message<ClientSummaryPb, Builder> {
    public static final ProtoAdapter<ClientSummaryPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "summaryMessage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ByteString summary_message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "summaryType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String summary_type;

    public ClientSummaryPb() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ClientSummaryPb(String str, ByteString byteString, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString, (i & 4) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientSummaryPb(String summary_type, ByteString summary_message, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(summary_type, "summary_type");
        Intrinsics.checkNotNullParameter(summary_message, "summary_message");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.summary_type = summary_type;
        this.summary_message = summary_message;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.summary_type = this.summary_type;
        builder.summary_message = this.summary_message;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ClientSummaryPb)) {
            return false;
        }
        ClientSummaryPb clientSummaryPb = (ClientSummaryPb) other;
        return Intrinsics.areEqual(unknownFields(), clientSummaryPb.unknownFields()) && Intrinsics.areEqual(this.summary_type, clientSummaryPb.summary_type) && Intrinsics.areEqual(this.summary_message, clientSummaryPb.summary_message);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.summary_type.hashCode()) * 37) + this.summary_message.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("summary_type=" + Internal.sanitize(this.summary_type));
        arrayList2.add("summary_message=" + this.summary_message);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ClientSummaryPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ClientSummaryPb copy$default(ClientSummaryPb clientSummaryPb, String str, ByteString byteString, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = clientSummaryPb.summary_type;
        }
        if ((i & 2) != 0) {
            byteString = clientSummaryPb.summary_message;
        }
        if ((i & 4) != 0) {
            byteString2 = clientSummaryPb.unknownFields();
        }
        return clientSummaryPb.copy(str, byteString, byteString2);
    }

    public final ClientSummaryPb copy(String summary_type, ByteString summary_message, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(summary_type, "summary_type");
        Intrinsics.checkNotNullParameter(summary_message, "summary_message");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ClientSummaryPb(summary_type, summary_message, unknownFields);
    }

    /* JADX INFO: compiled from: ClientSummaryPb.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;", "()V", "summary_message", "Lokio/ByteString;", "summary_type", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ClientSummaryPb, Builder> {
        public String summary_type = "";
        public ByteString summary_message = ByteString.EMPTY;

        public final Builder summary_type(String summary_type) {
            Intrinsics.checkNotNullParameter(summary_type, "summary_type");
            this.summary_type = summary_type;
            return this;
        }

        public final Builder summary_message(ByteString summary_message) {
            Intrinsics.checkNotNullParameter(summary_message, "summary_message");
            this.summary_message = summary_message;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ClientSummaryPb build() {
            return new ClientSummaryPb(this.summary_type, this.summary_message, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ClientSummaryPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ClientSummaryPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientSummaryPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ClientSummaryPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.ClientSummaryPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ClientSummaryPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.summary_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.summary_type);
                }
                return !Intrinsics.areEqual(value.summary_message, ByteString.EMPTY) ? size + ProtoAdapter.BYTES.encodedSizeWithTag(2, value.summary_message) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ClientSummaryPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.summary_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.summary_type);
                }
                if (!Intrinsics.areEqual(value.summary_message, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.summary_message);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ClientSummaryPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.summary_message, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.summary_message);
                }
                if (Intrinsics.areEqual(value.summary_type, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.summary_type);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ClientSummaryPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ClientSummaryPb(strDecode, byteStringDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ClientSummaryPb redact(ClientSummaryPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ClientSummaryPb.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
