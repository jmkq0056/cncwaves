package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen;

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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent;
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

/* JADX INFO: compiled from: ScreenMetadataEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$Builder;", "brightness", "", "screen_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$ScreenStatus;", "unknownFields", "Lokio/ByteString;", "(ILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$ScreenStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "ScreenStatus", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ScreenMetadataEvent extends Message<ScreenMetadataEvent, Builder> {
    public static final ProtoAdapter<ScreenMetadataEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int brightness;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent$ScreenStatus#ADAPTER", jsonName = "screenStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ScreenStatus screen_status;

    public ScreenMetadataEvent() {
        this(0, null, null, 7, null);
    }

    public /* synthetic */ ScreenMetadataEvent(int i, ScreenStatus screenStatus, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? ScreenStatus.SCREEN_STATUS_INVALID : screenStatus, (i2 & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenMetadataEvent(int i, ScreenStatus screen_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(screen_status, "screen_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.brightness = i;
        this.screen_status = screen_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.brightness = this.brightness;
        builder.screen_status = this.screen_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ScreenMetadataEvent)) {
            return false;
        }
        ScreenMetadataEvent screenMetadataEvent = (ScreenMetadataEvent) other;
        return Intrinsics.areEqual(unknownFields(), screenMetadataEvent.unknownFields()) && this.brightness == screenMetadataEvent.brightness && this.screen_status == screenMetadataEvent.screen_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Integer.hashCode(this.brightness)) * 37) + this.screen_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("brightness=" + this.brightness);
        arrayList2.add("screen_status=" + this.screen_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ScreenMetadataEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ScreenMetadataEvent copy$default(ScreenMetadataEvent screenMetadataEvent, int i, ScreenStatus screenStatus, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = screenMetadataEvent.brightness;
        }
        if ((i2 & 2) != 0) {
            screenStatus = screenMetadataEvent.screen_status;
        }
        if ((i2 & 4) != 0) {
            byteString = screenMetadataEvent.unknownFields();
        }
        return screenMetadataEvent.copy(i, screenStatus, byteString);
    }

    public final ScreenMetadataEvent copy(int brightness, ScreenStatus screen_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(screen_status, "screen_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ScreenMetadataEvent(brightness, screen_status, unknownFields);
    }

    /* JADX INFO: compiled from: ScreenMetadataEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;", "()V", "brightness", "", "screen_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$ScreenStatus;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ScreenMetadataEvent, Builder> {
        public int brightness;
        public ScreenStatus screen_status = ScreenStatus.SCREEN_STATUS_INVALID;

        public final Builder brightness(int brightness) {
            this.brightness = brightness;
            return this;
        }

        public final Builder screen_status(ScreenStatus screen_status) {
            Intrinsics.checkNotNullParameter(screen_status, "screen_status");
            this.screen_status = screen_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ScreenMetadataEvent build() {
            return new ScreenMetadataEvent(this.brightness, this.screen_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ScreenMetadataEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ScreenMetadataEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ScreenMetadataEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ScreenMetadataEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ScreenMetadataEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.brightness != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.brightness));
                }
                return value.screen_status != ScreenMetadataEvent.ScreenStatus.SCREEN_STATUS_INVALID ? size + ScreenMetadataEvent.ScreenStatus.ADAPTER.encodedSizeWithTag(2, value.screen_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ScreenMetadataEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.brightness != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.brightness));
                }
                if (value.screen_status != ScreenMetadataEvent.ScreenStatus.SCREEN_STATUS_INVALID) {
                    ScreenMetadataEvent.ScreenStatus.ADAPTER.encodeWithTag(writer, 2, value.screen_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ScreenMetadataEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.screen_status != ScreenMetadataEvent.ScreenStatus.SCREEN_STATUS_INVALID) {
                    ScreenMetadataEvent.ScreenStatus.ADAPTER.encodeWithTag(writer, 2, value.screen_status);
                }
                if (value.brightness != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.brightness));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ScreenMetadataEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ScreenMetadataEvent.ScreenStatus screenStatusDecode = ScreenMetadataEvent.ScreenStatus.SCREEN_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ScreenMetadataEvent(iIntValue, screenStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        try {
                            screenStatusDecode = ScreenMetadataEvent.ScreenStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ScreenMetadataEvent redact(ScreenMetadataEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ScreenMetadataEvent.copy$default(value, 0, null, ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ScreenMetadataEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$ScreenStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SCREEN_STATUS_INVALID", "SCREEN_STATUS_ON", "SCREEN_STATUS_OFF", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ScreenStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ScreenStatus[] $VALUES;
        public static final ProtoAdapter<ScreenStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ScreenStatus SCREEN_STATUS_INVALID;
        public static final ScreenStatus SCREEN_STATUS_OFF;
        public static final ScreenStatus SCREEN_STATUS_ON;
        private final int value;

        private static final /* synthetic */ ScreenStatus[] $values() {
            return new ScreenStatus[]{SCREEN_STATUS_INVALID, SCREEN_STATUS_ON, SCREEN_STATUS_OFF};
        }

        @JvmStatic
        public static final ScreenStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ScreenStatus> getEntries() {
            return $ENTRIES;
        }

        public static ScreenStatus valueOf(String str) {
            return (ScreenStatus) Enum.valueOf(ScreenStatus.class, str);
        }

        public static ScreenStatus[] values() {
            return (ScreenStatus[]) $VALUES.clone();
        }

        private ScreenStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ScreenStatus screenStatus = new ScreenStatus("SCREEN_STATUS_INVALID", 0, 0);
            SCREEN_STATUS_INVALID = screenStatus;
            SCREEN_STATUS_ON = new ScreenStatus("SCREEN_STATUS_ON", 1, 1);
            SCREEN_STATUS_OFF = new ScreenStatus("SCREEN_STATUS_OFF", 2, 2);
            ScreenStatus[] screenStatusArr$values = $values();
            $VALUES = screenStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(screenStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ScreenStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ScreenStatus>(orCreateKotlinClass, syntax, screenStatus) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent$ScreenStatus$Companion$ADAPTER$1
                {
                    ScreenMetadataEvent.ScreenStatus screenStatus2 = screenStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ScreenMetadataEvent.ScreenStatus fromValue(int value) {
                    return ScreenMetadataEvent.ScreenStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ScreenMetadataEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$ScreenStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent$ScreenStatus;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ScreenStatus fromValue(int value) {
                if (value == 0) {
                    return ScreenStatus.SCREEN_STATUS_INVALID;
                }
                if (value == 1) {
                    return ScreenStatus.SCREEN_STATUS_ON;
                }
                if (value != 2) {
                    return null;
                }
                return ScreenStatus.SCREEN_STATUS_OFF;
            }
        }
    }
}
