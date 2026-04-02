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

/* JADX INFO: compiled from: WifiConnectionAttempt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;", "ssid", "", "router_mac_address", "capabilities", "result", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiConnectionAttempt extends Message<WifiConnectionAttempt, Builder> {
    public static final ProtoAdapter<WifiConnectionAttempt> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String capabilities;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "routerMacAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String router_mac_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String ssid;

    public WifiConnectionAttempt() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ WifiConnectionAttempt(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiConnectionAttempt(String ssid, String router_mac_address, String capabilities, String result, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(router_mac_address, "router_mac_address");
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ssid = ssid;
        this.router_mac_address = router_mac_address;
        this.capabilities = capabilities;
        this.result = result;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ssid = this.ssid;
        builder.router_mac_address = this.router_mac_address;
        builder.capabilities = this.capabilities;
        builder.result = this.result;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WifiConnectionAttempt)) {
            return false;
        }
        WifiConnectionAttempt wifiConnectionAttempt = (WifiConnectionAttempt) other;
        return Intrinsics.areEqual(unknownFields(), wifiConnectionAttempt.unknownFields()) && Intrinsics.areEqual(this.ssid, wifiConnectionAttempt.ssid) && Intrinsics.areEqual(this.router_mac_address, wifiConnectionAttempt.router_mac_address) && Intrinsics.areEqual(this.capabilities, wifiConnectionAttempt.capabilities) && Intrinsics.areEqual(this.result, wifiConnectionAttempt.result);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.ssid.hashCode()) * 37) + this.router_mac_address.hashCode()) * 37) + this.capabilities.hashCode()) * 37) + this.result.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("ssid=" + Internal.sanitize(this.ssid));
        arrayList2.add("router_mac_address=" + Internal.sanitize(this.router_mac_address));
        arrayList2.add("capabilities=" + Internal.sanitize(this.capabilities));
        arrayList2.add("result=" + Internal.sanitize(this.result));
        return CollectionsKt.joinToString$default(arrayList, ", ", "WifiConnectionAttempt{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ WifiConnectionAttempt copy$default(WifiConnectionAttempt wifiConnectionAttempt, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wifiConnectionAttempt.ssid;
        }
        if ((i & 2) != 0) {
            str2 = wifiConnectionAttempt.router_mac_address;
        }
        if ((i & 4) != 0) {
            str3 = wifiConnectionAttempt.capabilities;
        }
        if ((i & 8) != 0) {
            str4 = wifiConnectionAttempt.result;
        }
        if ((i & 16) != 0) {
            byteString = wifiConnectionAttempt.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str5 = str3;
        return wifiConnectionAttempt.copy(str, str2, str5, str4, byteString2);
    }

    public final WifiConnectionAttempt copy(String ssid, String router_mac_address, String capabilities, String result, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(router_mac_address, "router_mac_address");
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WifiConnectionAttempt(ssid, router_mac_address, capabilities, result, unknownFields);
    }

    /* JADX INFO: compiled from: WifiConnectionAttempt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;", "()V", "capabilities", "", "result", "router_mac_address", "ssid", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WifiConnectionAttempt, Builder> {
        public String ssid = "";
        public String router_mac_address = "";
        public String capabilities = "";
        public String result = "";

        public final Builder ssid(String ssid) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            this.ssid = ssid;
            return this;
        }

        public final Builder router_mac_address(String router_mac_address) {
            Intrinsics.checkNotNullParameter(router_mac_address, "router_mac_address");
            this.router_mac_address = router_mac_address;
            return this;
        }

        public final Builder capabilities(String capabilities) {
            Intrinsics.checkNotNullParameter(capabilities, "capabilities");
            this.capabilities = capabilities;
            return this;
        }

        public final Builder result(String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WifiConnectionAttempt build() {
            return new WifiConnectionAttempt(this.ssid, this.router_mac_address, this.capabilities, this.result, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WifiConnectionAttempt.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WifiConnectionAttempt build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiConnectionAttempt.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WifiConnectionAttempt>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiConnectionAttempt$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WifiConnectionAttempt value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ssid);
                }
                if (!Intrinsics.areEqual(value.router_mac_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.router_mac_address);
                }
                if (!Intrinsics.areEqual(value.capabilities, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.capabilities);
                }
                return !Intrinsics.areEqual(value.result, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.result) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WifiConnectionAttempt value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                }
                if (!Intrinsics.areEqual(value.router_mac_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.router_mac_address);
                }
                if (!Intrinsics.areEqual(value.capabilities, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.capabilities);
                }
                if (!Intrinsics.areEqual(value.result, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.result);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WifiConnectionAttempt value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.result, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.result);
                }
                if (!Intrinsics.areEqual(value.capabilities, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.capabilities);
                }
                if (!Intrinsics.areEqual(value.router_mac_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.router_mac_address);
                }
                if (Intrinsics.areEqual(value.ssid, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnectionAttempt redact(WifiConnectionAttempt value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return WifiConnectionAttempt.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnectionAttempt decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new WifiConnectionAttempt(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode4 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
