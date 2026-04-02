package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: USBDeviceStateEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;", "product_id", "", "vendor_id", "connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "USBConnectionStatus", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class USBDeviceStateEvent extends Message<USBDeviceStateEvent, Builder> {
    public static final ProtoAdapter<USBDeviceStateEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent$USBConnectionStatus#ADAPTER", jsonName = "connectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final USBConnectionStatus connection_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "productId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String product_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "vendorId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String vendor_id;

    public USBDeviceStateEvent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ USBDeviceStateEvent(String str, String str2, USBConnectionStatus uSBConnectionStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? USBConnectionStatus.USB_CONNECTION_STATUS_INVALID : uSBConnectionStatus, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public USBDeviceStateEvent(String product_id, String vendor_id, USBConnectionStatus connection_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(product_id, "product_id");
        Intrinsics.checkNotNullParameter(vendor_id, "vendor_id");
        Intrinsics.checkNotNullParameter(connection_status, "connection_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.product_id = product_id;
        this.vendor_id = vendor_id;
        this.connection_status = connection_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.product_id = this.product_id;
        builder.vendor_id = this.vendor_id;
        builder.connection_status = this.connection_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof USBDeviceStateEvent)) {
            return false;
        }
        USBDeviceStateEvent uSBDeviceStateEvent = (USBDeviceStateEvent) other;
        return Intrinsics.areEqual(unknownFields(), uSBDeviceStateEvent.unknownFields()) && Intrinsics.areEqual(this.product_id, uSBDeviceStateEvent.product_id) && Intrinsics.areEqual(this.vendor_id, uSBDeviceStateEvent.vendor_id) && this.connection_status == uSBDeviceStateEvent.connection_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.product_id.hashCode()) * 37) + this.vendor_id.hashCode()) * 37) + this.connection_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("product_id=" + Internal.sanitize(this.product_id));
        arrayList2.add("vendor_id=" + Internal.sanitize(this.vendor_id));
        arrayList2.add("connection_status=" + this.connection_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "USBDeviceStateEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ USBDeviceStateEvent copy$default(USBDeviceStateEvent uSBDeviceStateEvent, String str, String str2, USBConnectionStatus uSBConnectionStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = uSBDeviceStateEvent.product_id;
        }
        if ((i & 2) != 0) {
            str2 = uSBDeviceStateEvent.vendor_id;
        }
        if ((i & 4) != 0) {
            uSBConnectionStatus = uSBDeviceStateEvent.connection_status;
        }
        if ((i & 8) != 0) {
            byteString = uSBDeviceStateEvent.unknownFields();
        }
        return uSBDeviceStateEvent.copy(str, str2, uSBConnectionStatus, byteString);
    }

    public final USBDeviceStateEvent copy(String product_id, String vendor_id, USBConnectionStatus connection_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(product_id, "product_id");
        Intrinsics.checkNotNullParameter(vendor_id, "vendor_id");
        Intrinsics.checkNotNullParameter(connection_status, "connection_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new USBDeviceStateEvent(product_id, vendor_id, connection_status, unknownFields);
    }

    /* JADX INFO: compiled from: USBDeviceStateEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;", "()V", "connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;", "product_id", "", "vendor_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<USBDeviceStateEvent, Builder> {
        public String product_id = "";
        public String vendor_id = "";
        public USBConnectionStatus connection_status = USBConnectionStatus.USB_CONNECTION_STATUS_INVALID;

        public final Builder product_id(String product_id) {
            Intrinsics.checkNotNullParameter(product_id, "product_id");
            this.product_id = product_id;
            return this;
        }

        public final Builder vendor_id(String vendor_id) {
            Intrinsics.checkNotNullParameter(vendor_id, "vendor_id");
            this.vendor_id = vendor_id;
            return this;
        }

        public final Builder connection_status(USBConnectionStatus connection_status) {
            Intrinsics.checkNotNullParameter(connection_status, "connection_status");
            this.connection_status = connection_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public USBDeviceStateEvent build() {
            return new USBDeviceStateEvent(this.product_id, this.vendor_id, this.connection_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: USBDeviceStateEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ USBDeviceStateEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(USBDeviceStateEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<USBDeviceStateEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(USBDeviceStateEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.product_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.product_id);
                }
                if (!Intrinsics.areEqual(value.vendor_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.vendor_id);
                }
                return value.connection_status != USBDeviceStateEvent.USBConnectionStatus.USB_CONNECTION_STATUS_INVALID ? size + USBDeviceStateEvent.USBConnectionStatus.ADAPTER.encodedSizeWithTag(3, value.connection_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, USBDeviceStateEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.product_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.product_id);
                }
                if (!Intrinsics.areEqual(value.vendor_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.vendor_id);
                }
                if (value.connection_status != USBDeviceStateEvent.USBConnectionStatus.USB_CONNECTION_STATUS_INVALID) {
                    USBDeviceStateEvent.USBConnectionStatus.ADAPTER.encodeWithTag(writer, 3, value.connection_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, USBDeviceStateEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.connection_status != USBDeviceStateEvent.USBConnectionStatus.USB_CONNECTION_STATUS_INVALID) {
                    USBDeviceStateEvent.USBConnectionStatus.ADAPTER.encodeWithTag(writer, 3, value.connection_status);
                }
                if (!Intrinsics.areEqual(value.vendor_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.vendor_id);
                }
                if (Intrinsics.areEqual(value.product_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.product_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public USBDeviceStateEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                USBDeviceStateEvent.USBConnectionStatus uSBConnectionStatusDecode = USBDeviceStateEvent.USBConnectionStatus.USB_CONNECTION_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new USBDeviceStateEvent(strDecode, strDecode2, uSBConnectionStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            uSBConnectionStatusDecode = USBDeviceStateEvent.USBConnectionStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public USBDeviceStateEvent redact(USBDeviceStateEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return USBDeviceStateEvent.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: USBDeviceStateEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "USB_CONNECTION_STATUS_INVALID", "USB_DEVICE_CONNECTED", "USB_DEVICE_DISCONNECTED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class USBConnectionStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ USBConnectionStatus[] $VALUES;
        public static final ProtoAdapter<USBConnectionStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final USBConnectionStatus USB_CONNECTION_STATUS_INVALID;
        public static final USBConnectionStatus USB_DEVICE_CONNECTED;
        public static final USBConnectionStatus USB_DEVICE_DISCONNECTED;
        private final int value;

        private static final /* synthetic */ USBConnectionStatus[] $values() {
            return new USBConnectionStatus[]{USB_CONNECTION_STATUS_INVALID, USB_DEVICE_CONNECTED, USB_DEVICE_DISCONNECTED};
        }

        @JvmStatic
        public static final USBConnectionStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<USBConnectionStatus> getEntries() {
            return $ENTRIES;
        }

        public static USBConnectionStatus valueOf(String str) {
            return (USBConnectionStatus) Enum.valueOf(USBConnectionStatus.class, str);
        }

        public static USBConnectionStatus[] values() {
            return (USBConnectionStatus[]) $VALUES.clone();
        }

        private USBConnectionStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final USBConnectionStatus uSBConnectionStatus = new USBConnectionStatus("USB_CONNECTION_STATUS_INVALID", 0, 0);
            USB_CONNECTION_STATUS_INVALID = uSBConnectionStatus;
            USB_DEVICE_CONNECTED = new USBConnectionStatus("USB_DEVICE_CONNECTED", 1, 1);
            USB_DEVICE_DISCONNECTED = new USBConnectionStatus("USB_DEVICE_DISCONNECTED", 2, 2);
            USBConnectionStatus[] uSBConnectionStatusArr$values = $values();
            $VALUES = uSBConnectionStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(uSBConnectionStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(USBConnectionStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<USBConnectionStatus>(orCreateKotlinClass, syntax, uSBConnectionStatus) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent$USBConnectionStatus$Companion$ADAPTER$1
                {
                    USBDeviceStateEvent.USBConnectionStatus uSBConnectionStatus2 = uSBConnectionStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public USBDeviceStateEvent.USBConnectionStatus fromValue(int value) {
                    return USBDeviceStateEvent.USBConnectionStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: USBDeviceStateEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final USBConnectionStatus fromValue(int value) {
                if (value == 0) {
                    return USBConnectionStatus.USB_CONNECTION_STATUS_INVALID;
                }
                if (value == 1) {
                    return USBConnectionStatus.USB_DEVICE_CONNECTED;
                }
                if (value != 2) {
                    return null;
                }
                return USBConnectionStatus.USB_DEVICE_DISCONNECTED;
            }
        }
    }
}
