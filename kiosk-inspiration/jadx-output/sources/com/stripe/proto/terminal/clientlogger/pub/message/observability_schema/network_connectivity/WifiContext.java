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

/* JADX INFO: compiled from: WifiContext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019Bs\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJt\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext$Builder;", "wifi_mac_address", "", "router_mac_address", "supported_keys", "", "supported_protocols", "auth_algorithms", "pairwise_ciphers", "group_ciphers", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiContext extends Message<WifiContext, Builder> {
    public static final ProtoAdapter<WifiContext> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "authAlgorithms", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
    public final List<String> auth_algorithms;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "groupCiphers", label = WireField.Label.REPEATED, schemaIndex = 6, tag = 7)
    public final List<String> group_ciphers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "pairwiseCiphers", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 6)
    public final List<String> pairwise_ciphers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "routerMacAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String router_mac_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "supportedKeys", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<String> supported_keys;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "supportedProtocols", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 4)
    public final List<String> supported_protocols;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "wifiMacAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String wifi_mac_address;

    public WifiContext() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ WifiContext(String str, String str2, List list, List list2, List list3, List list4, List list5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? CollectionsKt.emptyList() : list2, (i & 16) != 0 ? CollectionsKt.emptyList() : list3, (i & 32) != 0 ? CollectionsKt.emptyList() : list4, (i & 64) != 0 ? CollectionsKt.emptyList() : list5, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiContext(String wifi_mac_address, String router_mac_address, List<String> supported_keys, List<String> supported_protocols, List<String> auth_algorithms, List<String> pairwise_ciphers, List<String> group_ciphers, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(wifi_mac_address, "wifi_mac_address");
        Intrinsics.checkNotNullParameter(router_mac_address, "router_mac_address");
        Intrinsics.checkNotNullParameter(supported_keys, "supported_keys");
        Intrinsics.checkNotNullParameter(supported_protocols, "supported_protocols");
        Intrinsics.checkNotNullParameter(auth_algorithms, "auth_algorithms");
        Intrinsics.checkNotNullParameter(pairwise_ciphers, "pairwise_ciphers");
        Intrinsics.checkNotNullParameter(group_ciphers, "group_ciphers");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.wifi_mac_address = wifi_mac_address;
        this.router_mac_address = router_mac_address;
        this.supported_keys = Internal.immutableCopyOf("supported_keys", supported_keys);
        this.supported_protocols = Internal.immutableCopyOf("supported_protocols", supported_protocols);
        this.auth_algorithms = Internal.immutableCopyOf("auth_algorithms", auth_algorithms);
        this.pairwise_ciphers = Internal.immutableCopyOf("pairwise_ciphers", pairwise_ciphers);
        this.group_ciphers = Internal.immutableCopyOf("group_ciphers", group_ciphers);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.wifi_mac_address = this.wifi_mac_address;
        builder.router_mac_address = this.router_mac_address;
        builder.supported_keys = this.supported_keys;
        builder.supported_protocols = this.supported_protocols;
        builder.auth_algorithms = this.auth_algorithms;
        builder.pairwise_ciphers = this.pairwise_ciphers;
        builder.group_ciphers = this.group_ciphers;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WifiContext)) {
            return false;
        }
        WifiContext wifiContext = (WifiContext) other;
        return Intrinsics.areEqual(unknownFields(), wifiContext.unknownFields()) && Intrinsics.areEqual(this.wifi_mac_address, wifiContext.wifi_mac_address) && Intrinsics.areEqual(this.router_mac_address, wifiContext.router_mac_address) && Intrinsics.areEqual(this.supported_keys, wifiContext.supported_keys) && Intrinsics.areEqual(this.supported_protocols, wifiContext.supported_protocols) && Intrinsics.areEqual(this.auth_algorithms, wifiContext.auth_algorithms) && Intrinsics.areEqual(this.pairwise_ciphers, wifiContext.pairwise_ciphers) && Intrinsics.areEqual(this.group_ciphers, wifiContext.group_ciphers);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((unknownFields().hashCode() * 37) + this.wifi_mac_address.hashCode()) * 37) + this.router_mac_address.hashCode()) * 37) + this.supported_keys.hashCode()) * 37) + this.supported_protocols.hashCode()) * 37) + this.auth_algorithms.hashCode()) * 37) + this.pairwise_ciphers.hashCode()) * 37) + this.group_ciphers.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("wifi_mac_address=" + Internal.sanitize(this.wifi_mac_address));
        arrayList2.add("router_mac_address=" + Internal.sanitize(this.router_mac_address));
        if (!this.supported_keys.isEmpty()) {
            arrayList2.add("supported_keys=" + Internal.sanitize(this.supported_keys));
        }
        if (!this.supported_protocols.isEmpty()) {
            arrayList2.add("supported_protocols=" + Internal.sanitize(this.supported_protocols));
        }
        if (!this.auth_algorithms.isEmpty()) {
            arrayList2.add("auth_algorithms=" + Internal.sanitize(this.auth_algorithms));
        }
        if (!this.pairwise_ciphers.isEmpty()) {
            arrayList2.add("pairwise_ciphers=" + Internal.sanitize(this.pairwise_ciphers));
        }
        if (!this.group_ciphers.isEmpty()) {
            arrayList2.add("group_ciphers=" + Internal.sanitize(this.group_ciphers));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "WifiContext{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WifiContext copy$default(WifiContext wifiContext, String str, String str2, List list, List list2, List list3, List list4, List list5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wifiContext.wifi_mac_address;
        }
        if ((i & 2) != 0) {
            str2 = wifiContext.router_mac_address;
        }
        if ((i & 4) != 0) {
            list = wifiContext.supported_keys;
        }
        if ((i & 8) != 0) {
            list2 = wifiContext.supported_protocols;
        }
        if ((i & 16) != 0) {
            list3 = wifiContext.auth_algorithms;
        }
        if ((i & 32) != 0) {
            list4 = wifiContext.pairwise_ciphers;
        }
        if ((i & 64) != 0) {
            list5 = wifiContext.group_ciphers;
        }
        if ((i & 128) != 0) {
            byteString = wifiContext.unknownFields();
        }
        List list6 = list5;
        ByteString byteString2 = byteString;
        List list7 = list3;
        List list8 = list4;
        return wifiContext.copy(str, str2, list, list2, list7, list8, list6, byteString2);
    }

    public final WifiContext copy(String wifi_mac_address, String router_mac_address, List<String> supported_keys, List<String> supported_protocols, List<String> auth_algorithms, List<String> pairwise_ciphers, List<String> group_ciphers, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(wifi_mac_address, "wifi_mac_address");
        Intrinsics.checkNotNullParameter(router_mac_address, "router_mac_address");
        Intrinsics.checkNotNullParameter(supported_keys, "supported_keys");
        Intrinsics.checkNotNullParameter(supported_protocols, "supported_protocols");
        Intrinsics.checkNotNullParameter(auth_algorithms, "auth_algorithms");
        Intrinsics.checkNotNullParameter(pairwise_ciphers, "pairwise_ciphers");
        Intrinsics.checkNotNullParameter(group_ciphers, "group_ciphers");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WifiContext(wifi_mac_address, router_mac_address, supported_keys, supported_protocols, auth_algorithms, pairwise_ciphers, group_ciphers, unknownFields);
    }

    /* JADX INFO: compiled from: WifiContext.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;", "()V", "auth_algorithms", "", "", "group_ciphers", "pairwise_ciphers", "router_mac_address", "supported_keys", "supported_protocols", "wifi_mac_address", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WifiContext, Builder> {
        public String wifi_mac_address = "";
        public String router_mac_address = "";
        public List<String> supported_keys = CollectionsKt.emptyList();
        public List<String> supported_protocols = CollectionsKt.emptyList();
        public List<String> auth_algorithms = CollectionsKt.emptyList();
        public List<String> pairwise_ciphers = CollectionsKt.emptyList();
        public List<String> group_ciphers = CollectionsKt.emptyList();

        public final Builder wifi_mac_address(String wifi_mac_address) {
            Intrinsics.checkNotNullParameter(wifi_mac_address, "wifi_mac_address");
            this.wifi_mac_address = wifi_mac_address;
            return this;
        }

        public final Builder router_mac_address(String router_mac_address) {
            Intrinsics.checkNotNullParameter(router_mac_address, "router_mac_address");
            this.router_mac_address = router_mac_address;
            return this;
        }

        public final Builder supported_keys(List<String> supported_keys) {
            Intrinsics.checkNotNullParameter(supported_keys, "supported_keys");
            Internal.checkElementsNotNull(supported_keys);
            this.supported_keys = supported_keys;
            return this;
        }

        public final Builder supported_protocols(List<String> supported_protocols) {
            Intrinsics.checkNotNullParameter(supported_protocols, "supported_protocols");
            Internal.checkElementsNotNull(supported_protocols);
            this.supported_protocols = supported_protocols;
            return this;
        }

        public final Builder auth_algorithms(List<String> auth_algorithms) {
            Intrinsics.checkNotNullParameter(auth_algorithms, "auth_algorithms");
            Internal.checkElementsNotNull(auth_algorithms);
            this.auth_algorithms = auth_algorithms;
            return this;
        }

        public final Builder pairwise_ciphers(List<String> pairwise_ciphers) {
            Intrinsics.checkNotNullParameter(pairwise_ciphers, "pairwise_ciphers");
            Internal.checkElementsNotNull(pairwise_ciphers);
            this.pairwise_ciphers = pairwise_ciphers;
            return this;
        }

        public final Builder group_ciphers(List<String> group_ciphers) {
            Intrinsics.checkNotNullParameter(group_ciphers, "group_ciphers");
            Internal.checkElementsNotNull(group_ciphers);
            this.group_ciphers = group_ciphers;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WifiContext build() {
            return new WifiContext(this.wifi_mac_address, this.router_mac_address, this.supported_keys, this.supported_protocols, this.auth_algorithms, this.pairwise_ciphers, this.group_ciphers, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WifiContext.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WifiContext build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiContext.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WifiContext>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiContext$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WifiContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.wifi_mac_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.wifi_mac_address);
                }
                if (!Intrinsics.areEqual(value.router_mac_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.router_mac_address);
                }
                return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(3, value.supported_keys) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(4, value.supported_protocols) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(5, value.auth_algorithms) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(6, value.pairwise_ciphers) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(7, value.group_ciphers);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WifiContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.wifi_mac_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.wifi_mac_address);
                }
                if (!Intrinsics.areEqual(value.router_mac_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.router_mac_address);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.supported_keys);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.supported_protocols);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 5, value.auth_algorithms);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.pairwise_ciphers);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 7, value.group_ciphers);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WifiContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 7, value.group_ciphers);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.pairwise_ciphers);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 5, value.auth_algorithms);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.supported_protocols);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.supported_keys);
                if (!Intrinsics.areEqual(value.router_mac_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.router_mac_address);
                }
                if (Intrinsics.areEqual(value.wifi_mac_address, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.wifi_mac_address);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WifiContext decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 4:
                                arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 5:
                                arrayList3.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 6:
                                arrayList4.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 7:
                                arrayList5.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new WifiContext(strDecode, strDecode2, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WifiContext redact(WifiContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return WifiContext.copy$default(value, null, null, null, null, null, null, null, ByteString.EMPTY, 127, null);
            }
        };
    }
}
