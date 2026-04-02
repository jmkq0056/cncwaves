package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics;

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

/* JADX INFO: compiled from: AnalyticsDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain$Builder;", "user_action", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/UserActionScope;", "wifi_network", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/WifiNetworkScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/UserActionScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/WifiNetworkScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AnalyticsDomain extends Message<AnalyticsDomain, Builder> {
    public static final ProtoAdapter<AnalyticsDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics.UserActionScope#ADAPTER", jsonName = "userAction", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final UserActionScope user_action;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics.WifiNetworkScope#ADAPTER", jsonName = "wifiNetwork", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final WifiNetworkScope wifi_network;

    public AnalyticsDomain() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ AnalyticsDomain(UserActionScope userActionScope, WifiNetworkScope wifiNetworkScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : userActionScope, (i & 2) != 0 ? null : wifiNetworkScope, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticsDomain(UserActionScope userActionScope, WifiNetworkScope wifiNetworkScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.user_action = userActionScope;
        this.wifi_network = wifiNetworkScope;
        if (Internal.countNonNull(userActionScope, wifiNetworkScope) > 1) {
            throw new IllegalArgumentException("At most one of user_action, wifi_network may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.user_action = this.user_action;
        builder.wifi_network = this.wifi_network;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AnalyticsDomain)) {
            return false;
        }
        AnalyticsDomain analyticsDomain = (AnalyticsDomain) other;
        return Intrinsics.areEqual(unknownFields(), analyticsDomain.unknownFields()) && Intrinsics.areEqual(this.user_action, analyticsDomain.user_action) && Intrinsics.areEqual(this.wifi_network, analyticsDomain.wifi_network);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        UserActionScope userActionScope = this.user_action;
        int iHashCode2 = (iHashCode + (userActionScope != null ? userActionScope.hashCode() : 0)) * 37;
        WifiNetworkScope wifiNetworkScope = this.wifi_network;
        int iHashCode3 = iHashCode2 + (wifiNetworkScope != null ? wifiNetworkScope.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.user_action != null) {
            arrayList.add("user_action=" + this.user_action);
        }
        if (this.wifi_network != null) {
            arrayList.add("wifi_network=" + this.wifi_network);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AnalyticsDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AnalyticsDomain copy$default(AnalyticsDomain analyticsDomain, UserActionScope userActionScope, WifiNetworkScope wifiNetworkScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            userActionScope = analyticsDomain.user_action;
        }
        if ((i & 2) != 0) {
            wifiNetworkScope = analyticsDomain.wifi_network;
        }
        if ((i & 4) != 0) {
            byteString = analyticsDomain.unknownFields();
        }
        return analyticsDomain.copy(userActionScope, wifiNetworkScope, byteString);
    }

    public final AnalyticsDomain copy(UserActionScope user_action, WifiNetworkScope wifi_network, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AnalyticsDomain(user_action, wifi_network, unknownFields);
    }

    /* JADX INFO: compiled from: AnalyticsDomain.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;", "()V", "user_action", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/UserActionScope;", "wifi_network", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/WifiNetworkScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AnalyticsDomain, Builder> {
        public UserActionScope user_action;
        public WifiNetworkScope wifi_network;

        public final Builder user_action(UserActionScope user_action) {
            this.user_action = user_action;
            this.wifi_network = null;
            return this;
        }

        public final Builder wifi_network(WifiNetworkScope wifi_network) {
            this.wifi_network = wifi_network;
            this.user_action = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AnalyticsDomain build() {
            return new AnalyticsDomain(this.user_action, this.wifi_network, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AnalyticsDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AnalyticsDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AnalyticsDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AnalyticsDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics.AnalyticsDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AnalyticsDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + UserActionScope.ADAPTER.encodedSizeWithTag(1, value.user_action) + WifiNetworkScope.ADAPTER.encodedSizeWithTag(2, value.wifi_network);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AnalyticsDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                UserActionScope.ADAPTER.encodeWithTag(writer, 1, value.user_action);
                WifiNetworkScope.ADAPTER.encodeWithTag(writer, 2, value.wifi_network);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AnalyticsDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                WifiNetworkScope.ADAPTER.encodeWithTag(writer, 2, value.wifi_network);
                UserActionScope.ADAPTER.encodeWithTag(writer, 1, value.user_action);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AnalyticsDomain redact(AnalyticsDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                UserActionScope userActionScope = value.user_action;
                UserActionScope userActionScopeRedact = userActionScope != null ? UserActionScope.ADAPTER.redact(userActionScope) : null;
                WifiNetworkScope wifiNetworkScope = value.wifi_network;
                return value.copy(userActionScopeRedact, wifiNetworkScope != null ? WifiNetworkScope.ADAPTER.redact(wifiNetworkScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AnalyticsDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                UserActionScope userActionScopeDecode = null;
                WifiNetworkScope wifiNetworkScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AnalyticsDomain(userActionScopeDecode, wifiNetworkScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        userActionScopeDecode = UserActionScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        wifiNetworkScopeDecode = WifiNetworkScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
