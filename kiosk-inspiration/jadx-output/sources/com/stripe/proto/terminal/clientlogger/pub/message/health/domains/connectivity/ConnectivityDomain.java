package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity;

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

/* JADX INFO: compiled from: ConnectivityDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "bluetooth", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;", "usb", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectivityDomain extends Message<ConnectivityDomain, Builder> {
    public static final ProtoAdapter<ConnectivityDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.BluetoothScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final BluetoothScope bluetooth;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final UsbScope usb;

    public ConnectivityDomain() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ConnectivityDomain(BluetoothScope bluetoothScope, UsbScope usbScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bluetoothScope, (i & 2) != 0 ? null : usbScope, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityDomain(BluetoothScope bluetoothScope, UsbScope usbScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bluetooth = bluetoothScope;
        this.usb = usbScope;
        if (Internal.countNonNull(bluetoothScope, usbScope) > 1) {
            throw new IllegalArgumentException("At most one of bluetooth, usb may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bluetooth = this.bluetooth;
        builder.usb = this.usb;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConnectivityDomain)) {
            return false;
        }
        ConnectivityDomain connectivityDomain = (ConnectivityDomain) other;
        return Intrinsics.areEqual(unknownFields(), connectivityDomain.unknownFields()) && Intrinsics.areEqual(this.bluetooth, connectivityDomain.bluetooth) && Intrinsics.areEqual(this.usb, connectivityDomain.usb);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BluetoothScope bluetoothScope = this.bluetooth;
        int iHashCode2 = (iHashCode + (bluetoothScope != null ? bluetoothScope.hashCode() : 0)) * 37;
        UsbScope usbScope = this.usb;
        int iHashCode3 = iHashCode2 + (usbScope != null ? usbScope.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.bluetooth != null) {
            arrayList.add("bluetooth=" + this.bluetooth);
        }
        if (this.usb != null) {
            arrayList.add("usb=" + this.usb);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConnectivityDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConnectivityDomain copy$default(ConnectivityDomain connectivityDomain, BluetoothScope bluetoothScope, UsbScope usbScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bluetoothScope = connectivityDomain.bluetooth;
        }
        if ((i & 2) != 0) {
            usbScope = connectivityDomain.usb;
        }
        if ((i & 4) != 0) {
            byteString = connectivityDomain.unknownFields();
        }
        return connectivityDomain.copy(bluetoothScope, usbScope, byteString);
    }

    public final ConnectivityDomain copy(BluetoothScope bluetooth, UsbScope usb, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConnectivityDomain(bluetooth, usb, unknownFields);
    }

    /* JADX INFO: compiled from: ConnectivityDomain.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "()V", "bluetooth", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;", "usb", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConnectivityDomain, Builder> {
        public BluetoothScope bluetooth;
        public UsbScope usb;

        public final Builder bluetooth(BluetoothScope bluetooth) {
            this.bluetooth = bluetooth;
            this.usb = null;
            return this;
        }

        public final Builder usb(UsbScope usb) {
            this.usb = usb;
            this.bluetooth = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConnectivityDomain build() {
            return new ConnectivityDomain(this.bluetooth, this.usb, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConnectivityDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConnectivityDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectivityDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConnectivityDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConnectivityDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + BluetoothScope.ADAPTER.encodedSizeWithTag(1, value.bluetooth) + UsbScope.ADAPTER.encodedSizeWithTag(2, value.usb);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConnectivityDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                BluetoothScope.ADAPTER.encodeWithTag(writer, 1, value.bluetooth);
                UsbScope.ADAPTER.encodeWithTag(writer, 2, value.usb);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConnectivityDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                UsbScope.ADAPTER.encodeWithTag(writer, 2, value.usb);
                BluetoothScope.ADAPTER.encodeWithTag(writer, 1, value.bluetooth);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConnectivityDomain redact(ConnectivityDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                BluetoothScope bluetoothScope = value.bluetooth;
                BluetoothScope bluetoothScopeRedact = bluetoothScope != null ? BluetoothScope.ADAPTER.redact(bluetoothScope) : null;
                UsbScope usbScope = value.usb;
                return value.copy(bluetoothScopeRedact, usbScope != null ? UsbScope.ADAPTER.redact(usbScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConnectivityDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                BluetoothScope bluetoothScopeDecode = null;
                UsbScope usbScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConnectivityDomain(bluetoothScopeDecode, usbScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        bluetoothScopeDecode = BluetoothScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        usbScopeDecode = UsbScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
