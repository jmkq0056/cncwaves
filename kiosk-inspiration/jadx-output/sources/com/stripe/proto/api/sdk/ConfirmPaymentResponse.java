package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.sdk.DeclinedCharge;
import com.stripe.proto.model.sdk.Error;
import com.stripe.proto.model.sdk.ProcessedCharge;
import com.stripe.proto.model.sdk.SystemContext;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ConfirmPaymentResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B\u0091\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJ\u0092\u0001\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0096\u0002J\b\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020\u0002H\u0016J\b\u0010(\u001a\u00020\u0006H\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001c\u0010\u001dR\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001e\u0010\u001dR\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u001f\u0010\u001d¨\u0006+"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "request_id", "", "confirmed_payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "processed_charge", "Lcom/stripe/proto/model/sdk/ProcessedCharge;", "declined_charge", "Lcom/stripe/proto/model/sdk/DeclinedCharge;", "options", "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V", "getDeclined_charge$annotations", "()V", "getProcessed_charge$annotations", "getSystem_context$annotations", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentResponse extends Message<ConfirmPaymentResponse, Builder> {
    public static final ProtoAdapter<ConfirmPaymentResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "confirmError", oneofName = "payment_result", schemaIndex = 4, tag = 5)
    public final Error confirm_error;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "confirmedPaymentIntent", oneofName = "payment_result", schemaIndex = 2, tag = 3)
    public final PaymentIntent confirmed_payment_intent;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "declineResponse", oneofName = "payment_result", schemaIndex = 3, tag = 4)
    public final ErrorWrapper decline_response;

    @WireField(adapter = "com.stripe.proto.model.sdk.DeclinedCharge#ADAPTER", jsonName = "declinedCharge", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final DeclinedCharge declined_charge;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER", jsonName = "offlineBehavior", schemaIndex = 10, tag = 11)
    public final CreatePaymentIntentOptions.OfflineBehavior offline_behavior;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 8, tag = 9)
    public final OfflinePaymentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER", jsonName = "offlineStats", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final OfflineStats offline_stats;

    @WireField(adapter = "com.stripe.proto.api.sdk.ConfirmPaymentOptions#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final ConfirmPaymentOptions options;

    @WireField(adapter = "com.stripe.proto.model.sdk.ProcessedCharge#ADAPTER", jsonName = "processedCharge", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final ProcessedCharge processed_charge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String request_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER", jsonName = "systemContext", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final SystemContext system_context;

    public ConfirmPaymentResponse() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    @Deprecated(message = "declined_charge is deprecated")
    public static /* synthetic */ void getDeclined_charge$annotations() {
    }

    @Deprecated(message = "processed_charge is deprecated")
    public static /* synthetic */ void getProcessed_charge$annotations() {
    }

    @Deprecated(message = "system_context is deprecated")
    public static /* synthetic */ void getSystem_context$annotations() {
    }

    public /* synthetic */ ConfirmPaymentResponse(SystemContext systemContext, String str, PaymentIntent paymentIntent, ErrorWrapper errorWrapper, Error error, ProcessedCharge processedCharge, DeclinedCharge declinedCharge, ConfirmPaymentOptions confirmPaymentOptions, OfflinePaymentDetails offlinePaymentDetails, OfflineStats offlineStats, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : systemContext, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : paymentIntent, (i & 8) != 0 ? null : errorWrapper, (i & 16) != 0 ? null : error, (i & 32) != 0 ? null : processedCharge, (i & 64) != 0 ? null : declinedCharge, (i & 128) != 0 ? null : confirmPaymentOptions, (i & 256) != 0 ? null : offlinePaymentDetails, (i & 512) != 0 ? null : offlineStats, (i & 1024) != 0 ? null : offlineBehavior, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmPaymentResponse(SystemContext systemContext, String request_id, PaymentIntent paymentIntent, ErrorWrapper errorWrapper, Error error, ProcessedCharge processedCharge, DeclinedCharge declinedCharge, ConfirmPaymentOptions confirmPaymentOptions, OfflinePaymentDetails offlinePaymentDetails, OfflineStats offlineStats, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.system_context = systemContext;
        this.request_id = request_id;
        this.confirmed_payment_intent = paymentIntent;
        this.decline_response = errorWrapper;
        this.confirm_error = error;
        this.processed_charge = processedCharge;
        this.declined_charge = declinedCharge;
        this.options = confirmPaymentOptions;
        this.offline_details = offlinePaymentDetails;
        this.offline_stats = offlineStats;
        this.offline_behavior = offlineBehavior;
        if (Internal.countNonNull(paymentIntent, errorWrapper, error) > 1) {
            throw new IllegalArgumentException("At most one of confirmed_payment_intent, decline_response, confirm_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.system_context = this.system_context;
        builder.request_id = this.request_id;
        builder.confirmed_payment_intent = this.confirmed_payment_intent;
        builder.decline_response = this.decline_response;
        builder.confirm_error = this.confirm_error;
        builder.processed_charge = this.processed_charge;
        builder.declined_charge = this.declined_charge;
        builder.options = this.options;
        builder.offline_details = this.offline_details;
        builder.offline_stats = this.offline_stats;
        builder.offline_behavior = this.offline_behavior;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmPaymentResponse)) {
            return false;
        }
        ConfirmPaymentResponse confirmPaymentResponse = (ConfirmPaymentResponse) other;
        return Intrinsics.areEqual(unknownFields(), confirmPaymentResponse.unknownFields()) && Intrinsics.areEqual(this.system_context, confirmPaymentResponse.system_context) && Intrinsics.areEqual(this.request_id, confirmPaymentResponse.request_id) && Intrinsics.areEqual(this.confirmed_payment_intent, confirmPaymentResponse.confirmed_payment_intent) && Intrinsics.areEqual(this.decline_response, confirmPaymentResponse.decline_response) && Intrinsics.areEqual(this.confirm_error, confirmPaymentResponse.confirm_error) && Intrinsics.areEqual(this.processed_charge, confirmPaymentResponse.processed_charge) && Intrinsics.areEqual(this.declined_charge, confirmPaymentResponse.declined_charge) && Intrinsics.areEqual(this.options, confirmPaymentResponse.options) && Intrinsics.areEqual(this.offline_details, confirmPaymentResponse.offline_details) && Intrinsics.areEqual(this.offline_stats, confirmPaymentResponse.offline_stats) && this.offline_behavior == confirmPaymentResponse.offline_behavior;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SystemContext systemContext = this.system_context;
        int iHashCode2 = (((iHashCode + (systemContext != null ? systemContext.hashCode() : 0)) * 37) + this.request_id.hashCode()) * 37;
        PaymentIntent paymentIntent = this.confirmed_payment_intent;
        int iHashCode3 = (iHashCode2 + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37;
        ErrorWrapper errorWrapper = this.decline_response;
        int iHashCode4 = (iHashCode3 + (errorWrapper != null ? errorWrapper.hashCode() : 0)) * 37;
        Error error = this.confirm_error;
        int iHashCode5 = (iHashCode4 + (error != null ? error.hashCode() : 0)) * 37;
        ProcessedCharge processedCharge = this.processed_charge;
        int iHashCode6 = (iHashCode5 + (processedCharge != null ? processedCharge.hashCode() : 0)) * 37;
        DeclinedCharge declinedCharge = this.declined_charge;
        int iHashCode7 = (iHashCode6 + (declinedCharge != null ? declinedCharge.hashCode() : 0)) * 37;
        ConfirmPaymentOptions confirmPaymentOptions = this.options;
        int iHashCode8 = (iHashCode7 + (confirmPaymentOptions != null ? confirmPaymentOptions.hashCode() : 0)) * 37;
        OfflinePaymentDetails offlinePaymentDetails = this.offline_details;
        int iHashCode9 = (iHashCode8 + (offlinePaymentDetails != null ? offlinePaymentDetails.hashCode() : 0)) * 37;
        OfflineStats offlineStats = this.offline_stats;
        int iHashCode10 = (iHashCode9 + (offlineStats != null ? offlineStats.hashCode() : 0)) * 37;
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior = this.offline_behavior;
        int iHashCode11 = iHashCode10 + (offlineBehavior != null ? offlineBehavior.hashCode() : 0);
        this.hashCode = iHashCode11;
        return iHashCode11;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.system_context != null) {
            arrayList.add("system_context=" + this.system_context);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("request_id=" + Internal.sanitize(this.request_id));
        if (this.confirmed_payment_intent != null) {
            arrayList2.add("confirmed_payment_intent=" + this.confirmed_payment_intent);
        }
        if (this.decline_response != null) {
            arrayList2.add("decline_response=" + this.decline_response);
        }
        if (this.confirm_error != null) {
            arrayList2.add("confirm_error=" + this.confirm_error);
        }
        if (this.processed_charge != null) {
            arrayList2.add("processed_charge=" + this.processed_charge);
        }
        if (this.declined_charge != null) {
            arrayList2.add("declined_charge=" + this.declined_charge);
        }
        if (this.options != null) {
            arrayList2.add("options=" + this.options);
        }
        if (this.offline_details != null) {
            arrayList2.add("offline_details=" + this.offline_details);
        }
        if (this.offline_stats != null) {
            arrayList2.add("offline_stats=" + this.offline_stats);
        }
        if (this.offline_behavior != null) {
            arrayList2.add("offline_behavior=" + this.offline_behavior);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmPaymentResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmPaymentResponse copy$default(ConfirmPaymentResponse confirmPaymentResponse, SystemContext systemContext, String str, PaymentIntent paymentIntent, ErrorWrapper errorWrapper, Error error, ProcessedCharge processedCharge, DeclinedCharge declinedCharge, ConfirmPaymentOptions confirmPaymentOptions, OfflinePaymentDetails offlinePaymentDetails, OfflineStats offlineStats, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            systemContext = confirmPaymentResponse.system_context;
        }
        if ((i & 2) != 0) {
            str = confirmPaymentResponse.request_id;
        }
        if ((i & 4) != 0) {
            paymentIntent = confirmPaymentResponse.confirmed_payment_intent;
        }
        if ((i & 8) != 0) {
            errorWrapper = confirmPaymentResponse.decline_response;
        }
        if ((i & 16) != 0) {
            error = confirmPaymentResponse.confirm_error;
        }
        if ((i & 32) != 0) {
            processedCharge = confirmPaymentResponse.processed_charge;
        }
        if ((i & 64) != 0) {
            declinedCharge = confirmPaymentResponse.declined_charge;
        }
        if ((i & 128) != 0) {
            confirmPaymentOptions = confirmPaymentResponse.options;
        }
        if ((i & 256) != 0) {
            offlinePaymentDetails = confirmPaymentResponse.offline_details;
        }
        if ((i & 512) != 0) {
            offlineStats = confirmPaymentResponse.offline_stats;
        }
        if ((i & 1024) != 0) {
            offlineBehavior = confirmPaymentResponse.offline_behavior;
        }
        if ((i & 2048) != 0) {
            byteString = confirmPaymentResponse.unknownFields();
        }
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior2 = offlineBehavior;
        ByteString byteString2 = byteString;
        OfflinePaymentDetails offlinePaymentDetails2 = offlinePaymentDetails;
        OfflineStats offlineStats2 = offlineStats;
        DeclinedCharge declinedCharge2 = declinedCharge;
        ConfirmPaymentOptions confirmPaymentOptions2 = confirmPaymentOptions;
        Error error2 = error;
        ProcessedCharge processedCharge2 = processedCharge;
        return confirmPaymentResponse.copy(systemContext, str, paymentIntent, errorWrapper, error2, processedCharge2, declinedCharge2, confirmPaymentOptions2, offlinePaymentDetails2, offlineStats2, offlineBehavior2, byteString2);
    }

    public final ConfirmPaymentResponse copy(SystemContext system_context, String request_id, PaymentIntent confirmed_payment_intent, ErrorWrapper decline_response, Error confirm_error, ProcessedCharge processed_charge, DeclinedCharge declined_charge, ConfirmPaymentOptions options, OfflinePaymentDetails offline_details, OfflineStats offline_stats, CreatePaymentIntentOptions.OfflineBehavior offline_behavior, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmPaymentResponse(system_context, request_id, confirmed_payment_intent, decline_response, confirm_error, processed_charge, declined_charge, options, offline_details, offline_stats, offline_behavior, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmPaymentResponse.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0012\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017J\u0012\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;", "()V", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "confirmed_payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "declined_charge", "Lcom/stripe/proto/model/sdk/DeclinedCharge;", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "options", "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;", "processed_charge", "Lcom/stripe/proto/model/sdk/ProcessedCharge;", "request_id", "", "system_context", "Lcom/stripe/proto/model/sdk/SystemContext;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmPaymentResponse, Builder> {
        public Error confirm_error;
        public PaymentIntent confirmed_payment_intent;
        public ErrorWrapper decline_response;
        public DeclinedCharge declined_charge;
        public CreatePaymentIntentOptions.OfflineBehavior offline_behavior;
        public OfflinePaymentDetails offline_details;
        public OfflineStats offline_stats;
        public ConfirmPaymentOptions options;
        public ProcessedCharge processed_charge;
        public String request_id = "";
        public SystemContext system_context;

        @Deprecated(message = "system_context is deprecated")
        public final Builder system_context(SystemContext system_context) {
            this.system_context = system_context;
            return this;
        }

        public final Builder request_id(String request_id) {
            Intrinsics.checkNotNullParameter(request_id, "request_id");
            this.request_id = request_id;
            return this;
        }

        @Deprecated(message = "processed_charge is deprecated")
        public final Builder processed_charge(ProcessedCharge processed_charge) {
            this.processed_charge = processed_charge;
            return this;
        }

        @Deprecated(message = "declined_charge is deprecated")
        public final Builder declined_charge(DeclinedCharge declined_charge) {
            this.declined_charge = declined_charge;
            return this;
        }

        public final Builder options(ConfirmPaymentOptions options) {
            this.options = options;
            return this;
        }

        public final Builder offline_details(OfflinePaymentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder offline_stats(OfflineStats offline_stats) {
            this.offline_stats = offline_stats;
            return this;
        }

        public final Builder offline_behavior(CreatePaymentIntentOptions.OfflineBehavior offline_behavior) {
            this.offline_behavior = offline_behavior;
            return this;
        }

        public final Builder confirmed_payment_intent(PaymentIntent confirmed_payment_intent) {
            this.confirmed_payment_intent = confirmed_payment_intent;
            this.decline_response = null;
            this.confirm_error = null;
            return this;
        }

        public final Builder decline_response(ErrorWrapper decline_response) {
            this.decline_response = decline_response;
            this.confirmed_payment_intent = null;
            this.confirm_error = null;
            return this;
        }

        public final Builder confirm_error(Error confirm_error) {
            this.confirm_error = confirm_error;
            this.confirmed_payment_intent = null;
            this.decline_response = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmPaymentResponse build() {
            return new ConfirmPaymentResponse(this.system_context, this.request_id, this.confirmed_payment_intent, this.decline_response, this.confirm_error, this.processed_charge, this.declined_charge, this.options, this.offline_details, this.offline_stats, this.offline_behavior, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmPaymentResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmPaymentResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmPaymentResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmPaymentResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmPaymentResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmPaymentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.system_context != null) {
                    size += SystemContext.ADAPTER.encodedSizeWithTag(1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.request_id);
                }
                int iEncodedSizeWithTag = size + PaymentIntent.ADAPTER.encodedSizeWithTag(3, value.confirmed_payment_intent) + ErrorWrapper.ADAPTER.encodedSizeWithTag(4, value.decline_response) + Error.ADAPTER.encodedSizeWithTag(5, value.confirm_error);
                if (value.processed_charge != null) {
                    iEncodedSizeWithTag += ProcessedCharge.ADAPTER.encodedSizeWithTag(6, value.processed_charge);
                }
                if (value.declined_charge != null) {
                    iEncodedSizeWithTag += DeclinedCharge.ADAPTER.encodedSizeWithTag(7, value.declined_charge);
                }
                if (value.options != null) {
                    iEncodedSizeWithTag += ConfirmPaymentOptions.ADAPTER.encodedSizeWithTag(8, value.options);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + OfflinePaymentDetails.ADAPTER.encodedSizeWithTag(9, value.offline_details);
                if (value.offline_stats != null) {
                    iEncodedSizeWithTag2 += OfflineStats.ADAPTER.encodedSizeWithTag(10, value.offline_stats);
                }
                return iEncodedSizeWithTag2 + CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodedSizeWithTag(11, value.offline_behavior);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmPaymentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.request_id);
                }
                if (value.processed_charge != null) {
                    ProcessedCharge.ADAPTER.encodeWithTag(writer, 6, value.processed_charge);
                }
                if (value.declined_charge != null) {
                    DeclinedCharge.ADAPTER.encodeWithTag(writer, 7, value.declined_charge);
                }
                if (value.options != null) {
                    ConfirmPaymentOptions.ADAPTER.encodeWithTag(writer, 8, value.options);
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 9, value.offline_details);
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 10, value.offline_stats);
                }
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 11, value.offline_behavior);
                PaymentIntent.ADAPTER.encodeWithTag(writer, 3, value.confirmed_payment_intent);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 4, value.decline_response);
                Error.ADAPTER.encodeWithTag(writer, 5, value.confirm_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmPaymentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 5, value.confirm_error);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 4, value.decline_response);
                PaymentIntent.ADAPTER.encodeWithTag(writer, 3, value.confirmed_payment_intent);
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 11, value.offline_behavior);
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 10, value.offline_stats);
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 9, value.offline_details);
                if (value.options != null) {
                    ConfirmPaymentOptions.ADAPTER.encodeWithTag(writer, 8, value.options);
                }
                if (value.declined_charge != null) {
                    DeclinedCharge.ADAPTER.encodeWithTag(writer, 7, value.declined_charge);
                }
                if (value.processed_charge != null) {
                    ProcessedCharge.ADAPTER.encodeWithTag(writer, 6, value.processed_charge);
                }
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.request_id);
                }
                if (value.system_context != null) {
                    SystemContext.ADAPTER.encodeWithTag(writer, 1, value.system_context);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentResponse redact(ConfirmPaymentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SystemContext systemContext = value.system_context;
                SystemContext systemContextRedact = systemContext != null ? SystemContext.ADAPTER.redact(systemContext) : null;
                PaymentIntent paymentIntent = value.confirmed_payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                ErrorWrapper errorWrapper = value.decline_response;
                ErrorWrapper errorWrapperRedact = errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null;
                Error error = value.confirm_error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                ProcessedCharge processedCharge = value.processed_charge;
                ProcessedCharge processedChargeRedact = processedCharge != null ? ProcessedCharge.ADAPTER.redact(processedCharge) : null;
                DeclinedCharge declinedCharge = value.declined_charge;
                DeclinedCharge declinedChargeRedact = declinedCharge != null ? DeclinedCharge.ADAPTER.redact(declinedCharge) : null;
                ConfirmPaymentOptions confirmPaymentOptions = value.options;
                ConfirmPaymentOptions confirmPaymentOptionsRedact = confirmPaymentOptions != null ? ConfirmPaymentOptions.ADAPTER.redact(confirmPaymentOptions) : null;
                OfflinePaymentDetails offlinePaymentDetails = value.offline_details;
                OfflinePaymentDetails offlinePaymentDetailsRedact = offlinePaymentDetails != null ? OfflinePaymentDetails.ADAPTER.redact(offlinePaymentDetails) : null;
                OfflineStats offlineStats = value.offline_stats;
                return ConfirmPaymentResponse.copy$default(value, systemContextRedact, null, paymentIntentRedact, errorWrapperRedact, errorRedact, processedChargeRedact, declinedChargeRedact, confirmPaymentOptionsRedact, offlinePaymentDetailsRedact, offlineStats != null ? OfflineStats.ADAPTER.redact(offlineStats) : null, null, ByteString.EMPTY, 1026, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentResponse decode(ProtoReader reader) throws IOException {
                SystemContext systemContext;
                PaymentIntent paymentIntent;
                ErrorWrapper errorWrapper;
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentIntent paymentIntentDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                Error errorDecode = null;
                ProcessedCharge processedChargeDecode = null;
                DeclinedCharge declinedChargeDecode = null;
                ConfirmPaymentOptions confirmPaymentOptionsDecode = null;
                OfflinePaymentDetails offlinePaymentDetailsDecode = null;
                OfflineStats offlineStatsDecode = null;
                CreatePaymentIntentOptions.OfflineBehavior offlineBehaviorDecode = null;
                String strDecode = "";
                SystemContext systemContextDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                systemContextDecode = SystemContext.ADAPTER.decode(reader);
                                continue;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                                continue;
                            case 4:
                                errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                                continue;
                            case 5:
                                errorDecode = Error.ADAPTER.decode(reader);
                                continue;
                            case 6:
                                processedChargeDecode = ProcessedCharge.ADAPTER.decode(reader);
                                continue;
                            case 7:
                                declinedChargeDecode = DeclinedCharge.ADAPTER.decode(reader);
                                continue;
                            case 8:
                                confirmPaymentOptionsDecode = ConfirmPaymentOptions.ADAPTER.decode(reader);
                                continue;
                            case 9:
                                offlinePaymentDetailsDecode = OfflinePaymentDetails.ADAPTER.decode(reader);
                                continue;
                            case 10:
                                offlineStatsDecode = OfflineStats.ADAPTER.decode(reader);
                                continue;
                            case 11:
                                try {
                                    offlineBehaviorDecode = CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    systemContext = systemContextDecode;
                                    paymentIntent = paymentIntentDecode;
                                    errorWrapper = errorWrapperDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    systemContextDecode = systemContext;
                                    paymentIntentDecode = paymentIntent;
                                    errorWrapperDecode = errorWrapper;
                                }
                                break;
                            default:
                                systemContext = systemContextDecode;
                                paymentIntent = paymentIntentDecode;
                                errorWrapper = errorWrapperDecode;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        systemContextDecode = systemContext;
                        paymentIntentDecode = paymentIntent;
                        errorWrapperDecode = errorWrapper;
                    } else {
                        return new ConfirmPaymentResponse(systemContextDecode, strDecode, paymentIntentDecode, errorWrapperDecode, errorDecode, processedChargeDecode, declinedChargeDecode, confirmPaymentOptionsDecode, offlinePaymentDetailsDecode, offlineStatsDecode, offlineBehaviorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
