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
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodResponse;
import com.stripe.proto.model.sdk.PaymentMethod;
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

/* JADX INFO: compiled from: QuerySetupIntentPaymentMethodResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;", "payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "payment_status", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;", "num_of_canceled_payments", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "SetupIntentPaymentMethodRequestStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QuerySetupIntentPaymentMethodResponse extends Message<QuerySetupIntentPaymentMethodResponse, Builder> {
    public static final ProtoAdapter<QuerySetupIntentPaymentMethodResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "numOfCanceledPayments", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int num_of_canceled_payments;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", jsonName = "paymentMethod", oneofName = "setup_intent_result", schemaIndex = 0, tag = 1)
    public final PaymentMethod payment_method;

    @WireField(adapter = "com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus#ADAPTER", jsonName = "paymentStatus", oneofName = "setup_intent_result", schemaIndex = 1, tag = 2)
    public final SetupIntentPaymentMethodRequestStatus payment_status;

    public QuerySetupIntentPaymentMethodResponse() {
        this(null, null, 0, null, 15, null);
    }

    public /* synthetic */ QuerySetupIntentPaymentMethodResponse(PaymentMethod paymentMethod, SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatus, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : paymentMethod, (i2 & 2) != 0 ? null : setupIntentPaymentMethodRequestStatus, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuerySetupIntentPaymentMethodResponse(PaymentMethod paymentMethod, SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatus, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_method = paymentMethod;
        this.payment_status = setupIntentPaymentMethodRequestStatus;
        this.num_of_canceled_payments = i;
        if (Internal.countNonNull(paymentMethod, setupIntentPaymentMethodRequestStatus) > 1) {
            throw new IllegalArgumentException("At most one of payment_method, payment_status may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_method = this.payment_method;
        builder.payment_status = this.payment_status;
        builder.num_of_canceled_payments = this.num_of_canceled_payments;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof QuerySetupIntentPaymentMethodResponse)) {
            return false;
        }
        QuerySetupIntentPaymentMethodResponse querySetupIntentPaymentMethodResponse = (QuerySetupIntentPaymentMethodResponse) other;
        return Intrinsics.areEqual(unknownFields(), querySetupIntentPaymentMethodResponse.unknownFields()) && Intrinsics.areEqual(this.payment_method, querySetupIntentPaymentMethodResponse.payment_method) && this.payment_status == querySetupIntentPaymentMethodResponse.payment_status && this.num_of_canceled_payments == querySetupIntentPaymentMethodResponse.num_of_canceled_payments;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PaymentMethod paymentMethod = this.payment_method;
        int iHashCode2 = (iHashCode + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatus = this.payment_status;
        int iHashCode3 = ((iHashCode2 + (setupIntentPaymentMethodRequestStatus != null ? setupIntentPaymentMethodRequestStatus.hashCode() : 0)) * 37) + Integer.hashCode(this.num_of_canceled_payments);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (this.payment_status != null) {
            arrayList.add("payment_status=" + this.payment_status);
        }
        arrayList.add("num_of_canceled_payments=" + this.num_of_canceled_payments);
        return CollectionsKt.joinToString$default(arrayList, ", ", "QuerySetupIntentPaymentMethodResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ QuerySetupIntentPaymentMethodResponse copy$default(QuerySetupIntentPaymentMethodResponse querySetupIntentPaymentMethodResponse, PaymentMethod paymentMethod, SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatus, int i, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            paymentMethod = querySetupIntentPaymentMethodResponse.payment_method;
        }
        if ((i2 & 2) != 0) {
            setupIntentPaymentMethodRequestStatus = querySetupIntentPaymentMethodResponse.payment_status;
        }
        if ((i2 & 4) != 0) {
            i = querySetupIntentPaymentMethodResponse.num_of_canceled_payments;
        }
        if ((i2 & 8) != 0) {
            byteString = querySetupIntentPaymentMethodResponse.unknownFields();
        }
        return querySetupIntentPaymentMethodResponse.copy(paymentMethod, setupIntentPaymentMethodRequestStatus, i, byteString);
    }

    public final QuerySetupIntentPaymentMethodResponse copy(PaymentMethod payment_method, SetupIntentPaymentMethodRequestStatus payment_status, int num_of_canceled_payments, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new QuerySetupIntentPaymentMethodResponse(payment_method, payment_status, num_of_canceled_payments, unknownFields);
    }

    /* JADX INFO: compiled from: QuerySetupIntentPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;", "()V", "num_of_canceled_payments", "", "payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "payment_status", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<QuerySetupIntentPaymentMethodResponse, Builder> {
        public int num_of_canceled_payments;
        public PaymentMethod payment_method;
        public SetupIntentPaymentMethodRequestStatus payment_status;

        public final Builder num_of_canceled_payments(int num_of_canceled_payments) {
            this.num_of_canceled_payments = num_of_canceled_payments;
            return this;
        }

        public final Builder payment_method(PaymentMethod payment_method) {
            this.payment_method = payment_method;
            this.payment_status = null;
            return this;
        }

        public final Builder payment_status(SetupIntentPaymentMethodRequestStatus payment_status) {
            this.payment_status = payment_status;
            this.payment_method = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public QuerySetupIntentPaymentMethodResponse build() {
            return new QuerySetupIntentPaymentMethodResponse(this.payment_method, this.payment_status, this.num_of_canceled_payments, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: QuerySetupIntentPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ QuerySetupIntentPaymentMethodResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QuerySetupIntentPaymentMethodResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<QuerySetupIntentPaymentMethodResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(QuerySetupIntentPaymentMethodResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + PaymentMethod.ADAPTER.encodedSizeWithTag(1, value.payment_method) + QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus.ADAPTER.encodedSizeWithTag(2, value.payment_status);
                return value.num_of_canceled_payments != 0 ? size + ProtoAdapter.UINT32.encodedSizeWithTag(3, Integer.valueOf(value.num_of_canceled_payments)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, QuerySetupIntentPaymentMethodResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.num_of_canceled_payments != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.num_of_canceled_payments));
                }
                PaymentMethod.ADAPTER.encodeWithTag(writer, 1, value.payment_method);
                QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus.ADAPTER.encodeWithTag(writer, 2, value.payment_status);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, QuerySetupIntentPaymentMethodResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus.ADAPTER.encodeWithTag(writer, 2, value.payment_status);
                PaymentMethod.ADAPTER.encodeWithTag(writer, 1, value.payment_method);
                if (value.num_of_canceled_payments != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.num_of_canceled_payments));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public QuerySetupIntentPaymentMethodResponse redact(QuerySetupIntentPaymentMethodResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethod paymentMethod = value.payment_method;
                return QuerySetupIntentPaymentMethodResponse.copy$default(value, paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null, null, 0, ByteString.EMPTY, 6, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public QuerySetupIntentPaymentMethodResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentMethod paymentMethodDecode = null;
                int iIntValue = 0;
                QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatusDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new QuerySetupIntentPaymentMethodResponse(paymentMethodDecode, setupIntentPaymentMethodRequestStatusDecode, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            setupIntentPaymentMethodRequestStatusDecode = QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: QuerySetupIntentPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PAYMENT_PENDING", "PAYMENT_CANCELED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SetupIntentPaymentMethodRequestStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SetupIntentPaymentMethodRequestStatus[] $VALUES;
        public static final ProtoAdapter<SetupIntentPaymentMethodRequestStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final SetupIntentPaymentMethodRequestStatus PAYMENT_CANCELED;
        public static final SetupIntentPaymentMethodRequestStatus PAYMENT_PENDING;
        private final int value;

        private static final /* synthetic */ SetupIntentPaymentMethodRequestStatus[] $values() {
            return new SetupIntentPaymentMethodRequestStatus[]{PAYMENT_PENDING, PAYMENT_CANCELED};
        }

        @JvmStatic
        public static final SetupIntentPaymentMethodRequestStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<SetupIntentPaymentMethodRequestStatus> getEntries() {
            return $ENTRIES;
        }

        public static SetupIntentPaymentMethodRequestStatus valueOf(String str) {
            return (SetupIntentPaymentMethodRequestStatus) Enum.valueOf(SetupIntentPaymentMethodRequestStatus.class, str);
        }

        public static SetupIntentPaymentMethodRequestStatus[] values() {
            return (SetupIntentPaymentMethodRequestStatus[]) $VALUES.clone();
        }

        private SetupIntentPaymentMethodRequestStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatus = new SetupIntentPaymentMethodRequestStatus("PAYMENT_PENDING", 0, 0);
            PAYMENT_PENDING = setupIntentPaymentMethodRequestStatus;
            PAYMENT_CANCELED = new SetupIntentPaymentMethodRequestStatus("PAYMENT_CANCELED", 1, 1);
            SetupIntentPaymentMethodRequestStatus[] setupIntentPaymentMethodRequestStatusArr$values = $values();
            $VALUES = setupIntentPaymentMethodRequestStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(setupIntentPaymentMethodRequestStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetupIntentPaymentMethodRequestStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<SetupIntentPaymentMethodRequestStatus>(orCreateKotlinClass, syntax, setupIntentPaymentMethodRequestStatus) { // from class: com.stripe.proto.api.sdk.QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus$Companion$ADAPTER$1
                {
                    QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus setupIntentPaymentMethodRequestStatus2 = setupIntentPaymentMethodRequestStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus fromValue(int value) {
                    return QuerySetupIntentPaymentMethodResponse.SetupIntentPaymentMethodRequestStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: QuerySetupIntentPaymentMethodResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final SetupIntentPaymentMethodRequestStatus fromValue(int value) {
                if (value == 0) {
                    return SetupIntentPaymentMethodRequestStatus.PAYMENT_PENDING;
                }
                if (value != 1) {
                    return null;
                }
                return SetupIntentPaymentMethodRequestStatus.PAYMENT_CANCELED;
            }
        }
    }
}
