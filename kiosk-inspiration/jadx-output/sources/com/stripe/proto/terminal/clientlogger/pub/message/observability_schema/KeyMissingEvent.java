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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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

/* JADX INFO: compiled from: KeyMissingEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B)\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;", "key_type", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;", "detection_source", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "DetectionSource", "KeyType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KeyMissingEvent extends Message<KeyMissingEvent, Builder> {
    public static final ProtoAdapter<KeyMissingEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent$DetectionSource#ADAPTER", jsonName = "detectionSource", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DetectionSource detection_source;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent$KeyType#ADAPTER", jsonName = "keyType", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<KeyType> key_type;

    public KeyMissingEvent() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ KeyMissingEvent(List list, DetectionSource detectionSource, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? DetectionSource.DETECTION_SOURCE_INVALID : detectionSource, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyMissingEvent(List<? extends KeyType> key_type, DetectionSource detection_source, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(key_type, "key_type");
        Intrinsics.checkNotNullParameter(detection_source, "detection_source");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.detection_source = detection_source;
        this.key_type = Internal.immutableCopyOf("key_type", key_type);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.key_type = this.key_type;
        builder.detection_source = this.detection_source;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof KeyMissingEvent)) {
            return false;
        }
        KeyMissingEvent keyMissingEvent = (KeyMissingEvent) other;
        return Intrinsics.areEqual(unknownFields(), keyMissingEvent.unknownFields()) && Intrinsics.areEqual(this.key_type, keyMissingEvent.key_type) && this.detection_source == keyMissingEvent.detection_source;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.key_type.hashCode()) * 37) + this.detection_source.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.key_type.isEmpty()) {
            arrayList.add("key_type=" + this.key_type);
        }
        arrayList.add("detection_source=" + this.detection_source);
        return CollectionsKt.joinToString$default(arrayList, ", ", "KeyMissingEvent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KeyMissingEvent copy$default(KeyMissingEvent keyMissingEvent, List list, DetectionSource detectionSource, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = keyMissingEvent.key_type;
        }
        if ((i & 2) != 0) {
            detectionSource = keyMissingEvent.detection_source;
        }
        if ((i & 4) != 0) {
            byteString = keyMissingEvent.unknownFields();
        }
        return keyMissingEvent.copy(list, detectionSource, byteString);
    }

    public final KeyMissingEvent copy(List<? extends KeyType> key_type, DetectionSource detection_source, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(key_type, "key_type");
        Intrinsics.checkNotNullParameter(detection_source, "detection_source");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new KeyMissingEvent(key_type, detection_source, unknownFields);
    }

    /* JADX INFO: compiled from: KeyMissingEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;", "()V", "detection_source", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;", "key_type", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<KeyMissingEvent, Builder> {
        public List<? extends KeyType> key_type = CollectionsKt.emptyList();
        public DetectionSource detection_source = DetectionSource.DETECTION_SOURCE_INVALID;

        public final Builder key_type(List<? extends KeyType> key_type) {
            Intrinsics.checkNotNullParameter(key_type, "key_type");
            Internal.checkElementsNotNull(key_type);
            this.key_type = key_type;
            return this;
        }

        public final Builder detection_source(DetectionSource detection_source) {
            Intrinsics.checkNotNullParameter(detection_source, "detection_source");
            this.detection_source = detection_source;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public KeyMissingEvent build() {
            return new KeyMissingEvent(this.key_type, this.detection_source, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: KeyMissingEvent.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ KeyMissingEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KeyMissingEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<KeyMissingEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(KeyMissingEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + KeyMissingEvent.KeyType.ADAPTER.asRepeated().encodedSizeWithTag(1, value.key_type);
                return value.detection_source != KeyMissingEvent.DetectionSource.DETECTION_SOURCE_INVALID ? size + KeyMissingEvent.DetectionSource.ADAPTER.encodedSizeWithTag(2, value.detection_source) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, KeyMissingEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                KeyMissingEvent.KeyType.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.key_type);
                if (value.detection_source != KeyMissingEvent.DetectionSource.DETECTION_SOURCE_INVALID) {
                    KeyMissingEvent.DetectionSource.ADAPTER.encodeWithTag(writer, 2, value.detection_source);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, KeyMissingEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.detection_source != KeyMissingEvent.DetectionSource.DETECTION_SOURCE_INVALID) {
                    KeyMissingEvent.DetectionSource.ADAPTER.encodeWithTag(writer, 2, value.detection_source);
                }
                KeyMissingEvent.KeyType.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.key_type);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public KeyMissingEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                KeyMissingEvent.DetectionSource detectionSourceDecode = KeyMissingEvent.DetectionSource.DETECTION_SOURCE_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new KeyMissingEvent(arrayList, detectionSourceDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            KeyMissingEvent.KeyType.ADAPTER.tryDecode(reader, arrayList);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        try {
                            detectionSourceDecode = KeyMissingEvent.DetectionSource.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public KeyMissingEvent redact(KeyMissingEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return KeyMissingEvent.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: KeyMissingEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "KEY_TYPE_INVALID", "MAC", "EMV", "PIN", "TRACK", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class KeyType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ KeyType[] $VALUES;
        public static final ProtoAdapter<KeyType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final KeyType EMV;
        public static final KeyType KEY_TYPE_INVALID;
        public static final KeyType MAC;
        public static final KeyType PIN;
        public static final KeyType TRACK;
        private final int value;

        private static final /* synthetic */ KeyType[] $values() {
            return new KeyType[]{KEY_TYPE_INVALID, MAC, EMV, PIN, TRACK};
        }

        @JvmStatic
        public static final KeyType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<KeyType> getEntries() {
            return $ENTRIES;
        }

        public static KeyType valueOf(String str) {
            return (KeyType) Enum.valueOf(KeyType.class, str);
        }

        public static KeyType[] values() {
            return (KeyType[]) $VALUES.clone();
        }

        private KeyType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final KeyType keyType = new KeyType("KEY_TYPE_INVALID", 0, 0);
            KEY_TYPE_INVALID = keyType;
            MAC = new KeyType("MAC", 1, 1);
            EMV = new KeyType("EMV", 2, 2);
            PIN = new KeyType("PIN", 3, 3);
            TRACK = new KeyType("TRACK", 4, 4);
            KeyType[] keyTypeArr$values = $values();
            $VALUES = keyTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(keyTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KeyType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<KeyType>(orCreateKotlinClass, syntax, keyType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent$KeyType$Companion$ADAPTER$1
                {
                    KeyMissingEvent.KeyType keyType2 = keyType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public KeyMissingEvent.KeyType fromValue(int value) {
                    return KeyMissingEvent.KeyType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: KeyMissingEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final KeyType fromValue(int value) {
                if (value == 0) {
                    return KeyType.KEY_TYPE_INVALID;
                }
                if (value == 1) {
                    return KeyType.MAC;
                }
                if (value == 2) {
                    return KeyType.EMV;
                }
                if (value == 3) {
                    return KeyType.PIN;
                }
                if (value != 4) {
                    return null;
                }
                return KeyType.TRACK;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: KeyMissingEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DETECTION_SOURCE_INVALID", "SOURCE_CALLBACK", "SOURCE_BACKGROUND_LOOP", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DetectionSource implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DetectionSource[] $VALUES;
        public static final ProtoAdapter<DetectionSource> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DetectionSource DETECTION_SOURCE_INVALID;
        public static final DetectionSource SOURCE_BACKGROUND_LOOP;
        public static final DetectionSource SOURCE_CALLBACK;
        private final int value;

        private static final /* synthetic */ DetectionSource[] $values() {
            return new DetectionSource[]{DETECTION_SOURCE_INVALID, SOURCE_CALLBACK, SOURCE_BACKGROUND_LOOP};
        }

        @JvmStatic
        public static final DetectionSource fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DetectionSource> getEntries() {
            return $ENTRIES;
        }

        public static DetectionSource valueOf(String str) {
            return (DetectionSource) Enum.valueOf(DetectionSource.class, str);
        }

        public static DetectionSource[] values() {
            return (DetectionSource[]) $VALUES.clone();
        }

        private DetectionSource(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DetectionSource detectionSource = new DetectionSource("DETECTION_SOURCE_INVALID", 0, 0);
            DETECTION_SOURCE_INVALID = detectionSource;
            SOURCE_CALLBACK = new DetectionSource("SOURCE_CALLBACK", 1, 1);
            SOURCE_BACKGROUND_LOOP = new DetectionSource("SOURCE_BACKGROUND_LOOP", 2, 2);
            DetectionSource[] detectionSourceArr$values = $values();
            $VALUES = detectionSourceArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(detectionSourceArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DetectionSource.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DetectionSource>(orCreateKotlinClass, syntax, detectionSource) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent$DetectionSource$Companion$ADAPTER$1
                {
                    KeyMissingEvent.DetectionSource detectionSource2 = detectionSource;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public KeyMissingEvent.DetectionSource fromValue(int value) {
                    return KeyMissingEvent.DetectionSource.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: KeyMissingEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DetectionSource fromValue(int value) {
                if (value == 0) {
                    return DetectionSource.DETECTION_SOURCE_INVALID;
                }
                if (value == 1) {
                    return DetectionSource.SOURCE_CALLBACK;
                }
                if (value != 2) {
                    return null;
                }
                return DetectionSource.SOURCE_BACKGROUND_LOOP;
            }
        }
    }
}
