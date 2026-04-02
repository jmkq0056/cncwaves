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
import com.stripe.bbpos.sdk.CheckCardResult;
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

/* JADX INFO: compiled from: CheckCardResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/CheckCardResult$Builder;", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Type", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckCardResult extends Message<CheckCardResult, Builder> {
    public static final ProtoAdapter<CheckCardResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.CardData#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CardData cardData;

    @WireField(adapter = "com.stripe.bbpos.sdk.CheckCardResult$Type#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Type checkCardResult;

    public CheckCardResult() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CheckCardResult(Type type, CardData cardData, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Type.CHECK_CARD_RESULT_TYPE_UNKNOWN : type, (i & 2) != 0 ? null : cardData, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckCardResult(Type checkCardResult, CardData cardData, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.checkCardResult = checkCardResult;
        this.cardData = cardData;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.checkCardResult = this.checkCardResult;
        builder.cardData = this.cardData;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckCardResult)) {
            return false;
        }
        CheckCardResult checkCardResult = (CheckCardResult) other;
        return Intrinsics.areEqual(unknownFields(), checkCardResult.unknownFields()) && this.checkCardResult == checkCardResult.checkCardResult && Intrinsics.areEqual(this.cardData, checkCardResult.cardData);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.checkCardResult.hashCode()) * 37;
        CardData cardData = this.cardData;
        int iHashCode2 = iHashCode + (cardData != null ? cardData.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("checkCardResult=" + this.checkCardResult);
        if (this.cardData != null) {
            arrayList2.add("cardData=" + this.cardData);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckCardResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CheckCardResult copy$default(CheckCardResult checkCardResult, Type type, CardData cardData, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            type = checkCardResult.checkCardResult;
        }
        if ((i & 2) != 0) {
            cardData = checkCardResult.cardData;
        }
        if ((i & 4) != 0) {
            byteString = checkCardResult.unknownFields();
        }
        return checkCardResult.copy(type, cardData, byteString);
    }

    public final CheckCardResult copy(Type checkCardResult, CardData cardData, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckCardResult(checkCardResult, cardData, unknownFields);
    }

    /* JADX INFO: compiled from: CheckCardResult.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/CheckCardResult;", "()V", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckCardResult, Builder> {
        public CardData cardData;
        public Type checkCardResult = Type.CHECK_CARD_RESULT_TYPE_UNKNOWN;

        public final Builder checkCardResult(Type checkCardResult) {
            Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
            this.checkCardResult = checkCardResult;
            return this;
        }

        public final Builder cardData(CardData cardData) {
            this.cardData = cardData;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckCardResult build() {
            return new CheckCardResult(this.checkCardResult, this.cardData, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckCardResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/CheckCardResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/CheckCardResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckCardResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckCardResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckCardResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.CheckCardResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckCardResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.checkCardResult != CheckCardResult.Type.CHECK_CARD_RESULT_TYPE_UNKNOWN) {
                    size += CheckCardResult.Type.ADAPTER.encodedSizeWithTag(1, value.checkCardResult);
                }
                return value.cardData != null ? size + CardData.ADAPTER.encodedSizeWithTag(2, value.cardData) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckCardResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.checkCardResult != CheckCardResult.Type.CHECK_CARD_RESULT_TYPE_UNKNOWN) {
                    CheckCardResult.Type.ADAPTER.encodeWithTag(writer, 1, value.checkCardResult);
                }
                if (value.cardData != null) {
                    CardData.ADAPTER.encodeWithTag(writer, 2, value.cardData);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckCardResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.cardData != null) {
                    CardData.ADAPTER.encodeWithTag(writer, 2, value.cardData);
                }
                if (value.checkCardResult != CheckCardResult.Type.CHECK_CARD_RESULT_TYPE_UNKNOWN) {
                    CheckCardResult.Type.ADAPTER.encodeWithTag(writer, 1, value.checkCardResult);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckCardResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CheckCardResult.Type typeDecode = CheckCardResult.Type.CHECK_CARD_RESULT_TYPE_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                CardData cardDataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CheckCardResult(typeDecode, cardDataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            typeDecode = CheckCardResult.Type.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        cardDataDecode = CardData.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckCardResult redact(CheckCardResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CardData cardData = value.cardData;
                return CheckCardResult.copy$default(value, null, cardData != null ? CardData.ADAPTER.redact(cardData) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CheckCardResult.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0013B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0014"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CHECK_CARD_RESULT_TYPE_UNKNOWN", "NO_CARD", "INSERTED_CARD", "NOT_ICC", "BAD_SWIPE", "MSR", "MAG_HEAD_FAIL", "USE_ICC_CARD", "TAP_CARD_DETECTED", "MANUAL_PAN_ENTRY", "CARD_NOT_SUPPORTED", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Type implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final ProtoAdapter<Type> ADAPTER;
        public static final Type BAD_SWIPE;
        public static final Type CARD_NOT_SUPPORTED;
        public static final Type CHECK_CARD_RESULT_TYPE_UNKNOWN;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Type INSERTED_CARD;
        public static final Type MAG_HEAD_FAIL;
        public static final Type MANUAL_PAN_ENTRY;
        public static final Type MSR;
        public static final Type NOT_ICC;
        public static final Type NO_CARD;
        public static final Type TAP_CARD_DETECTED;
        public static final Type USE_ICC_CARD;
        private final int value;

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{CHECK_CARD_RESULT_TYPE_UNKNOWN, NO_CARD, INSERTED_CARD, NOT_ICC, BAD_SWIPE, MSR, MAG_HEAD_FAIL, USE_ICC_CARD, TAP_CARD_DETECTED, MANUAL_PAN_ENTRY, CARD_NOT_SUPPORTED};
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
            final Type type = new Type("CHECK_CARD_RESULT_TYPE_UNKNOWN", 0, 0);
            CHECK_CARD_RESULT_TYPE_UNKNOWN = type;
            NO_CARD = new Type("NO_CARD", 1, 1);
            INSERTED_CARD = new Type("INSERTED_CARD", 2, 2);
            NOT_ICC = new Type("NOT_ICC", 3, 3);
            BAD_SWIPE = new Type("BAD_SWIPE", 4, 4);
            MSR = new Type("MSR", 5, 5);
            MAG_HEAD_FAIL = new Type("MAG_HEAD_FAIL", 6, 6);
            USE_ICC_CARD = new Type("USE_ICC_CARD", 7, 7);
            TAP_CARD_DETECTED = new Type("TAP_CARD_DETECTED", 8, 8);
            MANUAL_PAN_ENTRY = new Type("MANUAL_PAN_ENTRY", 9, 9);
            CARD_NOT_SUPPORTED = new Type("CARD_NOT_SUPPORTED", 10, 10);
            Type[] typeArr$values = $values();
            $VALUES = typeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Type.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Type>(orCreateKotlinClass, syntax, type) { // from class: com.stripe.bbpos.sdk.CheckCardResult$Type$Companion$ADAPTER$1
                {
                    CheckCardResult.Type type2 = type;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CheckCardResult.Type fromValue(int value) {
                    return CheckCardResult.Type.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CheckCardResult.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardResult$Type$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
                        return Type.CHECK_CARD_RESULT_TYPE_UNKNOWN;
                    case 1:
                        return Type.NO_CARD;
                    case 2:
                        return Type.INSERTED_CARD;
                    case 3:
                        return Type.NOT_ICC;
                    case 4:
                        return Type.BAD_SWIPE;
                    case 5:
                        return Type.MSR;
                    case 6:
                        return Type.MAG_HEAD_FAIL;
                    case 7:
                        return Type.USE_ICC_CARD;
                    case 8:
                        return Type.TAP_CARD_DETECTED;
                    case 9:
                        return Type.MANUAL_PAN_ENTRY;
                    case 10:
                        return Type.CARD_NOT_SUPPORTED;
                    default:
                        return null;
                }
            }
        }
    }
}
