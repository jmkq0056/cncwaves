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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState;
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

/* JADX INFO: compiled from: HubState.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$Builder;", "hub_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "hub_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "HubConnectionStatus", "HubType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HubState extends Message<HubState, Builder> {
    public static final ProtoAdapter<HubState> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubConnectionStatus#ADAPTER", jsonName = "hubConnectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final HubConnectionStatus hub_connection_status;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubType#ADAPTER", jsonName = "hubType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final HubType hub_type;

    public HubState() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ HubState(HubConnectionStatus hubConnectionStatus, HubType hubType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID : hubConnectionStatus, (i & 2) != 0 ? HubType.HUB_TYPE_INVALID : hubType, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HubState(HubConnectionStatus hub_connection_status, HubType hub_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
        Intrinsics.checkNotNullParameter(hub_type, "hub_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.hub_connection_status = hub_connection_status;
        this.hub_type = hub_type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.hub_connection_status = this.hub_connection_status;
        builder.hub_type = this.hub_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HubState)) {
            return false;
        }
        HubState hubState = (HubState) other;
        return Intrinsics.areEqual(unknownFields(), hubState.unknownFields()) && this.hub_connection_status == hubState.hub_connection_status && this.hub_type == hubState.hub_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.hub_connection_status.hashCode()) * 37) + this.hub_type.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("hub_connection_status=" + this.hub_connection_status);
        arrayList2.add("hub_type=" + this.hub_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "HubState{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HubState copy$default(HubState hubState, HubConnectionStatus hubConnectionStatus, HubType hubType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            hubConnectionStatus = hubState.hub_connection_status;
        }
        if ((i & 2) != 0) {
            hubType = hubState.hub_type;
        }
        if ((i & 4) != 0) {
            byteString = hubState.unknownFields();
        }
        return hubState.copy(hubConnectionStatus, hubType, byteString);
    }

    public final HubState copy(HubConnectionStatus hub_connection_status, HubType hub_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
        Intrinsics.checkNotNullParameter(hub_type, "hub_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HubState(hub_connection_status, hub_type, unknownFields);
    }

    /* JADX INFO: compiled from: HubState.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;", "()V", "hub_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "hub_type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HubState, Builder> {
        public HubConnectionStatus hub_connection_status = HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID;
        public HubType hub_type = HubType.HUB_TYPE_INVALID;

        public final Builder hub_connection_status(HubConnectionStatus hub_connection_status) {
            Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
            this.hub_connection_status = hub_connection_status;
            return this;
        }

        public final Builder hub_type(HubType hub_type) {
            Intrinsics.checkNotNullParameter(hub_type, "hub_type");
            this.hub_type = hub_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HubState build() {
            return new HubState(this.hub_connection_status, this.hub_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HubState.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HubState build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HubState.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HubState>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HubState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    size += HubState.HubConnectionStatus.ADAPTER.encodedSizeWithTag(1, value.hub_connection_status);
                }
                return value.hub_type != HubState.HubType.HUB_TYPE_INVALID ? size + HubState.HubType.ADAPTER.encodedSizeWithTag(2, value.hub_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HubState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    HubState.HubConnectionStatus.ADAPTER.encodeWithTag(writer, 1, value.hub_connection_status);
                }
                if (value.hub_type != HubState.HubType.HUB_TYPE_INVALID) {
                    HubState.HubType.ADAPTER.encodeWithTag(writer, 2, value.hub_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HubState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.hub_type != HubState.HubType.HUB_TYPE_INVALID) {
                    HubState.HubType.ADAPTER.encodeWithTag(writer, 2, value.hub_type);
                }
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    HubState.HubConnectionStatus.ADAPTER.encodeWithTag(writer, 1, value.hub_connection_status);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HubState decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                HubState.HubConnectionStatus hubConnectionStatusDecode = HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID;
                HubState.HubType hubTypeDecode = HubState.HubType.HUB_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new HubState(hubConnectionStatusDecode, hubTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            hubConnectionStatusDecode = HubState.HubConnectionStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        try {
                            hubTypeDecode = HubState.HubType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HubState redact(HubState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return HubState.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: HubState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "HUB_CONNECTION_STATUS_INVALID", "HUB_CONNECTED", "HUB_DISCONNECTED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HubConnectionStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ HubConnectionStatus[] $VALUES;
        public static final ProtoAdapter<HubConnectionStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final HubConnectionStatus HUB_CONNECTED;
        public static final HubConnectionStatus HUB_CONNECTION_STATUS_INVALID;
        public static final HubConnectionStatus HUB_DISCONNECTED;
        private final int value;

        private static final /* synthetic */ HubConnectionStatus[] $values() {
            return new HubConnectionStatus[]{HUB_CONNECTION_STATUS_INVALID, HUB_CONNECTED, HUB_DISCONNECTED};
        }

        @JvmStatic
        public static final HubConnectionStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<HubConnectionStatus> getEntries() {
            return $ENTRIES;
        }

        public static HubConnectionStatus valueOf(String str) {
            return (HubConnectionStatus) Enum.valueOf(HubConnectionStatus.class, str);
        }

        public static HubConnectionStatus[] values() {
            return (HubConnectionStatus[]) $VALUES.clone();
        }

        private HubConnectionStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final HubConnectionStatus hubConnectionStatus = new HubConnectionStatus("HUB_CONNECTION_STATUS_INVALID", 0, 0);
            HUB_CONNECTION_STATUS_INVALID = hubConnectionStatus;
            HUB_CONNECTED = new HubConnectionStatus("HUB_CONNECTED", 1, 1);
            HUB_DISCONNECTED = new HubConnectionStatus("HUB_DISCONNECTED", 2, 2);
            HubConnectionStatus[] hubConnectionStatusArr$values = $values();
            $VALUES = hubConnectionStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(hubConnectionStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HubConnectionStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<HubConnectionStatus>(orCreateKotlinClass, syntax, hubConnectionStatus) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubConnectionStatus$Companion$ADAPTER$1
                {
                    HubState.HubConnectionStatus hubConnectionStatus2 = hubConnectionStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public HubState.HubConnectionStatus fromValue(int value) {
                    return HubState.HubConnectionStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: HubState.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final HubConnectionStatus fromValue(int value) {
                if (value == 0) {
                    return HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID;
                }
                if (value == 1) {
                    return HubConnectionStatus.HUB_CONNECTED;
                }
                if (value != 2) {
                    return null;
                }
                return HubConnectionStatus.HUB_DISCONNECTED;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: HubState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "HUB_TYPE_INVALID", "STRIPE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HubType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ HubType[] $VALUES;
        public static final ProtoAdapter<HubType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final HubType HUB_TYPE_INVALID;
        public static final HubType STRIPE;
        private final int value;

        private static final /* synthetic */ HubType[] $values() {
            return new HubType[]{HUB_TYPE_INVALID, STRIPE};
        }

        @JvmStatic
        public static final HubType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<HubType> getEntries() {
            return $ENTRIES;
        }

        public static HubType valueOf(String str) {
            return (HubType) Enum.valueOf(HubType.class, str);
        }

        public static HubType[] values() {
            return (HubType[]) $VALUES.clone();
        }

        private HubType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final HubType hubType = new HubType("HUB_TYPE_INVALID", 0, 0);
            HUB_TYPE_INVALID = hubType;
            STRIPE = new HubType("STRIPE", 1, 1);
            HubType[] hubTypeArr$values = $values();
            $VALUES = hubTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(hubTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HubType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<HubType>(orCreateKotlinClass, syntax, hubType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubType$Companion$ADAPTER$1
                {
                    HubState.HubType hubType2 = hubType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public HubState.HubType fromValue(int value) {
                    return HubState.HubType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: HubState.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final HubType fromValue(int value) {
                if (value == 0) {
                    return HubType.HUB_TYPE_INVALID;
                }
                if (value != 1) {
                    return null;
                }
                return HubType.STRIPE;
            }
        }
    }
}
