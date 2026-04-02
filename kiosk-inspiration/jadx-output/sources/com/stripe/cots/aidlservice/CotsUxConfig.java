package com.stripe.cots.aidlservice;

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
import com.stripe.cots.aidlservice.CotsUxConfig;
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

/* JADX INFO: compiled from: CotsUxConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\b\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dB1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$Builder;", "tapZoneOverride", "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;", "colorScheme", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;", "darkMode", "Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "ColorOverride", "ColorScheme", "Companion", "DarkMode", "Indicator", "PositionOverride", "TapZoneOverride", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsUxConfig extends Message<CotsUxConfig, Builder> {
    public static final ProtoAdapter<CotsUxConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$ColorScheme#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ColorScheme colorScheme;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$DarkMode#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final DarkMode darkMode;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$TapZoneOverride#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TapZoneOverride tapZoneOverride;

    public CotsUxConfig() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CotsUxConfig(TapZoneOverride tapZoneOverride, ColorScheme colorScheme, DarkMode darkMode, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tapZoneOverride, (i & 2) != 0 ? null : colorScheme, (i & 4) != 0 ? DarkMode.LIGHT : darkMode, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsUxConfig(TapZoneOverride tapZoneOverride, ColorScheme colorScheme, DarkMode darkMode, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(darkMode, "darkMode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tapZoneOverride = tapZoneOverride;
        this.colorScheme = colorScheme;
        this.darkMode = darkMode;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.tapZoneOverride = this.tapZoneOverride;
        builder.colorScheme = this.colorScheme;
        builder.darkMode = this.darkMode;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsUxConfig)) {
            return false;
        }
        CotsUxConfig cotsUxConfig = (CotsUxConfig) other;
        return Intrinsics.areEqual(unknownFields(), cotsUxConfig.unknownFields()) && Intrinsics.areEqual(this.tapZoneOverride, cotsUxConfig.tapZoneOverride) && Intrinsics.areEqual(this.colorScheme, cotsUxConfig.colorScheme) && this.darkMode == cotsUxConfig.darkMode;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        TapZoneOverride tapZoneOverride = this.tapZoneOverride;
        int iHashCode2 = (iHashCode + (tapZoneOverride != null ? tapZoneOverride.hashCode() : 0)) * 37;
        ColorScheme colorScheme = this.colorScheme;
        int iHashCode3 = ((iHashCode2 + (colorScheme != null ? colorScheme.hashCode() : 0)) * 37) + this.darkMode.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.tapZoneOverride != null) {
            arrayList.add("tapZoneOverride=" + this.tapZoneOverride);
        }
        if (this.colorScheme != null) {
            arrayList.add("colorScheme=" + this.colorScheme);
        }
        arrayList.add("darkMode=" + this.darkMode);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsUxConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsUxConfig copy$default(CotsUxConfig cotsUxConfig, TapZoneOverride tapZoneOverride, ColorScheme colorScheme, DarkMode darkMode, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            tapZoneOverride = cotsUxConfig.tapZoneOverride;
        }
        if ((i & 2) != 0) {
            colorScheme = cotsUxConfig.colorScheme;
        }
        if ((i & 4) != 0) {
            darkMode = cotsUxConfig.darkMode;
        }
        if ((i & 8) != 0) {
            byteString = cotsUxConfig.unknownFields();
        }
        return cotsUxConfig.copy(tapZoneOverride, colorScheme, darkMode, byteString);
    }

    public final CotsUxConfig copy(TapZoneOverride tapZoneOverride, ColorScheme colorScheme, DarkMode darkMode, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(darkMode, "darkMode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsUxConfig(tapZoneOverride, colorScheme, darkMode, unknownFields);
    }

    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsUxConfig;", "()V", "colorScheme", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;", "darkMode", "Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;", "tapZoneOverride", "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsUxConfig, Builder> {
        public ColorScheme colorScheme;
        public DarkMode darkMode = DarkMode.LIGHT;
        public TapZoneOverride tapZoneOverride;

        public final Builder tapZoneOverride(TapZoneOverride tapZoneOverride) {
            this.tapZoneOverride = tapZoneOverride;
            return this;
        }

        public final Builder colorScheme(ColorScheme colorScheme) {
            this.colorScheme = colorScheme;
            return this;
        }

        public final Builder darkMode(DarkMode darkMode) {
            Intrinsics.checkNotNullParameter(darkMode, "darkMode");
            this.darkMode = darkMode;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsUxConfig build() {
            return new CotsUxConfig(this.tapZoneOverride, this.colorScheme, this.darkMode, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsUxConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsUxConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsUxConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsUxConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.tapZoneOverride != null) {
                    size += CotsUxConfig.TapZoneOverride.ADAPTER.encodedSizeWithTag(1, value.tapZoneOverride);
                }
                if (value.colorScheme != null) {
                    size += CotsUxConfig.ColorScheme.ADAPTER.encodedSizeWithTag(2, value.colorScheme);
                }
                return value.darkMode != CotsUxConfig.DarkMode.LIGHT ? size + CotsUxConfig.DarkMode.ADAPTER.encodedSizeWithTag(3, value.darkMode) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsUxConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.tapZoneOverride != null) {
                    CotsUxConfig.TapZoneOverride.ADAPTER.encodeWithTag(writer, 1, value.tapZoneOverride);
                }
                if (value.colorScheme != null) {
                    CotsUxConfig.ColorScheme.ADAPTER.encodeWithTag(writer, 2, value.colorScheme);
                }
                if (value.darkMode != CotsUxConfig.DarkMode.LIGHT) {
                    CotsUxConfig.DarkMode.ADAPTER.encodeWithTag(writer, 3, value.darkMode);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsUxConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.darkMode != CotsUxConfig.DarkMode.LIGHT) {
                    CotsUxConfig.DarkMode.ADAPTER.encodeWithTag(writer, 3, value.darkMode);
                }
                if (value.colorScheme != null) {
                    CotsUxConfig.ColorScheme.ADAPTER.encodeWithTag(writer, 2, value.colorScheme);
                }
                if (value.tapZoneOverride != null) {
                    CotsUxConfig.TapZoneOverride.ADAPTER.encodeWithTag(writer, 1, value.tapZoneOverride);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsUxConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CotsUxConfig.DarkMode darkModeDecode = CotsUxConfig.DarkMode.LIGHT;
                long jBeginMessage = reader.beginMessage();
                CotsUxConfig.TapZoneOverride tapZoneOverrideDecode = null;
                CotsUxConfig.ColorScheme colorSchemeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsUxConfig(tapZoneOverrideDecode, colorSchemeDecode, darkModeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        tapZoneOverrideDecode = CotsUxConfig.TapZoneOverride.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        colorSchemeDecode = CotsUxConfig.ColorScheme.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            darkModeDecode = CotsUxConfig.DarkMode.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsUxConfig redact(CotsUxConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CotsUxConfig.TapZoneOverride tapZoneOverride = value.tapZoneOverride;
                CotsUxConfig.TapZoneOverride tapZoneOverrideRedact = tapZoneOverride != null ? CotsUxConfig.TapZoneOverride.ADAPTER.redact(tapZoneOverride) : null;
                CotsUxConfig.ColorScheme colorScheme = value.colorScheme;
                return CotsUxConfig.copy$default(value, tapZoneOverrideRedact, colorScheme != null ? CotsUxConfig.ColorScheme.ADAPTER.redact(colorScheme) : null, null, ByteString.EMPTY, 4, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEFAULT", "ABOVE", "BELOW", "FRONT", "BEHIND", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Indicator implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Indicator[] $VALUES;
        public static final Indicator ABOVE;
        public static final ProtoAdapter<Indicator> ADAPTER;
        public static final Indicator BEHIND;
        public static final Indicator BELOW;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Indicator DEFAULT;
        public static final Indicator FRONT;
        private final int value;

        private static final /* synthetic */ Indicator[] $values() {
            return new Indicator[]{DEFAULT, ABOVE, BELOW, FRONT, BEHIND};
        }

        @JvmStatic
        public static final Indicator fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Indicator> getEntries() {
            return $ENTRIES;
        }

        public static Indicator valueOf(String str) {
            return (Indicator) Enum.valueOf(Indicator.class, str);
        }

        public static Indicator[] values() {
            return (Indicator[]) $VALUES.clone();
        }

        private Indicator(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Indicator indicator = new Indicator("DEFAULT", 0, 0);
            DEFAULT = indicator;
            ABOVE = new Indicator("ABOVE", 1, 1);
            BELOW = new Indicator("BELOW", 2, 2);
            FRONT = new Indicator("FRONT", 3, 3);
            BEHIND = new Indicator("BEHIND", 4, 4);
            Indicator[] indicatorArr$values = $values();
            $VALUES = indicatorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(indicatorArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Indicator.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Indicator>(orCreateKotlinClass, syntax, indicator) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$Indicator$Companion$ADAPTER$1
                {
                    CotsUxConfig.Indicator indicator2 = indicator;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CotsUxConfig.Indicator fromValue(int value) {
                    return CotsUxConfig.Indicator.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;", "fromValue", "value", "", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Indicator fromValue(int value) {
                if (value == 0) {
                    return Indicator.DEFAULT;
                }
                if (value == 1) {
                    return Indicator.ABOVE;
                }
                if (value == 2) {
                    return Indicator.BELOW;
                }
                if (value == 3) {
                    return Indicator.FRONT;
                }
                if (value != 4) {
                    return null;
                }
                return Indicator.BEHIND;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "LIGHT", "SYSTEM", "DARK", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DarkMode implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DarkMode[] $VALUES;
        public static final ProtoAdapter<DarkMode> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DarkMode DARK;
        public static final DarkMode LIGHT;
        public static final DarkMode SYSTEM;
        private final int value;

        private static final /* synthetic */ DarkMode[] $values() {
            return new DarkMode[]{LIGHT, SYSTEM, DARK};
        }

        @JvmStatic
        public static final DarkMode fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DarkMode> getEntries() {
            return $ENTRIES;
        }

        public static DarkMode valueOf(String str) {
            return (DarkMode) Enum.valueOf(DarkMode.class, str);
        }

        public static DarkMode[] values() {
            return (DarkMode[]) $VALUES.clone();
        }

        private DarkMode(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DarkMode darkMode = new DarkMode("LIGHT", 0, 0);
            LIGHT = darkMode;
            SYSTEM = new DarkMode("SYSTEM", 1, 1);
            DARK = new DarkMode("DARK", 2, 2);
            DarkMode[] darkModeArr$values = $values();
            $VALUES = darkModeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(darkModeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DarkMode.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DarkMode>(orCreateKotlinClass, syntax, darkMode) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$DarkMode$Companion$ADAPTER$1
                {
                    CotsUxConfig.DarkMode darkMode2 = darkMode;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CotsUxConfig.DarkMode fromValue(int value) {
                    return CotsUxConfig.DarkMode.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;", "fromValue", "value", "", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DarkMode fromValue(int value) {
                if (value == 0) {
                    return DarkMode.LIGHT;
                }
                if (value == 1) {
                    return DarkMode.SYSTEM;
                }
                if (value != 2) {
                    return null;
                }
                return DarkMode.DARK;
            }
        }
    }

    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;", "xBias", "", "yBias", "unknownFields", "Lokio/ByteString;", "(FFLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PositionOverride extends Message<PositionOverride, Builder> {
        public static final ProtoAdapter<PositionOverride> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final float xBias;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final float yBias;

        public PositionOverride() {
            this(0.0f, 0.0f, null, 7, null);
        }

        public /* synthetic */ PositionOverride(float f, float f2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PositionOverride(float f, float f2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.xBias = f;
            this.yBias = f2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.xBias = this.xBias;
            builder.yBias = this.yBias;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof PositionOverride)) {
                return false;
            }
            PositionOverride positionOverride = (PositionOverride) other;
            return Intrinsics.areEqual(unknownFields(), positionOverride.unknownFields()) && this.xBias == positionOverride.xBias && this.yBias == positionOverride.yBias;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + Float.hashCode(this.xBias)) * 37) + Float.hashCode(this.yBias);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("xBias=" + this.xBias);
            arrayList2.add("yBias=" + this.yBias);
            return CollectionsKt.joinToString$default(arrayList, ", ", "PositionOverride{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ PositionOverride copy$default(PositionOverride positionOverride, float f, float f2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                f = positionOverride.xBias;
            }
            if ((i & 2) != 0) {
                f2 = positionOverride.yBias;
            }
            if ((i & 4) != 0) {
                byteString = positionOverride.unknownFields();
            }
            return positionOverride.copy(f, f2, byteString);
        }

        public final PositionOverride copy(float xBias, float yBias, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new PositionOverride(xBias, yBias, unknownFields);
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;", "()V", "xBias", "", "yBias", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<PositionOverride, Builder> {
            public float xBias;
            public float yBias;

            public final Builder xBias(float xBias) {
                this.xBias = xBias;
                return this;
            }

            public final Builder yBias(float yBias) {
                this.yBias = yBias;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public PositionOverride build() {
                return new PositionOverride(this.xBias, this.yBias, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ PositionOverride build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PositionOverride.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<PositionOverride>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$PositionOverride$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CotsUxConfig.PositionOverride value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    Float fValueOf = Float.valueOf(value.xBias);
                    Float fValueOf2 = Float.valueOf(0.0f);
                    if (!fValueOf.equals(fValueOf2)) {
                        size += ProtoAdapter.FLOAT.encodedSizeWithTag(1, Float.valueOf(value.xBias));
                    }
                    return !Float.valueOf(value.yBias).equals(fValueOf2) ? size + ProtoAdapter.FLOAT.encodedSizeWithTag(2, Float.valueOf(value.yBias)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CotsUxConfig.PositionOverride value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    Float fValueOf = Float.valueOf(value.xBias);
                    Float fValueOf2 = Float.valueOf(0.0f);
                    if (!fValueOf.equals(fValueOf2)) {
                        ProtoAdapter.FLOAT.encodeWithTag(writer, 1, Float.valueOf(value.xBias));
                    }
                    if (!Float.valueOf(value.yBias).equals(fValueOf2)) {
                        ProtoAdapter.FLOAT.encodeWithTag(writer, 2, Float.valueOf(value.yBias));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CotsUxConfig.PositionOverride value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    Float fValueOf = Float.valueOf(value.yBias);
                    Float fValueOf2 = Float.valueOf(0.0f);
                    if (!fValueOf.equals(fValueOf2)) {
                        ProtoAdapter.FLOAT.encodeWithTag(writer, 2, Float.valueOf(value.yBias));
                    }
                    if (Float.valueOf(value.xBias).equals(fValueOf2)) {
                        return;
                    }
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 1, Float.valueOf(value.xBias));
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.PositionOverride redact(CotsUxConfig.PositionOverride value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CotsUxConfig.PositionOverride.copy$default(value, 0.0f, 0.0f, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.PositionOverride decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    float fFloatValue = 0.0f;
                    float fFloatValue2 = 0.0f;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CotsUxConfig.PositionOverride(fFloatValue, fFloatValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            fFloatValue = ProtoAdapter.FLOAT.decode(reader).floatValue();
                        } else if (iNextTag == 2) {
                            fFloatValue2 = ProtoAdapter.FLOAT.decode(reader).floatValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Builder;", "indicator", "Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;", "positionOverride", "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TapZoneOverride extends Message<TapZoneOverride, Builder> {
        public static final ProtoAdapter<TapZoneOverride> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$Indicator#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Indicator indicator;

        @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$PositionOverride#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final PositionOverride positionOverride;

        public TapZoneOverride() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ TapZoneOverride(Indicator indicator, PositionOverride positionOverride, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Indicator.DEFAULT : indicator, (i & 2) != 0 ? null : positionOverride, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TapZoneOverride(Indicator indicator, PositionOverride positionOverride, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(indicator, "indicator");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.indicator = indicator;
            this.positionOverride = positionOverride;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.indicator = this.indicator;
            builder.positionOverride = this.positionOverride;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TapZoneOverride)) {
                return false;
            }
            TapZoneOverride tapZoneOverride = (TapZoneOverride) other;
            return Intrinsics.areEqual(unknownFields(), tapZoneOverride.unknownFields()) && this.indicator == tapZoneOverride.indicator && Intrinsics.areEqual(this.positionOverride, tapZoneOverride.positionOverride);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.indicator.hashCode()) * 37;
            PositionOverride positionOverride = this.positionOverride;
            int iHashCode2 = iHashCode + (positionOverride != null ? positionOverride.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("indicator=" + this.indicator);
            if (this.positionOverride != null) {
                arrayList2.add("positionOverride=" + this.positionOverride);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "TapZoneOverride{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ TapZoneOverride copy$default(TapZoneOverride tapZoneOverride, Indicator indicator, PositionOverride positionOverride, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                indicator = tapZoneOverride.indicator;
            }
            if ((i & 2) != 0) {
                positionOverride = tapZoneOverride.positionOverride;
            }
            if ((i & 4) != 0) {
                byteString = tapZoneOverride.unknownFields();
            }
            return tapZoneOverride.copy(indicator, positionOverride, byteString);
        }

        public final TapZoneOverride copy(Indicator indicator, PositionOverride positionOverride, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(indicator, "indicator");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TapZoneOverride(indicator, positionOverride, unknownFields);
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;", "()V", "indicator", "Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;", "positionOverride", "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TapZoneOverride, Builder> {
            public Indicator indicator = Indicator.DEFAULT;
            public PositionOverride positionOverride;

            public final Builder indicator(Indicator indicator) {
                Intrinsics.checkNotNullParameter(indicator, "indicator");
                this.indicator = indicator;
                return this;
            }

            public final Builder positionOverride(PositionOverride positionOverride) {
                this.positionOverride = positionOverride;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TapZoneOverride build() {
                return new TapZoneOverride(this.indicator, this.positionOverride, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TapZoneOverride build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TapZoneOverride.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TapZoneOverride>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$TapZoneOverride$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CotsUxConfig.TapZoneOverride value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.indicator != CotsUxConfig.Indicator.DEFAULT) {
                        size += CotsUxConfig.Indicator.ADAPTER.encodedSizeWithTag(1, value.indicator);
                    }
                    return value.positionOverride != null ? size + CotsUxConfig.PositionOverride.ADAPTER.encodedSizeWithTag(2, value.positionOverride) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CotsUxConfig.TapZoneOverride value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.indicator != CotsUxConfig.Indicator.DEFAULT) {
                        CotsUxConfig.Indicator.ADAPTER.encodeWithTag(writer, 1, value.indicator);
                    }
                    if (value.positionOverride != null) {
                        CotsUxConfig.PositionOverride.ADAPTER.encodeWithTag(writer, 2, value.positionOverride);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CotsUxConfig.TapZoneOverride value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.positionOverride != null) {
                        CotsUxConfig.PositionOverride.ADAPTER.encodeWithTag(writer, 2, value.positionOverride);
                    }
                    if (value.indicator != CotsUxConfig.Indicator.DEFAULT) {
                        CotsUxConfig.Indicator.ADAPTER.encodeWithTag(writer, 1, value.indicator);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.TapZoneOverride decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    CotsUxConfig.Indicator indicatorDecode = CotsUxConfig.Indicator.DEFAULT;
                    long jBeginMessage = reader.beginMessage();
                    CotsUxConfig.PositionOverride positionOverrideDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CotsUxConfig.TapZoneOverride(indicatorDecode, positionOverrideDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                indicatorDecode = CotsUxConfig.Indicator.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            positionOverrideDecode = CotsUxConfig.PositionOverride.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.TapZoneOverride redact(CotsUxConfig.TapZoneOverride value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    CotsUxConfig.PositionOverride positionOverride = value.positionOverride;
                    return CotsUxConfig.TapZoneOverride.copy$default(value, null, positionOverride != null ? CotsUxConfig.PositionOverride.ADAPTER.redact(positionOverride) : null, ByteString.EMPTY, 1, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ-\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;", "colorResource", "", "colorValue", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ColorOverride extends Message<ColorOverride, Builder> {
        public static final ProtoAdapter<ColorOverride> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", oneofName = "color", schemaIndex = 0, tag = 1)
        public final Integer colorResource;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", oneofName = "color", schemaIndex = 1, tag = 2)
        public final Integer colorValue;

        public ColorOverride() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ ColorOverride(Integer num, Integer num2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : num2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ColorOverride(Integer num, Integer num2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.colorResource = num;
            this.colorValue = num2;
            if (Internal.countNonNull(num, num2) > 1) {
                throw new IllegalArgumentException("At most one of colorResource, colorValue may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.colorResource = this.colorResource;
            builder.colorValue = this.colorValue;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof ColorOverride)) {
                return false;
            }
            ColorOverride colorOverride = (ColorOverride) other;
            return Intrinsics.areEqual(unknownFields(), colorOverride.unknownFields()) && Intrinsics.areEqual(this.colorResource, colorOverride.colorResource) && Intrinsics.areEqual(this.colorValue, colorOverride.colorValue);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Integer num = this.colorResource;
            int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
            Integer num2 = this.colorValue;
            int iHashCode3 = iHashCode2 + (num2 != null ? num2.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.colorResource != null) {
                arrayList.add("colorResource=" + this.colorResource);
            }
            if (this.colorValue != null) {
                arrayList.add("colorValue=" + this.colorValue);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "ColorOverride{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ ColorOverride copy$default(ColorOverride colorOverride, Integer num, Integer num2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                num = colorOverride.colorResource;
            }
            if ((i & 2) != 0) {
                num2 = colorOverride.colorValue;
            }
            if ((i & 4) != 0) {
                byteString = colorOverride.unknownFields();
            }
            return colorOverride.copy(num, num2, byteString);
        }

        public final ColorOverride copy(Integer colorResource, Integer colorValue, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new ColorOverride(colorResource, colorValue, unknownFields);
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "()V", "colorResource", "", "Ljava/lang/Integer;", "colorValue", "build", "(Ljava/lang/Integer;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<ColorOverride, Builder> {
            public Integer colorResource;
            public Integer colorValue;

            public final Builder colorResource(Integer colorResource) {
                this.colorResource = colorResource;
                this.colorValue = null;
                return this;
            }

            public final Builder colorValue(Integer colorValue) {
                this.colorValue = colorValue;
                this.colorResource = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ColorOverride build() {
                return new ColorOverride(this.colorResource, this.colorValue, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ ColorOverride build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ColorOverride.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<ColorOverride>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$ColorOverride$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CotsUxConfig.ColorOverride value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.INT32.encodedSizeWithTag(1, value.colorResource) + ProtoAdapter.INT32.encodedSizeWithTag(2, value.colorValue);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CotsUxConfig.ColorOverride value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, value.colorResource);
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, value.colorValue);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CotsUxConfig.ColorOverride value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, value.colorValue);
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, value.colorResource);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.ColorOverride redact(CotsUxConfig.ColorOverride value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CotsUxConfig.ColorOverride.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.ColorOverride decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Integer numDecode = null;
                    Integer numDecode2 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CotsUxConfig.ColorOverride(numDecode, numDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            numDecode = ProtoAdapter.INT32.decode(reader);
                        } else if (iNextTag == 2) {
                            numDecode2 = ProtoAdapter.INT32.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: CotsUxConfig.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ4\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme$Builder;", "primaryColorOverride", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "errorColorOverride", "successColorOverride", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ColorScheme extends Message<ColorScheme, Builder> {
        public static final ProtoAdapter<ColorScheme> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$ColorOverride#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final ColorOverride errorColorOverride;

        @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$ColorOverride#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final ColorOverride primaryColorOverride;

        @WireField(adapter = "com.stripe.cots.aidlservice.CotsUxConfig$ColorOverride#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final ColorOverride successColorOverride;

        public ColorScheme() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ ColorScheme(ColorOverride colorOverride, ColorOverride colorOverride2, ColorOverride colorOverride3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : colorOverride, (i & 2) != 0 ? null : colorOverride2, (i & 4) != 0 ? null : colorOverride3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ColorScheme(ColorOverride colorOverride, ColorOverride colorOverride2, ColorOverride colorOverride3, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.primaryColorOverride = colorOverride;
            this.errorColorOverride = colorOverride2;
            this.successColorOverride = colorOverride3;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.primaryColorOverride = this.primaryColorOverride;
            builder.errorColorOverride = this.errorColorOverride;
            builder.successColorOverride = this.successColorOverride;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof ColorScheme)) {
                return false;
            }
            ColorScheme colorScheme = (ColorScheme) other;
            return Intrinsics.areEqual(unknownFields(), colorScheme.unknownFields()) && Intrinsics.areEqual(this.primaryColorOverride, colorScheme.primaryColorOverride) && Intrinsics.areEqual(this.errorColorOverride, colorScheme.errorColorOverride) && Intrinsics.areEqual(this.successColorOverride, colorScheme.successColorOverride);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            ColorOverride colorOverride = this.primaryColorOverride;
            int iHashCode2 = (iHashCode + (colorOverride != null ? colorOverride.hashCode() : 0)) * 37;
            ColorOverride colorOverride2 = this.errorColorOverride;
            int iHashCode3 = (iHashCode2 + (colorOverride2 != null ? colorOverride2.hashCode() : 0)) * 37;
            ColorOverride colorOverride3 = this.successColorOverride;
            int iHashCode4 = iHashCode3 + (colorOverride3 != null ? colorOverride3.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.primaryColorOverride != null) {
                arrayList.add("primaryColorOverride=" + this.primaryColorOverride);
            }
            if (this.errorColorOverride != null) {
                arrayList.add("errorColorOverride=" + this.errorColorOverride);
            }
            if (this.successColorOverride != null) {
                arrayList.add("successColorOverride=" + this.successColorOverride);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "ColorScheme{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ ColorScheme copy$default(ColorScheme colorScheme, ColorOverride colorOverride, ColorOverride colorOverride2, ColorOverride colorOverride3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                colorOverride = colorScheme.primaryColorOverride;
            }
            if ((i & 2) != 0) {
                colorOverride2 = colorScheme.errorColorOverride;
            }
            if ((i & 4) != 0) {
                colorOverride3 = colorScheme.successColorOverride;
            }
            if ((i & 8) != 0) {
                byteString = colorScheme.unknownFields();
            }
            return colorScheme.copy(colorOverride, colorOverride2, colorOverride3, byteString);
        }

        public final ColorScheme copy(ColorOverride primaryColorOverride, ColorOverride errorColorOverride, ColorOverride successColorOverride, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new ColorScheme(primaryColorOverride, errorColorOverride, successColorOverride, unknownFields);
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;", "()V", "errorColorOverride", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;", "primaryColorOverride", "successColorOverride", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<ColorScheme, Builder> {
            public ColorOverride errorColorOverride;
            public ColorOverride primaryColorOverride;
            public ColorOverride successColorOverride;

            public final Builder primaryColorOverride(ColorOverride primaryColorOverride) {
                this.primaryColorOverride = primaryColorOverride;
                return this;
            }

            public final Builder errorColorOverride(ColorOverride errorColorOverride) {
                this.errorColorOverride = errorColorOverride;
                return this;
            }

            public final Builder successColorOverride(ColorOverride successColorOverride) {
                this.successColorOverride = successColorOverride;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ColorScheme build() {
                return new ColorScheme(this.primaryColorOverride, this.errorColorOverride, this.successColorOverride, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CotsUxConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ ColorScheme build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ColorScheme.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<ColorScheme>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsUxConfig$ColorScheme$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CotsUxConfig.ColorScheme value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.primaryColorOverride != null) {
                        size += CotsUxConfig.ColorOverride.ADAPTER.encodedSizeWithTag(1, value.primaryColorOverride);
                    }
                    if (value.errorColorOverride != null) {
                        size += CotsUxConfig.ColorOverride.ADAPTER.encodedSizeWithTag(2, value.errorColorOverride);
                    }
                    return value.successColorOverride != null ? size + CotsUxConfig.ColorOverride.ADAPTER.encodedSizeWithTag(3, value.successColorOverride) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CotsUxConfig.ColorScheme value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.primaryColorOverride != null) {
                        CotsUxConfig.ColorOverride.ADAPTER.encodeWithTag(writer, 1, value.primaryColorOverride);
                    }
                    if (value.errorColorOverride != null) {
                        CotsUxConfig.ColorOverride.ADAPTER.encodeWithTag(writer, 2, value.errorColorOverride);
                    }
                    if (value.successColorOverride != null) {
                        CotsUxConfig.ColorOverride.ADAPTER.encodeWithTag(writer, 3, value.successColorOverride);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CotsUxConfig.ColorScheme value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.successColorOverride != null) {
                        CotsUxConfig.ColorOverride.ADAPTER.encodeWithTag(writer, 3, value.successColorOverride);
                    }
                    if (value.errorColorOverride != null) {
                        CotsUxConfig.ColorOverride.ADAPTER.encodeWithTag(writer, 2, value.errorColorOverride);
                    }
                    if (value.primaryColorOverride != null) {
                        CotsUxConfig.ColorOverride.ADAPTER.encodeWithTag(writer, 1, value.primaryColorOverride);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.ColorScheme redact(CotsUxConfig.ColorScheme value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    CotsUxConfig.ColorOverride colorOverride = value.primaryColorOverride;
                    CotsUxConfig.ColorOverride colorOverrideRedact = colorOverride != null ? CotsUxConfig.ColorOverride.ADAPTER.redact(colorOverride) : null;
                    CotsUxConfig.ColorOverride colorOverride2 = value.errorColorOverride;
                    CotsUxConfig.ColorOverride colorOverrideRedact2 = colorOverride2 != null ? CotsUxConfig.ColorOverride.ADAPTER.redact(colorOverride2) : null;
                    CotsUxConfig.ColorOverride colorOverride3 = value.successColorOverride;
                    return value.copy(colorOverrideRedact, colorOverrideRedact2, colorOverride3 != null ? CotsUxConfig.ColorOverride.ADAPTER.redact(colorOverride3) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CotsUxConfig.ColorScheme decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    CotsUxConfig.ColorOverride colorOverrideDecode = null;
                    CotsUxConfig.ColorOverride colorOverrideDecode2 = null;
                    CotsUxConfig.ColorOverride colorOverrideDecode3 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CotsUxConfig.ColorScheme(colorOverrideDecode, colorOverrideDecode2, colorOverrideDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            colorOverrideDecode = CotsUxConfig.ColorOverride.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            colorOverrideDecode2 = CotsUxConfig.ColorOverride.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            colorOverrideDecode3 = CotsUxConfig.ColorOverride.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
