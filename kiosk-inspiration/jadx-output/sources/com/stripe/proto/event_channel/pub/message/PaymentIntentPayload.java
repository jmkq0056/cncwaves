package com.stripe.proto.event_channel.pub.message;

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

/* JADX INFO: compiled from: PaymentIntentPayload.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 )2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002()B¿\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001aJÅ\u0001\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020\u0002H\u0016J\b\u0010'\u001a\u00020\u0004H\u0016R\u0010\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u0012\u0004\b\u001c\u0010\u001dR\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001e¨\u0006*"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "charge_amount", "", FirebaseAnalytics.Param.CURRENCY, "skip_tipping", "", "moto", "tip_eligible_amount", "is_tip_eligible_amount_set", "computed_routing_priority", "", "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;", "enable_customer_cancellation", "payment_method_types", "request_incremental_authorization_support", "setup_future_usage", "setup_future_usage_str", "allow_redisplay", "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;", "return_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "getSetup_future_usage$annotations", "()V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentIntentPayload extends Message<PaymentIntentPayload, Builder> {
    public static final ProtoAdapter<PaymentIntentPayload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.AllowRedisplay#ADAPTER", jsonName = "allowRedisplay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final AllowRedisplay allow_redisplay;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "chargeAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long charge_amount;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.RoutingPaymentMethodOptions#ADAPTER", jsonName = "computedRoutingPriority", label = WireField.Label.REPEATED, schemaIndex = 7, tag = 8)
    public final List<RoutingPaymentMethodOptions> computed_routing_priority;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "enableCustomerCancellation", schemaIndex = 8, tag = 9)
    public final Boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "isTipEligibleAmountSet", schemaIndex = 6, tag = 7)
    public final Boolean is_tip_eligible_amount_set;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 4, tag = 5)
    public final Boolean moto;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String payment_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethodTypes", label = WireField.Label.REPEATED, schemaIndex = 9, tag = 10)
    public final List<String> payment_method_types;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "requestIncrementalAuthorizationSupport", schemaIndex = 10, tag = 11)
    public final Boolean request_incremental_authorization_support;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "returnUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final String return_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "setupFutureUsage", schemaIndex = 11, tag = 12)
    public final Boolean setup_future_usage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "setupFutureUsageStr", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String setup_future_usage_str;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "skipTipping", schemaIndex = 3, tag = 4)
    public final Boolean skip_tipping;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "tipEligibleAmount", schemaIndex = 5, tag = 6)
    public final Long tip_eligible_amount;

    public PaymentIntentPayload() {
        this(null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    @Deprecated(message = "setup_future_usage is deprecated")
    public static /* synthetic */ void getSetup_future_usage$annotations() {
    }

    public /* synthetic */ PaymentIntentPayload(String str, long j, String str2, Boolean bool, Boolean bool2, Long l, Boolean bool3, List list, Boolean bool4, List list2, Boolean bool5, Boolean bool6, String str3, AllowRedisplay allowRedisplay, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : bool2, (i & 32) != 0 ? null : l, (i & 64) != 0 ? null : bool3, (i & 128) != 0 ? CollectionsKt.emptyList() : list, (i & 256) != 0 ? null : bool4, (i & 512) != 0 ? CollectionsKt.emptyList() : list2, (i & 1024) != 0 ? null : bool5, (i & 2048) == 0 ? bool6 : null, (i & 4096) != 0 ? "" : str3, (i & 8192) != 0 ? AllowRedisplay.ALLOW_REDISPLAY_INVALID : allowRedisplay, (i & 16384) == 0 ? str4 : "", (i & 32768) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentIntentPayload(String payment_intent_id, long j, String currency, Boolean bool, Boolean bool2, Long l, Boolean bool3, List<? extends RoutingPaymentMethodOptions> computed_routing_priority, Boolean bool4, List<String> payment_method_types, Boolean bool5, Boolean bool6, String setup_future_usage_str, AllowRedisplay allow_redisplay, String return_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(setup_future_usage_str, "setup_future_usage_str");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent_id = payment_intent_id;
        this.charge_amount = j;
        this.currency = currency;
        this.skip_tipping = bool;
        this.moto = bool2;
        this.tip_eligible_amount = l;
        this.is_tip_eligible_amount_set = bool3;
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
        builder.payment_intent_id = this.payment_intent_id;
        builder.charge_amount = this.charge_amount;
        builder.currency = this.currency;
        builder.skip_tipping = this.skip_tipping;
        builder.moto = this.moto;
        builder.tip_eligible_amount = this.tip_eligible_amount;
        builder.is_tip_eligible_amount_set = this.is_tip_eligible_amount_set;
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
        if (!(other instanceof PaymentIntentPayload)) {
            return false;
        }
        PaymentIntentPayload paymentIntentPayload = (PaymentIntentPayload) other;
        return Intrinsics.areEqual(unknownFields(), paymentIntentPayload.unknownFields()) && Intrinsics.areEqual(this.payment_intent_id, paymentIntentPayload.payment_intent_id) && this.charge_amount == paymentIntentPayload.charge_amount && Intrinsics.areEqual(this.currency, paymentIntentPayload.currency) && Intrinsics.areEqual(this.skip_tipping, paymentIntentPayload.skip_tipping) && Intrinsics.areEqual(this.moto, paymentIntentPayload.moto) && Intrinsics.areEqual(this.tip_eligible_amount, paymentIntentPayload.tip_eligible_amount) && Intrinsics.areEqual(this.is_tip_eligible_amount_set, paymentIntentPayload.is_tip_eligible_amount_set) && Intrinsics.areEqual(this.computed_routing_priority, paymentIntentPayload.computed_routing_priority) && Intrinsics.areEqual(this.enable_customer_cancellation, paymentIntentPayload.enable_customer_cancellation) && Intrinsics.areEqual(this.payment_method_types, paymentIntentPayload.payment_method_types) && Intrinsics.areEqual(this.request_incremental_authorization_support, paymentIntentPayload.request_incremental_authorization_support) && Intrinsics.areEqual(this.setup_future_usage, paymentIntentPayload.setup_future_usage) && Intrinsics.areEqual(this.setup_future_usage_str, paymentIntentPayload.setup_future_usage_str) && this.allow_redisplay == paymentIntentPayload.allow_redisplay && Intrinsics.areEqual(this.return_url, paymentIntentPayload.return_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.payment_intent_id.hashCode()) * 37) + Long.hashCode(this.charge_amount)) * 37) + this.currency.hashCode()) * 37;
        Boolean bool = this.skip_tipping;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.moto;
        int iHashCode3 = (iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Long l = this.tip_eligible_amount;
        int iHashCode4 = (iHashCode3 + (l != null ? l.hashCode() : 0)) * 37;
        Boolean bool3 = this.is_tip_eligible_amount_set;
        int iHashCode5 = (((iHashCode4 + (bool3 != null ? bool3.hashCode() : 0)) * 37) + this.computed_routing_priority.hashCode()) * 37;
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
        if (this.is_tip_eligible_amount_set != null) {
            arrayList2.add("is_tip_eligible_amount_set=" + this.is_tip_eligible_amount_set);
        }
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
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentIntentPayload{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentIntentPayload copy$default(PaymentIntentPayload paymentIntentPayload, String str, long j, String str2, Boolean bool, Boolean bool2, Long l, Boolean bool3, List list, Boolean bool4, List list2, Boolean bool5, Boolean bool6, String str3, AllowRedisplay allowRedisplay, String str4, ByteString byteString, int i, Object obj) {
        String str5 = (i & 1) != 0 ? paymentIntentPayload.payment_intent_id : str;
        return paymentIntentPayload.copy(str5, (i & 2) != 0 ? paymentIntentPayload.charge_amount : j, (i & 4) != 0 ? paymentIntentPayload.currency : str2, (i & 8) != 0 ? paymentIntentPayload.skip_tipping : bool, (i & 16) != 0 ? paymentIntentPayload.moto : bool2, (i & 32) != 0 ? paymentIntentPayload.tip_eligible_amount : l, (i & 64) != 0 ? paymentIntentPayload.is_tip_eligible_amount_set : bool3, (i & 128) != 0 ? paymentIntentPayload.computed_routing_priority : list, (i & 256) != 0 ? paymentIntentPayload.enable_customer_cancellation : bool4, (i & 512) != 0 ? paymentIntentPayload.payment_method_types : list2, (i & 1024) != 0 ? paymentIntentPayload.request_incremental_authorization_support : bool5, (i & 2048) != 0 ? paymentIntentPayload.setup_future_usage : bool6, (i & 4096) != 0 ? paymentIntentPayload.setup_future_usage_str : str3, (i & 8192) != 0 ? paymentIntentPayload.allow_redisplay : allowRedisplay, (i & 16384) != 0 ? paymentIntentPayload.return_url : str4, (i & 32768) != 0 ? paymentIntentPayload.unknownFields() : byteString);
    }

    public final PaymentIntentPayload copy(String payment_intent_id, long charge_amount, String currency, Boolean skip_tipping, Boolean moto, Long tip_eligible_amount, Boolean is_tip_eligible_amount_set, List<? extends RoutingPaymentMethodOptions> computed_routing_priority, Boolean enable_customer_cancellation, List<String> payment_method_types, Boolean request_incremental_authorization_support, Boolean setup_future_usage, String setup_future_usage_str, AllowRedisplay allow_redisplay, String return_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(computed_routing_priority, "computed_routing_priority");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(setup_future_usage_str, "setup_future_usage_str");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentIntentPayload(payment_intent_id, charge_amount, currency, skip_tipping, moto, tip_eligible_amount, is_tip_eligible_amount_set, computed_routing_priority, enable_customer_cancellation, payment_method_types, request_incremental_authorization_support, setup_future_usage, setup_future_usage_str, allow_redisplay, return_url, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentIntentPayload.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u0015\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u001cJ\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u001cJ\u0015\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\fJ\u0014\u0010\u0013\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\tJ\u0015\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\fJ\u0017\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\fJ\u0015\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u001cJ\u0015\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u001dR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0012\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0017\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;", "()V", "allow_redisplay", "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;", "charge_amount", "", "computed_routing_priority", "", "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;", FirebaseAnalytics.Param.CURRENCY, "", "enable_customer_cancellation", "", "Ljava/lang/Boolean;", "is_tip_eligible_amount_set", "moto", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "payment_method_types", "request_incremental_authorization_support", "return_url", "setup_future_usage", "setup_future_usage_str", "skip_tipping", "tip_eligible_amount", "Ljava/lang/Long;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;", "(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentIntentPayload, Builder> {
        public long charge_amount;
        public Boolean enable_customer_cancellation;
        public Boolean is_tip_eligible_amount_set;
        public Boolean moto;
        public Boolean request_incremental_authorization_support;
        public Boolean setup_future_usage;
        public Boolean skip_tipping;
        public Long tip_eligible_amount;
        public String payment_intent_id = "";
        public String currency = "";
        public List<? extends RoutingPaymentMethodOptions> computed_routing_priority = CollectionsKt.emptyList();
        public List<String> payment_method_types = CollectionsKt.emptyList();
        public String setup_future_usage_str = "";
        public AllowRedisplay allow_redisplay = AllowRedisplay.ALLOW_REDISPLAY_INVALID;
        public String return_url = "";

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

        public final Builder is_tip_eligible_amount_set(Boolean is_tip_eligible_amount_set) {
            this.is_tip_eligible_amount_set = is_tip_eligible_amount_set;
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
        public PaymentIntentPayload build() {
            return new PaymentIntentPayload(this.payment_intent_id, this.charge_amount, this.currency, this.skip_tipping, this.moto, this.tip_eligible_amount, this.is_tip_eligible_amount_set, this.computed_routing_priority, this.enable_customer_cancellation, this.payment_method_types, this.request_incremental_authorization_support, this.setup_future_usage, this.setup_future_usage_str, this.allow_redisplay, this.return_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentIntentPayload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentIntentPayload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentIntentPayload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentIntentPayload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.PaymentIntentPayload$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentIntentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.payment_intent_id);
                }
                if (value.charge_amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.charge_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.currency);
                }
                if (value.skip_tipping != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(4, value.skip_tipping);
                }
                if (value.moto != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(5, value.moto);
                }
                if (value.tip_eligible_amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(6, value.tip_eligible_amount);
                }
                if (value.is_tip_eligible_amount_set != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(7, value.is_tip_eligible_amount_set);
                }
                int iEncodedSizeWithTag = size + RoutingPaymentMethodOptions.ADAPTER.asRepeated().encodedSizeWithTag(8, value.computed_routing_priority);
                if (value.enable_customer_cancellation != null) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(9, value.enable_customer_cancellation);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(10, value.payment_method_types);
                if (value.request_incremental_authorization_support != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(11, value.request_incremental_authorization_support);
                }
                if (value.setup_future_usage != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(12, value.setup_future_usage);
                }
                if (!Intrinsics.areEqual(value.setup_future_usage_str, "")) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING.encodedSizeWithTag(13, value.setup_future_usage_str);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    iEncodedSizeWithTag2 += AllowRedisplay.ADAPTER.encodedSizeWithTag(14, value.allow_redisplay);
                }
                return !Intrinsics.areEqual(value.return_url, "") ? iEncodedSizeWithTag2 + ProtoAdapter.STRING.encodedSizeWithTag(15, value.return_url) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentIntentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.payment_intent_id);
                }
                if (value.charge_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.charge_amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.currency);
                }
                if (value.skip_tipping != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.skip_tipping);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.moto);
                }
                if (value.tip_eligible_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.tip_eligible_amount);
                }
                if (value.is_tip_eligible_amount_set != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.is_tip_eligible_amount_set);
                }
                RoutingPaymentMethodOptions.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.computed_routing_priority);
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 9, value.enable_customer_cancellation);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 10, value.payment_method_types);
                if (value.request_incremental_authorization_support != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 11, value.request_incremental_authorization_support);
                }
                if (value.setup_future_usage != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 12, value.setup_future_usage);
                }
                if (!Intrinsics.areEqual(value.setup_future_usage_str, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.setup_future_usage_str);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 14, value.allow_redisplay);
                }
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.return_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentIntentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.return_url);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 14, value.allow_redisplay);
                }
                if (!Intrinsics.areEqual(value.setup_future_usage_str, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.setup_future_usage_str);
                }
                if (value.setup_future_usage != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 12, value.setup_future_usage);
                }
                if (value.request_incremental_authorization_support != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 11, value.request_incremental_authorization_support);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 10, value.payment_method_types);
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 9, value.enable_customer_cancellation);
                }
                RoutingPaymentMethodOptions.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.computed_routing_priority);
                if (value.is_tip_eligible_amount_set != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.is_tip_eligible_amount_set);
                }
                if (value.tip_eligible_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.tip_eligible_amount);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.moto);
                }
                if (value.skip_tipping != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.skip_tipping);
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.currency);
                }
                if (value.charge_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.charge_amount));
                }
                if (Intrinsics.areEqual(value.payment_intent_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.payment_intent_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentIntentPayload decode(ProtoReader reader) throws IOException {
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
                long jLongValue = 0;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                Long lDecode = null;
                Boolean boolDecode3 = null;
                Boolean boolDecode4 = null;
                Boolean boolDecode5 = null;
                Boolean boolDecode6 = null;
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 2:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                strDecode2 = strDecode2;
                                continue;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 4:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 5:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 6:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 7:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 8:
                                str = strDecode2;
                                str2 = strDecode3;
                                str3 = strDecode4;
                                try {
                                    RoutingPaymentMethodOptions.ADAPTER.tryDecode(reader, arrayList);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 9:
                                boolDecode4 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 10:
                                str = strDecode2;
                                str2 = strDecode3;
                                str3 = strDecode4;
                                arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 11:
                                boolDecode5 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 12:
                                boolDecode6 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 13:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 14:
                                try {
                                    allowRedisplayDecode = AllowRedisplay.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    str = strDecode2;
                                    str2 = strDecode3;
                                    str3 = strDecode4;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    strDecode2 = str;
                                    strDecode3 = str2;
                                    strDecode4 = str3;
                                }
                                break;
                            case 15:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            default:
                                str = strDecode2;
                                str2 = strDecode3;
                                str3 = strDecode4;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode2 = str;
                        strDecode3 = str2;
                        strDecode4 = str3;
                    } else {
                        return new PaymentIntentPayload(strDecode2, jLongValue, strDecode3, boolDecode, boolDecode2, lDecode, boolDecode3, arrayList, boolDecode4, arrayList2, boolDecode5, boolDecode6, strDecode4, allowRedisplayDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentIntentPayload redact(PaymentIntentPayload value) {
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
                return PaymentIntentPayload.copy$default(value, null, 0L, null, boolRedact, boolRedact2, lRedact, boolRedact3, null, boolRedact4, null, boolRedact5, bool6 != null ? ProtoAdapter.BOOL_VALUE.redact(bool6) : null, null, null, null, ByteString.EMPTY, 29319, null);
            }
        };
    }
}
