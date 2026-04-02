package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff;

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

/* JADX INFO: compiled from: HandoffDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain$Builder;", "discover", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/DiscoverScope;", "connect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/ConnectScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/DiscoverScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/ConnectScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HandoffDomain extends Message<HandoffDomain, Builder> {
    public static final ProtoAdapter<HandoffDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff.ConnectScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final ConnectScope connect;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff.DiscoverScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final DiscoverScope discover;

    public HandoffDomain() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ HandoffDomain(DiscoverScope discoverScope, ConnectScope connectScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : discoverScope, (i & 2) != 0 ? null : connectScope, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandoffDomain(DiscoverScope discoverScope, ConnectScope connectScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.discover = discoverScope;
        this.connect = connectScope;
        if (Internal.countNonNull(discoverScope, connectScope) > 1) {
            throw new IllegalArgumentException("At most one of discover, connect may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.discover = this.discover;
        builder.connect = this.connect;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HandoffDomain)) {
            return false;
        }
        HandoffDomain handoffDomain = (HandoffDomain) other;
        return Intrinsics.areEqual(unknownFields(), handoffDomain.unknownFields()) && Intrinsics.areEqual(this.discover, handoffDomain.discover) && Intrinsics.areEqual(this.connect, handoffDomain.connect);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DiscoverScope discoverScope = this.discover;
        int iHashCode2 = (iHashCode + (discoverScope != null ? discoverScope.hashCode() : 0)) * 37;
        ConnectScope connectScope = this.connect;
        int iHashCode3 = iHashCode2 + (connectScope != null ? connectScope.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.discover != null) {
            arrayList.add("discover=" + this.discover);
        }
        if (this.connect != null) {
            arrayList.add("connect=" + this.connect);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "HandoffDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HandoffDomain copy$default(HandoffDomain handoffDomain, DiscoverScope discoverScope, ConnectScope connectScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            discoverScope = handoffDomain.discover;
        }
        if ((i & 2) != 0) {
            connectScope = handoffDomain.connect;
        }
        if ((i & 4) != 0) {
            byteString = handoffDomain.unknownFields();
        }
        return handoffDomain.copy(discoverScope, connectScope, byteString);
    }

    public final HandoffDomain copy(DiscoverScope discover, ConnectScope connect, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HandoffDomain(discover, connect, unknownFields);
    }

    /* JADX INFO: compiled from: HandoffDomain.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;", "()V", "connect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/ConnectScope;", "discover", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/DiscoverScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HandoffDomain, Builder> {
        public ConnectScope connect;
        public DiscoverScope discover;

        public final Builder discover(DiscoverScope discover) {
            this.discover = discover;
            this.connect = null;
            return this;
        }

        public final Builder connect(ConnectScope connect) {
            this.connect = connect;
            this.discover = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HandoffDomain build() {
            return new HandoffDomain(this.discover, this.connect, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HandoffDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HandoffDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HandoffDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HandoffDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff.HandoffDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HandoffDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + DiscoverScope.ADAPTER.encodedSizeWithTag(1, value.discover) + ConnectScope.ADAPTER.encodedSizeWithTag(2, value.connect);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HandoffDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DiscoverScope.ADAPTER.encodeWithTag(writer, 1, value.discover);
                ConnectScope.ADAPTER.encodeWithTag(writer, 2, value.connect);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HandoffDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ConnectScope.ADAPTER.encodeWithTag(writer, 2, value.connect);
                DiscoverScope.ADAPTER.encodeWithTag(writer, 1, value.discover);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HandoffDomain redact(HandoffDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DiscoverScope discoverScope = value.discover;
                DiscoverScope discoverScopeRedact = discoverScope != null ? DiscoverScope.ADAPTER.redact(discoverScope) : null;
                ConnectScope connectScope = value.connect;
                return value.copy(discoverScopeRedact, connectScope != null ? ConnectScope.ADAPTER.redact(connectScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HandoffDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DiscoverScope discoverScopeDecode = null;
                ConnectScope connectScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new HandoffDomain(discoverScopeDecode, connectScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        discoverScopeDecode = DiscoverScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        connectScopeDecode = ConnectScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
