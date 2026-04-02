package com.stripe.proto.api.sdk;

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
import com.stripe.proto.api.sdk.CollectDataRequest;
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

/* JADX INFO: compiled from: CollectDataRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectDataRequest$Builder;", "data_type", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "enable_customer_cancellation", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "CollectDataType", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectDataRequest extends Message<CollectDataRequest, Builder> {
    public static final ProtoAdapter<CollectDataRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.CollectDataRequest$CollectDataType#ADAPTER", jsonName = "dataType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CollectDataType data_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCustomerCancellation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean enable_customer_cancellation;

    public CollectDataRequest() {
        this(null, false, null, 7, null);
    }

    public /* synthetic */ CollectDataRequest(CollectDataType collectDataType, boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectDataType.DATA_TYPE_INVALID : collectDataType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectDataRequest(CollectDataType data_type, boolean z, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(data_type, "data_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.data_type = data_type;
        this.enable_customer_cancellation = z;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.data_type = this.data_type;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectDataRequest)) {
            return false;
        }
        CollectDataRequest collectDataRequest = (CollectDataRequest) other;
        return Intrinsics.areEqual(unknownFields(), collectDataRequest.unknownFields()) && this.data_type == collectDataRequest.data_type && this.enable_customer_cancellation == collectDataRequest.enable_customer_cancellation;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.data_type.hashCode()) * 37) + Boolean.hashCode(this.enable_customer_cancellation);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("data_type=" + this.data_type);
        arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectDataRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CollectDataRequest copy$default(CollectDataRequest collectDataRequest, CollectDataType collectDataType, boolean z, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            collectDataType = collectDataRequest.data_type;
        }
        if ((i & 2) != 0) {
            z = collectDataRequest.enable_customer_cancellation;
        }
        if ((i & 4) != 0) {
            byteString = collectDataRequest.unknownFields();
        }
        return collectDataRequest.copy(collectDataType, z, byteString);
    }

    public final CollectDataRequest copy(CollectDataType data_type, boolean enable_customer_cancellation, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(data_type, "data_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectDataRequest(data_type, enable_customer_cancellation, unknownFields);
    }

    /* JADX INFO: compiled from: CollectDataRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectDataRequest;", "()V", "data_type", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "enable_customer_cancellation", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectDataRequest, Builder> {
        public CollectDataType data_type = CollectDataType.DATA_TYPE_INVALID;
        public boolean enable_customer_cancellation;

        public final Builder data_type(CollectDataType data_type) {
            Intrinsics.checkNotNullParameter(data_type, "data_type");
            this.data_type = data_type;
            return this;
        }

        public final Builder enable_customer_cancellation(boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectDataRequest build() {
            return new CollectDataRequest(this.data_type, this.enable_customer_cancellation, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectDataRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectDataRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectDataRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectDataRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectDataRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectDataRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectDataRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.data_type != CollectDataRequest.CollectDataType.DATA_TYPE_INVALID) {
                    size += CollectDataRequest.CollectDataType.ADAPTER.encodedSizeWithTag(1, value.data_type);
                }
                return value.enable_customer_cancellation ? size + ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.enable_customer_cancellation)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.data_type != CollectDataRequest.CollectDataType.DATA_TYPE_INVALID) {
                    CollectDataRequest.CollectDataType.ADAPTER.encodeWithTag(writer, 1, value.data_type);
                }
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.enable_customer_cancellation));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.enable_customer_cancellation));
                }
                if (value.data_type != CollectDataRequest.CollectDataType.DATA_TYPE_INVALID) {
                    CollectDataRequest.CollectDataType.ADAPTER.encodeWithTag(writer, 1, value.data_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectDataRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CollectDataRequest.CollectDataType collectDataTypeDecode = CollectDataRequest.CollectDataType.DATA_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectDataRequest(collectDataTypeDecode, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            collectDataTypeDecode = CollectDataRequest.CollectDataType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectDataRequest redact(CollectDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CollectDataRequest.copy$default(value, null, false, ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CollectDataRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DATA_TYPE_INVALID", "MAGSTRIPE", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CollectDataType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CollectDataType[] $VALUES;
        public static final ProtoAdapter<CollectDataType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final CollectDataType DATA_TYPE_INVALID;
        public static final CollectDataType MAGSTRIPE;
        private final int value;

        private static final /* synthetic */ CollectDataType[] $values() {
            return new CollectDataType[]{DATA_TYPE_INVALID, MAGSTRIPE};
        }

        @JvmStatic
        public static final CollectDataType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<CollectDataType> getEntries() {
            return $ENTRIES;
        }

        public static CollectDataType valueOf(String str) {
            return (CollectDataType) Enum.valueOf(CollectDataType.class, str);
        }

        public static CollectDataType[] values() {
            return (CollectDataType[]) $VALUES.clone();
        }

        private CollectDataType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final CollectDataType collectDataType = new CollectDataType("DATA_TYPE_INVALID", 0, 0);
            DATA_TYPE_INVALID = collectDataType;
            MAGSTRIPE = new CollectDataType("MAGSTRIPE", 1, 1);
            CollectDataType[] collectDataTypeArr$values = $values();
            $VALUES = collectDataTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(collectDataTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectDataType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<CollectDataType>(orCreateKotlinClass, syntax, collectDataType) { // from class: com.stripe.proto.api.sdk.CollectDataRequest$CollectDataType$Companion$ADAPTER$1
                {
                    CollectDataRequest.CollectDataType collectDataType2 = collectDataType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CollectDataRequest.CollectDataType fromValue(int value) {
                    return CollectDataRequest.CollectDataType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CollectDataRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final CollectDataType fromValue(int value) {
                if (value == 0) {
                    return CollectDataType.DATA_TYPE_INVALID;
                }
                if (value != 1) {
                    return null;
                }
                return CollectDataType.MAGSTRIPE;
            }
        }
    }
}
