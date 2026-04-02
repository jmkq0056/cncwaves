package com.stripe.proto.iot_relay.pub.api;

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
import com.stripe.proto.iot_relay.pub.api.CompleteActionResponse;
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

/* JADX INFO: compiled from: CompleteActionResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Builder;", "outcome", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Outcome;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Outcome;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Outcome", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompleteActionResponse extends Message<CompleteActionResponse, Builder> {
    public static final ProtoAdapter<CompleteActionResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.api.CompleteActionResponse$Outcome#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Outcome outcome;

    /* JADX WARN: Multi-variable type inference failed */
    public CompleteActionResponse() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CompleteActionResponse(Outcome outcome, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Outcome.OUTCOME_INVALID : outcome, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompleteActionResponse(Outcome outcome, ByteString unknownFields) {
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
        if (!(other instanceof CompleteActionResponse)) {
            return false;
        }
        CompleteActionResponse completeActionResponse = (CompleteActionResponse) other;
        return Intrinsics.areEqual(unknownFields(), completeActionResponse.unknownFields()) && this.outcome == completeActionResponse.outcome;
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
        return CollectionsKt.joinToString$default(arrayList, ", ", "CompleteActionResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CompleteActionResponse copy$default(CompleteActionResponse completeActionResponse, Outcome outcome, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            outcome = completeActionResponse.outcome;
        }
        if ((i & 2) != 0) {
            byteString = completeActionResponse.unknownFields();
        }
        return completeActionResponse.copy(outcome, byteString);
    }

    public final CompleteActionResponse copy(Outcome outcome, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CompleteActionResponse(outcome, unknownFields);
    }

    /* JADX INFO: compiled from: CompleteActionResponse.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse;", "()V", "outcome", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Outcome;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CompleteActionResponse, Builder> {
        public Outcome outcome = Outcome.OUTCOME_INVALID;

        public final Builder outcome(Outcome outcome) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            this.outcome = outcome;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CompleteActionResponse build() {
            return new CompleteActionResponse(this.outcome, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CompleteActionResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CompleteActionResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CompleteActionResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CompleteActionResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.CompleteActionResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CompleteActionResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.outcome != CompleteActionResponse.Outcome.OUTCOME_INVALID ? size + CompleteActionResponse.Outcome.ADAPTER.encodedSizeWithTag(1, value.outcome) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CompleteActionResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.outcome != CompleteActionResponse.Outcome.OUTCOME_INVALID) {
                    CompleteActionResponse.Outcome.ADAPTER.encodeWithTag(writer, 1, value.outcome);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CompleteActionResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.outcome != CompleteActionResponse.Outcome.OUTCOME_INVALID) {
                    CompleteActionResponse.Outcome.ADAPTER.encodeWithTag(writer, 1, value.outcome);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CompleteActionResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CompleteActionResponse.Outcome outcomeDecode = CompleteActionResponse.Outcome.OUTCOME_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CompleteActionResponse(outcomeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            outcomeDecode = CompleteActionResponse.Outcome.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CompleteActionResponse redact(CompleteActionResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CompleteActionResponse.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CompleteActionResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Outcome;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OUTCOME_INVALID", "SUBSCRIPTION_NOT_FOUND", "SUBSCRIPTION_ALREADY_RELEASED", "SUBSCRIPTION_RELEASED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Outcome implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Outcome[] $VALUES;
        public static final ProtoAdapter<Outcome> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Outcome OUTCOME_INVALID;
        public static final Outcome SUBSCRIPTION_ALREADY_RELEASED;
        public static final Outcome SUBSCRIPTION_NOT_FOUND;
        public static final Outcome SUBSCRIPTION_RELEASED;
        private final int value;

        private static final /* synthetic */ Outcome[] $values() {
            return new Outcome[]{OUTCOME_INVALID, SUBSCRIPTION_NOT_FOUND, SUBSCRIPTION_ALREADY_RELEASED, SUBSCRIPTION_RELEASED};
        }

        @JvmStatic
        public static final Outcome fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Outcome> getEntries() {
            return $ENTRIES;
        }

        public static Outcome valueOf(String str) {
            return (Outcome) Enum.valueOf(Outcome.class, str);
        }

        public static Outcome[] values() {
            return (Outcome[]) $VALUES.clone();
        }

        private Outcome(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Outcome outcome = new Outcome("OUTCOME_INVALID", 0, 0);
            OUTCOME_INVALID = outcome;
            SUBSCRIPTION_NOT_FOUND = new Outcome("SUBSCRIPTION_NOT_FOUND", 1, 1);
            SUBSCRIPTION_ALREADY_RELEASED = new Outcome("SUBSCRIPTION_ALREADY_RELEASED", 2, 2);
            SUBSCRIPTION_RELEASED = new Outcome("SUBSCRIPTION_RELEASED", 3, 3);
            Outcome[] outcomeArr$values = $values();
            $VALUES = outcomeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(outcomeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Outcome.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Outcome>(orCreateKotlinClass, syntax, outcome) { // from class: com.stripe.proto.iot_relay.pub.api.CompleteActionResponse$Outcome$Companion$ADAPTER$1
                {
                    CompleteActionResponse.Outcome outcome2 = outcome;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CompleteActionResponse.Outcome fromValue(int value) {
                    return CompleteActionResponse.Outcome.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CompleteActionResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Outcome$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionResponse$Outcome;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Outcome fromValue(int value) {
                if (value == 0) {
                    return Outcome.OUTCOME_INVALID;
                }
                if (value == 1) {
                    return Outcome.SUBSCRIPTION_NOT_FOUND;
                }
                if (value == 2) {
                    return Outcome.SUBSCRIPTION_ALREADY_RELEASED;
                }
                if (value != 3) {
                    return null;
                }
                return Outcome.SUBSCRIPTION_RELEASED;
            }
        }
    }
}
