package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata;
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

/* JADX INFO: compiled from: Metadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ.\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;", "client_timestamp_ms", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;", "logger_name", "", "unknownFields", "Lokio/ByteString;", "(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Level", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Metadata extends Message<Metadata, Builder> {
    public static final ProtoAdapter<Metadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "clientTimestampMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long client_timestamp_ms;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata$Level#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Level level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "loggerName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String logger_name;

    public Metadata() {
        this(0L, null, null, null, 15, null);
    }

    public /* synthetic */ Metadata(long j, Level level, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? Level.LEVEL_INVALID : level, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Metadata(long j, Level level, String logger_name, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(logger_name, "logger_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_timestamp_ms = j;
        this.level = level;
        this.logger_name = logger_name;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_timestamp_ms = this.client_timestamp_ms;
        builder.level = this.level;
        builder.logger_name = this.logger_name;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Metadata)) {
            return false;
        }
        Metadata metadata = (Metadata) other;
        return Intrinsics.areEqual(unknownFields(), metadata.unknownFields()) && this.client_timestamp_ms == metadata.client_timestamp_ms && this.level == metadata.level && Intrinsics.areEqual(this.logger_name, metadata.logger_name);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + Long.hashCode(this.client_timestamp_ms)) * 37) + this.level.hashCode()) * 37) + this.logger_name.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("client_timestamp_ms=" + this.client_timestamp_ms);
        arrayList2.add("level=" + this.level);
        arrayList2.add("logger_name=" + Internal.sanitize(this.logger_name));
        return CollectionsKt.joinToString$default(arrayList, ", ", "Metadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Metadata copy$default(Metadata metadata, long j, Level level, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = metadata.client_timestamp_ms;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            level = metadata.level;
        }
        Level level2 = level;
        if ((i & 4) != 0) {
            str = metadata.logger_name;
        }
        String str2 = str;
        if ((i & 8) != 0) {
            byteString = metadata.unknownFields();
        }
        return metadata.copy(j2, level2, str2, byteString);
    }

    public final Metadata copy(long client_timestamp_ms, Level level, String logger_name, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(logger_name, "logger_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Metadata(client_timestamp_ms, level, logger_name, unknownFields);
    }

    /* JADX INFO: compiled from: Metadata.kt */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;", "()V", "client_timestamp_ms", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;", "logger_name", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Metadata, Builder> {
        public long client_timestamp_ms;
        public Level level = Level.LEVEL_INVALID;
        public String logger_name = "";

        public final Builder client_timestamp_ms(long client_timestamp_ms) {
            this.client_timestamp_ms = client_timestamp_ms;
            return this;
        }

        public final Builder level(Level level) {
            Intrinsics.checkNotNullParameter(level, "level");
            this.level = level;
            return this;
        }

        public final Builder logger_name(String logger_name) {
            Intrinsics.checkNotNullParameter(logger_name, "logger_name");
            this.logger_name = logger_name;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Metadata build() {
            return new Metadata(this.client_timestamp_ms, this.level, this.logger_name, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Metadata.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Metadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Metadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Metadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Metadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.client_timestamp_ms != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.client_timestamp_ms));
                }
                if (value.level != Metadata.Level.LEVEL_INVALID) {
                    size += Metadata.Level.ADAPTER.encodedSizeWithTag(2, value.level);
                }
                return !Intrinsics.areEqual(value.logger_name, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.logger_name) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Metadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_timestamp_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.client_timestamp_ms));
                }
                if (value.level != Metadata.Level.LEVEL_INVALID) {
                    Metadata.Level.ADAPTER.encodeWithTag(writer, 2, value.level);
                }
                if (!Intrinsics.areEqual(value.logger_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.logger_name);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Metadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.logger_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.logger_name);
                }
                if (value.level != Metadata.Level.LEVEL_INVALID) {
                    Metadata.Level.ADAPTER.encodeWithTag(writer, 2, value.level);
                }
                if (value.client_timestamp_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.client_timestamp_ms));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Metadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Metadata.Level levelDecode = Metadata.Level.LEVEL_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                long jLongValue = 0;
                while (true) {
                    Metadata.Level level = levelDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new Metadata(jLongValue, level, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else if (iNextTag == 2) {
                            try {
                                levelDecode = Metadata.Level.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Metadata redact(Metadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Metadata.copy$default(value, 0L, null, null, ByteString.EMPTY, 7, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Metadata.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "LEVEL_INVALID", "DEBUG", "INFO", "WARN", "ERROR", "FATAL", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Level implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Level[] $VALUES;
        public static final ProtoAdapter<Level> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Level DEBUG;
        public static final Level ERROR;
        public static final Level FATAL;
        public static final Level INFO;
        public static final Level LEVEL_INVALID;
        public static final Level WARN;
        private final int value;

        private static final /* synthetic */ Level[] $values() {
            return new Level[]{LEVEL_INVALID, DEBUG, INFO, WARN, ERROR, FATAL};
        }

        @JvmStatic
        public static final Level fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Level> getEntries() {
            return $ENTRIES;
        }

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) $VALUES.clone();
        }

        private Level(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Level level = new Level("LEVEL_INVALID", 0, 0);
            LEVEL_INVALID = level;
            DEBUG = new Level("DEBUG", 1, 1);
            INFO = new Level("INFO", 2, 2);
            WARN = new Level("WARN", 3, 3);
            ERROR = new Level("ERROR", 4, 4);
            FATAL = new Level("FATAL", 5, 5);
            Level[] levelArr$values = $values();
            $VALUES = levelArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(levelArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Level.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Level>(orCreateKotlinClass, syntax, level) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata$Level$Companion$ADAPTER$1
                {
                    Metadata.Level level2 = level;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public Metadata.Level fromValue(int value) {
                    return Metadata.Level.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: Metadata.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Level fromValue(int value) {
                if (value == 0) {
                    return Level.LEVEL_INVALID;
                }
                if (value == 1) {
                    return Level.DEBUG;
                }
                if (value == 2) {
                    return Level.INFO;
                }
                if (value == 3) {
                    return Level.WARN;
                }
                if (value == 4) {
                    return Level.ERROR;
                }
                if (value != 5) {
                    return null;
                }
                return Level.FATAL;
            }
        }
    }
}
