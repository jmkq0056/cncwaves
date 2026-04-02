package com.stripe.proto.model.config;

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
import com.stripe.proto.model.config.DeviceTraceLevel;
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

/* JADX INFO: compiled from: DeviceTraceLevel.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTraceLevel;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;", "trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;", "trace_sample_rate", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;DLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "TraceLevel", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTraceLevel extends Message<DeviceTraceLevel, Builder> {
    public static final ProtoAdapter<DeviceTraceLevel> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.config.DeviceTraceLevel$TraceLevel#ADAPTER", jsonName = "traceLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TraceLevel trace_level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", jsonName = "traceSampleRate", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final double trace_sample_rate;

    public DeviceTraceLevel() {
        this(null, 0.0d, null, 7, null);
    }

    public /* synthetic */ DeviceTraceLevel(TraceLevel traceLevel, double d, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TraceLevel.UNKNOWN : traceLevel, (i & 2) != 0 ? 0.0d : d, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceTraceLevel(TraceLevel trace_level, double d, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(trace_level, "trace_level");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.trace_level = trace_level;
        this.trace_sample_rate = d;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.trace_level = this.trace_level;
        builder.trace_sample_rate = this.trace_sample_rate;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceTraceLevel)) {
            return false;
        }
        DeviceTraceLevel deviceTraceLevel = (DeviceTraceLevel) other;
        return Intrinsics.areEqual(unknownFields(), deviceTraceLevel.unknownFields()) && this.trace_level == deviceTraceLevel.trace_level && this.trace_sample_rate == deviceTraceLevel.trace_sample_rate;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.trace_level.hashCode()) * 37) + Double.hashCode(this.trace_sample_rate);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("trace_level=" + this.trace_level);
        arrayList2.add("trace_sample_rate=" + this.trace_sample_rate);
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceTraceLevel{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceTraceLevel copy$default(DeviceTraceLevel deviceTraceLevel, TraceLevel traceLevel, double d, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            traceLevel = deviceTraceLevel.trace_level;
        }
        if ((i & 2) != 0) {
            d = deviceTraceLevel.trace_sample_rate;
        }
        if ((i & 4) != 0) {
            byteString = deviceTraceLevel.unknownFields();
        }
        return deviceTraceLevel.copy(traceLevel, d, byteString);
    }

    public final DeviceTraceLevel copy(TraceLevel trace_level, double trace_sample_rate, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(trace_level, "trace_level");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceTraceLevel(trace_level, trace_sample_rate, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceTraceLevel.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", "()V", "trace_level", "Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;", "trace_sample_rate", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceTraceLevel, Builder> {
        public TraceLevel trace_level = TraceLevel.UNKNOWN;
        public double trace_sample_rate;

        public final Builder trace_level(TraceLevel trace_level) {
            Intrinsics.checkNotNullParameter(trace_level, "trace_level");
            this.trace_level = trace_level;
            return this;
        }

        public final Builder trace_sample_rate(double trace_sample_rate) {
            this.trace_sample_rate = trace_sample_rate;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceTraceLevel build() {
            return new DeviceTraceLevel(this.trace_level, this.trace_sample_rate, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceTraceLevel.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTraceLevel$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/DeviceTraceLevel;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/DeviceTraceLevel$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceTraceLevel build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceTraceLevel.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceTraceLevel>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.DeviceTraceLevel$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceTraceLevel value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.trace_level != DeviceTraceLevel.TraceLevel.UNKNOWN) {
                    size += DeviceTraceLevel.TraceLevel.ADAPTER.encodedSizeWithTag(1, value.trace_level);
                }
                return !Double.valueOf(value.trace_sample_rate).equals(Double.valueOf(0.0d)) ? size + ProtoAdapter.DOUBLE.encodedSizeWithTag(2, Double.valueOf(value.trace_sample_rate)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceTraceLevel value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.trace_level != DeviceTraceLevel.TraceLevel.UNKNOWN) {
                    DeviceTraceLevel.TraceLevel.ADAPTER.encodeWithTag(writer, 1, value.trace_level);
                }
                if (!Double.valueOf(value.trace_sample_rate).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 2, Double.valueOf(value.trace_sample_rate));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceTraceLevel value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Double.valueOf(value.trace_sample_rate).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 2, Double.valueOf(value.trace_sample_rate));
                }
                if (value.trace_level != DeviceTraceLevel.TraceLevel.UNKNOWN) {
                    DeviceTraceLevel.TraceLevel.ADAPTER.encodeWithTag(writer, 1, value.trace_level);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceTraceLevel decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DeviceTraceLevel.TraceLevel traceLevelDecode = DeviceTraceLevel.TraceLevel.UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                double dDoubleValue = 0.0d;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceTraceLevel(traceLevelDecode, dDoubleValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            traceLevelDecode = DeviceTraceLevel.TraceLevel.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        dDoubleValue = ProtoAdapter.DOUBLE.decode(reader).doubleValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceTraceLevel redact(DeviceTraceLevel value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DeviceTraceLevel.copy$default(value, null, 0.0d, ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DeviceTraceLevel.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "LEVEL_NONE", "LEVEL_ERROR", "LEVEL_LITE", "LEVEL_ALL", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TraceLevel implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TraceLevel[] $VALUES;
        public static final ProtoAdapter<TraceLevel> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final TraceLevel LEVEL_ALL;
        public static final TraceLevel LEVEL_ERROR;
        public static final TraceLevel LEVEL_LITE;
        public static final TraceLevel LEVEL_NONE;
        public static final TraceLevel UNKNOWN;
        private final int value;

        private static final /* synthetic */ TraceLevel[] $values() {
            return new TraceLevel[]{UNKNOWN, LEVEL_NONE, LEVEL_ERROR, LEVEL_LITE, LEVEL_ALL};
        }

        @JvmStatic
        public static final TraceLevel fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<TraceLevel> getEntries() {
            return $ENTRIES;
        }

        public static TraceLevel valueOf(String str) {
            return (TraceLevel) Enum.valueOf(TraceLevel.class, str);
        }

        public static TraceLevel[] values() {
            return (TraceLevel[]) $VALUES.clone();
        }

        private TraceLevel(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final TraceLevel traceLevel = new TraceLevel("UNKNOWN", 0, 0);
            UNKNOWN = traceLevel;
            LEVEL_NONE = new TraceLevel("LEVEL_NONE", 1, 1);
            LEVEL_ERROR = new TraceLevel("LEVEL_ERROR", 2, 2);
            LEVEL_LITE = new TraceLevel("LEVEL_LITE", 3, 3);
            LEVEL_ALL = new TraceLevel("LEVEL_ALL", 4, 4);
            TraceLevel[] traceLevelArr$values = $values();
            $VALUES = traceLevelArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(traceLevelArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TraceLevel.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<TraceLevel>(orCreateKotlinClass, syntax, traceLevel) { // from class: com.stripe.proto.model.config.DeviceTraceLevel$TraceLevel$Companion$ADAPTER$1
                {
                    DeviceTraceLevel.TraceLevel traceLevel2 = traceLevel;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public DeviceTraceLevel.TraceLevel fromValue(int value) {
                    return DeviceTraceLevel.TraceLevel.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: DeviceTraceLevel.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/DeviceTraceLevel$TraceLevel;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final TraceLevel fromValue(int value) {
                if (value == 0) {
                    return TraceLevel.UNKNOWN;
                }
                if (value == 1) {
                    return TraceLevel.LEVEL_NONE;
                }
                if (value == 2) {
                    return TraceLevel.LEVEL_ERROR;
                }
                if (value == 3) {
                    return TraceLevel.LEVEL_LITE;
                }
                if (value != 4) {
                    return null;
                }
                return TraceLevel.LEVEL_ALL;
            }
        }
    }
}
