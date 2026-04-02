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
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
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

/* JADX INFO: compiled from: CotsSetFakedContactlessOutcomeRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$Builder;", "outcome", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "FakedContactlessOutcomeType", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsSetFakedContactlessOutcomeRequest extends Message<CotsSetFakedContactlessOutcomeRequest, Builder> {
    public static final ProtoAdapter<CotsSetFakedContactlessOutcomeRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final FakedContactlessOutcomeType outcome;

    /* JADX WARN: Multi-variable type inference failed */
    public CotsSetFakedContactlessOutcomeRequest() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CotsSetFakedContactlessOutcomeRequest(FakedContactlessOutcomeType fakedContactlessOutcomeType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? FakedContactlessOutcomeType.VISA : fakedContactlessOutcomeType, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsSetFakedContactlessOutcomeRequest(FakedContactlessOutcomeType outcome, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.outcome = outcome;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.outcome = this.outcome;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsSetFakedContactlessOutcomeRequest)) {
            return false;
        }
        CotsSetFakedContactlessOutcomeRequest cotsSetFakedContactlessOutcomeRequest = (CotsSetFakedContactlessOutcomeRequest) other;
        return Intrinsics.areEqual(unknownFields(), cotsSetFakedContactlessOutcomeRequest.unknownFields()) && this.outcome == cotsSetFakedContactlessOutcomeRequest.outcome;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.outcome.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("outcome=" + this.outcome);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsSetFakedContactlessOutcomeRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsSetFakedContactlessOutcomeRequest copy$default(CotsSetFakedContactlessOutcomeRequest cotsSetFakedContactlessOutcomeRequest, FakedContactlessOutcomeType fakedContactlessOutcomeType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            fakedContactlessOutcomeType = cotsSetFakedContactlessOutcomeRequest.outcome;
        }
        if ((i & 2) != 0) {
            byteString = cotsSetFakedContactlessOutcomeRequest.unknownFields();
        }
        return cotsSetFakedContactlessOutcomeRequest.copy(fakedContactlessOutcomeType, byteString);
    }

    public final CotsSetFakedContactlessOutcomeRequest copy(FakedContactlessOutcomeType outcome, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsSetFakedContactlessOutcomeRequest(outcome, unknownFields);
    }

    /* JADX INFO: compiled from: CotsSetFakedContactlessOutcomeRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest;", "()V", "outcome", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsSetFakedContactlessOutcomeRequest, Builder> {
        public FakedContactlessOutcomeType outcome = FakedContactlessOutcomeType.VISA;

        public final Builder outcome(FakedContactlessOutcomeType outcome) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            this.outcome = outcome;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsSetFakedContactlessOutcomeRequest build() {
            return new CotsSetFakedContactlessOutcomeRequest(this.outcome, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsSetFakedContactlessOutcomeRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsSetFakedContactlessOutcomeRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsSetFakedContactlessOutcomeRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsSetFakedContactlessOutcomeRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsSetFakedContactlessOutcomeRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.outcome != CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.VISA ? size + CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.ADAPTER.encodedSizeWithTag(1, value.outcome) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsSetFakedContactlessOutcomeRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.outcome != CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.VISA) {
                    CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.ADAPTER.encodeWithTag(writer, 1, value.outcome);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsSetFakedContactlessOutcomeRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.outcome != CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.VISA) {
                    CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.ADAPTER.encodeWithTag(writer, 1, value.outcome);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsSetFakedContactlessOutcomeRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeTypeDecode = CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.VISA;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsSetFakedContactlessOutcomeRequest(fakedContactlessOutcomeTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            fakedContactlessOutcomeTypeDecode = CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsSetFakedContactlessOutcomeRequest redact(CotsSetFakedContactlessOutcomeRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CotsSetFakedContactlessOutcomeRequest.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CotsSetFakedContactlessOutcomeRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "VISA", "MASTERCARD", "MASTERCARD_INVALID_CDA", "AMEX_DECLINE", "NO_CARD", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class FakedContactlessOutcomeType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FakedContactlessOutcomeType[] $VALUES;
        public static final ProtoAdapter<FakedContactlessOutcomeType> ADAPTER;
        public static final FakedContactlessOutcomeType AMEX_DECLINE;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final FakedContactlessOutcomeType MASTERCARD;
        public static final FakedContactlessOutcomeType MASTERCARD_INVALID_CDA;
        public static final FakedContactlessOutcomeType NO_CARD;
        public static final FakedContactlessOutcomeType VISA;
        private final int value;

        private static final /* synthetic */ FakedContactlessOutcomeType[] $values() {
            return new FakedContactlessOutcomeType[]{VISA, MASTERCARD, MASTERCARD_INVALID_CDA, AMEX_DECLINE, NO_CARD};
        }

        @JvmStatic
        public static final FakedContactlessOutcomeType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<FakedContactlessOutcomeType> getEntries() {
            return $ENTRIES;
        }

        public static FakedContactlessOutcomeType valueOf(String str) {
            return (FakedContactlessOutcomeType) Enum.valueOf(FakedContactlessOutcomeType.class, str);
        }

        public static FakedContactlessOutcomeType[] values() {
            return (FakedContactlessOutcomeType[]) $VALUES.clone();
        }

        private FakedContactlessOutcomeType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final FakedContactlessOutcomeType fakedContactlessOutcomeType = new FakedContactlessOutcomeType("VISA", 0, 0);
            VISA = fakedContactlessOutcomeType;
            MASTERCARD = new FakedContactlessOutcomeType("MASTERCARD", 1, 1);
            MASTERCARD_INVALID_CDA = new FakedContactlessOutcomeType("MASTERCARD_INVALID_CDA", 2, 2);
            AMEX_DECLINE = new FakedContactlessOutcomeType("AMEX_DECLINE", 3, 3);
            NO_CARD = new FakedContactlessOutcomeType("NO_CARD", 4, 4);
            FakedContactlessOutcomeType[] fakedContactlessOutcomeTypeArr$values = $values();
            $VALUES = fakedContactlessOutcomeTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(fakedContactlessOutcomeTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FakedContactlessOutcomeType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<FakedContactlessOutcomeType>(orCreateKotlinClass, syntax, fakedContactlessOutcomeType) { // from class: com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion$ADAPTER$1
                {
                    CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType2 = fakedContactlessOutcomeType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fromValue(int value) {
                    return CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CotsSetFakedContactlessOutcomeRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "fromValue", "value", "", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final FakedContactlessOutcomeType fromValue(int value) {
                if (value == 0) {
                    return FakedContactlessOutcomeType.VISA;
                }
                if (value == 1) {
                    return FakedContactlessOutcomeType.MASTERCARD;
                }
                if (value == 2) {
                    return FakedContactlessOutcomeType.MASTERCARD_INVALID_CDA;
                }
                if (value == 3) {
                    return FakedContactlessOutcomeType.AMEX_DECLINE;
                }
                if (value != 4) {
                    return null;
                }
                return FakedContactlessOutcomeType.NO_CARD;
            }
        }
    }
}
