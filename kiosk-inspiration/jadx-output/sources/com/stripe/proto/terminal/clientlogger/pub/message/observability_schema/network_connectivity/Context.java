package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity;

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

/* JADX INFO: compiled from: Context.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;", "wifi", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;", "ethernet", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;", "cellular", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Context extends Message<Context, Builder> {
    public static final ProtoAdapter<Context> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.CellularContext#ADAPTER", oneofName = "context", schemaIndex = 2, tag = 3)
    public final CellularContext cellular;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.EthernetContext#ADAPTER", oneofName = "context", schemaIndex = 1, tag = 2)
    public final EthernetContext ethernet;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiContext#ADAPTER", oneofName = "context", schemaIndex = 0, tag = 1)
    public final WifiContext wifi;

    public Context() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ Context(WifiContext wifiContext, EthernetContext ethernetContext, CellularContext cellularContext, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : wifiContext, (i & 2) != 0 ? null : ethernetContext, (i & 4) != 0 ? null : cellularContext, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Context(WifiContext wifiContext, EthernetContext ethernetContext, CellularContext cellularContext, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.wifi = wifiContext;
        this.ethernet = ethernetContext;
        this.cellular = cellularContext;
        if (Internal.countNonNull(wifiContext, ethernetContext, cellularContext) > 1) {
            throw new IllegalArgumentException("At most one of wifi, ethernet, cellular may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.wifi = this.wifi;
        builder.ethernet = this.ethernet;
        builder.cellular = this.cellular;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Context)) {
            return false;
        }
        Context context = (Context) other;
        return Intrinsics.areEqual(unknownFields(), context.unknownFields()) && Intrinsics.areEqual(this.wifi, context.wifi) && Intrinsics.areEqual(this.ethernet, context.ethernet) && Intrinsics.areEqual(this.cellular, context.cellular);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        WifiContext wifiContext = this.wifi;
        int iHashCode2 = (iHashCode + (wifiContext != null ? wifiContext.hashCode() : 0)) * 37;
        EthernetContext ethernetContext = this.ethernet;
        int iHashCode3 = (iHashCode2 + (ethernetContext != null ? ethernetContext.hashCode() : 0)) * 37;
        CellularContext cellularContext = this.cellular;
        int iHashCode4 = iHashCode3 + (cellularContext != null ? cellularContext.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.wifi != null) {
            arrayList.add("wifi=" + this.wifi);
        }
        if (this.ethernet != null) {
            arrayList.add("ethernet=" + this.ethernet);
        }
        if (this.cellular != null) {
            arrayList.add("cellular=" + this.cellular);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Context{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Context copy$default(Context context, WifiContext wifiContext, EthernetContext ethernetContext, CellularContext cellularContext, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            wifiContext = context.wifi;
        }
        if ((i & 2) != 0) {
            ethernetContext = context.ethernet;
        }
        if ((i & 4) != 0) {
            cellularContext = context.cellular;
        }
        if ((i & 8) != 0) {
            byteString = context.unknownFields();
        }
        return context.copy(wifiContext, ethernetContext, cellularContext, byteString);
    }

    public final Context copy(WifiContext wifi, EthernetContext ethernet, CellularContext cellular, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Context(wifi, ethernet, cellular, unknownFields);
    }

    /* JADX INFO: compiled from: Context.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;", "()V", "cellular", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;", "ethernet", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;", "wifi", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Context, Builder> {
        public CellularContext cellular;
        public EthernetContext ethernet;
        public WifiContext wifi;

        public final Builder wifi(WifiContext wifi) {
            this.wifi = wifi;
            this.ethernet = null;
            this.cellular = null;
            return this;
        }

        public final Builder ethernet(EthernetContext ethernet) {
            this.ethernet = ethernet;
            this.wifi = null;
            this.cellular = null;
            return this;
        }

        public final Builder cellular(CellularContext cellular) {
            this.cellular = cellular;
            this.wifi = null;
            this.ethernet = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Context build() {
            return new Context(this.wifi, this.ethernet, this.cellular, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Context.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Context build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Context.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Context>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.Context$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Context value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + WifiContext.ADAPTER.encodedSizeWithTag(1, value.wifi) + EthernetContext.ADAPTER.encodedSizeWithTag(2, value.ethernet) + CellularContext.ADAPTER.encodedSizeWithTag(3, value.cellular);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Context value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                WifiContext.ADAPTER.encodeWithTag(writer, 1, value.wifi);
                EthernetContext.ADAPTER.encodeWithTag(writer, 2, value.ethernet);
                CellularContext.ADAPTER.encodeWithTag(writer, 3, value.cellular);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Context value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CellularContext.ADAPTER.encodeWithTag(writer, 3, value.cellular);
                EthernetContext.ADAPTER.encodeWithTag(writer, 2, value.ethernet);
                WifiContext.ADAPTER.encodeWithTag(writer, 1, value.wifi);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Context redact(Context value) {
                Intrinsics.checkNotNullParameter(value, "value");
                WifiContext wifiContext = value.wifi;
                WifiContext wifiContextRedact = wifiContext != null ? WifiContext.ADAPTER.redact(wifiContext) : null;
                EthernetContext ethernetContext = value.ethernet;
                EthernetContext ethernetContextRedact = ethernetContext != null ? EthernetContext.ADAPTER.redact(ethernetContext) : null;
                CellularContext cellularContext = value.cellular;
                return value.copy(wifiContextRedact, ethernetContextRedact, cellularContext != null ? CellularContext.ADAPTER.redact(cellularContext) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Context decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                WifiContext wifiContextDecode = null;
                EthernetContext ethernetContextDecode = null;
                CellularContext cellularContextDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Context(wifiContextDecode, ethernetContextDecode, cellularContextDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        wifiContextDecode = WifiContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        ethernetContextDecode = EthernetContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        cellularContextDecode = CellularContext.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
