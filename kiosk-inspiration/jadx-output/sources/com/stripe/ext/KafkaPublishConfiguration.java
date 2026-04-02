package com.stripe.ext;

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
import com.stripe.ext.KafkaPublishConfiguration;
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

/* JADX INFO: compiled from: KafkaPublishConfiguration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJE\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/ext/KafkaPublishConfiguration;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/KafkaPublishConfiguration$Builder;", "sync", "", "wire_format", "Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;", "envelope_collection", "", "allow_publishing_later", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Boolean;Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/Boolean;Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/ext/KafkaPublishConfiguration;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "WireFormat", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KafkaPublishConfiguration extends Message<KafkaPublishConfiguration, Builder> {
    public static final ProtoAdapter<KafkaPublishConfiguration> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final WireFormat DEFAULT_WIRE_FORMAT = WireFormat.BSON;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 3, tag = 4)
    public final Boolean allow_publishing_later;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final String envelope_collection;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 0, tag = 1)
    public final Boolean sync;

    @WireField(adapter = "com.stripe.ext.KafkaPublishConfiguration$WireFormat#ADAPTER", schemaIndex = 1, tag = 2)
    public final WireFormat wire_format;

    public KafkaPublishConfiguration() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ KafkaPublishConfiguration(Boolean bool, WireFormat wireFormat, String str, Boolean bool2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : wireFormat, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : bool2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KafkaPublishConfiguration(Boolean bool, WireFormat wireFormat, String str, Boolean bool2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.sync = bool;
        this.wire_format = wireFormat;
        this.envelope_collection = str;
        this.allow_publishing_later = bool2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.sync = this.sync;
        builder.wire_format = this.wire_format;
        builder.envelope_collection = this.envelope_collection;
        builder.allow_publishing_later = this.allow_publishing_later;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof KafkaPublishConfiguration)) {
            return false;
        }
        KafkaPublishConfiguration kafkaPublishConfiguration = (KafkaPublishConfiguration) other;
        return Intrinsics.areEqual(unknownFields(), kafkaPublishConfiguration.unknownFields()) && Intrinsics.areEqual(this.sync, kafkaPublishConfiguration.sync) && this.wire_format == kafkaPublishConfiguration.wire_format && Intrinsics.areEqual(this.envelope_collection, kafkaPublishConfiguration.envelope_collection) && Intrinsics.areEqual(this.allow_publishing_later, kafkaPublishConfiguration.allow_publishing_later);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Boolean bool = this.sync;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        WireFormat wireFormat = this.wire_format;
        int iHashCode3 = (iHashCode2 + (wireFormat != null ? wireFormat.hashCode() : 0)) * 37;
        String str = this.envelope_collection;
        int iHashCode4 = (iHashCode3 + (str != null ? str.hashCode() : 0)) * 37;
        Boolean bool2 = this.allow_publishing_later;
        int iHashCode5 = iHashCode4 + (bool2 != null ? bool2.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.sync != null) {
            arrayList.add("sync=" + this.sync);
        }
        if (this.wire_format != null) {
            arrayList.add("wire_format=" + this.wire_format);
        }
        if (this.envelope_collection != null) {
            arrayList.add("envelope_collection=" + Internal.sanitize(this.envelope_collection));
        }
        if (this.allow_publishing_later != null) {
            arrayList.add("allow_publishing_later=" + this.allow_publishing_later);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "KafkaPublishConfiguration{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ KafkaPublishConfiguration copy$default(KafkaPublishConfiguration kafkaPublishConfiguration, Boolean bool, WireFormat wireFormat, String str, Boolean bool2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = kafkaPublishConfiguration.sync;
        }
        if ((i & 2) != 0) {
            wireFormat = kafkaPublishConfiguration.wire_format;
        }
        if ((i & 4) != 0) {
            str = kafkaPublishConfiguration.envelope_collection;
        }
        if ((i & 8) != 0) {
            bool2 = kafkaPublishConfiguration.allow_publishing_later;
        }
        if ((i & 16) != 0) {
            byteString = kafkaPublishConfiguration.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str2 = str;
        return kafkaPublishConfiguration.copy(bool, wireFormat, str2, bool2, byteString2);
    }

    public final KafkaPublishConfiguration copy(Boolean sync, WireFormat wire_format, String envelope_collection, Boolean allow_publishing_later, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new KafkaPublishConfiguration(sync, wire_format, envelope_collection, allow_publishing_later, unknownFields);
    }

    /* JADX INFO: compiled from: KafkaPublishConfiguration.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/KafkaPublishConfiguration$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/KafkaPublishConfiguration;", "()V", "allow_publishing_later", "", "Ljava/lang/Boolean;", "envelope_collection", "", "sync", "wire_format", "Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;", "(Ljava/lang/Boolean;)Lcom/stripe/ext/KafkaPublishConfiguration$Builder;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<KafkaPublishConfiguration, Builder> {
        public Boolean allow_publishing_later;
        public String envelope_collection;
        public Boolean sync;
        public WireFormat wire_format;

        public final Builder sync(Boolean sync) {
            this.sync = sync;
            return this;
        }

        public final Builder wire_format(WireFormat wire_format) {
            this.wire_format = wire_format;
            return this;
        }

        public final Builder envelope_collection(String envelope_collection) {
            this.envelope_collection = envelope_collection;
            return this;
        }

        public final Builder allow_publishing_later(Boolean allow_publishing_later) {
            this.allow_publishing_later = allow_publishing_later;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public KafkaPublishConfiguration build() {
            return new KafkaPublishConfiguration(this.sync, this.wire_format, this.envelope_collection, this.allow_publishing_later, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: KafkaPublishConfiguration.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\n\u001a\u00020\u00052\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Lcom/stripe/ext/KafkaPublishConfiguration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/KafkaPublishConfiguration;", "DEFAULT_WIRE_FORMAT", "Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/KafkaPublishConfiguration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ KafkaPublishConfiguration build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KafkaPublishConfiguration.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new ProtoAdapter<KafkaPublishConfiguration>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.KafkaPublishConfiguration$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(KafkaPublishConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProtoAdapter.BOOL.encodedSizeWithTag(1, value.sync) + KafkaPublishConfiguration.WireFormat.ADAPTER.encodedSizeWithTag(2, value.wire_format) + ProtoAdapter.STRING.encodedSizeWithTag(3, value.envelope_collection) + ProtoAdapter.BOOL.encodedSizeWithTag(4, value.allow_publishing_later);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, KafkaPublishConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.BOOL.encodeWithTag(writer, 1, value.sync);
                KafkaPublishConfiguration.WireFormat.ADAPTER.encodeWithTag(writer, 2, value.wire_format);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.envelope_collection);
                ProtoAdapter.BOOL.encodeWithTag(writer, 4, value.allow_publishing_later);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, KafkaPublishConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.BOOL.encodeWithTag(writer, 4, value.allow_publishing_later);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.envelope_collection);
                KafkaPublishConfiguration.WireFormat.ADAPTER.encodeWithTag(writer, 2, value.wire_format);
                ProtoAdapter.BOOL.encodeWithTag(writer, 1, value.sync);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public KafkaPublishConfiguration redact(KafkaPublishConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return KafkaPublishConfiguration.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public KafkaPublishConfiguration decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                KafkaPublishConfiguration.WireFormat wireFormatDecode = null;
                String strDecode = null;
                Boolean boolDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new KafkaPublishConfiguration(boolDecode, wireFormatDecode, strDecode, boolDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        boolDecode = ProtoAdapter.BOOL.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            wireFormatDecode = KafkaPublishConfiguration.WireFormat.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        boolDecode2 = ProtoAdapter.BOOL.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: KafkaPublishConfiguration.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "BSON", "JSON", "PROTO", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WireFormat implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ WireFormat[] $VALUES;
        public static final ProtoAdapter<WireFormat> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final int value;
        public static final WireFormat BSON = new WireFormat("BSON", 0, 1);
        public static final WireFormat JSON = new WireFormat("JSON", 1, 2);
        public static final WireFormat PROTO = new WireFormat("PROTO", 2, 3);

        private static final /* synthetic */ WireFormat[] $values() {
            return new WireFormat[]{BSON, JSON, PROTO};
        }

        @JvmStatic
        public static final WireFormat fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<WireFormat> getEntries() {
            return $ENTRIES;
        }

        public static WireFormat valueOf(String str) {
            return (WireFormat) Enum.valueOf(WireFormat.class, str);
        }

        public static WireFormat[] values() {
            return (WireFormat[]) $VALUES.clone();
        }

        private WireFormat(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            WireFormat[] wireFormatArr$values = $values();
            $VALUES = wireFormatArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(wireFormatArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WireFormat.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<WireFormat>(orCreateKotlinClass, syntax) { // from class: com.stripe.ext.KafkaPublishConfiguration$WireFormat$Companion$ADAPTER$1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public KafkaPublishConfiguration.WireFormat fromValue(int value) {
                    return KafkaPublishConfiguration.WireFormat.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: KafkaPublishConfiguration.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/KafkaPublishConfiguration$WireFormat;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final WireFormat fromValue(int value) {
                if (value == 1) {
                    return WireFormat.BSON;
                }
                if (value == 2) {
                    return WireFormat.JSON;
                }
                if (value != 3) {
                    return null;
                }
                return WireFormat.PROTO;
            }
        }
    }
}
