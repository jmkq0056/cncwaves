package com.stripe.bbpos.sdk;

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
import com.stripe.bbpos.sdk.TransactionResult;
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

/* JADX INFO: compiled from: TransactionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/TransactionResult$Builder;", "type", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/TransactionResult$Type;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Type", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionResult extends Message<TransactionResult, Builder> {
    public static final ProtoAdapter<TransactionResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.TransactionResult$Type#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Type type;

    /* JADX WARN: Multi-variable type inference failed */
    public TransactionResult() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ TransactionResult(Type type, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Type.TRANSACTION_RESULT_TYPE_UNKNOWN : type, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionResult(Type type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TransactionResult)) {
            return false;
        }
        TransactionResult transactionResult = (TransactionResult) other;
        return Intrinsics.areEqual(unknownFields(), transactionResult.unknownFields()) && this.type == transactionResult.type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.type.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("type=" + this.type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "TransactionResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TransactionResult copy$default(TransactionResult transactionResult, Type type, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            type = transactionResult.type;
        }
        if ((i & 2) != 0) {
            byteString = transactionResult.unknownFields();
        }
        return transactionResult.copy(type, byteString);
    }

    public final TransactionResult copy(Type type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TransactionResult(type, unknownFields);
    }

    /* JADX INFO: compiled from: TransactionResult.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/TransactionResult;", "()V", "type", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TransactionResult, Builder> {
        public Type type = Type.TRANSACTION_RESULT_TYPE_UNKNOWN;

        public final Builder type(Type type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TransactionResult build() {
            return new TransactionResult(this.type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TransactionResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/TransactionResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/TransactionResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TransactionResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TransactionResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TransactionResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.TransactionResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TransactionResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.type != TransactionResult.Type.TRANSACTION_RESULT_TYPE_UNKNOWN ? size + TransactionResult.Type.ADAPTER.encodedSizeWithTag(1, value.type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TransactionResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != TransactionResult.Type.TRANSACTION_RESULT_TYPE_UNKNOWN) {
                    TransactionResult.Type.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TransactionResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.type != TransactionResult.Type.TRANSACTION_RESULT_TYPE_UNKNOWN) {
                    TransactionResult.Type.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TransactionResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                TransactionResult.Type typeDecode = TransactionResult.Type.TRANSACTION_RESULT_TYPE_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new TransactionResult(typeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            typeDecode = TransactionResult.Type.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TransactionResult redact(TransactionResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return TransactionResult.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TransactionResult.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\b\u0086\u0081\u0002\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u001cB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001b¨\u0006\u001d"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TRANSACTION_RESULT_TYPE_UNKNOWN", "APPROVED", "TERMINATED", "DECLINED", "CANCELED_OR_TIMEOUT", "CAPK_FAIL", "NOT_ICC", "CARD_BLOCKED", "DEVICE_ERROR", "SELECT_APP_FAIL", "CARD_NOT_SUPPORTED", "MISSING_MANDATORY_DATA", "NO_EMV_APPS", "INVALID_ICC_DATA", "CONDITION_NOT_SATISFIED", "APPLICATION_BLOCKED", "ICC_CARD_REMOVED", "CARD_SCHEME_NOT_MATCHED", "CANCELED", "TIMEOUT", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Type implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final ProtoAdapter<Type> ADAPTER;
        public static final Type APPLICATION_BLOCKED;
        public static final Type APPROVED;
        public static final Type CANCELED;
        public static final Type CANCELED_OR_TIMEOUT;
        public static final Type CAPK_FAIL;
        public static final Type CARD_BLOCKED;
        public static final Type CARD_NOT_SUPPORTED;
        public static final Type CARD_SCHEME_NOT_MATCHED;
        public static final Type CONDITION_NOT_SATISFIED;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Type DECLINED;
        public static final Type DEVICE_ERROR;
        public static final Type ICC_CARD_REMOVED;
        public static final Type INVALID_ICC_DATA;
        public static final Type MISSING_MANDATORY_DATA;
        public static final Type NOT_ICC;
        public static final Type NO_EMV_APPS;
        public static final Type SELECT_APP_FAIL;
        public static final Type TERMINATED;
        public static final Type TIMEOUT;
        public static final Type TRANSACTION_RESULT_TYPE_UNKNOWN;
        private final int value;

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{TRANSACTION_RESULT_TYPE_UNKNOWN, APPROVED, TERMINATED, DECLINED, CANCELED_OR_TIMEOUT, CAPK_FAIL, NOT_ICC, CARD_BLOCKED, DEVICE_ERROR, SELECT_APP_FAIL, CARD_NOT_SUPPORTED, MISSING_MANDATORY_DATA, NO_EMV_APPS, INVALID_ICC_DATA, CONDITION_NOT_SATISFIED, APPLICATION_BLOCKED, ICC_CARD_REMOVED, CARD_SCHEME_NOT_MATCHED, CANCELED, TIMEOUT};
        }

        @JvmStatic
        public static final Type fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        private Type(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Type type = new Type("TRANSACTION_RESULT_TYPE_UNKNOWN", 0, 0);
            TRANSACTION_RESULT_TYPE_UNKNOWN = type;
            APPROVED = new Type("APPROVED", 1, 1);
            TERMINATED = new Type("TERMINATED", 2, 2);
            DECLINED = new Type("DECLINED", 3, 3);
            CANCELED_OR_TIMEOUT = new Type("CANCELED_OR_TIMEOUT", 4, 4);
            CAPK_FAIL = new Type("CAPK_FAIL", 5, 5);
            NOT_ICC = new Type("NOT_ICC", 6, 6);
            CARD_BLOCKED = new Type("CARD_BLOCKED", 7, 7);
            DEVICE_ERROR = new Type("DEVICE_ERROR", 8, 8);
            SELECT_APP_FAIL = new Type("SELECT_APP_FAIL", 9, 9);
            CARD_NOT_SUPPORTED = new Type("CARD_NOT_SUPPORTED", 10, 10);
            MISSING_MANDATORY_DATA = new Type("MISSING_MANDATORY_DATA", 11, 11);
            NO_EMV_APPS = new Type("NO_EMV_APPS", 12, 12);
            INVALID_ICC_DATA = new Type("INVALID_ICC_DATA", 13, 13);
            CONDITION_NOT_SATISFIED = new Type("CONDITION_NOT_SATISFIED", 14, 14);
            APPLICATION_BLOCKED = new Type("APPLICATION_BLOCKED", 15, 15);
            ICC_CARD_REMOVED = new Type("ICC_CARD_REMOVED", 16, 16);
            CARD_SCHEME_NOT_MATCHED = new Type("CARD_SCHEME_NOT_MATCHED", 17, 17);
            CANCELED = new Type("CANCELED", 18, 18);
            TIMEOUT = new Type("TIMEOUT", 19, 19);
            Type[] typeArr$values = $values();
            $VALUES = typeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Type.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Type>(orCreateKotlinClass, syntax, type) { // from class: com.stripe.bbpos.sdk.TransactionResult$Type$Companion$ADAPTER$1
                {
                    TransactionResult.Type type2 = type;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public TransactionResult.Type fromValue(int value) {
                    return TransactionResult.Type.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: TransactionResult.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionResult$Type$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Type fromValue(int value) {
                switch (value) {
                    case 0:
                        return Type.TRANSACTION_RESULT_TYPE_UNKNOWN;
                    case 1:
                        return Type.APPROVED;
                    case 2:
                        return Type.TERMINATED;
                    case 3:
                        return Type.DECLINED;
                    case 4:
                        return Type.CANCELED_OR_TIMEOUT;
                    case 5:
                        return Type.CAPK_FAIL;
                    case 6:
                        return Type.NOT_ICC;
                    case 7:
                        return Type.CARD_BLOCKED;
                    case 8:
                        return Type.DEVICE_ERROR;
                    case 9:
                        return Type.SELECT_APP_FAIL;
                    case 10:
                        return Type.CARD_NOT_SUPPORTED;
                    case 11:
                        return Type.MISSING_MANDATORY_DATA;
                    case 12:
                        return Type.NO_EMV_APPS;
                    case 13:
                        return Type.INVALID_ICC_DATA;
                    case 14:
                        return Type.CONDITION_NOT_SATISFIED;
                    case 15:
                        return Type.APPLICATION_BLOCKED;
                    case 16:
                        return Type.ICC_CARD_REMOVED;
                    case 17:
                        return Type.CARD_SCHEME_NOT_MATCHED;
                    case 18:
                        return Type.CANCELED;
                    case 19:
                        return Type.TIMEOUT;
                    default:
                        return null;
                }
            }
        }
    }
}
