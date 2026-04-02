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
import com.stripe.bbpos.sdk.PinEntryResult;
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

/* JADX INFO: compiled from: PinEntryResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntryResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;", "pinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Type", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinEntryResult extends Message<PinEntryResult, Builder> {
    public static final ProtoAdapter<PinEntryResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.PinData#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final PinData pinData;

    @WireField(adapter = "com.stripe.bbpos.sdk.PinEntryResult$Type#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Type pinEntryResult;

    public PinEntryResult() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ PinEntryResult(Type type, PinData pinData, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Type.PIN_ENTRY_RESULT_UNKNOWN : type, (i & 2) != 0 ? null : pinData, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinEntryResult(Type pinEntryResult, PinData pinData, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(pinEntryResult, "pinEntryResult");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pinEntryResult = pinEntryResult;
        this.pinData = pinData;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pinEntryResult = this.pinEntryResult;
        builder.pinData = this.pinData;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PinEntryResult)) {
            return false;
        }
        PinEntryResult pinEntryResult = (PinEntryResult) other;
        return Intrinsics.areEqual(unknownFields(), pinEntryResult.unknownFields()) && this.pinEntryResult == pinEntryResult.pinEntryResult && Intrinsics.areEqual(this.pinData, pinEntryResult.pinData);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.pinEntryResult.hashCode()) * 37;
        PinData pinData = this.pinData;
        int iHashCode2 = iHashCode + (pinData != null ? pinData.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("pinEntryResult=" + this.pinEntryResult);
        if (this.pinData != null) {
            arrayList2.add("pinData=" + this.pinData);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PinEntryResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PinEntryResult copy$default(PinEntryResult pinEntryResult, Type type, PinData pinData, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            type = pinEntryResult.pinEntryResult;
        }
        if ((i & 2) != 0) {
            pinData = pinEntryResult.pinData;
        }
        if ((i & 4) != 0) {
            byteString = pinEntryResult.unknownFields();
        }
        return pinEntryResult.copy(type, pinData, byteString);
    }

    public final PinEntryResult copy(Type pinEntryResult, PinData pinData, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(pinEntryResult, "pinEntryResult");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PinEntryResult(pinEntryResult, pinData, unknownFields);
    }

    /* JADX INFO: compiled from: PinEntryResult.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/PinEntryResult;", "()V", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "pinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PinEntryResult, Builder> {
        public PinData pinData;
        public Type pinEntryResult = Type.PIN_ENTRY_RESULT_UNKNOWN;

        public final Builder pinEntryResult(Type pinEntryResult) {
            Intrinsics.checkNotNullParameter(pinEntryResult, "pinEntryResult");
            this.pinEntryResult = pinEntryResult;
            return this;
        }

        public final Builder pinData(PinData pinData) {
            this.pinData = pinData;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PinEntryResult build() {
            return new PinEntryResult(this.pinEntryResult, this.pinData, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PinEntryResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntryResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/PinEntryResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PinEntryResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PinEntryResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PinEntryResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.PinEntryResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PinEntryResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.pinEntryResult != PinEntryResult.Type.PIN_ENTRY_RESULT_UNKNOWN) {
                    size += PinEntryResult.Type.ADAPTER.encodedSizeWithTag(1, value.pinEntryResult);
                }
                return value.pinData != null ? size + PinData.ADAPTER.encodedSizeWithTag(2, value.pinData) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PinEntryResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.pinEntryResult != PinEntryResult.Type.PIN_ENTRY_RESULT_UNKNOWN) {
                    PinEntryResult.Type.ADAPTER.encodeWithTag(writer, 1, value.pinEntryResult);
                }
                if (value.pinData != null) {
                    PinData.ADAPTER.encodeWithTag(writer, 2, value.pinData);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PinEntryResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.pinData != null) {
                    PinData.ADAPTER.encodeWithTag(writer, 2, value.pinData);
                }
                if (value.pinEntryResult != PinEntryResult.Type.PIN_ENTRY_RESULT_UNKNOWN) {
                    PinEntryResult.Type.ADAPTER.encodeWithTag(writer, 1, value.pinEntryResult);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PinEntryResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                PinEntryResult.Type typeDecode = PinEntryResult.Type.PIN_ENTRY_RESULT_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                PinData pinDataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PinEntryResult(typeDecode, pinDataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            typeDecode = PinEntryResult.Type.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        pinDataDecode = PinData.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PinEntryResult redact(PinEntryResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PinData pinData = value.pinData;
                return PinEntryResult.copy$default(value, null, pinData != null ? PinData.ADAPTER.redact(pinData) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PinEntryResult.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PIN_ENTRY_RESULT_UNKNOWN", "ENTERED", "CANCEL", "TIMEOUT", "BYPASS", "WRONG_PIN_LENGTH", "INCORRECT_PIN", "ICC_REMOVED", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Type implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final ProtoAdapter<Type> ADAPTER;
        public static final Type BYPASS;
        public static final Type CANCEL;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Type ENTERED;
        public static final Type ICC_REMOVED;
        public static final Type INCORRECT_PIN;
        public static final Type PIN_ENTRY_RESULT_UNKNOWN;
        public static final Type TIMEOUT;
        public static final Type WRONG_PIN_LENGTH;
        private final int value;

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{PIN_ENTRY_RESULT_UNKNOWN, ENTERED, CANCEL, TIMEOUT, BYPASS, WRONG_PIN_LENGTH, INCORRECT_PIN, ICC_REMOVED};
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
            final Type type = new Type("PIN_ENTRY_RESULT_UNKNOWN", 0, 0);
            PIN_ENTRY_RESULT_UNKNOWN = type;
            ENTERED = new Type("ENTERED", 1, 1);
            CANCEL = new Type("CANCEL", 2, 2);
            TIMEOUT = new Type("TIMEOUT", 3, 3);
            BYPASS = new Type("BYPASS", 4, 4);
            WRONG_PIN_LENGTH = new Type("WRONG_PIN_LENGTH", 5, 5);
            INCORRECT_PIN = new Type("INCORRECT_PIN", 6, 6);
            ICC_REMOVED = new Type("ICC_REMOVED", 7, 7);
            Type[] typeArr$values = $values();
            $VALUES = typeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Type.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Type>(orCreateKotlinClass, syntax, type) { // from class: com.stripe.bbpos.sdk.PinEntryResult$Type$Companion$ADAPTER$1
                {
                    PinEntryResult.Type type2 = type;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public PinEntryResult.Type fromValue(int value) {
                    return PinEntryResult.Type.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: PinEntryResult.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntryResult$Type$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
                        return Type.PIN_ENTRY_RESULT_UNKNOWN;
                    case 1:
                        return Type.ENTERED;
                    case 2:
                        return Type.CANCEL;
                    case 3:
                        return Type.TIMEOUT;
                    case 4:
                        return Type.BYPASS;
                    case 5:
                        return Type.WRONG_PIN_LENGTH;
                    case 6:
                        return Type.INCORRECT_PIN;
                    case 7:
                        return Type.ICC_REMOVED;
                    default:
                        return null;
                }
            }
        }
    }
}
