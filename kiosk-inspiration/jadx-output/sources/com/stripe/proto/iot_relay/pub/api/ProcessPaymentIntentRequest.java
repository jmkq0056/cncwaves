package com.stripe.proto.iot_relay.pub.api;

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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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

/* JADX INFO: compiled from: ProcessPaymentIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 .2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002-.Bñ\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001e¢\u0006\u0002\u0010\u001fJ÷\u0001\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00132\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\u001e¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010(H\u0096\u0002J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\u0002H\u0016J\b\u0010,\u001a\u00020\u0004H\u0016R\u0010\u0010\u001a\u001a\u00020\u001b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010 R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010 R\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010 R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010 R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u0012\u0004\b!\u0010\"R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010 R\u0010\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010#¨\u0006/"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;", "device_id", "", "stripe_ephemeral_key", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "charge_amount", "", FirebaseAnalytics.Param.CURRENCY, "skip_tipping", "", "moto", "tip_eligible_amount", "terminal_action_id", "is_tip_eligible_amount_set", OfflineStorageConstantsKt.READER_ID, "stripe_account", "computed_routing_priority", "", "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;", "enable_customer_cancellation", "payment_method_types", "request_incremental_authorization_support", "setup_future_usage", "setup_future_usage_str", "allow_redisplay", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;", "return_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "getSetup_future_usage$annotations", "()V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProcessPaymentIntentRequest extends Message<ProcessPaymentIntentRequest, Builder> {
    public static final ProtoAdapter<ProcessPaymentIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay#ADAPTER", jsonName = "allowRedisplay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final AllowRedisplay allow_redisplay;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "chargeAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long charge_amount;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.api.RoutingPaymentMethodOptions#ADAPTER", jsonName = "computedRoutingPriority", label = WireField.Label.REPEATED, schemaIndex = 12, tag = 13)
    public final List<RoutingPaymentMethodOptions> computed_routing_priority;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "enableCustomerCancellation", schemaIndex = 13, tag = 14)
    public final Boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "isTipEligibleAmountSet", schemaIndex = 9, tag = 10)
    public final Boolean is_tip_eligible_amount_set;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 6, tag = 7)
    public final Boolean moto;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String payment_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethodTypes", label = WireField.Label.REPEATED, schemaIndex = 14, tag = 15)
    public final List<String> payment_method_types;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String reader_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "requestIncrementalAuthorizationSupport", schemaIndex = 15, tag = 16)
    public final Boolean request_incremental_authorization_support;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "returnUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 20)
    public final String return_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "setupFutureUsage", schemaIndex = 16, tag = 17)
    public final Boolean setup_future_usage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "setupFutureUsageStr", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final String setup_future_usage_str;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "skipTipping", schemaIndex = 5, tag = 6)
    public final Boolean skip_tipping;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeAccount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String stripe_account;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeEphemeralKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_ephemeral_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String terminal_action_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "tipEligibleAmount", schemaIndex = 7, tag = 8)
    public final Long tip_eligible_amount;

    public ProcessPaymentIntentRequest() {
        this(null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2097151, null);
    }

    @Deprecated(message = "setup_future_usage is deprecated")
    public static /* synthetic */ void getSetup_future_usage$annotations() {
    }

    public /* synthetic */ ProcessPaymentIntentRequest(String str, String str2, String str3, long j, String str4, Boolean bool, Boolean bool2, Long l, String str5, Boolean bool3, String str6, String str7, List list, Boolean bool4, List list2, Boolean bool5, Boolean bool6, String str8, AllowRedisplay allowRedisplay, String str9, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : bool2, (i & 128) != 0 ? null : l, (i & 256) != 0 ? "" : str5, (i & 512) != 0 ? null : bool3, (i & 1024) != 0 ? "" : str6, (i & 2048) != 0 ? "" : str7, (i & 4096) != 0 ? CollectionsKt.emptyList() : list, (i & 8192) != 0 ? null : bool4, (i & 16384) != 0 ? CollectionsKt.emptyList() : list2, (i & 32768) != 0 ? null : bool5, (i & 65536) != 0 ? null : bool6, (i & 131072) != 0 ? "" : str8, (i & 262144) != 0 ? AllowRedisplay.ALLOW_REDISPLAY_INVALID : allowRedisplay, (i & 524288) == 0 ? str9 : "", (i & 1048576) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProcessPaymentIntentRequest(String device_id, String stripe_ephemeral_key, String payment_intent_id, long j, String currency, Boolean bool, Boolean bool2, Long l, String terminal_action_id, Boolean bool3, String reader_id, String stripe_account, List<? extends RoutingPaymentMethodOptions> computed_routing_priority, Boolean bool4, List<String> payment_method_types, Boolean bool5, Boolean bool6, String setup_future_usage_str, AllowRedisplay allow_redisplay, String return_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(setup_future_usage_str, "setup_future_usage_str");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.stripe_ephemeral_key = stripe_ephemeral_key;
        this.payment_intent_id = payment_intent_id;
        this.charge_amount = j;
        this.currency = currency;
        this.skip_tipping = bool;
        this.moto = bool2;
        this.tip_eligible_amount = l;
        this.terminal_action_id = terminal_action_id;
        this.is_tip_eligible_amount_set = bool3;
        this.reader_id = reader_id;
        this.stripe_account = stripe_account;
        this.enable_customer_cancellation = bool4;
        this.request_incremental_authorization_support = bool5;
        this.setup_future_usage = bool6;
        this.setup_future_usage_str = setup_future_usage_str;
        this.allow_redisplay = allow_redisplay;
        this.return_url = return_url;
        this.computed_routing_priority = Internal.immutableCopyOf("computed_routing_priority", computed_routing_priority);
        this.payment_method_types = Internal.immutableCopyOf("payment_method_types", payment_method_types);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.stripe_ephemeral_key = this.stripe_ephemeral_key;
        builder.payment_intent_id = this.payment_intent_id;
        builder.charge_amount = this.charge_amount;
        builder.currency = this.currency;
        builder.skip_tipping = this.skip_tipping;
        builder.moto = this.moto;
        builder.tip_eligible_amount = this.tip_eligible_amount;
        builder.terminal_action_id = this.terminal_action_id;
        builder.is_tip_eligible_amount_set = this.is_tip_eligible_amount_set;
        builder.reader_id = this.reader_id;
        builder.stripe_account = this.stripe_account;
        builder.computed_routing_priority = this.computed_routing_priority;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.payment_method_types = this.payment_method_types;
        builder.request_incremental_authorization_support = this.request_incremental_authorization_support;
        builder.setup_future_usage = this.setup_future_usage;
        builder.setup_future_usage_str = this.setup_future_usage_str;
        builder.allow_redisplay = this.allow_redisplay;
        builder.return_url = this.return_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ProcessPaymentIntentRequest)) {
            return false;
        }
        ProcessPaymentIntentRequest processPaymentIntentRequest = (ProcessPaymentIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), processPaymentIntentRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, processPaymentIntentRequest.device_id) && Intrinsics.areEqual(this.stripe_ephemeral_key, processPaymentIntentRequest.stripe_ephemeral_key) && Intrinsics.areEqual(this.payment_intent_id, processPaymentIntentRequest.payment_intent_id) && this.charge_amount == processPaymentIntentRequest.charge_amount && Intrinsics.areEqual(this.currency, processPaymentIntentRequest.currency) && Intrinsics.areEqual(this.skip_tipping, processPaymentIntentRequest.skip_tipping) && Intrinsics.areEqual(this.moto, processPaymentIntentRequest.moto) && Intrinsics.areEqual(this.tip_eligible_amount, processPaymentIntentRequest.tip_eligible_amount) && Intrinsics.areEqual(this.terminal_action_id, processPaymentIntentRequest.terminal_action_id) && Intrinsics.areEqual(this.is_tip_eligible_amount_set, processPaymentIntentRequest.is_tip_eligible_amount_set) && Intrinsics.areEqual(this.reader_id, processPaymentIntentRequest.reader_id) && Intrinsics.areEqual(this.stripe_account, processPaymentIntentRequest.stripe_account) && Intrinsics.areEqual(this.computed_routing_priority, processPaymentIntentRequest.computed_routing_priority) && Intrinsics.areEqual(this.enable_customer_cancellation, processPaymentIntentRequest.enable_customer_cancellation) && Intrinsics.areEqual(this.payment_method_types, processPaymentIntentRequest.payment_method_types) && Intrinsics.areEqual(this.request_incremental_authorization_support, processPaymentIntentRequest.request_incremental_authorization_support) && Intrinsics.areEqual(this.setup_future_usage, processPaymentIntentRequest.setup_future_usage) && Intrinsics.areEqual(this.setup_future_usage_str, processPaymentIntentRequest.setup_future_usage_str) && this.allow_redisplay == processPaymentIntentRequest.allow_redisplay && Intrinsics.areEqual(this.return_url, processPaymentIntentRequest.return_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.stripe_ephemeral_key.hashCode()) * 37) + this.payment_intent_id.hashCode()) * 37) + Long.hashCode(this.charge_amount)) * 37) + this.currency.hashCode()) * 37;
        Boolean bool = this.skip_tipping;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.moto;
        int iHashCode3 = (iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Long l = this.tip_eligible_amount;
        int iHashCode4 = (((iHashCode3 + (l != null ? l.hashCode() : 0)) * 37) + this.terminal_action_id.hashCode()) * 37;
        Boolean bool3 = this.is_tip_eligible_amount_set;
        int iHashCode5 = (((((((iHashCode4 + (bool3 != null ? bool3.hashCode() : 0)) * 37) + this.reader_id.hashCode()) * 37) + this.stripe_account.hashCode()) * 37) + this.computed_routing_priority.hashCode()) * 37;
        Boolean bool4 = this.enable_customer_cancellation;
        int iHashCode6 = (((iHashCode5 + (bool4 != null ? bool4.hashCode() : 0)) * 37) + this.payment_method_types.hashCode()) * 37;
        Boolean bool5 = this.request_incremental_authorization_support;
        int iHashCode7 = (iHashCode6 + (bool5 != null ? bool5.hashCode() : 0)) * 37;
        Boolean bool6 = this.setup_future_usage;
        int iHashCode8 = ((((((iHashCode7 + (bool6 != null ? bool6.hashCode() : 0)) * 37) + this.setup_future_usage_str.hashCode()) * 37) + this.allow_redisplay.hashCode()) * 37) + this.return_url.hashCode();
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("stripe_ephemeral_key=" + Internal.sanitize(this.stripe_ephemeral_key));
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        arrayList2.add("charge_amount=" + this.charge_amount);
        arrayList2.add("currency=" + Internal.sanitize(this.currency));
        if (this.skip_tipping != null) {
            arrayList2.add("skip_tipping=" + this.skip_tipping);
        }
        if (this.moto != null) {
            arrayList2.add("moto=" + this.moto);
        }
        if (this.tip_eligible_amount != null) {
            arrayList2.add("tip_eligible_amount=" + this.tip_eligible_amount);
        }
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        if (this.is_tip_eligible_amount_set != null) {
            arrayList2.add("is_tip_eligible_amount_set=" + this.is_tip_eligible_amount_set);
        }
        arrayList2.add("reader_id=" + Internal.sanitize(this.reader_id));
        arrayList2.add("stripe_account=" + Internal.sanitize(this.stripe_account));
        if (!this.computed_routing_priority.isEmpty()) {
            arrayList2.add("computed_routing_priority=" + this.computed_routing_priority);
        }
        if (this.enable_customer_cancellation != null) {
            arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        }
        if (!this.payment_method_types.isEmpty()) {
            arrayList2.add("payment_method_types=" + Internal.sanitize(this.payment_method_types));
        }
        if (this.request_incremental_authorization_support != null) {
            arrayList2.add("request_incremental_authorization_support=" + this.request_incremental_authorization_support);
        }
        if (this.setup_future_usage != null) {
            arrayList2.add("setup_future_usage=" + this.setup_future_usage);
        }
        arrayList2.add("setup_future_usage_str=" + Internal.sanitize(this.setup_future_usage_str));
        arrayList2.add("allow_redisplay=" + this.allow_redisplay);
        arrayList2.add("return_url=" + Internal.sanitize(this.return_url));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ProcessPaymentIntentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProcessPaymentIntentRequest copy$default(ProcessPaymentIntentRequest processPaymentIntentRequest, String str, String str2, String str3, long j, String str4, Boolean bool, Boolean bool2, Long l, String str5, Boolean bool3, String str6, String str7, List list, Boolean bool4, List list2, Boolean bool5, Boolean bool6, String str8, AllowRedisplay allowRedisplay, String str9, ByteString byteString, int i, Object obj) {
        String str10 = (i & 1) != 0 ? processPaymentIntentRequest.device_id : str;
        return processPaymentIntentRequest.copy(str10, (i & 2) != 0 ? processPaymentIntentRequest.stripe_ephemeral_key : str2, (i & 4) != 0 ? processPaymentIntentRequest.payment_intent_id : str3, (i & 8) != 0 ? processPaymentIntentRequest.charge_amount : j, (i & 16) != 0 ? processPaymentIntentRequest.currency : str4, (i & 32) != 0 ? processPaymentIntentRequest.skip_tipping : bool, (i & 64) != 0 ? processPaymentIntentRequest.moto : bool2, (i & 128) != 0 ? processPaymentIntentRequest.tip_eligible_amount : l, (i & 256) != 0 ? processPaymentIntentRequest.terminal_action_id : str5, (i & 512) != 0 ? processPaymentIntentRequest.is_tip_eligible_amount_set : bool3, (i & 1024) != 0 ? processPaymentIntentRequest.reader_id : str6, (i & 2048) != 0 ? processPaymentIntentRequest.stripe_account : str7, (i & 4096) != 0 ? processPaymentIntentRequest.computed_routing_priority : list, (i & 8192) != 0 ? processPaymentIntentRequest.enable_customer_cancellation : bool4, (i & 16384) != 0 ? processPaymentIntentRequest.payment_method_types : list2, (i & 32768) != 0 ? processPaymentIntentRequest.request_incremental_authorization_support : bool5, (i & 65536) != 0 ? processPaymentIntentRequest.setup_future_usage : bool6, (i & 131072) != 0 ? processPaymentIntentRequest.setup_future_usage_str : str8, (i & 262144) != 0 ? processPaymentIntentRequest.allow_redisplay : allowRedisplay, (i & 524288) != 0 ? processPaymentIntentRequest.return_url : str9, (i & 1048576) != 0 ? processPaymentIntentRequest.unknownFields() : byteString);
    }

    public final ProcessPaymentIntentRequest copy(String device_id, String stripe_ephemeral_key, String payment_intent_id, long charge_amount, String currency, Boolean skip_tipping, Boolean moto, Long tip_eligible_amount, String terminal_action_id, Boolean is_tip_eligible_amount_set, String reader_id, String stripe_account, List<? extends RoutingPaymentMethodOptions> computed_routing_priority, Boolean enable_customer_cancellation, List<String> payment_method_types, Boolean request_incremental_authorization_support, Boolean setup_future_usage, String setup_future_usage_str, AllowRedisplay allow_redisplay, String return_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(setup_future_usage_str, "setup_future_usage_str");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ProcessPaymentIntentRequest(device_id, stripe_ephemeral_key, payment_intent_id, charge_amount, currency, skip_tipping, moto, tip_eligible_amount, terminal_action_id, is_tip_eligible_amount_set, reader_id, stripe_account, computed_routing_priority, enable_customer_cancellation, payment_method_types, request_incremental_authorization_support, setup_future_usage, setup_future_usage_str, allow_redisplay, return_url, unknownFields);
    }

    /* JADX INFO: compiled from: ProcessPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010 \u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u0015\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010!J\u0015\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010!J\u0015\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010!J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\fJ\u0014\u0010\u0014\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\tJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\fJ\u0015\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010!J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\fJ\u0017\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0002\u0010!J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\fJ\u0015\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010!J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\fJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\fJ\u0015\u0010\u001e\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\"R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0017\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0019\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u001b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u001f¨\u0006#"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;", "()V", "allow_redisplay", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;", "charge_amount", "", "computed_routing_priority", "", "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;", FirebaseAnalytics.Param.CURRENCY, "", "device_id", "enable_customer_cancellation", "", "Ljava/lang/Boolean;", "is_tip_eligible_amount_set", "moto", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "payment_method_types", OfflineStorageConstantsKt.READER_ID, "request_incremental_authorization_support", "return_url", "setup_future_usage", "setup_future_usage_str", "skip_tipping", "stripe_account", "stripe_ephemeral_key", "terminal_action_id", "tip_eligible_amount", "Ljava/lang/Long;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;", "(Ljava/lang/Long;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ProcessPaymentIntentRequest, Builder> {
        public long charge_amount;
        public Boolean enable_customer_cancellation;
        public Boolean is_tip_eligible_amount_set;
        public Boolean moto;
        public Boolean request_incremental_authorization_support;
        public Boolean setup_future_usage;
        public Boolean skip_tipping;
        public Long tip_eligible_amount;
        public String device_id = "";
        public String stripe_ephemeral_key = "";
        public String payment_intent_id = "";
        public String currency = "";
        public String terminal_action_id = "";
        public String reader_id = "";
        public String stripe_account = "";
        public List<? extends RoutingPaymentMethodOptions> computed_routing_priority = CollectionsKt.emptyList();
        public List<String> payment_method_types = CollectionsKt.emptyList();
        public String setup_future_usage_str = "";
        public AllowRedisplay allow_redisplay = AllowRedisplay.ALLOW_REDISPLAY_INVALID;
        public String return_url = "";

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder stripe_ephemeral_key(String stripe_ephemeral_key) {
            Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
            this.stripe_ephemeral_key = stripe_ephemeral_key;
            return this;
        }

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder charge_amount(long charge_amount) {
            this.charge_amount = charge_amount;
            return this;
        }

        public final Builder currency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.currency = currency;
            return this;
        }

        public final Builder skip_tipping(Boolean skip_tipping) {
            this.skip_tipping = skip_tipping;
            return this;
        }

        public final Builder moto(Boolean moto) {
            this.moto = moto;
            return this;
        }

        public final Builder tip_eligible_amount(Long tip_eligible_amount) {
            this.tip_eligible_amount = tip_eligible_amount;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder is_tip_eligible_amount_set(Boolean is_tip_eligible_amount_set) {
            this.is_tip_eligible_amount_set = is_tip_eligible_amount_set;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            Intrinsics.checkNotNullParameter(reader_id, "reader_id");
            this.reader_id = reader_id;
            return this;
        }

        public final Builder stripe_account(String stripe_account) {
            Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
            this.stripe_account = stripe_account;
            return this;
        }

        public final Builder computed_routing_priority(List<? extends RoutingPaymentMethodOptions> computed_routing_priority) {
            Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
            Internal.checkElementsNotNull(computed_routing_priority);
            this.computed_routing_priority = computed_routing_priority;
            return this;
        }

        public final Builder enable_customer_cancellation(Boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        public final Builder payment_method_types(List<String> payment_method_types) {
            Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
            Internal.checkElementsNotNull(payment_method_types);
            this.payment_method_types = payment_method_types;
            return this;
        }

        public final Builder request_incremental_authorization_support(Boolean request_incremental_authorization_support) {
            this.request_incremental_authorization_support = request_incremental_authorization_support;
            return this;
        }

        @Deprecated(message = "setup_future_usage is deprecated")
        public final Builder setup_future_usage(Boolean setup_future_usage) {
            this.setup_future_usage = setup_future_usage;
            return this;
        }

        public final Builder setup_future_usage_str(String setup_future_usage_str) {
            Intrinsics.checkNotNullParameter(setup_future_usage_str, "setup_future_usage_str");
            this.setup_future_usage_str = setup_future_usage_str;
            return this;
        }

        public final Builder allow_redisplay(AllowRedisplay allow_redisplay) {
            Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
            this.allow_redisplay = allow_redisplay;
            return this;
        }

        public final Builder return_url(String return_url) {
            Intrinsics.checkNotNullParameter(return_url, "return_url");
            this.return_url = return_url;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ProcessPaymentIntentRequest build() {
            return new ProcessPaymentIntentRequest(this.device_id, this.stripe_ephemeral_key, this.payment_intent_id, this.charge_amount, this.currency, this.skip_tipping, this.moto, this.tip_eligible_amount, this.terminal_action_id, this.is_tip_eligible_amount_set, this.reader_id, this.stripe_account, this.computed_routing_priority, this.enable_customer_cancellation, this.payment_method_types, this.request_incremental_authorization_support, this.setup_future_usage, this.setup_future_usage_str, this.allow_redisplay, this.return_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ProcessPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ProcessPaymentIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProcessPaymentIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ProcessPaymentIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.ProcessPaymentIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ProcessPaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.payment_intent_id);
                }
                if (value.charge_amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.charge_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.currency);
                }
                if (value.skip_tipping != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.skip_tipping);
                }
                if (value.moto != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(7, value.moto);
                }
                if (value.tip_eligible_amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(8, value.tip_eligible_amount);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.terminal_action_id);
                }
                if (value.is_tip_eligible_amount_set != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(10, value.is_tip_eligible_amount_set);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(12, value.stripe_account);
                }
                int iEncodedSizeWithTag = size + RoutingPaymentMethodOptions.ADAPTER.asRepeated().encodedSizeWithTag(13, value.computed_routing_priority);
                if (value.enable_customer_cancellation != null) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(14, value.enable_customer_cancellation);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(15, value.payment_method_types);
                if (value.request_incremental_authorization_support != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(16, value.request_incremental_authorization_support);
                }
                if (value.setup_future_usage != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(17, value.setup_future_usage);
                }
                if (!Intrinsics.areEqual(value.setup_future_usage_str, "")) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING.encodedSizeWithTag(18, value.setup_future_usage_str);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    iEncodedSizeWithTag2 += AllowRedisplay.ADAPTER.encodedSizeWithTag(19, value.allow_redisplay);
                }
                return !Intrinsics.areEqual(value.return_url, "") ? iEncodedSizeWithTag2 + ProtoAdapter.STRING.encodedSizeWithTag(20, value.return_url) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ProcessPaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.payment_intent_id);
                }
                if (value.charge_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.charge_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.currency);
                }
                if (value.skip_tipping != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.skip_tipping);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.moto);
                }
                if (value.tip_eligible_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 8, value.tip_eligible_amount);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.terminal_action_id);
                }
                if (value.is_tip_eligible_amount_set != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 10, value.is_tip_eligible_amount_set);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.stripe_account);
                }
                RoutingPaymentMethodOptions.ADAPTER.asRepeated().encodeWithTag(writer, 13, value.computed_routing_priority);
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.enable_customer_cancellation);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 15, value.payment_method_types);
                if (value.request_incremental_authorization_support != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 16, value.request_incremental_authorization_support);
                }
                if (value.setup_future_usage != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 17, value.setup_future_usage);
                }
                if (!Intrinsics.areEqual(value.setup_future_usage_str, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 18, value.setup_future_usage_str);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 19, value.allow_redisplay);
                }
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 20, value.return_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ProcessPaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 20, value.return_url);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 19, value.allow_redisplay);
                }
                if (!Intrinsics.areEqual(value.setup_future_usage_str, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 18, value.setup_future_usage_str);
                }
                if (value.setup_future_usage != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 17, value.setup_future_usage);
                }
                if (value.request_incremental_authorization_support != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 16, value.request_incremental_authorization_support);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 15, value.payment_method_types);
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.enable_customer_cancellation);
                }
                RoutingPaymentMethodOptions.ADAPTER.asRepeated().encodeWithTag(writer, 13, value.computed_routing_priority);
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.stripe_account);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.reader_id);
                }
                if (value.is_tip_eligible_amount_set != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 10, value.is_tip_eligible_amount_set);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.terminal_action_id);
                }
                if (value.tip_eligible_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 8, value.tip_eligible_amount);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.moto);
                }
                if (value.skip_tipping != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.skip_tipping);
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.currency);
                }
                if (value.charge_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.charge_amount));
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.payment_intent_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ProcessPaymentIntentRequest decode(ProtoReader reader) throws IOException {
                String str;
                String str2;
                String str3;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                AllowRedisplay allowRedisplay = AllowRedisplay.ALLOW_REDISPLAY_INVALID;
                long jBeginMessage = reader.beginMessage();
                AllowRedisplay allowRedisplayDecode = allowRedisplay;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                long jLongValue = 0;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                Long lDecode = null;
                Boolean boolDecode3 = null;
                Boolean boolDecode4 = null;
                Boolean boolDecode5 = null;
                Boolean boolDecode6 = null;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 2:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 4:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                strDecode7 = strDecode7;
                                continue;
                            case 5:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 6:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 7:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 8:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 9:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 10:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 11:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 12:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 13:
                                str = strDecode7;
                                str2 = strDecode8;
                                str3 = strDecode9;
                                try {
                                    RoutingPaymentMethodOptions.ADAPTER.tryDecode(reader, arrayList);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 14:
                                boolDecode4 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 15:
                                str = strDecode7;
                                str2 = strDecode8;
                                str3 = strDecode9;
                                arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 16:
                                boolDecode5 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 17:
                                boolDecode6 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 18:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 19:
                                try {
                                    allowRedisplayDecode = AllowRedisplay.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    str = strDecode7;
                                    str2 = strDecode8;
                                    str3 = strDecode9;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    strDecode7 = str;
                                    strDecode8 = str2;
                                    strDecode9 = str3;
                                }
                                break;
                            case 20:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            default:
                                str = strDecode7;
                                str2 = strDecode8;
                                str3 = strDecode9;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode7 = str;
                        strDecode8 = str2;
                        strDecode9 = str3;
                    } else {
                        return new ProcessPaymentIntentRequest(strDecode7, strDecode8, strDecode9, jLongValue, strDecode, boolDecode, boolDecode2, lDecode, strDecode2, boolDecode3, strDecode3, strDecode4, arrayList, boolDecode4, arrayList2, boolDecode5, boolDecode6, strDecode5, allowRedisplayDecode, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ProcessPaymentIntentRequest redact(ProcessPaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.skip_tipping;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.moto;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Long l = value.tip_eligible_amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                Boolean bool3 = value.is_tip_eligible_amount_set;
                Boolean boolRedact3 = bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null;
                Boolean bool4 = value.enable_customer_cancellation;
                Boolean boolRedact4 = bool4 != null ? ProtoAdapter.BOOL_VALUE.redact(bool4) : null;
                Boolean bool5 = value.request_incremental_authorization_support;
                Boolean boolRedact5 = bool5 != null ? ProtoAdapter.BOOL_VALUE.redact(bool5) : null;
                Boolean bool6 = value.setup_future_usage;
                return ProcessPaymentIntentRequest.copy$default(value, null, null, null, 0L, null, boolRedact, boolRedact2, lRedact, null, boolRedact3, null, null, null, boolRedact4, null, boolRedact5, bool6 != null ? ProtoAdapter.BOOL_VALUE.redact(bool6) : null, null, null, null, ByteString.EMPTY, 941343, null);
            }
        };
    }
}
