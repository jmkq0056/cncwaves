package com.stripe.proto.model.common;

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
import com.stripe.proto.model.common.CompressionHeader;
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

/* JADX INFO: compiled from: CompressionHeader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/common/CompressionHeader;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/CompressionHeader$Builder;", "compression_type", "Lcom/stripe/proto/model/common/CompressionHeader$CompressionType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/CompressionHeader$CompressionType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "CompressionType", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompressionHeader extends Message<CompressionHeader, Builder> {
    public static final ProtoAdapter<CompressionHeader> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.CompressionHeader$CompressionType#ADAPTER", jsonName = "compressionType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CompressionType compression_type;

    /* JADX WARN: Multi-variable type inference failed */
    public CompressionHeader() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CompressionHeader(CompressionType compressionType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CompressionType.COMPRESSION_TYPE_INVALID : compressionType, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompressionHeader(CompressionType compression_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(compression_type, "compression_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.compression_type = compression_type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.compression_type = this.compression_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CompressionHeader)) {
            return false;
        }
        CompressionHeader compressionHeader = (CompressionHeader) other;
        return Intrinsics.areEqual(unknownFields(), compressionHeader.unknownFields()) && this.compression_type == compressionHeader.compression_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.compression_type.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("compression_type=" + this.compression_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CompressionHeader{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CompressionHeader copy$default(CompressionHeader compressionHeader, CompressionType compressionType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            compressionType = compressionHeader.compression_type;
        }
        if ((i & 2) != 0) {
            byteString = compressionHeader.unknownFields();
        }
        return compressionHeader.copy(compressionType, byteString);
    }

    public final CompressionHeader copy(CompressionType compression_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(compression_type, "compression_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CompressionHeader(compression_type, unknownFields);
    }

    /* JADX INFO: compiled from: CompressionHeader.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/common/CompressionHeader$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/CompressionHeader;", "()V", "compression_type", "Lcom/stripe/proto/model/common/CompressionHeader$CompressionType;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CompressionHeader, Builder> {
        public CompressionType compression_type = CompressionType.COMPRESSION_TYPE_INVALID;

        public final Builder compression_type(CompressionType compression_type) {
            Intrinsics.checkNotNullParameter(compression_type, "compression_type");
            this.compression_type = compression_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CompressionHeader build() {
            return new CompressionHeader(this.compression_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CompressionHeader.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/CompressionHeader$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/CompressionHeader;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/CompressionHeader$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CompressionHeader build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CompressionHeader.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CompressionHeader>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.CompressionHeader$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CompressionHeader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.compression_type != CompressionHeader.CompressionType.COMPRESSION_TYPE_INVALID ? size + CompressionHeader.CompressionType.ADAPTER.encodedSizeWithTag(1, value.compression_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CompressionHeader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.compression_type != CompressionHeader.CompressionType.COMPRESSION_TYPE_INVALID) {
                    CompressionHeader.CompressionType.ADAPTER.encodeWithTag(writer, 1, value.compression_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CompressionHeader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.compression_type != CompressionHeader.CompressionType.COMPRESSION_TYPE_INVALID) {
                    CompressionHeader.CompressionType.ADAPTER.encodeWithTag(writer, 1, value.compression_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CompressionHeader decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CompressionHeader.CompressionType compressionTypeDecode = CompressionHeader.CompressionType.COMPRESSION_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CompressionHeader(compressionTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            compressionTypeDecode = CompressionHeader.CompressionType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CompressionHeader redact(CompressionHeader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CompressionHeader.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CompressionHeader.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/CompressionHeader$CompressionType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "COMPRESSION_TYPE_INVALID", "GZIP", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CompressionType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CompressionType[] $VALUES;
        public static final ProtoAdapter<CompressionType> ADAPTER;
        public static final CompressionType COMPRESSION_TYPE_INVALID;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final CompressionType GZIP;
        private final int value;

        private static final /* synthetic */ CompressionType[] $values() {
            return new CompressionType[]{COMPRESSION_TYPE_INVALID, GZIP};
        }

        @JvmStatic
        public static final CompressionType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<CompressionType> getEntries() {
            return $ENTRIES;
        }

        public static CompressionType valueOf(String str) {
            return (CompressionType) Enum.valueOf(CompressionType.class, str);
        }

        public static CompressionType[] values() {
            return (CompressionType[]) $VALUES.clone();
        }

        private CompressionType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final CompressionType compressionType = new CompressionType("COMPRESSION_TYPE_INVALID", 0, 0);
            COMPRESSION_TYPE_INVALID = compressionType;
            GZIP = new CompressionType("GZIP", 1, 1);
            CompressionType[] compressionTypeArr$values = $values();
            $VALUES = compressionTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(compressionTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CompressionType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<CompressionType>(orCreateKotlinClass, syntax, compressionType) { // from class: com.stripe.proto.model.common.CompressionHeader$CompressionType$Companion$ADAPTER$1
                {
                    CompressionHeader.CompressionType compressionType2 = compressionType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CompressionHeader.CompressionType fromValue(int value) {
                    return CompressionHeader.CompressionType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CompressionHeader.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/CompressionHeader$CompressionType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/CompressionHeader$CompressionType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final CompressionType fromValue(int value) {
                if (value == 0) {
                    return CompressionType.COMPRESSION_TYPE_INVALID;
                }
                if (value != 1) {
                    return null;
                }
                return CompressionType.GZIP;
            }
        }
    }
}
