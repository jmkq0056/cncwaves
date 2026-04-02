package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: BootCompletedEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent$Builder;", "p2pe_configuration", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration;", "network_interfaces", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/NetworkInterfaces;", "reboot_metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;", "bbpos_vendor_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposVendorData;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/NetworkInterfaces;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposVendorData;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BootCompletedEvent extends Message<BootCompletedEvent, Builder> {
    public static final ProtoAdapter<BootCompletedEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BbposVendorData#ADAPTER", jsonName = "bbposVendorData", oneofName = "vendor_metadata", schemaIndex = 3, tag = 4)
    public final BbposVendorData bbpos_vendor_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.NetworkInterfaces#ADAPTER", jsonName = "networkInterfaces", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final NetworkInterfaces network_interfaces;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.P2peConfiguration#ADAPTER", jsonName = "p2peConfiguration", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final P2peConfiguration p2pe_configuration;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.RebootMetadata#ADAPTER", jsonName = "rebootMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final RebootMetadata reboot_metadata;

    public BootCompletedEvent() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ BootCompletedEvent(P2peConfiguration p2peConfiguration, NetworkInterfaces networkInterfaces, RebootMetadata rebootMetadata, BbposVendorData bbposVendorData, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : p2peConfiguration, (i & 2) != 0 ? null : networkInterfaces, (i & 4) != 0 ? null : rebootMetadata, (i & 8) != 0 ? null : bbposVendorData, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BootCompletedEvent(P2peConfiguration p2peConfiguration, NetworkInterfaces networkInterfaces, RebootMetadata rebootMetadata, BbposVendorData bbposVendorData, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.p2pe_configuration = p2peConfiguration;
        this.network_interfaces = networkInterfaces;
        this.reboot_metadata = rebootMetadata;
        this.bbpos_vendor_data = bbposVendorData;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.p2pe_configuration = this.p2pe_configuration;
        builder.network_interfaces = this.network_interfaces;
        builder.reboot_metadata = this.reboot_metadata;
        builder.bbpos_vendor_data = this.bbpos_vendor_data;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BootCompletedEvent)) {
            return false;
        }
        BootCompletedEvent bootCompletedEvent = (BootCompletedEvent) other;
        return Intrinsics.areEqual(unknownFields(), bootCompletedEvent.unknownFields()) && Intrinsics.areEqual(this.p2pe_configuration, bootCompletedEvent.p2pe_configuration) && Intrinsics.areEqual(this.network_interfaces, bootCompletedEvent.network_interfaces) && Intrinsics.areEqual(this.reboot_metadata, bootCompletedEvent.reboot_metadata) && Intrinsics.areEqual(this.bbpos_vendor_data, bootCompletedEvent.bbpos_vendor_data);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        P2peConfiguration p2peConfiguration = this.p2pe_configuration;
        int iHashCode2 = (iHashCode + (p2peConfiguration != null ? p2peConfiguration.hashCode() : 0)) * 37;
        NetworkInterfaces networkInterfaces = this.network_interfaces;
        int iHashCode3 = (iHashCode2 + (networkInterfaces != null ? networkInterfaces.hashCode() : 0)) * 37;
        RebootMetadata rebootMetadata = this.reboot_metadata;
        int iHashCode4 = (iHashCode3 + (rebootMetadata != null ? rebootMetadata.hashCode() : 0)) * 37;
        BbposVendorData bbposVendorData = this.bbpos_vendor_data;
        int iHashCode5 = iHashCode4 + (bbposVendorData != null ? bbposVendorData.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.p2pe_configuration != null) {
            arrayList.add("p2pe_configuration=" + this.p2pe_configuration);
        }
        if (this.network_interfaces != null) {
            arrayList.add("network_interfaces=" + this.network_interfaces);
        }
        if (this.reboot_metadata != null) {
            arrayList.add("reboot_metadata=" + this.reboot_metadata);
        }
        if (this.bbpos_vendor_data != null) {
            arrayList.add("bbpos_vendor_data=" + this.bbpos_vendor_data);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BootCompletedEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BootCompletedEvent copy$default(BootCompletedEvent bootCompletedEvent, P2peConfiguration p2peConfiguration, NetworkInterfaces networkInterfaces, RebootMetadata rebootMetadata, BbposVendorData bbposVendorData, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            p2peConfiguration = bootCompletedEvent.p2pe_configuration;
        }
        if ((i & 2) != 0) {
            networkInterfaces = bootCompletedEvent.network_interfaces;
        }
        if ((i & 4) != 0) {
            rebootMetadata = bootCompletedEvent.reboot_metadata;
        }
        if ((i & 8) != 0) {
            bbposVendorData = bootCompletedEvent.bbpos_vendor_data;
        }
        if ((i & 16) != 0) {
            byteString = bootCompletedEvent.unknownFields();
        }
        ByteString byteString2 = byteString;
        RebootMetadata rebootMetadata2 = rebootMetadata;
        return bootCompletedEvent.copy(p2peConfiguration, networkInterfaces, rebootMetadata2, bbposVendorData, byteString2);
    }

    public final BootCompletedEvent copy(P2peConfiguration p2pe_configuration, NetworkInterfaces network_interfaces, RebootMetadata reboot_metadata, BbposVendorData bbpos_vendor_data, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BootCompletedEvent(p2pe_configuration, network_interfaces, reboot_metadata, bbpos_vendor_data, unknownFields);
    }

    /* JADX INFO: compiled from: BootCompletedEvent.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;", "()V", "bbpos_vendor_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposVendorData;", "network_interfaces", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/NetworkInterfaces;", "p2pe_configuration", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration;", "reboot_metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BootCompletedEvent, Builder> {
        public BbposVendorData bbpos_vendor_data;
        public NetworkInterfaces network_interfaces;
        public P2peConfiguration p2pe_configuration;
        public RebootMetadata reboot_metadata;

        public final Builder p2pe_configuration(P2peConfiguration p2pe_configuration) {
            this.p2pe_configuration = p2pe_configuration;
            return this;
        }

        public final Builder network_interfaces(NetworkInterfaces network_interfaces) {
            this.network_interfaces = network_interfaces;
            return this;
        }

        public final Builder reboot_metadata(RebootMetadata reboot_metadata) {
            this.reboot_metadata = reboot_metadata;
            return this;
        }

        public final Builder bbpos_vendor_data(BbposVendorData bbpos_vendor_data) {
            this.bbpos_vendor_data = bbpos_vendor_data;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BootCompletedEvent build() {
            return new BootCompletedEvent(this.p2pe_configuration, this.network_interfaces, this.reboot_metadata, this.bbpos_vendor_data, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BootCompletedEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BootCompletedEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BootCompletedEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BootCompletedEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BootCompletedEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BootCompletedEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.p2pe_configuration != null) {
                    size += P2peConfiguration.ADAPTER.encodedSizeWithTag(1, value.p2pe_configuration);
                }
                if (value.network_interfaces != null) {
                    size += NetworkInterfaces.ADAPTER.encodedSizeWithTag(2, value.network_interfaces);
                }
                if (value.reboot_metadata != null) {
                    size += RebootMetadata.ADAPTER.encodedSizeWithTag(3, value.reboot_metadata);
                }
                return size + BbposVendorData.ADAPTER.encodedSizeWithTag(4, value.bbpos_vendor_data);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BootCompletedEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.p2pe_configuration != null) {
                    P2peConfiguration.ADAPTER.encodeWithTag(writer, 1, value.p2pe_configuration);
                }
                if (value.network_interfaces != null) {
                    NetworkInterfaces.ADAPTER.encodeWithTag(writer, 2, value.network_interfaces);
                }
                if (value.reboot_metadata != null) {
                    RebootMetadata.ADAPTER.encodeWithTag(writer, 3, value.reboot_metadata);
                }
                BbposVendorData.ADAPTER.encodeWithTag(writer, 4, value.bbpos_vendor_data);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BootCompletedEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                BbposVendorData.ADAPTER.encodeWithTag(writer, 4, value.bbpos_vendor_data);
                if (value.reboot_metadata != null) {
                    RebootMetadata.ADAPTER.encodeWithTag(writer, 3, value.reboot_metadata);
                }
                if (value.network_interfaces != null) {
                    NetworkInterfaces.ADAPTER.encodeWithTag(writer, 2, value.network_interfaces);
                }
                if (value.p2pe_configuration != null) {
                    P2peConfiguration.ADAPTER.encodeWithTag(writer, 1, value.p2pe_configuration);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BootCompletedEvent redact(BootCompletedEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                P2peConfiguration p2peConfiguration = value.p2pe_configuration;
                P2peConfiguration p2peConfigurationRedact = p2peConfiguration != null ? P2peConfiguration.ADAPTER.redact(p2peConfiguration) : null;
                NetworkInterfaces networkInterfaces = value.network_interfaces;
                NetworkInterfaces networkInterfacesRedact = networkInterfaces != null ? NetworkInterfaces.ADAPTER.redact(networkInterfaces) : null;
                RebootMetadata rebootMetadata = value.reboot_metadata;
                RebootMetadata rebootMetadataRedact = rebootMetadata != null ? RebootMetadata.ADAPTER.redact(rebootMetadata) : null;
                BbposVendorData bbposVendorData = value.bbpos_vendor_data;
                return value.copy(p2peConfigurationRedact, networkInterfacesRedact, rebootMetadataRedact, bbposVendorData != null ? BbposVendorData.ADAPTER.redact(bbposVendorData) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BootCompletedEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                P2peConfiguration p2peConfigurationDecode = null;
                NetworkInterfaces networkInterfacesDecode = null;
                RebootMetadata rebootMetadataDecode = null;
                BbposVendorData bbposVendorDataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new BootCompletedEvent(p2peConfigurationDecode, networkInterfacesDecode, rebootMetadataDecode, bbposVendorDataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        p2peConfigurationDecode = P2peConfiguration.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        networkInterfacesDecode = NetworkInterfaces.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        rebootMetadataDecode = RebootMetadata.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        bbposVendorDataDecode = BbposVendorData.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
