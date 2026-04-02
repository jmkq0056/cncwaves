package com.stripe.proto.model.observability.schema.connectivity;

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

/* JADX INFO: compiled from: NetworkProperties.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ>\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties$Builder;", "ip_address", "", "dns_addresses", "", "subnet_mask", "router_address", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkProperties extends Message<NetworkProperties, Builder> {
    public static final ProtoAdapter<NetworkProperties> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "dnsAddresses", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<String> dns_addresses;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "ipAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "routerAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String router_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "subnetMask", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String subnet_mask;

    public NetworkProperties() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ NetworkProperties(String str, List list, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkProperties(String ip_address, List<String> dns_addresses, String subnet_mask, String router_address, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(dns_addresses, "dns_addresses");
        Intrinsics.checkNotNullParameter(subnet_mask, "subnet_mask");
        Intrinsics.checkNotNullParameter(router_address, "router_address");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ip_address = ip_address;
        this.subnet_mask = subnet_mask;
        this.router_address = router_address;
        this.dns_addresses = Internal.immutableCopyOf("dns_addresses", dns_addresses);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ip_address = this.ip_address;
        builder.dns_addresses = this.dns_addresses;
        builder.subnet_mask = this.subnet_mask;
        builder.router_address = this.router_address;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof NetworkProperties)) {
            return false;
        }
        NetworkProperties networkProperties = (NetworkProperties) other;
        return Intrinsics.areEqual(unknownFields(), networkProperties.unknownFields()) && Intrinsics.areEqual(this.ip_address, networkProperties.ip_address) && Intrinsics.areEqual(this.dns_addresses, networkProperties.dns_addresses) && Intrinsics.areEqual(this.subnet_mask, networkProperties.subnet_mask) && Intrinsics.areEqual(this.router_address, networkProperties.router_address);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.ip_address.hashCode()) * 37) + this.dns_addresses.hashCode()) * 37) + this.subnet_mask.hashCode()) * 37) + this.router_address.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("ip_address=" + Internal.sanitize(this.ip_address));
        if (!this.dns_addresses.isEmpty()) {
            arrayList2.add("dns_addresses=" + Internal.sanitize(this.dns_addresses));
        }
        arrayList2.add("subnet_mask=" + Internal.sanitize(this.subnet_mask));
        arrayList2.add("router_address=" + Internal.sanitize(this.router_address));
        return CollectionsKt.joinToString$default(arrayList, ", ", "NetworkProperties{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NetworkProperties copy$default(NetworkProperties networkProperties, String str, List list, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = networkProperties.ip_address;
        }
        if ((i & 2) != 0) {
            list = networkProperties.dns_addresses;
        }
        if ((i & 4) != 0) {
            str2 = networkProperties.subnet_mask;
        }
        if ((i & 8) != 0) {
            str3 = networkProperties.router_address;
        }
        if ((i & 16) != 0) {
            byteString = networkProperties.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str2;
        return networkProperties.copy(str, list, str4, str3, byteString2);
    }

    public final NetworkProperties copy(String ip_address, List<String> dns_addresses, String subnet_mask, String router_address, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(dns_addresses, "dns_addresses");
        Intrinsics.checkNotNullParameter(subnet_mask, "subnet_mask");
        Intrinsics.checkNotNullParameter(router_address, "router_address");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new NetworkProperties(ip_address, dns_addresses, subnet_mask, router_address, unknownFields);
    }

    /* JADX INFO: compiled from: NetworkProperties.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties;", "()V", "dns_addresses", "", "", "ip_address", "router_address", "subnet_mask", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<NetworkProperties, Builder> {
        public String ip_address = "";
        public List<String> dns_addresses = CollectionsKt.emptyList();
        public String subnet_mask = "";
        public String router_address = "";

        public final Builder ip_address(String ip_address) {
            Intrinsics.checkNotNullParameter(ip_address, "ip_address");
            this.ip_address = ip_address;
            return this;
        }

        public final Builder dns_addresses(List<String> dns_addresses) {
            Intrinsics.checkNotNullParameter(dns_addresses, "dns_addresses");
            Internal.checkElementsNotNull(dns_addresses);
            this.dns_addresses = dns_addresses;
            return this;
        }

        public final Builder subnet_mask(String subnet_mask) {
            Intrinsics.checkNotNullParameter(subnet_mask, "subnet_mask");
            this.subnet_mask = subnet_mask;
            return this;
        }

        public final Builder router_address(String router_address) {
            Intrinsics.checkNotNullParameter(router_address, "router_address");
            this.router_address = router_address;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public NetworkProperties build() {
            return new NetworkProperties(this.ip_address, this.dns_addresses, this.subnet_mask, this.router_address, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: NetworkProperties.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkProperties$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ NetworkProperties build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NetworkProperties.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<NetworkProperties>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.connectivity.NetworkProperties$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(NetworkProperties value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ip_address);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.dns_addresses);
                if (!Intrinsics.areEqual(value.subnet_mask, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(3, value.subnet_mask);
                }
                return !Intrinsics.areEqual(value.router_address, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(4, value.router_address) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, NetworkProperties value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ip_address);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.dns_addresses);
                if (!Intrinsics.areEqual(value.subnet_mask, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.subnet_mask);
                }
                if (!Intrinsics.areEqual(value.router_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.router_address);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, NetworkProperties value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.router_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.router_address);
                }
                if (!Intrinsics.areEqual(value.subnet_mask, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.subnet_mask);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.dns_addresses);
                if (Intrinsics.areEqual(value.ip_address, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ip_address);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public NetworkProperties decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new NetworkProperties(strDecode, arrayList, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public NetworkProperties redact(NetworkProperties value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return NetworkProperties.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
