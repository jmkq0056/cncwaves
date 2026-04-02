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

/* JADX INFO: compiled from: ReportEventRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/gator/ReportEventRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/gator/ReportEventRequest$Builder;", "proxy_events", "", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReportEventRequest extends Message<ReportEventRequest, Builder> {
    public static final ProtoAdapter<ReportEventRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.gator.ProxyEventPb#ADAPTER", jsonName = "proxyEvents", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<ProxyEventPb> proxy_events;

    /* JADX WARN: Multi-variable type inference failed */
    public ReportEventRequest() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ReportEventRequest(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportEventRequest(List<ProxyEventPb> proxy_events, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(proxy_events, "proxy_events");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.proxy_events = Internal.immutableCopyOf("proxy_events", proxy_events);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.proxy_events = this.proxy_events;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReportEventRequest)) {
            return false;
        }
        ReportEventRequest reportEventRequest = (ReportEventRequest) other;
        return Intrinsics.areEqual(unknownFields(), reportEventRequest.unknownFields()) && Intrinsics.areEqual(this.proxy_events, reportEventRequest.proxy_events);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.proxy_events.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.proxy_events.isEmpty()) {
            arrayList.add("proxy_events=" + this.proxy_events);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReportEventRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReportEventRequest copy$default(ReportEventRequest reportEventRequest, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = reportEventRequest.proxy_events;
        }
        if ((i & 2) != 0) {
            byteString = reportEventRequest.unknownFields();
        }
        return reportEventRequest.copy(list, byteString);
    }

    public final ReportEventRequest copy(List<ProxyEventPb> proxy_events, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(proxy_events, "proxy_events");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReportEventRequest(proxy_events, unknownFields);
    }

    /* JADX INFO: compiled from: ReportEventRequest.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/gator/ReportEventRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/gator/ReportEventRequest;", "()V", "proxy_events", "", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReportEventRequest, Builder> {
        public List<ProxyEventPb> proxy_events = CollectionsKt.emptyList();

        public final Builder proxy_events(List<ProxyEventPb> proxy_events) {
            Intrinsics.checkNotNullParameter(proxy_events, "proxy_events");
            Internal.checkElementsNotNull(proxy_events);
            this.proxy_events = proxy_events;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReportEventRequest build() {
            return new ReportEventRequest(this.proxy_events, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReportEventRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/gator/ReportEventRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/gator/ReportEventRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/gator/ReportEventRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReportEventRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReportEventRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReportEventRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.gator.ReportEventRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReportEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProxyEventPb.ADAPTER.asRepeated().encodedSizeWithTag(1, value.proxy_events);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReportEventRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProxyEventPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.proxy_events);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReportEventRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProxyEventPb.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.proxy_events);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReportEventRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReportEventRequest(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ProxyEventPb.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReportEventRequest redact(ReportEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.proxy_events, ProxyEventPb.ADAPTER), ByteString.EMPTY);
            }
        };
    }
}
