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
import com.stripe.proto.api.sdk.QueryPaymentIntentNextActionsResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.sdk.Error;
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

/* JADX INFO: compiled from: QueryPaymentIntentNextActionsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0018\u0019\u001aB?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "handle_next_actions_status", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "next_actions_error", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "ActionStatus", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryPaymentIntentNextActionsResponse extends Message<QueryPaymentIntentNextActionsResponse, Builder> {
    public static final ProtoAdapter<QueryPaymentIntentNextActionsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "declineResponse", oneofName = "payment_result", schemaIndex = 2, tag = 3)
    public final ErrorWrapper decline_response;

    @WireField(adapter = "com.stripe.proto.api.sdk.QueryPaymentIntentNextActionsResponse$ActionStatus#ADAPTER", jsonName = "handleNextActionsStatus", oneofName = "payment_result", schemaIndex = 1, tag = 2)
    public final ActionStatus handle_next_actions_status;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "nextActionsError", oneofName = "payment_result", schemaIndex = 3, tag = 4)
    public final Error next_actions_error;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", oneofName = "payment_result", schemaIndex = 0, tag = 1)
    public final PaymentIntent payment_intent;

    public QueryPaymentIntentNextActionsResponse() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ QueryPaymentIntentNextActionsResponse(PaymentIntent paymentIntent, ActionStatus actionStatus, ErrorWrapper errorWrapper, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : paymentIntent, (i & 2) != 0 ? null : actionStatus, (i & 4) != 0 ? null : errorWrapper, (i & 8) != 0 ? null : error, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryPaymentIntentNextActionsResponse(PaymentIntent paymentIntent, ActionStatus actionStatus, ErrorWrapper errorWrapper, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent = paymentIntent;
        this.handle_next_actions_status = actionStatus;
        this.decline_response = errorWrapper;
        this.next_actions_error = error;
        if (Internal.countNonNull(paymentIntent, actionStatus, errorWrapper, error, new Object[0]) > 1) {
            throw new IllegalArgumentException("At most one of payment_intent, handle_next_actions_status, decline_response, next_actions_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_intent = this.payment_intent;
        builder.handle_next_actions_status = this.handle_next_actions_status;
        builder.decline_response = this.decline_response;
        builder.next_actions_error = this.next_actions_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof QueryPaymentIntentNextActionsResponse)) {
            return false;
        }
        QueryPaymentIntentNextActionsResponse queryPaymentIntentNextActionsResponse = (QueryPaymentIntentNextActionsResponse) other;
        return Intrinsics.areEqual(unknownFields(), queryPaymentIntentNextActionsResponse.unknownFields()) && Intrinsics.areEqual(this.payment_intent, queryPaymentIntentNextActionsResponse.payment_intent) && this.handle_next_actions_status == queryPaymentIntentNextActionsResponse.handle_next_actions_status && Intrinsics.areEqual(this.decline_response, queryPaymentIntentNextActionsResponse.decline_response) && Intrinsics.areEqual(this.next_actions_error, queryPaymentIntentNextActionsResponse.next_actions_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PaymentIntent paymentIntent = this.payment_intent;
        int iHashCode2 = (iHashCode + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37;
        ActionStatus actionStatus = this.handle_next_actions_status;
        int iHashCode3 = (iHashCode2 + (actionStatus != null ? actionStatus.hashCode() : 0)) * 37;
        ErrorWrapper errorWrapper = this.decline_response;
        int iHashCode4 = (iHashCode3 + (errorWrapper != null ? errorWrapper.hashCode() : 0)) * 37;
        Error error = this.next_actions_error;
        int iHashCode5 = iHashCode4 + (error != null ? error.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.payment_intent != null) {
            arrayList.add("payment_intent=" + this.payment_intent);
        }
        if (this.handle_next_actions_status != null) {
            arrayList.add("handle_next_actions_status=" + this.handle_next_actions_status);
        }
        if (this.decline_response != null) {
            arrayList.add("decline_response=" + this.decline_response);
        }
        if (this.next_actions_error != null) {
            arrayList.add("next_actions_error=" + this.next_actions_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "QueryPaymentIntentNextActionsResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ QueryPaymentIntentNextActionsResponse copy$default(QueryPaymentIntentNextActionsResponse queryPaymentIntentNextActionsResponse, PaymentIntent paymentIntent, ActionStatus actionStatus, ErrorWrapper errorWrapper, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentIntent = queryPaymentIntentNextActionsResponse.payment_intent;
        }
        if ((i & 2) != 0) {
            actionStatus = queryPaymentIntentNextActionsResponse.handle_next_actions_status;
        }
        if ((i & 4) != 0) {
            errorWrapper = queryPaymentIntentNextActionsResponse.decline_response;
        }
        if ((i & 8) != 0) {
            error = queryPaymentIntentNextActionsResponse.next_actions_error;
        }
        if ((i & 16) != 0) {
            byteString = queryPaymentIntentNextActionsResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        ErrorWrapper errorWrapper2 = errorWrapper;
        return queryPaymentIntentNextActionsResponse.copy(paymentIntent, actionStatus, errorWrapper2, error, byteString2);
    }

    public final QueryPaymentIntentNextActionsResponse copy(PaymentIntent payment_intent, ActionStatus handle_next_actions_status, ErrorWrapper decline_response, Error next_actions_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new QueryPaymentIntentNextActionsResponse(payment_intent, handle_next_actions_status, decline_response, next_actions_error, unknownFields);
    }

    /* JADX INFO: compiled from: QueryPaymentIntentNextActionsResponse.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;", "()V", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "handle_next_actions_status", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;", "next_actions_error", "Lcom/stripe/proto/model/sdk/Error;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<QueryPaymentIntentNextActionsResponse, Builder> {
        public ErrorWrapper decline_response;
        public ActionStatus handle_next_actions_status;
        public Error next_actions_error;
        public PaymentIntent payment_intent;

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            this.handle_next_actions_status = null;
            this.decline_response = null;
            this.next_actions_error = null;
            return this;
        }

        public final Builder handle_next_actions_status(ActionStatus handle_next_actions_status) {
            this.handle_next_actions_status = handle_next_actions_status;
            this.payment_intent = null;
            this.decline_response = null;
            this.next_actions_error = null;
            return this;
        }

        public final Builder decline_response(ErrorWrapper decline_response) {
            this.decline_response = decline_response;
            this.payment_intent = null;
            this.handle_next_actions_status = null;
            this.next_actions_error = null;
            return this;
        }

        public final Builder next_actions_error(Error next_actions_error) {
            this.next_actions_error = next_actions_error;
            this.payment_intent = null;
            this.handle_next_actions_status = null;
            this.decline_response = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public QueryPaymentIntentNextActionsResponse build() {
            return new QueryPaymentIntentNextActionsResponse(this.payment_intent, this.handle_next_actions_status, this.decline_response, this.next_actions_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: QueryPaymentIntentNextActionsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ QueryPaymentIntentNextActionsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QueryPaymentIntentNextActionsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<QueryPaymentIntentNextActionsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.QueryPaymentIntentNextActionsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(QueryPaymentIntentNextActionsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + PaymentIntent.ADAPTER.encodedSizeWithTag(1, value.payment_intent) + QueryPaymentIntentNextActionsResponse.ActionStatus.ADAPTER.encodedSizeWithTag(2, value.handle_next_actions_status) + ErrorWrapper.ADAPTER.encodedSizeWithTag(3, value.decline_response) + Error.ADAPTER.encodedSizeWithTag(4, value.next_actions_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, QueryPaymentIntentNextActionsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentIntent.ADAPTER.encodeWithTag(writer, 1, value.payment_intent);
                QueryPaymentIntentNextActionsResponse.ActionStatus.ADAPTER.encodeWithTag(writer, 2, value.handle_next_actions_status);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.decline_response);
                Error.ADAPTER.encodeWithTag(writer, 4, value.next_actions_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, QueryPaymentIntentNextActionsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 4, value.next_actions_error);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.decline_response);
                QueryPaymentIntentNextActionsResponse.ActionStatus.ADAPTER.encodeWithTag(writer, 2, value.handle_next_actions_status);
                PaymentIntent.ADAPTER.encodeWithTag(writer, 1, value.payment_intent);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public QueryPaymentIntentNextActionsResponse redact(QueryPaymentIntentNextActionsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                ErrorWrapper errorWrapper = value.decline_response;
                ErrorWrapper errorWrapperRedact = errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null;
                Error error = value.next_actions_error;
                return QueryPaymentIntentNextActionsResponse.copy$default(value, paymentIntentRedact, null, errorWrapperRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public QueryPaymentIntentNextActionsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentIntent paymentIntentDecode = null;
                QueryPaymentIntentNextActionsResponse.ActionStatus actionStatusDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                Error errorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new QueryPaymentIntentNextActionsResponse(paymentIntentDecode, actionStatusDecode, errorWrapperDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            actionStatusDecode = QueryPaymentIntentNextActionsResponse.ActionStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: QueryPaymentIntentNextActionsResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ACTION_PENDING", "ACTION_CANCELED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ActionStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ActionStatus[] $VALUES;
        public static final ActionStatus ACTION_CANCELED;
        public static final ActionStatus ACTION_PENDING;
        public static final ProtoAdapter<ActionStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final int value;

        private static final /* synthetic */ ActionStatus[] $values() {
            return new ActionStatus[]{ACTION_PENDING, ACTION_CANCELED};
        }

        @JvmStatic
        public static final ActionStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ActionStatus> getEntries() {
            return $ENTRIES;
        }

        public static ActionStatus valueOf(String str) {
            return (ActionStatus) Enum.valueOf(ActionStatus.class, str);
        }

        public static ActionStatus[] values() {
            return (ActionStatus[]) $VALUES.clone();
        }

        private ActionStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ActionStatus actionStatus = new ActionStatus("ACTION_PENDING", 0, 0);
            ACTION_PENDING = actionStatus;
            ACTION_CANCELED = new ActionStatus("ACTION_CANCELED", 1, 1);
            ActionStatus[] actionStatusArr$values = $values();
            $VALUES = actionStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(actionStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ActionStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ActionStatus>(orCreateKotlinClass, syntax, actionStatus) { // from class: com.stripe.proto.api.sdk.QueryPaymentIntentNextActionsResponse$ActionStatus$Companion$ADAPTER$1
                {
                    QueryPaymentIntentNextActionsResponse.ActionStatus actionStatus2 = actionStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public QueryPaymentIntentNextActionsResponse.ActionStatus fromValue(int value) {
                    return QueryPaymentIntentNextActionsResponse.ActionStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: QueryPaymentIntentNextActionsResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ActionStatus fromValue(int value) {
                if (value == 0) {
                    return ActionStatus.ACTION_PENDING;
                }
                if (value != 1) {
                    return null;
                }
                return ActionStatus.ACTION_CANCELED;
            }
        }
    }
}
