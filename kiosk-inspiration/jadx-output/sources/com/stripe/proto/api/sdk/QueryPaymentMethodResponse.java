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
import com.stripe.proto.api.sdk.QueryPaymentMethodResponse;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.proto.model.sdk.SystemContext;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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

/* JADX INFO: compiled from: QueryPaymentMethodResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001b\u001c\u001dBI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJJ\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\nH\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "payment_status", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;", "num_of_canceled_payments", "", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)V", "getSystem_context$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "PaymentRequestStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryPaymentMethodResponse extends Message<QueryPaymentMethodResponse, Builder> {
    public static final ProtoAdapter<QueryPaymentMethodResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "numOfCanceledPayments", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final int num_of_canceled_payments;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntentExpandedMethod#ADAPTER", jsonName = "paymentIntent", schemaIndex = 4, tag = 6)
    public final PaymentIntentExpandedMethod payment_intent;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", jsonName = "paymentMethod", oneofName = "payment_result", schemaIndex = 1, tag = 2)
    public final PaymentMethod payment_method;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryPaymentMethodResponse$PaymentRequestStatus#ADAPTER", jsonName = "paymentStatus", oneofName = "payment_result", schemaIndex = 2, tag = 3)
    public final PaymentRequestStatus payment_status;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public QueryPaymentMethodResponse() {
        this(null, null, null, 0, null, null, 63, null);
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ QueryPaymentMethodResponse(SystemContext systemContext, PaymentMethod paymentMethod, PaymentRequestStatus paymentRequestStatus, int i, PaymentIntentExpandedMethod paymentIntentExpandedMethod, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : systemContext, (i2 & 2) != 0 ? null : paymentMethod, (i2 & 4) != 0 ? null : paymentRequestStatus, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? null : paymentIntentExpandedMethod, (i2 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryPaymentMethodResponse(SystemContext systemContext, PaymentMethod paymentMethod, PaymentRequestStatus paymentRequestStatus, int i, PaymentIntentExpandedMethod paymentIntentExpandedMethod, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.payment_method = paymentMethod;
        this.payment_status = paymentRequestStatus;
        this.num_of_canceled_payments = i;
        this.payment_intent = paymentIntentExpandedMethod;
        if (Internal.countNonNull(paymentMethod, paymentRequestStatus) > 1) {
            throw new IllegalArgumentException("At most one of payment_method, payment_status may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.payment_method = this.payment_method;
        builder.payment_status = this.payment_status;
        builder.num_of_canceled_payments = this.num_of_canceled_payments;
        builder.payment_intent = this.payment_intent;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof QueryPaymentMethodResponse)) {
            return false;
        }
        QueryPaymentMethodResponse queryPaymentMethodResponse = (QueryPaymentMethodResponse) other;
        return Intrinsics.areEqual(unknownFields(), queryPaymentMethodResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, queryPaymentMethodResponse.system_context) && Intrinsics.areEqual(this.payment_method, queryPaymentMethodResponse.payment_method) && this.payment_status == queryPaymentMethodResponse.payment_status && this.num_of_canceled_payments == queryPaymentMethodResponse.num_of_canceled_payments && Intrinsics.areEqual(this.payment_intent, queryPaymentMethodResponse.payment_intent);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37;
        PaymentMethod paymentMethod = this.payment_method;
        int iHashCode3 = (iHashCode2 + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        PaymentRequestStatus paymentRequestStatus = this.payment_status;
        int iHashCode4 = (((iHashCode3 + (paymentRequestStatus != null ? paymentRequestStatus.hashCode() : 0)) * 37) + Integer.hashCode(this.num_of_canceled_payments)) * 37;
        PaymentIntentExpandedMethod paymentIntentExpandedMethod = this.payment_intent;
        int iHashCode5 = iHashCode4 + (paymentIntentExpandedMethod != null ? paymentIntentExpandedMethod.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (this.payment_status != null) {
            arrayList.add("payment_status=" + this.payment_status);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("num_of_canceled_payments=" + this.num_of_canceled_payments);
        if (this.payment_intent != null) {
            arrayList2.add("payment_intent=" + this.payment_intent);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "QueryPaymentMethodResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ QueryPaymentMethodResponse copy$default(QueryPaymentMethodResponse queryPaymentMethodResponse, SystemContext systemContext, PaymentMethod paymentMethod, PaymentRequestStatus paymentRequestStatus, int i, PaymentIntentExpandedMethod paymentIntentExpandedMethod, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            systemContext = queryPaymentMethodResponse.system_context;
        }
        if ((i2 & 2) != 0) {
            paymentMethod = queryPaymentMethodResponse.payment_method;
        }
        if ((i2 & 4) != 0) {
            paymentRequestStatus = queryPaymentMethodResponse.payment_status;
        }
        if ((i2 & 8) != 0) {
            i = queryPaymentMethodResponse.num_of_canceled_payments;
        }
        if ((i2 & 16) != 0) {
            paymentIntentExpandedMethod = queryPaymentMethodResponse.payment_intent;
        }
        if ((i2 & 32) != 0) {
            byteString = queryPaymentMethodResponse.unknownFields();
        }
        PaymentIntentExpandedMethod paymentIntentExpandedMethod2 = paymentIntentExpandedMethod;
        ByteString byteString2 = byteString;
        return queryPaymentMethodResponse.copy(systemContext, paymentMethod, paymentRequestStatus, i, paymentIntentExpandedMethod2, byteString2);
    }

    public final QueryPaymentMethodResponse copy(SystemContext system_context, PaymentMethod payment_method, PaymentRequestStatus payment_status, int num_of_canceled_payments, PaymentIntentExpandedMethod payment_intent, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new QueryPaymentMethodResponse(system_context, payment_method, payment_status, num_of_canceled_payments, payment_intent, unknownFields);
    }

    /* JADX INFO: compiled from: QueryPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;", "()V", "num_of_canceled_payments", "", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "payment_status", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<QueryPaymentMethodResponse, Builder> {
        public int num_of_canceled_payments;
        public PaymentIntentExpandedMethod payment_intent;
        public PaymentMethod payment_method;
        public PaymentRequestStatus payment_status;
        public SystemContext system_context;

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder num_of_canceled_payments(int num_of_canceled_payments) {
            this.num_of_canceled_payments = num_of_canceled_payments;
            return this;
        }

        public final Builder payment_intent(PaymentIntentExpandedMethod payment_intent) {
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder payment_method(PaymentMethod payment_method) {
            this.payment_method = payment_method;
            this.payment_status = null;
            return this;
        }

        public final Builder payment_status(PaymentRequestStatus payment_status) {
            this.payment_status = payment_status;
            this.payment_method = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public QueryPaymentMethodResponse build() {
            return new QueryPaymentMethodResponse(this.system_context, this.payment_method, this.payment_status, this.num_of_canceled_payments, this.payment_intent, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: QueryPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ QueryPaymentMethodResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryPaymentMethodResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<QueryPaymentMethodResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryPaymentMethodResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(QueryPaymentMethodResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                int iEncodedSizeWithTag = size + PaymentMethod.ADAPTER.encodedSizeWithTag(2, value.payment_method) + QueryPaymentMethodResponse.PaymentRequestStatus.ADAPTER.encodedSizeWithTag(3, value.payment_status);
                if (value.num_of_canceled_payments != 0) {
                    iEncodedSizeWithTag += ProtoAdapter.UINT32.encodedSizeWithTag(5, Integer.valueOf(value.num_of_canceled_payments));
                }
                return iEncodedSizeWithTag + PaymentIntentExpandedMethod.ADAPTER.encodedSizeWithTag(6, value.payment_intent);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, QueryPaymentMethodResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (value.num_of_canceled_payments != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 5, Integer.valueOf(value.num_of_canceled_payments));
                }
                PaymentIntentExpandedMethod.ADAPTER.encodeWithTag(writer, 6, value.payment_intent);
                PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.payment_method);
                QueryPaymentMethodResponse.PaymentRequestStatus.ADAPTER.encodeWithTag(writer, 3, value.payment_status);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, QueryPaymentMethodResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                QueryPaymentMethodResponse.PaymentRequestStatus.ADAPTER.encodeWithTag(writer, 3, value.payment_status);
                PaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.payment_method);
                PaymentIntentExpandedMethod.ADAPTER.encodeWithTag(writer, 6, value.payment_intent);
                if (value.num_of_canceled_payments != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 5, Integer.valueOf(value.num_of_canceled_payments));
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public QueryPaymentMethodResponse redact(QueryPaymentMethodResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                PaymentMethod paymentMethod = value.payment_method;
                PaymentMethod paymentMethodRedact = paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null;
                PaymentIntentExpandedMethod paymentIntentExpandedMethod = value.payment_intent;
                return QueryPaymentMethodResponse.copy$default(value, systemContextRedact, paymentMethodRedact, null, 0, paymentIntentExpandedMethod != null ? PaymentIntentExpandedMethod.ADAPTER.redact(paymentIntentExpandedMethod) : null, ByteString.EMPTY, 12, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public QueryPaymentMethodResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentMethod paymentMethodDecode = null;
                QueryPaymentMethodResponse.PaymentRequestStatus paymentRequestStatusDecode = null;
                PaymentIntentExpandedMethod paymentIntentExpandedMethodDecode = null;
                int iIntValue = 0;
                SystemContext systemContextDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new QueryPaymentMethodResponse(systemContextDecode, paymentMethodDecode, paymentRequestStatusDecode, iIntValue, paymentIntentExpandedMethodDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        systemContextDecode = SystemContext.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            paymentRequestStatusDecode = QueryPaymentMethodResponse.PaymentRequestStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 5) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 6) {
                        paymentIntentExpandedMethodDecode = PaymentIntentExpandedMethod.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: QueryPaymentMethodResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PAYMENT_PENDING", "PAYMENT_CANCELED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PaymentRequestStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PaymentRequestStatus[] $VALUES;
        public static final ProtoAdapter<PaymentRequestStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final PaymentRequestStatus PAYMENT_CANCELED;
        public static final PaymentRequestStatus PAYMENT_PENDING;
        private final int value;

        private static final /* synthetic */ PaymentRequestStatus[] $values() {
            return new PaymentRequestStatus[]{PAYMENT_PENDING, PAYMENT_CANCELED};
        }

        @JvmStatic
        public static final PaymentRequestStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<PaymentRequestStatus> getEntries() {
            return $ENTRIES;
        }

        public static PaymentRequestStatus valueOf(String str) {
            return (PaymentRequestStatus) Enum.valueOf(PaymentRequestStatus.class, str);
        }

        public static PaymentRequestStatus[] values() {
            return (PaymentRequestStatus[]) $VALUES.clone();
        }

        private PaymentRequestStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final PaymentRequestStatus paymentRequestStatus = new PaymentRequestStatus("PAYMENT_PENDING", 0, 0);
            PAYMENT_PENDING = paymentRequestStatus;
            PAYMENT_CANCELED = new PaymentRequestStatus("PAYMENT_CANCELED", 1, 1);
            PaymentRequestStatus[] paymentRequestStatusArr$values = $values();
            $VALUES = paymentRequestStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(paymentRequestStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentRequestStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<PaymentRequestStatus>(orCreateKotlinClass, syntax, paymentRequestStatus) { // from class: com.stripe.proto.api.sdk.QueryPaymentMethodResponse$PaymentRequestStatus$Companion$ADAPTER$1
                {
                    QueryPaymentMethodResponse.PaymentRequestStatus paymentRequestStatus2 = paymentRequestStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public QueryPaymentMethodResponse.PaymentRequestStatus fromValue(int value) {
                    return QueryPaymentMethodResponse.PaymentRequestStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: QueryPaymentMethodResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final PaymentRequestStatus fromValue(int value) {
                if (value == 0) {
                    return PaymentRequestStatus.PAYMENT_PENDING;
                }
                if (value != 1) {
                    return null;
                }
                return PaymentRequestStatus.PAYMENT_CANCELED;
            }
        }
    }
}
