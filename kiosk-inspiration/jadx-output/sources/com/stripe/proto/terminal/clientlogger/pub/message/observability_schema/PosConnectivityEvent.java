package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: PosConnectivityEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0014\u0015\u0016\u0017\u0018B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$Builder;", "mode", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "ConnectionMode", "ConnectivityEventType", "DisconnectReason", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PosConnectivityEvent extends Message<PosConnectivityEvent, Builder> {
    public static final ProtoAdapter<PosConnectivityEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectionMode#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ConnectionMode mode;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectivityEventType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ConnectivityEventType type;

    public PosConnectivityEvent() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ PosConnectivityEvent(ConnectionMode connectionMode, ConnectivityEventType connectivityEventType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ConnectionMode.CONNECTION_MODE_INVALID : connectionMode, (i & 2) != 0 ? null : connectivityEventType, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PosConnectivityEvent(ConnectionMode mode, ConnectivityEventType connectivityEventType, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.mode = mode;
        this.type = connectivityEventType;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.mode = this.mode;
        builder.type = this.type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PosConnectivityEvent)) {
            return false;
        }
        PosConnectivityEvent posConnectivityEvent = (PosConnectivityEvent) other;
        return Intrinsics.areEqual(unknownFields(), posConnectivityEvent.unknownFields()) && this.mode == posConnectivityEvent.mode && Intrinsics.areEqual(this.type, posConnectivityEvent.type);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.mode.hashCode()) * 37;
        ConnectivityEventType connectivityEventType = this.type;
        int iHashCode2 = iHashCode + (connectivityEventType != null ? connectivityEventType.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("mode=" + this.mode);
        if (this.type != null) {
            arrayList2.add("type=" + this.type);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PosConnectivityEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PosConnectivityEvent copy$default(PosConnectivityEvent posConnectivityEvent, ConnectionMode connectionMode, ConnectivityEventType connectivityEventType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            connectionMode = posConnectivityEvent.mode;
        }
        if ((i & 2) != 0) {
            connectivityEventType = posConnectivityEvent.type;
        }
        if ((i & 4) != 0) {
            byteString = posConnectivityEvent.unknownFields();
        }
        return posConnectivityEvent.copy(connectionMode, connectivityEventType, byteString);
    }

    public final PosConnectivityEvent copy(ConnectionMode mode, ConnectivityEventType type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PosConnectivityEvent(mode, type, unknownFields);
    }

    /* JADX INFO: compiled from: PosConnectivityEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;", "()V", "mode", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PosConnectivityEvent, Builder> {
        public ConnectionMode mode = ConnectionMode.CONNECTION_MODE_INVALID;
        public ConnectivityEventType type;

        public final Builder mode(ConnectionMode mode) {
            Intrinsics.checkNotNullParameter(mode, "mode");
            this.mode = mode;
            return this;
        }

        public final Builder type(ConnectivityEventType type) {
            this.type = type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PosConnectivityEvent build() {
            return new PosConnectivityEvent(this.mode, this.type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PosConnectivityEvent.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PosConnectivityEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PosConnectivityEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PosConnectivityEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PosConnectivityEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.mode != PosConnectivityEvent.ConnectionMode.CONNECTION_MODE_INVALID) {
                    size += PosConnectivityEvent.ConnectionMode.ADAPTER.encodedSizeWithTag(1, value.mode);
                }
                return value.type != null ? size + PosConnectivityEvent.ConnectivityEventType.ADAPTER.encodedSizeWithTag(2, value.type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PosConnectivityEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.mode != PosConnectivityEvent.ConnectionMode.CONNECTION_MODE_INVALID) {
                    PosConnectivityEvent.ConnectionMode.ADAPTER.encodeWithTag(writer, 1, value.mode);
                }
                if (value.type != null) {
                    PosConnectivityEvent.ConnectivityEventType.ADAPTER.encodeWithTag(writer, 2, value.type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PosConnectivityEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.type != null) {
                    PosConnectivityEvent.ConnectivityEventType.ADAPTER.encodeWithTag(writer, 2, value.type);
                }
                if (value.mode != PosConnectivityEvent.ConnectionMode.CONNECTION_MODE_INVALID) {
                    PosConnectivityEvent.ConnectionMode.ADAPTER.encodeWithTag(writer, 1, value.mode);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PosConnectivityEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                PosConnectivityEvent.ConnectionMode connectionModeDecode = PosConnectivityEvent.ConnectionMode.CONNECTION_MODE_INVALID;
                long jBeginMessage = reader.beginMessage();
                PosConnectivityEvent.ConnectivityEventType connectivityEventTypeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PosConnectivityEvent(connectionModeDecode, connectivityEventTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            connectionModeDecode = PosConnectivityEvent.ConnectionMode.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        connectivityEventTypeDecode = PosConnectivityEvent.ConnectivityEventType.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PosConnectivityEvent redact(PosConnectivityEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PosConnectivityEvent.ConnectivityEventType connectivityEventType = value.type;
                return PosConnectivityEvent.copy$default(value, null, connectivityEventType != null ? PosConnectivityEvent.ConnectivityEventType.ADAPTER.redact(connectivityEventType) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PosConnectivityEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CONNECTION_MODE_INVALID", "BLUETOOTH", "USB", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConnectionMode implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConnectionMode[] $VALUES;
        public static final ProtoAdapter<ConnectionMode> ADAPTER;
        public static final ConnectionMode BLUETOOTH;
        public static final ConnectionMode CONNECTION_MODE_INVALID;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ConnectionMode USB;
        private final int value;

        private static final /* synthetic */ ConnectionMode[] $values() {
            return new ConnectionMode[]{CONNECTION_MODE_INVALID, BLUETOOTH, USB};
        }

        @JvmStatic
        public static final ConnectionMode fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ConnectionMode> getEntries() {
            return $ENTRIES;
        }

        public static ConnectionMode valueOf(String str) {
            return (ConnectionMode) Enum.valueOf(ConnectionMode.class, str);
        }

        public static ConnectionMode[] values() {
            return (ConnectionMode[]) $VALUES.clone();
        }

        private ConnectionMode(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ConnectionMode connectionMode = new ConnectionMode("CONNECTION_MODE_INVALID", 0, 0);
            CONNECTION_MODE_INVALID = connectionMode;
            BLUETOOTH = new ConnectionMode("BLUETOOTH", 1, 1);
            USB = new ConnectionMode("USB", 2, 2);
            ConnectionMode[] connectionModeArr$values = $values();
            $VALUES = connectionModeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(connectionModeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectionMode.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ConnectionMode>(orCreateKotlinClass, syntax, connectionMode) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectionMode$Companion$ADAPTER$1
                {
                    PosConnectivityEvent.ConnectionMode connectionMode2 = connectionMode;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public PosConnectivityEvent.ConnectionMode fromValue(int value) {
                    return PosConnectivityEvent.ConnectionMode.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: PosConnectivityEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ConnectionMode fromValue(int value) {
                if (value == 0) {
                    return ConnectionMode.CONNECTION_MODE_INVALID;
                }
                if (value == 1) {
                    return ConnectionMode.BLUETOOTH;
                }
                if (value != 2) {
                    return null;
                }
                return ConnectionMode.USB;
            }
        }
    }

    /* JADX INFO: compiled from: PosConnectivityEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Builder;", "connect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;", "disconnect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Connect", "Disconnect", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConnectivityEventType extends Message<ConnectivityEventType, Builder> {
        public static final ProtoAdapter<ConnectivityEventType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectivityEventType$Connect#ADAPTER", oneofName = "type", schemaIndex = 0, tag = 1)
        public final Connect connect;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectivityEventType$Disconnect#ADAPTER", oneofName = "type", schemaIndex = 1, tag = 2)
        public final Disconnect disconnect;

        public ConnectivityEventType() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ ConnectivityEventType(Connect connect, Disconnect disconnect, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : connect, (i & 2) != 0 ? null : disconnect, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConnectivityEventType(Connect connect, Disconnect disconnect, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.connect = connect;
            this.disconnect = disconnect;
            if (Internal.countNonNull(connect, disconnect) > 1) {
                throw new IllegalArgumentException("At most one of connect, disconnect may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.connect = this.connect;
            builder.disconnect = this.disconnect;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof ConnectivityEventType)) {
                return false;
            }
            ConnectivityEventType connectivityEventType = (ConnectivityEventType) other;
            return Intrinsics.areEqual(unknownFields(), connectivityEventType.unknownFields()) && Intrinsics.areEqual(this.connect, connectivityEventType.connect) && Intrinsics.areEqual(this.disconnect, connectivityEventType.disconnect);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Connect connect = this.connect;
            int iHashCode2 = (iHashCode + (connect != null ? connect.hashCode() : 0)) * 37;
            Disconnect disconnect = this.disconnect;
            int iHashCode3 = iHashCode2 + (disconnect != null ? disconnect.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.connect != null) {
                arrayList.add("connect=" + this.connect);
            }
            if (this.disconnect != null) {
                arrayList.add("disconnect=" + this.disconnect);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "ConnectivityEventType{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ ConnectivityEventType copy$default(ConnectivityEventType connectivityEventType, Connect connect, Disconnect disconnect, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                connect = connectivityEventType.connect;
            }
            if ((i & 2) != 0) {
                disconnect = connectivityEventType.disconnect;
            }
            if ((i & 4) != 0) {
                byteString = connectivityEventType.unknownFields();
            }
            return connectivityEventType.copy(connect, disconnect, byteString);
        }

        public final ConnectivityEventType copy(Connect connect, Disconnect disconnect, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new ConnectivityEventType(connect, disconnect, unknownFields);
        }

        /* JADX INFO: compiled from: PosConnectivityEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;", "()V", "connect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;", "disconnect", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<ConnectivityEventType, Builder> {
            public Connect connect;
            public Disconnect disconnect;

            public final Builder connect(Connect connect) {
                this.connect = connect;
                this.disconnect = null;
                return this;
            }

            public final Builder disconnect(Disconnect disconnect) {
                this.disconnect = disconnect;
                this.connect = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ConnectivityEventType build() {
                return new ConnectivityEventType(this.connect, this.disconnect, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PosConnectivityEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ ConnectivityEventType build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectivityEventType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<ConnectivityEventType>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectivityEventType$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PosConnectivityEvent.ConnectivityEventType value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + PosConnectivityEvent.ConnectivityEventType.Connect.ADAPTER.encodedSizeWithTag(1, value.connect) + PosConnectivityEvent.ConnectivityEventType.Disconnect.ADAPTER.encodedSizeWithTag(2, value.disconnect);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PosConnectivityEvent.ConnectivityEventType value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    PosConnectivityEvent.ConnectivityEventType.Connect.ADAPTER.encodeWithTag(writer, 1, value.connect);
                    PosConnectivityEvent.ConnectivityEventType.Disconnect.ADAPTER.encodeWithTag(writer, 2, value.disconnect);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PosConnectivityEvent.ConnectivityEventType value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    PosConnectivityEvent.ConnectivityEventType.Disconnect.ADAPTER.encodeWithTag(writer, 2, value.disconnect);
                    PosConnectivityEvent.ConnectivityEventType.Connect.ADAPTER.encodeWithTag(writer, 1, value.connect);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PosConnectivityEvent.ConnectivityEventType redact(PosConnectivityEvent.ConnectivityEventType value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    PosConnectivityEvent.ConnectivityEventType.Connect connect = value.connect;
                    PosConnectivityEvent.ConnectivityEventType.Connect connectRedact = connect != null ? PosConnectivityEvent.ConnectivityEventType.Connect.ADAPTER.redact(connect) : null;
                    PosConnectivityEvent.ConnectivityEventType.Disconnect disconnect = value.disconnect;
                    return value.copy(connectRedact, disconnect != null ? PosConnectivityEvent.ConnectivityEventType.Disconnect.ADAPTER.redact(disconnect) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PosConnectivityEvent.ConnectivityEventType decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    PosConnectivityEvent.ConnectivityEventType.Connect connectDecode = null;
                    PosConnectivityEvent.ConnectivityEventType.Disconnect disconnectDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new PosConnectivityEvent.ConnectivityEventType(connectDecode, disconnectDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            connectDecode = PosConnectivityEvent.ConnectivityEventType.Connect.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            disconnectDecode = PosConnectivityEvent.ConnectivityEventType.Disconnect.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: PosConnectivityEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect$Builder;", OfflineStorageConstantsKt.ID, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Connect extends Message<Connect, Builder> {
            public static final ProtoAdapter<Connect> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String id;

            /* JADX WARN: Multi-variable type inference failed */
            public Connect() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Connect(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Connect(String id, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.id = id;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.id = this.id;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Connect)) {
                    return false;
                }
                Connect connect = (Connect) other;
                return Intrinsics.areEqual(unknownFields(), connect.unknownFields()) && Intrinsics.areEqual(this.id, connect.id);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.id.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("id=" + Internal.sanitize(this.id));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Connect{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Connect copy$default(Connect connect, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = connect.id;
                }
                if ((i & 2) != 0) {
                    byteString = connect.unknownFields();
                }
                return connect.copy(str, byteString);
            }

            public final Connect copy(String id, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Connect(id, unknownFields);
            }

            /* JADX INFO: compiled from: PosConnectivityEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;", "()V", OfflineStorageConstantsKt.ID, "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Connect, Builder> {
                public String id = "";

                public final Builder id(String id) {
                    Intrinsics.checkNotNullParameter(id, "id");
                    this.id = id;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Connect build() {
                    return new Connect(this.id, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PosConnectivityEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Connect build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Connect.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Connect>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectivityEventType$Connect$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PosConnectivityEvent.ConnectivityEventType.Connect value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.id) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PosConnectivityEvent.ConnectivityEventType.Connect value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.id, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PosConnectivityEvent.ConnectivityEventType.Connect value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.id, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PosConnectivityEvent.ConnectivityEventType.Connect redact(PosConnectivityEvent.ConnectivityEventType.Connect value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PosConnectivityEvent.ConnectivityEventType.Connect.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PosConnectivityEvent.ConnectivityEventType.Connect decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PosConnectivityEvent.ConnectivityEventType.Connect(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PosConnectivityEvent.kt */
        @kotlin.Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect$Builder;", "disconnect_reason", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Disconnect extends Message<Disconnect, Builder> {
            public static final ProtoAdapter<Disconnect> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$DisconnectReason#ADAPTER", jsonName = "disconnectReason", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final DisconnectReason disconnect_reason;

            /* JADX WARN: Multi-variable type inference failed */
            public Disconnect() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Disconnect(DisconnectReason disconnectReason, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? DisconnectReason.DISCONNECT_REASON_INVALID : disconnectReason, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Disconnect(DisconnectReason disconnect_reason, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(disconnect_reason, "disconnect_reason");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.disconnect_reason = disconnect_reason;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.disconnect_reason = this.disconnect_reason;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Disconnect)) {
                    return false;
                }
                Disconnect disconnect = (Disconnect) other;
                return Intrinsics.areEqual(unknownFields(), disconnect.unknownFields()) && this.disconnect_reason == disconnect.disconnect_reason;
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.disconnect_reason.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("disconnect_reason=" + this.disconnect_reason);
                return CollectionsKt.joinToString$default(arrayList, ", ", "Disconnect{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Disconnect copy$default(Disconnect disconnect, DisconnectReason disconnectReason, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    disconnectReason = disconnect.disconnect_reason;
                }
                if ((i & 2) != 0) {
                    byteString = disconnect.unknownFields();
                }
                return disconnect.copy(disconnectReason, byteString);
            }

            public final Disconnect copy(DisconnectReason disconnect_reason, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(disconnect_reason, "disconnect_reason");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Disconnect(disconnect_reason, unknownFields);
            }

            /* JADX INFO: compiled from: PosConnectivityEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;", "()V", "disconnect_reason", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Disconnect, Builder> {
                public DisconnectReason disconnect_reason = DisconnectReason.DISCONNECT_REASON_INVALID;

                public final Builder disconnect_reason(DisconnectReason disconnect_reason) {
                    Intrinsics.checkNotNullParameter(disconnect_reason, "disconnect_reason");
                    this.disconnect_reason = disconnect_reason;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Disconnect build() {
                    return new Disconnect(this.disconnect_reason, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PosConnectivityEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Disconnect build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Disconnect.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Disconnect>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$ConnectivityEventType$Disconnect$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PosConnectivityEvent.ConnectivityEventType.Disconnect value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.disconnect_reason != PosConnectivityEvent.DisconnectReason.DISCONNECT_REASON_INVALID ? size + PosConnectivityEvent.DisconnectReason.ADAPTER.encodedSizeWithTag(1, value.disconnect_reason) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PosConnectivityEvent.ConnectivityEventType.Disconnect value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.disconnect_reason != PosConnectivityEvent.DisconnectReason.DISCONNECT_REASON_INVALID) {
                            PosConnectivityEvent.DisconnectReason.ADAPTER.encodeWithTag(writer, 1, value.disconnect_reason);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PosConnectivityEvent.ConnectivityEventType.Disconnect value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.disconnect_reason != PosConnectivityEvent.DisconnectReason.DISCONNECT_REASON_INVALID) {
                            PosConnectivityEvent.DisconnectReason.ADAPTER.encodeWithTag(writer, 1, value.disconnect_reason);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PosConnectivityEvent.ConnectivityEventType.Disconnect decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        PosConnectivityEvent.DisconnectReason disconnectReasonDecode = PosConnectivityEvent.DisconnectReason.DISCONNECT_REASON_INVALID;
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PosConnectivityEvent.ConnectivityEventType.Disconnect(disconnectReasonDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    disconnectReasonDecode = PosConnectivityEvent.DisconnectReason.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PosConnectivityEvent.ConnectivityEventType.Disconnect redact(PosConnectivityEvent.ConnectivityEventType.Disconnect value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PosConnectivityEvent.ConnectivityEventType.Disconnect.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }
                };
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PosConnectivityEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DISCONNECT_REASON_INVALID", "UNKNOWN", "DISCONNECT_REQUESTED", "REBOOT_REQUESTED", "SECURITY_REBOOT", "CRITICALLY_LOW_BATTERY", "POWERED_OFF", "BLUETOOTH_DISABLED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DisconnectReason implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DisconnectReason[] $VALUES;
        public static final ProtoAdapter<DisconnectReason> ADAPTER;
        public static final DisconnectReason BLUETOOTH_DISABLED;
        public static final DisconnectReason CRITICALLY_LOW_BATTERY;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DisconnectReason DISCONNECT_REASON_INVALID;
        public static final DisconnectReason DISCONNECT_REQUESTED;
        public static final DisconnectReason POWERED_OFF;
        public static final DisconnectReason REBOOT_REQUESTED;
        public static final DisconnectReason SECURITY_REBOOT;
        public static final DisconnectReason UNKNOWN;
        private final int value;

        private static final /* synthetic */ DisconnectReason[] $values() {
            return new DisconnectReason[]{DISCONNECT_REASON_INVALID, UNKNOWN, DISCONNECT_REQUESTED, REBOOT_REQUESTED, SECURITY_REBOOT, CRITICALLY_LOW_BATTERY, POWERED_OFF, BLUETOOTH_DISABLED};
        }

        @JvmStatic
        public static final DisconnectReason fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DisconnectReason> getEntries() {
            return $ENTRIES;
        }

        public static DisconnectReason valueOf(String str) {
            return (DisconnectReason) Enum.valueOf(DisconnectReason.class, str);
        }

        public static DisconnectReason[] values() {
            return (DisconnectReason[]) $VALUES.clone();
        }

        private DisconnectReason(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DisconnectReason disconnectReason = new DisconnectReason("DISCONNECT_REASON_INVALID", 0, 0);
            DISCONNECT_REASON_INVALID = disconnectReason;
            UNKNOWN = new DisconnectReason("UNKNOWN", 1, 1);
            DISCONNECT_REQUESTED = new DisconnectReason("DISCONNECT_REQUESTED", 2, 2);
            REBOOT_REQUESTED = new DisconnectReason("REBOOT_REQUESTED", 3, 3);
            SECURITY_REBOOT = new DisconnectReason("SECURITY_REBOOT", 4, 4);
            CRITICALLY_LOW_BATTERY = new DisconnectReason("CRITICALLY_LOW_BATTERY", 5, 5);
            POWERED_OFF = new DisconnectReason("POWERED_OFF", 6, 6);
            BLUETOOTH_DISABLED = new DisconnectReason("BLUETOOTH_DISABLED", 7, 7);
            DisconnectReason[] disconnectReasonArr$values = $values();
            $VALUES = disconnectReasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(disconnectReasonArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DisconnectReason.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DisconnectReason>(orCreateKotlinClass, syntax, disconnectReason) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent$DisconnectReason$Companion$ADAPTER$1
                {
                    PosConnectivityEvent.DisconnectReason disconnectReason2 = disconnectReason;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public PosConnectivityEvent.DisconnectReason fromValue(int value) {
                    return PosConnectivityEvent.DisconnectReason.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: PosConnectivityEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DisconnectReason fromValue(int value) {
                switch (value) {
                    case 0:
                        return DisconnectReason.DISCONNECT_REASON_INVALID;
                    case 1:
                        return DisconnectReason.UNKNOWN;
                    case 2:
                        return DisconnectReason.DISCONNECT_REQUESTED;
                    case 3:
                        return DisconnectReason.REBOOT_REQUESTED;
                    case 4:
                        return DisconnectReason.SECURITY_REBOOT;
                    case 5:
                        return DisconnectReason.CRITICALLY_LOW_BATTERY;
                    case 6:
                        return DisconnectReason.POWERED_OFF;
                    case 7:
                        return DisconnectReason.BLUETOOTH_DISABLED;
                    default:
                        return null;
                }
            }
        }
    }
}
