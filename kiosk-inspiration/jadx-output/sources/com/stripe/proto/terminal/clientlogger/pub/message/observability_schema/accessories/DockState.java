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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState;
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

/* JADX INFO: compiled from: DockState.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$Builder;", "dock_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "DockConnectionStatus", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DockState extends Message<DockState, Builder> {
    public static final ProtoAdapter<DockState> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$DockConnectionStatus#ADAPTER", jsonName = "dockConnectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DockConnectionStatus dock_connection_status;

    /* JADX WARN: Multi-variable type inference failed */
    public DockState() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DockState(DockConnectionStatus dockConnectionStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID : dockConnectionStatus, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DockState(DockConnectionStatus dock_connection_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.dock_connection_status = dock_connection_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.dock_connection_status = this.dock_connection_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DockState)) {
            return false;
        }
        DockState dockState = (DockState) other;
        return Intrinsics.areEqual(unknownFields(), dockState.unknownFields()) && this.dock_connection_status == dockState.dock_connection_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.dock_connection_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("dock_connection_status=" + this.dock_connection_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "DockState{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DockState copy$default(DockState dockState, DockConnectionStatus dockConnectionStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            dockConnectionStatus = dockState.dock_connection_status;
        }
        if ((i & 2) != 0) {
            byteString = dockState.unknownFields();
        }
        return dockState.copy(dockConnectionStatus, byteString);
    }

    public final DockState copy(DockConnectionStatus dock_connection_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DockState(dock_connection_status, unknownFields);
    }

    /* JADX INFO: compiled from: DockState.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;", "()V", "dock_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DockState, Builder> {
        public DockConnectionStatus dock_connection_status = DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID;

        public final Builder dock_connection_status(DockConnectionStatus dock_connection_status) {
            Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
            this.dock_connection_status = dock_connection_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DockState build() {
            return new DockState(this.dock_connection_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DockState.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DockState build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DockState.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DockState>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DockState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID ? size + DockState.DockConnectionStatus.ADAPTER.encodedSizeWithTag(1, value.dock_connection_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DockState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    DockState.DockConnectionStatus.ADAPTER.encodeWithTag(writer, 1, value.dock_connection_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DockState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    DockState.DockConnectionStatus.ADAPTER.encodeWithTag(writer, 1, value.dock_connection_status);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DockState decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DockState.DockConnectionStatus dockConnectionStatusDecode = DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DockState(dockConnectionStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            dockConnectionStatusDecode = DockState.DockConnectionStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DockState redact(DockState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DockState.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DockState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DOCK_CONNECTION_STATUS_INVALID", "DOCK_CONNECTED", "DOCK_DISCONNECTED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DockConnectionStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DockConnectionStatus[] $VALUES;
        public static final ProtoAdapter<DockConnectionStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DockConnectionStatus DOCK_CONNECTED;
        public static final DockConnectionStatus DOCK_CONNECTION_STATUS_INVALID;
        public static final DockConnectionStatus DOCK_DISCONNECTED;
        private final int value;

        private static final /* synthetic */ DockConnectionStatus[] $values() {
            return new DockConnectionStatus[]{DOCK_CONNECTION_STATUS_INVALID, DOCK_CONNECTED, DOCK_DISCONNECTED};
        }

        @JvmStatic
        public static final DockConnectionStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DockConnectionStatus> getEntries() {
            return $ENTRIES;
        }

        public static DockConnectionStatus valueOf(String str) {
            return (DockConnectionStatus) Enum.valueOf(DockConnectionStatus.class, str);
        }

        public static DockConnectionStatus[] values() {
            return (DockConnectionStatus[]) $VALUES.clone();
        }

        private DockConnectionStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DockConnectionStatus dockConnectionStatus = new DockConnectionStatus("DOCK_CONNECTION_STATUS_INVALID", 0, 0);
            DOCK_CONNECTION_STATUS_INVALID = dockConnectionStatus;
            DOCK_CONNECTED = new DockConnectionStatus("DOCK_CONNECTED", 1, 1);
            DOCK_DISCONNECTED = new DockConnectionStatus("DOCK_DISCONNECTED", 2, 2);
            DockConnectionStatus[] dockConnectionStatusArr$values = $values();
            $VALUES = dockConnectionStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(dockConnectionStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DockConnectionStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DockConnectionStatus>(orCreateKotlinClass, syntax, dockConnectionStatus) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$DockConnectionStatus$Companion$ADAPTER$1
                {
                    DockState.DockConnectionStatus dockConnectionStatus2 = dockConnectionStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public DockState.DockConnectionStatus fromValue(int value) {
                    return DockState.DockConnectionStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: DockState.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DockConnectionStatus fromValue(int value) {
                if (value == 0) {
                    return DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID;
                }
                if (value == 1) {
                    return DockConnectionStatus.DOCK_CONNECTED;
                }
                if (value != 2) {
                    return null;
                }
                return DockConnectionStatus.DOCK_DISCONNECTED;
            }
        }
    }
}
