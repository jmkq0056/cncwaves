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
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.CollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.sdk.ChargeAmount;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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

/* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 ,2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005+,-./BÇ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\n\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\n\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010 JÍ\u0001\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\n2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u0015\u001a\u00020\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\n2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\n2\b\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020\u0002H\u0016J\b\u0010*\u001a\u00020\u0006H\u0016R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010!R\u0010\u0010\u000e\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;", "charge_amount", "Lcom/stripe/proto/model/sdk/ChargeAmount;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "tip_configuration", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;", "skip_tipping", "", "manual_entry", "tip_eligible_amount", "", "update_payment_intent", "computed_routing_priority", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripe_account_id", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "enable_customer_cancellation", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "request_dynamic_currency_conversion", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "surcharge_notice", "allow_redisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "RoutingPriority", "TipConfiguration", "TipOption", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectPaymentMethodRequest extends Message<CollectPaymentMethodRequest, Builder> {
    public static final ProtoAdapter<CollectPaymentMethodRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.AllowRedisplay#ADAPTER", jsonName = "allowRedisplay", schemaIndex = 15, tag = 22)
    public final AllowRedisplay allow_redisplay;

    @WireField(adapter = "com.stripe.proto.model.sdk.ChargeAmount#ADAPTER", jsonName = "chargeAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 4)
    public final ChargeAmount charge_amount;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$RoutingPriority#ADAPTER", jsonName = "computedRoutingPriority", label = WireField.Label.REPEATED, schemaIndex = 7, tag = 14)
    public final List<PaymentMethodOptions.RoutingPriority> computed_routing_priority;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCustomerCancellation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 17)
    public final boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "manualEntry", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 11)
    public final boolean manual_entry;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER", jsonName = "offlineBehavior", schemaIndex = 13, tag = 20)
    public final CreatePaymentIntentOptions.OfflineBehavior offline_behavior;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 9, tag = 16)
    public final OfflinePaymentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", schemaIndex = 11, tag = 18)
    public final PaymentIntent payment_intent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 9)
    public final String payment_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "requestDynamicCurrencyConversion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 19)
    public final boolean request_dynamic_currency_conversion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "skipTipping", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 10)
    public final boolean skip_tipping;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeAccountId", schemaIndex = 8, tag = 15)
    public final String stripe_account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "surchargeNotice", schemaIndex = 14, tag = 21)
    public final String surcharge_notice;

    @WireField(adapter = "com.stripe.proto.api.sdk.CollectPaymentMethodRequest$TipConfiguration#ADAPTER", jsonName = "tipConfiguration", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 8)
    public final TipConfiguration tip_configuration;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "tipEligibleAmount", schemaIndex = 5, tag = 12)
    public final Long tip_eligible_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "updatePaymentIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 13)
    public final boolean update_payment_intent;

    public CollectPaymentMethodRequest() {
        this(null, null, null, false, false, null, false, null, null, null, false, null, false, null, null, null, null, 131071, null);
    }

    public /* synthetic */ CollectPaymentMethodRequest(ChargeAmount chargeAmount, String str, TipConfiguration tipConfiguration, boolean z, boolean z2, Long l, boolean z3, List list, String str2, OfflinePaymentDetails offlinePaymentDetails, boolean z4, PaymentIntent paymentIntent, boolean z5, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, String str3, AllowRedisplay allowRedisplay, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : chargeAmount, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : tipConfiguration, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? null : l, (i & 64) != 0 ? false : z3, (i & 128) != 0 ? CollectionsKt.emptyList() : list, (i & 256) != 0 ? null : str2, (i & 512) != 0 ? null : offlinePaymentDetails, (i & 1024) != 0 ? false : z4, (i & 2048) != 0 ? null : paymentIntent, (i & 4096) == 0 ? z5 : false, (i & 8192) != 0 ? null : offlineBehavior, (i & 16384) != 0 ? null : str3, (i & 32768) != 0 ? null : allowRedisplay, (i & 65536) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectPaymentMethodRequest(ChargeAmount chargeAmount, String payment_intent_id, TipConfiguration tipConfiguration, boolean z, boolean z2, Long l, boolean z3, List<? extends PaymentMethodOptions.RoutingPriority> computed_routing_priority, String str, OfflinePaymentDetails offlinePaymentDetails, boolean z4, PaymentIntent paymentIntent, boolean z5, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, String str2, AllowRedisplay allowRedisplay, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge_amount = chargeAmount;
        this.payment_intent_id = payment_intent_id;
        this.tip_configuration = tipConfiguration;
        this.skip_tipping = z;
        this.manual_entry = z2;
        this.tip_eligible_amount = l;
        this.update_payment_intent = z3;
        this.stripe_account_id = str;
        this.offline_details = offlinePaymentDetails;
        this.enable_customer_cancellation = z4;
        this.payment_intent = paymentIntent;
        this.request_dynamic_currency_conversion = z5;
        this.offline_behavior = offlineBehavior;
        this.surcharge_notice = str2;
        this.allow_redisplay = allowRedisplay;
        this.computed_routing_priority = Internal.immutableCopyOf("computed_routing_priority", computed_routing_priority);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge_amount = this.charge_amount;
        builder.payment_intent_id = this.payment_intent_id;
        builder.tip_configuration = this.tip_configuration;
        builder.skip_tipping = this.skip_tipping;
        builder.manual_entry = this.manual_entry;
        builder.tip_eligible_amount = this.tip_eligible_amount;
        builder.update_payment_intent = this.update_payment_intent;
        builder.computed_routing_priority = this.computed_routing_priority;
        builder.stripe_account_id = this.stripe_account_id;
        builder.offline_details = this.offline_details;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.payment_intent = this.payment_intent;
        builder.request_dynamic_currency_conversion = this.request_dynamic_currency_conversion;
        builder.offline_behavior = this.offline_behavior;
        builder.surcharge_notice = this.surcharge_notice;
        builder.allow_redisplay = this.allow_redisplay;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectPaymentMethodRequest)) {
            return false;
        }
        CollectPaymentMethodRequest collectPaymentMethodRequest = (CollectPaymentMethodRequest) other;
        return Intrinsics.areEqual(unknownFields(), collectPaymentMethodRequest.unknownFields()) && Intrinsics.areEqual(this.charge_amount, collectPaymentMethodRequest.charge_amount) && Intrinsics.areEqual(this.payment_intent_id, collectPaymentMethodRequest.payment_intent_id) && Intrinsics.areEqual(this.tip_configuration, collectPaymentMethodRequest.tip_configuration) && this.skip_tipping == collectPaymentMethodRequest.skip_tipping && this.manual_entry == collectPaymentMethodRequest.manual_entry && Intrinsics.areEqual(this.tip_eligible_amount, collectPaymentMethodRequest.tip_eligible_amount) && this.update_payment_intent == collectPaymentMethodRequest.update_payment_intent && Intrinsics.areEqual(this.computed_routing_priority, collectPaymentMethodRequest.computed_routing_priority) && Intrinsics.areEqual(this.stripe_account_id, collectPaymentMethodRequest.stripe_account_id) && Intrinsics.areEqual(this.offline_details, collectPaymentMethodRequest.offline_details) && this.enable_customer_cancellation == collectPaymentMethodRequest.enable_customer_cancellation && Intrinsics.areEqual(this.payment_intent, collectPaymentMethodRequest.payment_intent) && this.request_dynamic_currency_conversion == collectPaymentMethodRequest.request_dynamic_currency_conversion && this.offline_behavior == collectPaymentMethodRequest.offline_behavior && Intrinsics.areEqual(this.surcharge_notice, collectPaymentMethodRequest.surcharge_notice) && this.allow_redisplay == collectPaymentMethodRequest.allow_redisplay;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ChargeAmount chargeAmount = this.charge_amount;
        int iHashCode2 = (((iHashCode + (chargeAmount != null ? chargeAmount.hashCode() : 0)) * 37) + this.payment_intent_id.hashCode()) * 37;
        TipConfiguration tipConfiguration = this.tip_configuration;
        int iHashCode3 = (((((iHashCode2 + (tipConfiguration != null ? tipConfiguration.hashCode() : 0)) * 37) + Boolean.hashCode(this.skip_tipping)) * 37) + Boolean.hashCode(this.manual_entry)) * 37;
        Long l = this.tip_eligible_amount;
        int iHashCode4 = (((((iHashCode3 + (l != null ? l.hashCode() : 0)) * 37) + Boolean.hashCode(this.update_payment_intent)) * 37) + this.computed_routing_priority.hashCode()) * 37;
        String str = this.stripe_account_id;
        int iHashCode5 = (iHashCode4 + (str != null ? str.hashCode() : 0)) * 37;
        OfflinePaymentDetails offlinePaymentDetails = this.offline_details;
        int iHashCode6 = (((iHashCode5 + (offlinePaymentDetails != null ? offlinePaymentDetails.hashCode() : 0)) * 37) + Boolean.hashCode(this.enable_customer_cancellation)) * 37;
        PaymentIntent paymentIntent = this.payment_intent;
        int iHashCode7 = (((iHashCode6 + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37) + Boolean.hashCode(this.request_dynamic_currency_conversion)) * 37;
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior = this.offline_behavior;
        int iHashCode8 = (iHashCode7 + (offlineBehavior != null ? offlineBehavior.hashCode() : 0)) * 37;
        String str2 = this.surcharge_notice;
        int iHashCode9 = (iHashCode8 + (str2 != null ? str2.hashCode() : 0)) * 37;
        AllowRedisplay allowRedisplay = this.allow_redisplay;
        int iHashCode10 = iHashCode9 + (allowRedisplay != null ? allowRedisplay.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.charge_amount != null) {
            arrayList.add("charge_amount=" + this.charge_amount);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        if (this.tip_configuration != null) {
            arrayList2.add("tip_configuration=" + this.tip_configuration);
        }
        arrayList2.add("skip_tipping=" + this.skip_tipping);
        arrayList2.add("manual_entry=" + this.manual_entry);
        if (this.tip_eligible_amount != null) {
            arrayList2.add("tip_eligible_amount=" + this.tip_eligible_amount);
        }
        arrayList2.add("update_payment_intent=" + this.update_payment_intent);
        if (!this.computed_routing_priority.isEmpty()) {
            arrayList2.add("computed_routing_priority=" + this.computed_routing_priority);
        }
        if (this.stripe_account_id != null) {
            arrayList2.add("stripe_account_id=" + Internal.sanitize(this.stripe_account_id));
        }
        if (this.offline_details != null) {
            arrayList2.add("offline_details=" + this.offline_details);
        }
        arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        if (this.payment_intent != null) {
            arrayList2.add("payment_intent=" + this.payment_intent);
        }
        arrayList2.add("request_dynamic_currency_conversion=" + this.request_dynamic_currency_conversion);
        if (this.offline_behavior != null) {
            arrayList2.add("offline_behavior=" + this.offline_behavior);
        }
        if (this.surcharge_notice != null) {
            arrayList2.add("surcharge_notice=" + this.surcharge_notice);
        }
        if (this.allow_redisplay != null) {
            arrayList2.add("allow_redisplay=" + this.allow_redisplay);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectPaymentMethodRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CollectPaymentMethodRequest copy$default(CollectPaymentMethodRequest collectPaymentMethodRequest, ChargeAmount chargeAmount, String str, TipConfiguration tipConfiguration, boolean z, boolean z2, Long l, boolean z3, List list, String str2, OfflinePaymentDetails offlinePaymentDetails, boolean z4, PaymentIntent paymentIntent, boolean z5, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, String str3, AllowRedisplay allowRedisplay, ByteString byteString, int i, Object obj) {
        ChargeAmount chargeAmount2 = (i & 1) != 0 ? collectPaymentMethodRequest.charge_amount : chargeAmount;
        return collectPaymentMethodRequest.copy(chargeAmount2, (i & 2) != 0 ? collectPaymentMethodRequest.payment_intent_id : str, (i & 4) != 0 ? collectPaymentMethodRequest.tip_configuration : tipConfiguration, (i & 8) != 0 ? collectPaymentMethodRequest.skip_tipping : z, (i & 16) != 0 ? collectPaymentMethodRequest.manual_entry : z2, (i & 32) != 0 ? collectPaymentMethodRequest.tip_eligible_amount : l, (i & 64) != 0 ? collectPaymentMethodRequest.update_payment_intent : z3, (i & 128) != 0 ? collectPaymentMethodRequest.computed_routing_priority : list, (i & 256) != 0 ? collectPaymentMethodRequest.stripe_account_id : str2, (i & 512) != 0 ? collectPaymentMethodRequest.offline_details : offlinePaymentDetails, (i & 1024) != 0 ? collectPaymentMethodRequest.enable_customer_cancellation : z4, (i & 2048) != 0 ? collectPaymentMethodRequest.payment_intent : paymentIntent, (i & 4096) != 0 ? collectPaymentMethodRequest.request_dynamic_currency_conversion : z5, (i & 8192) != 0 ? collectPaymentMethodRequest.offline_behavior : offlineBehavior, (i & 16384) != 0 ? collectPaymentMethodRequest.surcharge_notice : str3, (i & 32768) != 0 ? collectPaymentMethodRequest.allow_redisplay : allowRedisplay, (i & 65536) != 0 ? collectPaymentMethodRequest.unknownFields() : byteString);
    }

    public final CollectPaymentMethodRequest copy(ChargeAmount charge_amount, String payment_intent_id, TipConfiguration tip_configuration, boolean skip_tipping, boolean manual_entry, Long tip_eligible_amount, boolean update_payment_intent, List<? extends PaymentMethodOptions.RoutingPriority> computed_routing_priority, String stripe_account_id, OfflinePaymentDetails offline_details, boolean enable_customer_cancellation, PaymentIntent payment_intent, boolean request_dynamic_currency_conversion, CreatePaymentIntentOptions.OfflineBehavior offline_behavior, String surcharge_notice, AllowRedisplay allow_redisplay, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectPaymentMethodRequest(charge_amount, payment_intent_id, tip_configuration, skip_tipping, manual_entry, tip_eligible_amount, update_payment_intent, computed_routing_priority, stripe_account_id, offline_details, enable_customer_cancellation, payment_intent, request_dynamic_currency_conversion, offline_behavior, surcharge_notice, allow_redisplay, unknownFields);
    }

    /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010 \u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\fJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\fJ\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010!J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u001eR\u0012\u0010\u001f\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "()V", "allow_redisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "charge_amount", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "computed_routing_priority", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "enable_customer_cancellation", "", "manual_entry", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "request_dynamic_currency_conversion", "skip_tipping", "stripe_account_id", "surcharge_notice", "tip_configuration", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;", "tip_eligible_amount", "", "Ljava/lang/Long;", "update_payment_intent", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectPaymentMethodRequest, Builder> {
        public AllowRedisplay allow_redisplay;
        public ChargeAmount charge_amount;
        public boolean enable_customer_cancellation;
        public boolean manual_entry;
        public CreatePaymentIntentOptions.OfflineBehavior offline_behavior;
        public OfflinePaymentDetails offline_details;
        public PaymentIntent payment_intent;
        public boolean request_dynamic_currency_conversion;
        public boolean skip_tipping;
        public String stripe_account_id;
        public String surcharge_notice;
        public TipConfiguration tip_configuration;
        public Long tip_eligible_amount;
        public boolean update_payment_intent;
        public String payment_intent_id = "";
        public List<? extends PaymentMethodOptions.RoutingPriority> computed_routing_priority = CollectionsKt.emptyList();

        public final Builder charge_amount(ChargeAmount charge_amount) {
            this.charge_amount = charge_amount;
            return this;
        }

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder tip_configuration(TipConfiguration tip_configuration) {
            this.tip_configuration = tip_configuration;
            return this;
        }

        public final Builder skip_tipping(boolean skip_tipping) {
            this.skip_tipping = skip_tipping;
            return this;
        }

        public final Builder manual_entry(boolean manual_entry) {
            this.manual_entry = manual_entry;
            return this;
        }

        public final Builder tip_eligible_amount(Long tip_eligible_amount) {
            this.tip_eligible_amount = tip_eligible_amount;
            return this;
        }

        public final Builder update_payment_intent(boolean update_payment_intent) {
            this.update_payment_intent = update_payment_intent;
            return this;
        }

        public final Builder computed_routing_priority(List<? extends PaymentMethodOptions.RoutingPriority> computed_routing_priority) {
            Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
            Internal.checkElementsNotNull(computed_routing_priority);
            this.computed_routing_priority = computed_routing_priority;
            return this;
        }

        public final Builder stripe_account_id(String stripe_account_id) {
            this.stripe_account_id = stripe_account_id;
            return this;
        }

        public final Builder offline_details(OfflinePaymentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder enable_customer_cancellation(boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder request_dynamic_currency_conversion(boolean request_dynamic_currency_conversion) {
            this.request_dynamic_currency_conversion = request_dynamic_currency_conversion;
            return this;
        }

        public final Builder offline_behavior(CreatePaymentIntentOptions.OfflineBehavior offline_behavior) {
            this.offline_behavior = offline_behavior;
            return this;
        }

        public final Builder surcharge_notice(String surcharge_notice) {
            this.surcharge_notice = surcharge_notice;
            return this;
        }

        public final Builder allow_redisplay(AllowRedisplay allow_redisplay) {
            this.allow_redisplay = allow_redisplay;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectPaymentMethodRequest build() {
            return new CollectPaymentMethodRequest(this.charge_amount, this.payment_intent_id, this.tip_configuration, this.skip_tipping, this.manual_entry, this.tip_eligible_amount, this.update_payment_intent, this.computed_routing_priority, this.stripe_account_id, this.offline_details, this.enable_customer_cancellation, this.payment_intent, this.request_dynamic_currency_conversion, this.offline_behavior, this.surcharge_notice, this.allow_redisplay, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectPaymentMethodRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectPaymentMethodRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectPaymentMethodRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectPaymentMethodRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.charge_amount != null) {
                    size += ChargeAmount.ADAPTER.encodedSizeWithTag(4, value.charge_amount);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.payment_intent_id);
                }
                if (value.tip_configuration != null) {
                    size += CollectPaymentMethodRequest.TipConfiguration.ADAPTER.encodedSizeWithTag(8, value.tip_configuration);
                }
                if (value.skip_tipping) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.skip_tipping));
                }
                if (value.manual_entry) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(11, Boolean.valueOf(value.manual_entry));
                }
                if (value.tip_eligible_amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(12, value.tip_eligible_amount);
                }
                if (value.update_payment_intent) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(13, Boolean.valueOf(value.update_payment_intent));
                }
                int iEncodedSizeWithTag = size + PaymentMethodOptions.RoutingPriority.ADAPTER.asRepeated().encodedSizeWithTag(14, value.computed_routing_priority) + ProtoAdapter.STRING.encodedSizeWithTag(15, value.stripe_account_id) + OfflinePaymentDetails.ADAPTER.encodedSizeWithTag(16, value.offline_details);
                if (value.enable_customer_cancellation) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(17, Boolean.valueOf(value.enable_customer_cancellation));
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + PaymentIntent.ADAPTER.encodedSizeWithTag(18, value.payment_intent);
                if (value.request_dynamic_currency_conversion) {
                    iEncodedSizeWithTag2 += ProtoAdapter.BOOL.encodedSizeWithTag(19, Boolean.valueOf(value.request_dynamic_currency_conversion));
                }
                int iEncodedSizeWithTag3 = iEncodedSizeWithTag2 + CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodedSizeWithTag(20, value.offline_behavior);
                if (value.surcharge_notice != null) {
                    iEncodedSizeWithTag3 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(21, value.surcharge_notice);
                }
                return iEncodedSizeWithTag3 + AllowRedisplay.ADAPTER.encodedSizeWithTag(22, value.allow_redisplay);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.charge_amount != null) {
                    ChargeAmount.ADAPTER.encodeWithTag(writer, 4, value.charge_amount);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.payment_intent_id);
                }
                if (value.tip_configuration != null) {
                    CollectPaymentMethodRequest.TipConfiguration.ADAPTER.encodeWithTag(writer, 8, value.tip_configuration);
                }
                if (value.skip_tipping) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.skip_tipping));
                }
                if (value.manual_entry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.manual_entry));
                }
                if (value.tip_eligible_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 12, value.tip_eligible_amount);
                }
                if (value.update_payment_intent) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.update_payment_intent));
                }
                PaymentMethodOptions.RoutingPriority.ADAPTER.asRepeated().encodeWithTag(writer, 14, value.computed_routing_priority);
                ProtoAdapter.STRING.encodeWithTag(writer, 15, value.stripe_account_id);
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 16, value.offline_details);
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.enable_customer_cancellation));
                }
                PaymentIntent.ADAPTER.encodeWithTag(writer, 18, value.payment_intent);
                if (value.request_dynamic_currency_conversion) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.request_dynamic_currency_conversion));
                }
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 20, value.offline_behavior);
                if (value.surcharge_notice != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 21, value.surcharge_notice);
                }
                AllowRedisplay.ADAPTER.encodeWithTag(writer, 22, value.allow_redisplay);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                AllowRedisplay.ADAPTER.encodeWithTag(writer, 22, value.allow_redisplay);
                if (value.surcharge_notice != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 21, value.surcharge_notice);
                }
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 20, value.offline_behavior);
                if (value.request_dynamic_currency_conversion) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.request_dynamic_currency_conversion));
                }
                PaymentIntent.ADAPTER.encodeWithTag(writer, 18, value.payment_intent);
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.enable_customer_cancellation));
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 16, value.offline_details);
                ProtoAdapter.STRING.encodeWithTag(writer, 15, value.stripe_account_id);
                PaymentMethodOptions.RoutingPriority.ADAPTER.asRepeated().encodeWithTag(writer, 14, value.computed_routing_priority);
                if (value.update_payment_intent) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.update_payment_intent));
                }
                if (value.tip_eligible_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 12, value.tip_eligible_amount);
                }
                if (value.manual_entry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.manual_entry));
                }
                if (value.skip_tipping) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.skip_tipping));
                }
                if (value.tip_configuration != null) {
                    CollectPaymentMethodRequest.TipConfiguration.ADAPTER.encodeWithTag(writer, 8, value.tip_configuration);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.payment_intent_id);
                }
                if (value.charge_amount != null) {
                    ChargeAmount.ADAPTER.encodeWithTag(writer, 4, value.charge_amount);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectPaymentMethodRequest decode(ProtoReader reader) throws IOException {
                CollectPaymentMethodRequest.TipConfiguration tipConfiguration;
                Long l;
                String str;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Long lDecode = null;
                String strDecode = null;
                OfflinePaymentDetails offlinePaymentDetailsDecode = null;
                PaymentIntent paymentIntentDecode = null;
                CreatePaymentIntentOptions.OfflineBehavior offlineBehaviorDecode = null;
                String strDecode2 = null;
                AllowRedisplay allowRedisplayDecode = null;
                ChargeAmount chargeAmountDecode = null;
                String strDecode3 = "";
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                boolean zBooleanValue3 = false;
                boolean zBooleanValue4 = false;
                boolean zBooleanValue5 = false;
                CollectPaymentMethodRequest.TipConfiguration tipConfigurationDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectPaymentMethodRequest(chargeAmountDecode, strDecode3, tipConfigurationDecode, zBooleanValue, zBooleanValue2, lDecode, zBooleanValue3, arrayList, strDecode, offlinePaymentDetailsDecode, zBooleanValue4, paymentIntentDecode, zBooleanValue5, offlineBehaviorDecode, strDecode2, allowRedisplayDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 4) {
                        chargeAmountDecode = ChargeAmount.ADAPTER.decode(reader);
                    } else {
                        switch (iNextTag) {
                            case 8:
                                tipConfigurationDecode = CollectPaymentMethodRequest.TipConfiguration.ADAPTER.decode(reader);
                                continue;
                            case 9:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 10:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                continue;
                            case 11:
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                continue;
                            case 12:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 13:
                                zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                continue;
                            case 14:
                                tipConfiguration = tipConfigurationDecode;
                                l = lDecode;
                                str = strDecode;
                                try {
                                    PaymentMethodOptions.RoutingPriority.ADAPTER.tryDecode(reader, arrayList);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 15:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 16:
                                offlinePaymentDetailsDecode = OfflinePaymentDetails.ADAPTER.decode(reader);
                                continue;
                            case 17:
                                zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                continue;
                            case 18:
                                paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                                continue;
                            case 19:
                                zBooleanValue5 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                continue;
                            case 20:
                                tipConfiguration = tipConfigurationDecode;
                                l = lDecode;
                                str = strDecode;
                                try {
                                    offlineBehaviorDecode = CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                }
                                break;
                            case 21:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 22:
                                try {
                                    allowRedisplayDecode = AllowRedisplay.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                                    tipConfiguration = tipConfigurationDecode;
                                    l = lDecode;
                                    str = strDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                                    tipConfigurationDecode = tipConfiguration;
                                    lDecode = l;
                                    strDecode = str;
                                }
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                tipConfiguration = tipConfigurationDecode;
                                l = lDecode;
                                str = strDecode;
                                break;
                        }
                        tipConfigurationDecode = tipConfiguration;
                        lDecode = l;
                        strDecode = str;
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectPaymentMethodRequest redact(CollectPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ChargeAmount chargeAmount = value.charge_amount;
                ChargeAmount chargeAmountRedact = chargeAmount != null ? ChargeAmount.ADAPTER.redact(chargeAmount) : null;
                CollectPaymentMethodRequest.TipConfiguration tipConfiguration = value.tip_configuration;
                CollectPaymentMethodRequest.TipConfiguration tipConfigurationRedact = tipConfiguration != null ? CollectPaymentMethodRequest.TipConfiguration.ADAPTER.redact(tipConfiguration) : null;
                Long l = value.tip_eligible_amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                OfflinePaymentDetails offlinePaymentDetails = value.offline_details;
                OfflinePaymentDetails offlinePaymentDetailsRedact = offlinePaymentDetails != null ? OfflinePaymentDetails.ADAPTER.redact(offlinePaymentDetails) : null;
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                String str = value.surcharge_notice;
                return CollectPaymentMethodRequest.copy$default(value, chargeAmountRedact, null, tipConfigurationRedact, false, false, lRedact, false, null, null, offlinePaymentDetailsRedact, false, paymentIntentRedact, false, null, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, null, ByteString.EMPTY, 46554, null);
            }
        };
    }

    /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "label", "", "unknownFields", "Lokio/ByteString;", "(JLjava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TipOption extends Message<TipOption, Builder> {
        public static final ProtoAdapter<TipOption> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final long amount;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String label;

        public TipOption() {
            this(0L, null, null, 7, null);
        }

        public /* synthetic */ TipOption(long j, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TipOption(long j, String label, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.amount = j;
            this.label = label;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.amount = this.amount;
            builder.label = this.label;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TipOption)) {
                return false;
            }
            TipOption tipOption = (TipOption) other;
            return Intrinsics.areEqual(unknownFields(), tipOption.unknownFields()) && this.amount == tipOption.amount && Intrinsics.areEqual(this.label, tipOption.label);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + Long.hashCode(this.amount)) * 37) + this.label.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("amount=" + this.amount);
            arrayList2.add("label=" + Internal.sanitize(this.label));
            return CollectionsKt.joinToString$default(arrayList, ", ", "TipOption{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ TipOption copy$default(TipOption tipOption, long j, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                j = tipOption.amount;
            }
            if ((i & 2) != 0) {
                str = tipOption.label;
            }
            if ((i & 4) != 0) {
                byteString = tipOption.unknownFields();
            }
            return tipOption.copy(j, str, byteString);
        }

        public final TipOption copy(long amount, String label, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TipOption(amount, label, unknownFields);
        }

        /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "label", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TipOption, Builder> {
            public long amount;
            public String label = "";

            public final Builder amount(long amount) {
                this.amount = amount;
                return this;
            }

            public final Builder label(String label) {
                Intrinsics.checkNotNullParameter(label, "label");
                this.label = label;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TipOption build() {
                return new TipOption(this.amount, this.label, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TipOption build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TipOption.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TipOption>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectPaymentMethodRequest$TipOption$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectPaymentMethodRequest.TipOption value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.amount != 0) {
                        size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.amount));
                    }
                    return !Intrinsics.areEqual(value.label, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.label) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectPaymentMethodRequest.TipOption value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.amount != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.amount));
                    }
                    if (!Intrinsics.areEqual(value.label, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.label);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectPaymentMethodRequest.TipOption value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.label, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.label);
                    }
                    if (value.amount != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.amount));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectPaymentMethodRequest.TipOption redact(CollectPaymentMethodRequest.TipOption value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CollectPaymentMethodRequest.TipOption.copy$default(value, 0L, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectPaymentMethodRequest.TipOption decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    long jLongValue = 0;
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectPaymentMethodRequest.TipOption(jLongValue, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B)\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;", "options", "", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;", "hide_custom_amount", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TipConfiguration extends Message<TipConfiguration, Builder> {
        public static final ProtoAdapter<TipConfiguration> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "hideCustomAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final boolean hide_custom_amount;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectPaymentMethodRequest$TipOption#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<TipOption> options;

        public TipConfiguration() {
            this(null, false, null, 7, null);
        }

        public /* synthetic */ TipConfiguration(List list, boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? false : z, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TipConfiguration(List<TipOption> options, boolean z, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.hide_custom_amount = z;
            this.options = Internal.immutableCopyOf("options", options);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.options = this.options;
            builder.hide_custom_amount = this.hide_custom_amount;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TipConfiguration)) {
                return false;
            }
            TipConfiguration tipConfiguration = (TipConfiguration) other;
            return Intrinsics.areEqual(unknownFields(), tipConfiguration.unknownFields()) && Intrinsics.areEqual(this.options, tipConfiguration.options) && this.hide_custom_amount == tipConfiguration.hide_custom_amount;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.options.hashCode()) * 37) + Boolean.hashCode(this.hide_custom_amount);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.options.isEmpty()) {
                arrayList.add("options=" + this.options);
            }
            arrayList.add("hide_custom_amount=" + this.hide_custom_amount);
            return CollectionsKt.joinToString$default(arrayList, ", ", "TipConfiguration{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TipConfiguration copy$default(TipConfiguration tipConfiguration, List list, boolean z, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = tipConfiguration.options;
            }
            if ((i & 2) != 0) {
                z = tipConfiguration.hide_custom_amount;
            }
            if ((i & 4) != 0) {
                byteString = tipConfiguration.unknownFields();
            }
            return tipConfiguration.copy(list, z, byteString);
        }

        public final TipConfiguration copy(List<TipOption> options, boolean hide_custom_amount, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TipConfiguration(options, hide_custom_amount, unknownFields);
        }

        /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;", "()V", "hide_custom_amount", "", "options", "", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TipConfiguration, Builder> {
            public boolean hide_custom_amount;
            public List<TipOption> options = CollectionsKt.emptyList();

            public final Builder options(List<TipOption> options) {
                Intrinsics.checkNotNullParameter(options, "options");
                Internal.checkElementsNotNull(options);
                this.options = options;
                return this;
            }

            public final Builder hide_custom_amount(boolean hide_custom_amount) {
                this.hide_custom_amount = hide_custom_amount;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TipConfiguration build() {
                return new TipConfiguration(this.options, this.hide_custom_amount, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TipConfiguration build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TipConfiguration.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TipConfiguration>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectPaymentMethodRequest$TipConfiguration$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectPaymentMethodRequest.TipConfiguration value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size() + CollectPaymentMethodRequest.TipOption.ADAPTER.asRepeated().encodedSizeWithTag(1, value.options);
                    return value.hide_custom_amount ? size + ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.hide_custom_amount)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectPaymentMethodRequest.TipConfiguration value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    CollectPaymentMethodRequest.TipOption.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.options);
                    if (value.hide_custom_amount) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.hide_custom_amount));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectPaymentMethodRequest.TipConfiguration value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.hide_custom_amount) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.hide_custom_amount));
                    }
                    CollectPaymentMethodRequest.TipOption.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.options);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectPaymentMethodRequest.TipConfiguration decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectPaymentMethodRequest.TipConfiguration(arrayList, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(CollectPaymentMethodRequest.TipOption.ADAPTER.decode(reader));
                        } else if (iNextTag == 2) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectPaymentMethodRequest.TipConfiguration redact(CollectPaymentMethodRequest.TipConfiguration value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CollectPaymentMethodRequest.TipConfiguration.copy$default(value, Internal.m361redactElements(value.options, CollectPaymentMethodRequest.TipOption.ADAPTER), false, ByteString.EMPTY, 2, null);
                }
            };
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$RoutingPriority;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DOMESTIC", "INTERNATIONAL", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RoutingPriority implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RoutingPriority[] $VALUES;
        public static final ProtoAdapter<RoutingPriority> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final RoutingPriority DOMESTIC;
        public static final RoutingPriority INTERNATIONAL;
        private final int value;

        private static final /* synthetic */ RoutingPriority[] $values() {
            return new RoutingPriority[]{DOMESTIC, INTERNATIONAL};
        }

        @JvmStatic
        public static final RoutingPriority fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<RoutingPriority> getEntries() {
            return $ENTRIES;
        }

        public static RoutingPriority valueOf(String str) {
            return (RoutingPriority) Enum.valueOf(RoutingPriority.class, str);
        }

        public static RoutingPriority[] values() {
            return (RoutingPriority[]) $VALUES.clone();
        }

        private RoutingPriority(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final RoutingPriority routingPriority = new RoutingPriority("DOMESTIC", 0, 0);
            DOMESTIC = routingPriority;
            INTERNATIONAL = new RoutingPriority("INTERNATIONAL", 1, 1);
            RoutingPriority[] routingPriorityArr$values = $values();
            $VALUES = routingPriorityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(routingPriorityArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RoutingPriority.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<RoutingPriority>(orCreateKotlinClass, syntax, routingPriority) { // from class: com.stripe.proto.api.sdk.CollectPaymentMethodRequest$RoutingPriority$Companion$ADAPTER$1
                {
                    CollectPaymentMethodRequest.RoutingPriority routingPriority2 = routingPriority;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CollectPaymentMethodRequest.RoutingPriority fromValue(int value) {
                    return CollectPaymentMethodRequest.RoutingPriority.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CollectPaymentMethodRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$RoutingPriority$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$RoutingPriority;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final RoutingPriority fromValue(int value) {
                if (value == 0) {
                    return RoutingPriority.DOMESTIC;
                }
                if (value != 1) {
                    return null;
                }
                return RoutingPriority.INTERNATIONAL;
            }
        }
    }
}
