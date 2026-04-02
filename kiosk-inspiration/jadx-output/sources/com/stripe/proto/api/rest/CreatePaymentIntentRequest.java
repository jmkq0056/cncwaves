package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CreatePaymentIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 (2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002'(BÝ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJã\u0001\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0096\u0002J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0002H\u0016J\b\u0010&\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001cR\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001cR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "capture_method", "", FirebaseAnalytics.Param.CURRENCY, "description", "metadata", "", "payment_method_types", "", "receipt_email", "statement_descriptor", "customer", "transfer_group", "application_fee_amount", "on_behalf_of", "transfer_data", "Lcom/stripe/proto/api/rest/TransferData;", "payment_method_options", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "statement_descriptor_suffix", "setup_future_usage", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreatePaymentIntentRequest extends Message<CreatePaymentIntentRequest, Builder> {
    public static final ProtoAdapter<CreatePaymentIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 0, tag = 1)
    public final Long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "applicationFeeAmount", schemaIndex = 10, tag = 11)
    public final Long application_fee_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "captureMethod", schemaIndex = 1, tag = 2)
    public final String capture_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 8, tag = 9)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 3, tag = 4)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 4, tag = 5)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "onBehalfOf", schemaIndex = 11, tag = 12)
    public final String on_behalf_of;

    @WireField(adapter = "com.stripe.proto.api.rest.PaymentMethodOptions#ADAPTER", jsonName = "paymentMethodOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final PaymentMethodOptions payment_method_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethodTypes", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 6)
    public final List<String> payment_method_types;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "receiptEmail", schemaIndex = 6, tag = 7)
    public final String receipt_email;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "setupFutureUsage", schemaIndex = 15, tag = 16)
    public final String setup_future_usage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "statementDescriptor", schemaIndex = 7, tag = 8)
    public final String statement_descriptor;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "statementDescriptorSuffix", schemaIndex = 14, tag = 15)
    public final String statement_descriptor_suffix;

    @WireField(adapter = "com.stripe.proto.api.rest.TransferData#ADAPTER", jsonName = "transferData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final TransferData transfer_data;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "transferGroup", schemaIndex = 9, tag = 10)
    public final String transfer_group;

    public CreatePaymentIntentRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }

    public /* synthetic */ CreatePaymentIntentRequest(Long l, String str, String str2, String str3, Map map, List list, String str4, String str5, String str6, String str7, Long l2, String str8, TransferData transferData, PaymentMethodOptions paymentMethodOptions, String str9, String str10, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6, (i & 512) != 0 ? null : str7, (i & 1024) != 0 ? null : l2, (i & 2048) != 0 ? null : str8, (i & 4096) != 0 ? null : transferData, (i & 8192) != 0 ? null : paymentMethodOptions, (i & 16384) != 0 ? null : str9, (i & 32768) != 0 ? null : str10, (i & 65536) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreatePaymentIntentRequest(Long l, String str, String str2, String str3, Map<String, String> metadata, List<String> payment_method_types, String str4, String str5, String str6, String str7, Long l2, String str8, TransferData transferData, PaymentMethodOptions paymentMethodOptions, String str9, String str10, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.amount = l;
        this.capture_method = str;
        this.currency = str2;
        this.description = str3;
        this.receipt_email = str4;
        this.statement_descriptor = str5;
        this.customer = str6;
        this.transfer_group = str7;
        this.application_fee_amount = l2;
        this.on_behalf_of = str8;
        this.transfer_data = transferData;
        this.payment_method_options = paymentMethodOptions;
        this.statement_descriptor_suffix = str9;
        this.setup_future_usage = str10;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        this.payment_method_types = Internal.immutableCopyOf("payment_method_types", payment_method_types);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.amount = this.amount;
        builder.capture_method = this.capture_method;
        builder.currency = this.currency;
        builder.description = this.description;
        builder.metadata = this.metadata;
        builder.payment_method_types = this.payment_method_types;
        builder.receipt_email = this.receipt_email;
        builder.statement_descriptor = this.statement_descriptor;
        builder.customer = this.customer;
        builder.transfer_group = this.transfer_group;
        builder.application_fee_amount = this.application_fee_amount;
        builder.on_behalf_of = this.on_behalf_of;
        builder.transfer_data = this.transfer_data;
        builder.payment_method_options = this.payment_method_options;
        builder.statement_descriptor_suffix = this.statement_descriptor_suffix;
        builder.setup_future_usage = this.setup_future_usage;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreatePaymentIntentRequest)) {
            return false;
        }
        CreatePaymentIntentRequest createPaymentIntentRequest = (CreatePaymentIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), createPaymentIntentRequest.unknownFields()) && Intrinsics.areEqual(this.amount, createPaymentIntentRequest.amount) && Intrinsics.areEqual(this.capture_method, createPaymentIntentRequest.capture_method) && Intrinsics.areEqual(this.currency, createPaymentIntentRequest.currency) && Intrinsics.areEqual(this.description, createPaymentIntentRequest.description) && Intrinsics.areEqual(this.metadata, createPaymentIntentRequest.metadata) && Intrinsics.areEqual(this.payment_method_types, createPaymentIntentRequest.payment_method_types) && Intrinsics.areEqual(this.receipt_email, createPaymentIntentRequest.receipt_email) && Intrinsics.areEqual(this.statement_descriptor, createPaymentIntentRequest.statement_descriptor) && Intrinsics.areEqual(this.customer, createPaymentIntentRequest.customer) && Intrinsics.areEqual(this.transfer_group, createPaymentIntentRequest.transfer_group) && Intrinsics.areEqual(this.application_fee_amount, createPaymentIntentRequest.application_fee_amount) && Intrinsics.areEqual(this.on_behalf_of, createPaymentIntentRequest.on_behalf_of) && Intrinsics.areEqual(this.transfer_data, createPaymentIntentRequest.transfer_data) && Intrinsics.areEqual(this.payment_method_options, createPaymentIntentRequest.payment_method_options) && Intrinsics.areEqual(this.statement_descriptor_suffix, createPaymentIntentRequest.statement_descriptor_suffix) && Intrinsics.areEqual(this.setup_future_usage, createPaymentIntentRequest.setup_future_usage);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Long l = this.amount;
        int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
        String str = this.capture_method;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.currency;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.description;
        int iHashCode5 = (((((iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37) + this.payment_method_types.hashCode()) * 37;
        String str4 = this.receipt_email;
        int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.statement_descriptor;
        int iHashCode7 = (iHashCode6 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.customer;
        int iHashCode8 = (iHashCode7 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.transfer_group;
        int iHashCode9 = (iHashCode8 + (str7 != null ? str7.hashCode() : 0)) * 37;
        Long l2 = this.application_fee_amount;
        int iHashCode10 = (iHashCode9 + (l2 != null ? l2.hashCode() : 0)) * 37;
        String str8 = this.on_behalf_of;
        int iHashCode11 = (iHashCode10 + (str8 != null ? str8.hashCode() : 0)) * 37;
        TransferData transferData = this.transfer_data;
        int iHashCode12 = (iHashCode11 + (transferData != null ? transferData.hashCode() : 0)) * 37;
        PaymentMethodOptions paymentMethodOptions = this.payment_method_options;
        int iHashCode13 = (iHashCode12 + (paymentMethodOptions != null ? paymentMethodOptions.hashCode() : 0)) * 37;
        String str9 = this.statement_descriptor_suffix;
        int iHashCode14 = (iHashCode13 + (str9 != null ? str9.hashCode() : 0)) * 37;
        String str10 = this.setup_future_usage;
        int iHashCode15 = iHashCode14 + (str10 != null ? str10.hashCode() : 0);
        this.hashCode = iHashCode15;
        return iHashCode15;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.amount != null) {
            arrayList.add("amount=" + this.amount);
        }
        if (this.capture_method != null) {
            arrayList.add("capture_method=" + this.capture_method);
        }
        if (this.currency != null) {
            arrayList.add("currency=" + this.currency);
        }
        if (this.description != null) {
            arrayList.add("description=" + this.description);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (!this.payment_method_types.isEmpty()) {
            arrayList.add("payment_method_types=" + Internal.sanitize(this.payment_method_types));
        }
        if (this.receipt_email != null) {
            arrayList.add("receipt_email=" + this.receipt_email);
        }
        if (this.statement_descriptor != null) {
            arrayList.add("statement_descriptor=" + this.statement_descriptor);
        }
        if (this.customer != null) {
            arrayList.add("customer=" + this.customer);
        }
        if (this.transfer_group != null) {
            arrayList.add("transfer_group=" + this.transfer_group);
        }
        if (this.application_fee_amount != null) {
            arrayList.add("application_fee_amount=" + this.application_fee_amount);
        }
        if (this.on_behalf_of != null) {
            arrayList.add("on_behalf_of=" + this.on_behalf_of);
        }
        if (this.transfer_data != null) {
            arrayList.add("transfer_data=" + this.transfer_data);
        }
        if (this.payment_method_options != null) {
            arrayList.add("payment_method_options=" + this.payment_method_options);
        }
        if (this.statement_descriptor_suffix != null) {
            arrayList.add("statement_descriptor_suffix=" + this.statement_descriptor_suffix);
        }
        if (this.setup_future_usage != null) {
            arrayList.add("setup_future_usage=" + this.setup_future_usage);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreatePaymentIntentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CreatePaymentIntentRequest copy$default(CreatePaymentIntentRequest createPaymentIntentRequest, Long l, String str, String str2, String str3, Map map, List list, String str4, String str5, String str6, String str7, Long l2, String str8, TransferData transferData, PaymentMethodOptions paymentMethodOptions, String str9, String str10, ByteString byteString, int i, Object obj) {
        Long l3 = (i & 1) != 0 ? createPaymentIntentRequest.amount : l;
        return createPaymentIntentRequest.copy(l3, (i & 2) != 0 ? createPaymentIntentRequest.capture_method : str, (i & 4) != 0 ? createPaymentIntentRequest.currency : str2, (i & 8) != 0 ? createPaymentIntentRequest.description : str3, (i & 16) != 0 ? createPaymentIntentRequest.metadata : map, (i & 32) != 0 ? createPaymentIntentRequest.payment_method_types : list, (i & 64) != 0 ? createPaymentIntentRequest.receipt_email : str4, (i & 128) != 0 ? createPaymentIntentRequest.statement_descriptor : str5, (i & 256) != 0 ? createPaymentIntentRequest.customer : str6, (i & 512) != 0 ? createPaymentIntentRequest.transfer_group : str7, (i & 1024) != 0 ? createPaymentIntentRequest.application_fee_amount : l2, (i & 2048) != 0 ? createPaymentIntentRequest.on_behalf_of : str8, (i & 4096) != 0 ? createPaymentIntentRequest.transfer_data : transferData, (i & 8192) != 0 ? createPaymentIntentRequest.payment_method_options : paymentMethodOptions, (i & 16384) != 0 ? createPaymentIntentRequest.statement_descriptor_suffix : str9, (i & 32768) != 0 ? createPaymentIntentRequest.setup_future_usage : str10, (i & 65536) != 0 ? createPaymentIntentRequest.unknownFields() : byteString);
    }

    public final CreatePaymentIntentRequest copy(Long amount, String capture_method, String currency, String description, Map<String, String> metadata, List<String> payment_method_types, String receipt_email, String statement_descriptor, String customer, String transfer_group, Long application_fee_amount, String on_behalf_of, TransferData transfer_data, PaymentMethodOptions payment_method_options, String statement_descriptor_suffix, String setup_future_usage, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreatePaymentIntentRequest(amount, capture_method, currency, description, metadata, payment_method_types, receipt_email, statement_descriptor, customer, transfer_group, application_fee_amount, on_behalf_of, transfer_data, payment_method_options, statement_descriptor_suffix, setup_future_usage, unknownFields);
    }

    /* JADX INFO: compiled from: CreatePaymentIntentRequest.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001bJ\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001bJ\b\u0010\u001c\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\tJ\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0014\u0010\u0012\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "application_fee_amount", "capture_method", "", FirebaseAnalytics.Param.CURRENCY, "customer", "description", "metadata", "", "on_behalf_of", "payment_method_options", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "payment_method_types", "", "receipt_email", "setup_future_usage", "statement_descriptor", "statement_descriptor_suffix", "transfer_data", "Lcom/stripe/proto/api/rest/TransferData;", "transfer_group", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreatePaymentIntentRequest, Builder> {
        public Long amount;
        public Long application_fee_amount;
        public String capture_method;
        public String currency;
        public String customer;
        public String description;
        public String on_behalf_of;
        public PaymentMethodOptions payment_method_options;
        public String receipt_email;
        public String setup_future_usage;
        public String statement_descriptor;
        public String statement_descriptor_suffix;
        public TransferData transfer_data;
        public String transfer_group;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public List<String> payment_method_types = CollectionsKt.emptyList();

        public final Builder amount(Long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder capture_method(String capture_method) {
            this.capture_method = capture_method;
            return this;
        }

        public final Builder currency(String currency) {
            this.currency = currency;
            return this;
        }

        public final Builder description(String description) {
            this.description = description;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder payment_method_types(List<String> payment_method_types) {
            Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
            Internal.checkElementsNotNull(payment_method_types);
            this.payment_method_types = payment_method_types;
            return this;
        }

        public final Builder receipt_email(String receipt_email) {
            this.receipt_email = receipt_email;
            return this;
        }

        public final Builder statement_descriptor(String statement_descriptor) {
            this.statement_descriptor = statement_descriptor;
            return this;
        }

        public final Builder customer(String customer) {
            this.customer = customer;
            return this;
        }

        public final Builder transfer_group(String transfer_group) {
            this.transfer_group = transfer_group;
            return this;
        }

        public final Builder application_fee_amount(Long application_fee_amount) {
            this.application_fee_amount = application_fee_amount;
            return this;
        }

        public final Builder on_behalf_of(String on_behalf_of) {
            this.on_behalf_of = on_behalf_of;
            return this;
        }

        public final Builder transfer_data(TransferData transfer_data) {
            this.transfer_data = transfer_data;
            return this;
        }

        public final Builder payment_method_options(PaymentMethodOptions payment_method_options) {
            this.payment_method_options = payment_method_options;
            return this;
        }

        public final Builder statement_descriptor_suffix(String statement_descriptor_suffix) {
            this.statement_descriptor_suffix = statement_descriptor_suffix;
            return this;
        }

        public final Builder setup_future_usage(String setup_future_usage) {
            this.setup_future_usage = setup_future_usage;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreatePaymentIntentRequest build() {
            return new CreatePaymentIntentRequest(this.amount, this.capture_method, this.currency, this.description, this.metadata, this.payment_method_types, this.receipt_email, this.statement_descriptor, this.customer, this.transfer_group, this.application_fee_amount, this.on_behalf_of, this.transfer_data, this.payment_method_options, this.statement_descriptor_suffix, this.setup_future_usage, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreatePaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreatePaymentIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreatePaymentIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreatePaymentIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.CreatePaymentIntentRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.rest.CreatePaymentIntentRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreatePaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.amount);
                }
                if (value.capture_method != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.capture_method);
                }
                if (value.currency != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.currency);
                }
                if (value.description != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.description);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(5, value.metadata) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(6, value.payment_method_types);
                if (value.receipt_email != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.receipt_email);
                }
                if (value.statement_descriptor != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.statement_descriptor);
                }
                if (value.customer != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.customer);
                }
                if (value.transfer_group != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.transfer_group);
                }
                if (value.application_fee_amount != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(11, value.application_fee_amount);
                }
                if (value.on_behalf_of != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(12, value.on_behalf_of);
                }
                if (value.transfer_data != null) {
                    iEncodedSizeWithTag += TransferData.ADAPTER.encodedSizeWithTag(13, value.transfer_data);
                }
                if (value.payment_method_options != null) {
                    iEncodedSizeWithTag += PaymentMethodOptions.ADAPTER.encodedSizeWithTag(14, value.payment_method_options);
                }
                if (value.statement_descriptor_suffix != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(15, value.statement_descriptor_suffix);
                }
                return value.setup_future_usage != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(16, value.setup_future_usage) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreatePaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                }
                if (value.capture_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.capture_method);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.currency);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.description);
                }
                getMetadataAdapter().encodeWithTag(writer, 5, value.metadata);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.payment_method_types);
                if (value.receipt_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.receipt_email);
                }
                if (value.statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.statement_descriptor);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.customer);
                }
                if (value.transfer_group != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.transfer_group);
                }
                if (value.application_fee_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 11, value.application_fee_amount);
                }
                if (value.on_behalf_of != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.on_behalf_of);
                }
                if (value.transfer_data != null) {
                    TransferData.ADAPTER.encodeWithTag(writer, 13, value.transfer_data);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 14, value.payment_method_options);
                }
                if (value.statement_descriptor_suffix != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 15, value.statement_descriptor_suffix);
                }
                if (value.setup_future_usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 16, value.setup_future_usage);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreatePaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.setup_future_usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 16, value.setup_future_usage);
                }
                if (value.statement_descriptor_suffix != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 15, value.statement_descriptor_suffix);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 14, value.payment_method_options);
                }
                if (value.transfer_data != null) {
                    TransferData.ADAPTER.encodeWithTag(writer, 13, value.transfer_data);
                }
                if (value.on_behalf_of != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.on_behalf_of);
                }
                if (value.application_fee_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 11, value.application_fee_amount);
                }
                if (value.transfer_group != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.transfer_group);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.customer);
                }
                if (value.statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.statement_descriptor);
                }
                if (value.receipt_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.receipt_email);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.payment_method_types);
                getMetadataAdapter().encodeWithTag(writer, 5, value.metadata);
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.description);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.currency);
                }
                if (value.capture_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.capture_method);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.amount);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreatePaymentIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                Long lDecode = null;
                String strDecode8 = null;
                TransferData transferDataDecode = null;
                PaymentMethodOptions paymentMethodOptionsDecode = null;
                String strDecode9 = null;
                String strDecode10 = null;
                Long lDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 6:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 7:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 11:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 12:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 13:
                                transferDataDecode = TransferData.ADAPTER.decode(reader);
                                break;
                            case 14:
                                paymentMethodOptionsDecode = PaymentMethodOptions.ADAPTER.decode(reader);
                                break;
                            case 15:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 16:
                                strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new CreatePaymentIntentRequest(lDecode2, str, strDecode2, strDecode3, linkedHashMap, arrayList, strDecode4, strDecode5, strDecode6, strDecode7, lDecode, strDecode8, transferDataDecode, paymentMethodOptionsDecode, strDecode9, strDecode10, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreatePaymentIntentRequest redact(CreatePaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str = value.capture_method;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.currency;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.description;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.receipt_email;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.statement_descriptor;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.customer;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.transfer_group;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                Long l2 = value.application_fee_amount;
                Long lRedact2 = l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null;
                String str8 = value.on_behalf_of;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                TransferData transferData = value.transfer_data;
                TransferData transferDataRedact = transferData != null ? TransferData.ADAPTER.redact(transferData) : null;
                PaymentMethodOptions paymentMethodOptions = value.payment_method_options;
                PaymentMethodOptions paymentMethodOptionsRedact = paymentMethodOptions != null ? PaymentMethodOptions.ADAPTER.redact(paymentMethodOptions) : null;
                String str9 = value.statement_descriptor_suffix;
                String strRedact9 = str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null;
                String str10 = value.setup_future_usage;
                return CreatePaymentIntentRequest.copy$default(value, lRedact, strRedact, strRedact2, strRedact3, null, null, strRedact4, strRedact5, strRedact6, strRedact7, lRedact2, strRedact8, transferDataRedact, paymentMethodOptionsRedact, strRedact9, str10 != null ? ProtoAdapter.STRING_VALUE.redact(str10) : null, ByteString.EMPTY, 48, null);
            }
        };
    }
}
