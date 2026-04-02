package com.stripe.proto.api.gator;

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

/* JADX INFO: compiled from: ProxySpanPb.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJF\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/gator/ProxySpanPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;", "origin_role", "", "origin_id", "origin_ip", "trace", "Lcom/stripe/proto/api/gator/ReportedSpanPb;", "client_summary", "Lcom/stripe/proto/api/gator/ClientSummaryPb;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/ReportedSpanPb;Lcom/stripe/proto/api/gator/ClientSummaryPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxySpanPb extends Message<ProxySpanPb, Builder> {
    public static final ProtoAdapter<ProxySpanPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.gator.ClientSummaryPb#ADAPTER", jsonName = "clientSummary", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final ClientSummaryPb client_summary;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String origin_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String origin_ip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originRole", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String origin_role;

    @WireField(adapter = "com.stripe.proto.api.gator.ReportedSpanPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final ReportedSpanPb trace;

    public ProxySpanPb() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ ProxySpanPb(String str, String str2, String str3, ReportedSpanPb reportedSpanPb, ClientSummaryPb clientSummaryPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : reportedSpanPb, (i & 16) != 0 ? null : clientSummaryPb, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProxySpanPb(String origin_role, String origin_id, String origin_ip, ReportedSpanPb reportedSpanPb, ClientSummaryPb clientSummaryPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(origin_role, "origin_role");
        Intrinsics.checkNotNullParameter(origin_id, "origin_id");
        Intrinsics.checkNotNullParameter(origin_ip, "origin_ip");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.origin_role = origin_role;
        this.origin_id = origin_id;
        this.origin_ip = origin_ip;
        this.trace = reportedSpanPb;
        this.client_summary = clientSummaryPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.origin_role = this.origin_role;
        builder.origin_id = this.origin_id;
        builder.origin_ip = this.origin_ip;
        builder.trace = this.trace;
        builder.client_summary = this.client_summary;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ProxySpanPb)) {
            return false;
        }
        ProxySpanPb proxySpanPb = (ProxySpanPb) other;
        return Intrinsics.areEqual(unknownFields(), proxySpanPb.unknownFields()) && Intrinsics.areEqual(this.origin_role, proxySpanPb.origin_role) && Intrinsics.areEqual(this.origin_id, proxySpanPb.origin_id) && Intrinsics.areEqual(this.origin_ip, proxySpanPb.origin_ip) && Intrinsics.areEqual(this.trace, proxySpanPb.trace) && Intrinsics.areEqual(this.client_summary, proxySpanPb.client_summary);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.origin_role.hashCode()) * 37) + this.origin_id.hashCode()) * 37) + this.origin_ip.hashCode()) * 37;
        ReportedSpanPb reportedSpanPb = this.trace;
        int iHashCode2 = (iHashCode + (reportedSpanPb != null ? reportedSpanPb.hashCode() : 0)) * 37;
        ClientSummaryPb clientSummaryPb = this.client_summary;
        int iHashCode3 = iHashCode2 + (clientSummaryPb != null ? clientSummaryPb.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("origin_role=" + Internal.sanitize(this.origin_role));
        arrayList2.add("origin_id=" + Internal.sanitize(this.origin_id));
        arrayList2.add("origin_ip=" + Internal.sanitize(this.origin_ip));
        if (this.trace != null) {
            arrayList2.add("trace=" + this.trace);
        }
        if (this.client_summary != null) {
            arrayList2.add("client_summary=" + this.client_summary);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ProxySpanPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ProxySpanPb copy$default(ProxySpanPb proxySpanPb, String str, String str2, String str3, ReportedSpanPb reportedSpanPb, ClientSummaryPb clientSummaryPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = proxySpanPb.origin_role;
        }
        if ((i & 2) != 0) {
            str2 = proxySpanPb.origin_id;
        }
        if ((i & 4) != 0) {
            str3 = proxySpanPb.origin_ip;
        }
        if ((i & 8) != 0) {
            reportedSpanPb = proxySpanPb.trace;
        }
        if ((i & 16) != 0) {
            clientSummaryPb = proxySpanPb.client_summary;
        }
        if ((i & 32) != 0) {
            byteString = proxySpanPb.unknownFields();
        }
        ClientSummaryPb clientSummaryPb2 = clientSummaryPb;
        ByteString byteString2 = byteString;
        return proxySpanPb.copy(str, str2, str3, reportedSpanPb, clientSummaryPb2, byteString2);
    }

    public final ProxySpanPb copy(String origin_role, String origin_id, String origin_ip, ReportedSpanPb trace, ClientSummaryPb client_summary, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(origin_role, "origin_role");
        Intrinsics.checkNotNullParameter(origin_id, "origin_id");
        Intrinsics.checkNotNullParameter(origin_ip, "origin_ip");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ProxySpanPb(origin_role, origin_id, origin_ip, trace, client_summary, unknownFields);
    }

    /* JADX INFO: compiled from: ProxySpanPb.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "()V", "client_summary", "Lcom/stripe/proto/api/gator/ClientSummaryPb;", "origin_id", "", "origin_ip", "origin_role", "trace", "Lcom/stripe/proto/api/gator/ReportedSpanPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ProxySpanPb, Builder> {
        public ClientSummaryPb client_summary;
        public ReportedSpanPb trace;
        public String origin_role = "";
        public String origin_id = "";
        public String origin_ip = "";

        public final Builder origin_role(String origin_role) {
            Intrinsics.checkNotNullParameter(origin_role, "origin_role");
            this.origin_role = origin_role;
            return this;
        }

        public final Builder origin_id(String origin_id) {
            Intrinsics.checkNotNullParameter(origin_id, "origin_id");
            this.origin_id = origin_id;
            return this;
        }

        public final Builder origin_ip(String origin_ip) {
            Intrinsics.checkNotNullParameter(origin_ip, "origin_ip");
            this.origin_ip = origin_ip;
            return this;
        }

        public final Builder trace(ReportedSpanPb trace) {
            this.trace = trace;
            return this;
        }

        public final Builder client_summary(ClientSummaryPb client_summary) {
            this.client_summary = client_summary;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ProxySpanPb build() {
            return new ProxySpanPb(this.origin_role, this.origin_id, this.origin_ip, this.trace, this.client_summary, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ProxySpanPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/gator/ProxySpanPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ProxySpanPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProxySpanPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ProxySpanPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.gator.ProxySpanPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ProxySpanPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.origin_role, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.origin_role);
                }
                if (!Intrinsics.areEqual(value.origin_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.origin_id);
                }
                if (!Intrinsics.areEqual(value.origin_ip, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.origin_ip);
                }
                if (value.trace != null) {
                    size += ReportedSpanPb.ADAPTER.encodedSizeWithTag(4, value.trace);
                }
                return value.client_summary != null ? size + ClientSummaryPb.ADAPTER.encodedSizeWithTag(5, value.client_summary) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ProxySpanPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.origin_role, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.origin_role);
                }
                if (!Intrinsics.areEqual(value.origin_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.origin_id);
                }
                if (!Intrinsics.areEqual(value.origin_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.origin_ip);
                }
                if (value.trace != null) {
                    ReportedSpanPb.ADAPTER.encodeWithTag(writer, 4, value.trace);
                }
                if (value.client_summary != null) {
                    ClientSummaryPb.ADAPTER.encodeWithTag(writer, 5, value.client_summary);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ProxySpanPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.client_summary != null) {
                    ClientSummaryPb.ADAPTER.encodeWithTag(writer, 5, value.client_summary);
                }
                if (value.trace != null) {
                    ReportedSpanPb.ADAPTER.encodeWithTag(writer, 4, value.trace);
                }
                if (!Intrinsics.areEqual(value.origin_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.origin_ip);
                }
                if (!Intrinsics.areEqual(value.origin_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.origin_id);
                }
                if (Intrinsics.areEqual(value.origin_role, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.origin_role);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ProxySpanPb redact(ProxySpanPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReportedSpanPb reportedSpanPb = value.trace;
                ReportedSpanPb reportedSpanPbRedact = reportedSpanPb != null ? ReportedSpanPb.ADAPTER.redact(reportedSpanPb) : null;
                ClientSummaryPb clientSummaryPb = value.client_summary;
                return ProxySpanPb.copy$default(value, null, null, null, reportedSpanPbRedact, clientSummaryPb != null ? ClientSummaryPb.ADAPTER.redact(clientSummaryPb) : null, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ProxySpanPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                ReportedSpanPb reportedSpanPbDecode = null;
                ClientSummaryPb clientSummaryPbDecode = null;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ProxySpanPb(strDecode, strDecode3, strDecode2, reportedSpanPbDecode, clientSummaryPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        reportedSpanPbDecode = ReportedSpanPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        clientSummaryPbDecode = ClientSummaryPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
