package com.stripe.proto.iot_relay.pub.api;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import com.stripe.proto.iot_relay.pub.api.RefundPaymentRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: RefundPaymentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B\u00ad\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J³\u0001\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00042\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;", "device_id", "", "stripe_ephemeral_key", "charge", "payment_intent", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "reason", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;", "refund_application_fee", "", "reverse_transfer", "terminal_action_id", "metadata", "", OfflineStorageConstantsKt.READER_ID, "stripe_account", "enable_customer_cancellation", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Reason", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RefundPaymentRequest extends Message<RefundPaymentRequest, Builder> {
    public static final ProtoAdapter<RefundPaymentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String charge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "enableCustomerCancellation", schemaIndex = 13, tag = 14)
    public final Boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 10, tag = 11)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String payment_intent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String reader_id;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.api.RefundPaymentRequest$Reason#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final Reason reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "refundApplicationFee", schemaIndex = 7, tag = 8)
    public final Boolean refund_application_fee;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "reverseTransfer", schemaIndex = 8, tag = 9)
    public final Boolean reverse_transfer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeAccount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String stripe_account;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeEphemeralKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_ephemeral_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String terminal_action_id;

    public RefundPaymentRequest() {
        this(null, null, null, null, 0L, null, null, null, null, null, null, null, null, null, null, 32767, null);
    }

    public /* synthetic */ RefundPaymentRequest(String str, String str2, String str3, String str4, long j, String str5, Reason reason, Boolean bool, Boolean bool2, String str6, Map map, String str7, String str8, Boolean bool3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? 0L : j, (i & 32) != 0 ? "" : str5, (i & 64) != 0 ? Reason.REASON_INVALID : reason, (i & 128) != 0 ? null : bool, (i & 256) != 0 ? null : bool2, (i & 512) != 0 ? "" : str6, (i & 1024) != 0 ? MapsKt.emptyMap() : map, (i & 2048) != 0 ? "" : str7, (i & 4096) == 0 ? str8 : "", (i & 8192) != 0 ? null : bool3, (i & 16384) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefundPaymentRequest(String device_id, String stripe_ephemeral_key, String charge, String payment_intent, long j, String currency, Reason reason, Boolean bool, Boolean bool2, String terminal_action_id, Map<String, String> metadata, String reader_id, String stripe_account, Boolean bool3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(charge, "charge");
        Intrinsics.checkNotNullParameter(payment_intent, "payment_intent");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.stripe_ephemeral_key = stripe_ephemeral_key;
        this.charge = charge;
        this.payment_intent = payment_intent;
        this.amount = j;
        this.currency = currency;
        this.reason = reason;
        this.refund_application_fee = bool;
        this.reverse_transfer = bool2;
        this.terminal_action_id = terminal_action_id;
        this.reader_id = reader_id;
        this.stripe_account = stripe_account;
        this.enable_customer_cancellation = bool3;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.stripe_ephemeral_key = this.stripe_ephemeral_key;
        builder.charge = this.charge;
        builder.payment_intent = this.payment_intent;
        builder.amount = this.amount;
        builder.currency = this.currency;
        builder.reason = this.reason;
        builder.refund_application_fee = this.refund_application_fee;
        builder.reverse_transfer = this.reverse_transfer;
        builder.terminal_action_id = this.terminal_action_id;
        builder.metadata = this.metadata;
        builder.reader_id = this.reader_id;
        builder.stripe_account = this.stripe_account;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RefundPaymentRequest)) {
            return false;
        }
        RefundPaymentRequest refundPaymentRequest = (RefundPaymentRequest) other;
        return Intrinsics.areEqual(unknownFields(), refundPaymentRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, refundPaymentRequest.device_id) && Intrinsics.areEqual(this.stripe_ephemeral_key, refundPaymentRequest.stripe_ephemeral_key) && Intrinsics.areEqual(this.charge, refundPaymentRequest.charge) && Intrinsics.areEqual(this.payment_intent, refundPaymentRequest.payment_intent) && this.amount == refundPaymentRequest.amount && Intrinsics.areEqual(this.currency, refundPaymentRequest.currency) && this.reason == refundPaymentRequest.reason && Intrinsics.areEqual(this.refund_application_fee, refundPaymentRequest.refund_application_fee) && Intrinsics.areEqual(this.reverse_transfer, refundPaymentRequest.reverse_transfer) && Intrinsics.areEqual(this.terminal_action_id, refundPaymentRequest.terminal_action_id) && Intrinsics.areEqual(this.metadata, refundPaymentRequest.metadata) && Intrinsics.areEqual(this.reader_id, refundPaymentRequest.reader_id) && Intrinsics.areEqual(this.stripe_account, refundPaymentRequest.stripe_account) && Intrinsics.areEqual(this.enable_customer_cancellation, refundPaymentRequest.enable_customer_cancellation);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.stripe_ephemeral_key.hashCode()) * 37) + this.charge.hashCode()) * 37) + this.payment_intent.hashCode()) * 37) + Long.hashCode(this.amount)) * 37) + this.currency.hashCode()) * 37) + this.reason.hashCode()) * 37;
        Boolean bool = this.refund_application_fee;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.reverse_transfer;
        int iHashCode3 = (((((((((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37) + this.terminal_action_id.hashCode()) * 37) + this.metadata.hashCode()) * 37) + this.reader_id.hashCode()) * 37) + this.stripe_account.hashCode()) * 37;
        Boolean bool3 = this.enable_customer_cancellation;
        int iHashCode4 = iHashCode3 + (bool3 != null ? bool3.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("stripe_ephemeral_key=" + Internal.sanitize(this.stripe_ephemeral_key));
        arrayList2.add("charge=" + Internal.sanitize(this.charge));
        arrayList2.add("payment_intent=" + Internal.sanitize(this.payment_intent));
        arrayList2.add("amount=" + this.amount);
        arrayList2.add("currency=" + Internal.sanitize(this.currency));
        arrayList2.add("reason=" + this.reason);
        if (this.refund_application_fee != null) {
            arrayList2.add("refund_application_fee=" + this.refund_application_fee);
        }
        if (this.reverse_transfer != null) {
            arrayList2.add("reverse_transfer=" + this.reverse_transfer);
        }
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        if (!this.metadata.isEmpty()) {
            arrayList2.add("metadata=" + this.metadata);
        }
        arrayList2.add("reader_id=" + Internal.sanitize(this.reader_id));
        arrayList2.add("stripe_account=" + Internal.sanitize(this.stripe_account));
        if (this.enable_customer_cancellation != null) {
            arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RefundPaymentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RefundPaymentRequest copy$default(RefundPaymentRequest refundPaymentRequest, String str, String str2, String str3, String str4, long j, String str5, Reason reason, Boolean bool, Boolean bool2, String str6, Map map, String str7, String str8, Boolean bool3, ByteString byteString, int i, Object obj) {
        String str9 = (i & 1) != 0 ? refundPaymentRequest.device_id : str;
        return refundPaymentRequest.copy(str9, (i & 2) != 0 ? refundPaymentRequest.stripe_ephemeral_key : str2, (i & 4) != 0 ? refundPaymentRequest.charge : str3, (i & 8) != 0 ? refundPaymentRequest.payment_intent : str4, (i & 16) != 0 ? refundPaymentRequest.amount : j, (i & 32) != 0 ? refundPaymentRequest.currency : str5, (i & 64) != 0 ? refundPaymentRequest.reason : reason, (i & 128) != 0 ? refundPaymentRequest.refund_application_fee : bool, (i & 256) != 0 ? refundPaymentRequest.reverse_transfer : bool2, (i & 512) != 0 ? refundPaymentRequest.terminal_action_id : str6, (i & 1024) != 0 ? refundPaymentRequest.metadata : map, (i & 2048) != 0 ? refundPaymentRequest.reader_id : str7, (i & 4096) != 0 ? refundPaymentRequest.stripe_account : str8, (i & 8192) != 0 ? refundPaymentRequest.enable_customer_cancellation : bool3, (i & 16384) != 0 ? refundPaymentRequest.unknownFields() : byteString);
    }

    public final RefundPaymentRequest copy(String device_id, String stripe_ephemeral_key, String charge, String payment_intent, long amount, String currency, Reason reason, Boolean refund_application_fee, Boolean reverse_transfer, String terminal_action_id, Map<String, String> metadata, String reader_id, String stripe_account, Boolean enable_customer_cancellation, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(charge, "charge");
        Intrinsics.checkNotNullParameter(payment_intent, "payment_intent");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RefundPaymentRequest(device_id, stripe_ephemeral_key, charge, payment_intent, amount, currency, reason, refund_application_fee, reverse_transfer, terminal_action_id, metadata, reader_id, stripe_account, enable_customer_cancellation, unknownFields);
    }

    /* JADX INFO: compiled from: RefundPaymentRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0019J\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0015\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0019J\u0015\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0019J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "charge", "", FirebaseAnalytics.Param.CURRENCY, "device_id", "enable_customer_cancellation", "", "Ljava/lang/Boolean;", "metadata", "", "payment_intent", OfflineStorageConstantsKt.READER_ID, "reason", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;", "refund_application_fee", "reverse_transfer", "stripe_account", "stripe_ephemeral_key", "terminal_action_id", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RefundPaymentRequest, Builder> {
        public long amount;
        public Boolean enable_customer_cancellation;
        public Boolean refund_application_fee;
        public Boolean reverse_transfer;
        public String device_id = "";
        public String stripe_ephemeral_key = "";
        public String charge = "";
        public String payment_intent = "";
        public String currency = "";
        public Reason reason = Reason.REASON_INVALID;
        public String terminal_action_id = "";
        public Map<String, String> metadata = MapsKt.emptyMap();
        public String reader_id = "";
        public String stripe_account = "";

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

        public final Builder charge(String charge) {
            Intrinsics.checkNotNullParameter(charge, "charge");
            this.charge = charge;
            return this;
        }

        public final Builder payment_intent(String payment_intent) {
            Intrinsics.checkNotNullParameter(payment_intent, "payment_intent");
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder amount(long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder currency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.currency = currency;
            return this;
        }

        public final Builder reason(Reason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
            return this;
        }

        public final Builder refund_application_fee(Boolean refund_application_fee) {
            this.refund_application_fee = refund_application_fee;
            return this;
        }

        public final Builder reverse_transfer(Boolean reverse_transfer) {
            this.reverse_transfer = reverse_transfer;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
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

        public final Builder enable_customer_cancellation(Boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RefundPaymentRequest build() {
            return new RefundPaymentRequest(this.device_id, this.stripe_ephemeral_key, this.charge, this.payment_intent, this.amount, this.currency, this.reason, this.refund_application_fee, this.reverse_transfer, this.terminal_action_id, this.metadata, this.reader_id, this.stripe_account, this.enable_customer_cancellation, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RefundPaymentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RefundPaymentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RefundPaymentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RefundPaymentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.RefundPaymentRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.iot_relay.pub.api.RefundPaymentRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RefundPaymentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.charge, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.charge);
                }
                if (!Intrinsics.areEqual(value.payment_intent, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.payment_intent);
                }
                if (value.amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.currency);
                }
                if (value.reason != RefundPaymentRequest.Reason.REASON_INVALID) {
                    size += RefundPaymentRequest.Reason.ADAPTER.encodedSizeWithTag(7, value.reason);
                }
                if (value.refund_application_fee != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(8, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(9, value.reverse_transfer);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.terminal_action_id);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(11, value.metadata);
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(12, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(13, value.stripe_account);
                }
                return value.enable_customer_cancellation != null ? iEncodedSizeWithTag + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(14, value.enable_customer_cancellation) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RefundPaymentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.charge, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.charge);
                }
                if (!Intrinsics.areEqual(value.payment_intent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.payment_intent);
                }
                if (value.amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.currency);
                }
                if (value.reason != RefundPaymentRequest.Reason.REASON_INVALID) {
                    RefundPaymentRequest.Reason.ADAPTER.encodeWithTag(writer, 7, value.reason);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 8, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 9, value.reverse_transfer);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.terminal_action_id);
                }
                getMetadataAdapter().encodeWithTag(writer, 11, value.metadata);
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.stripe_account);
                }
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.enable_customer_cancellation);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RefundPaymentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.enable_customer_cancellation);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.stripe_account);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.reader_id);
                }
                getMetadataAdapter().encodeWithTag(writer, 11, value.metadata);
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.terminal_action_id);
                }
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 9, value.reverse_transfer);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 8, value.refund_application_fee);
                }
                if (value.reason != RefundPaymentRequest.Reason.REASON_INVALID) {
                    RefundPaymentRequest.Reason.ADAPTER.encodeWithTag(writer, 7, value.reason);
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.currency);
                }
                if (value.amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.payment_intent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.payment_intent);
                }
                if (!Intrinsics.areEqual(value.charge, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.charge);
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
            public RefundPaymentRequest decode(ProtoReader reader) throws IOException {
                String str;
                String str2;
                String str3;
                Intrinsics.checkNotNullParameter(reader, "reader");
                RefundPaymentRequest.Reason reason = RefundPaymentRequest.Reason.REASON_INVALID;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                RefundPaymentRequest.Reason reasonDecode = reason;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                long jLongValue = 0;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                Boolean boolDecode3 = null;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 2:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 4:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 5:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                strDecode6 = strDecode6;
                                continue;
                            case 6:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 7:
                                try {
                                    reasonDecode = RefundPaymentRequest.Reason.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    str = strDecode6;
                                    str2 = strDecode7;
                                    str3 = strDecode8;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    strDecode6 = str;
                                    strDecode7 = str2;
                                    strDecode8 = str3;
                                }
                                break;
                            case 8:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 9:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 10:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 11:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                str = strDecode6;
                                str2 = strDecode7;
                                str3 = strDecode8;
                                break;
                            case 12:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 13:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 14:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            default:
                                str = strDecode6;
                                str2 = strDecode7;
                                str3 = strDecode8;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode6 = str;
                        strDecode7 = str2;
                        strDecode8 = str3;
                    } else {
                        return new RefundPaymentRequest(strDecode6, strDecode7, strDecode8, strDecode, jLongValue, strDecode2, reasonDecode, boolDecode, boolDecode2, strDecode3, linkedHashMap, strDecode4, strDecode5, boolDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RefundPaymentRequest redact(RefundPaymentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.refund_application_fee;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.reverse_transfer;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Boolean bool3 = value.enable_customer_cancellation;
                return RefundPaymentRequest.copy$default(value, null, null, null, null, 0L, null, null, boolRedact, boolRedact2, null, null, null, null, bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null, ByteString.EMPTY, 7807, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: RefundPaymentRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REASON_INVALID", "DUPLICATE", "FRAUDULENT", "REQUESTED_BY_CUSTOMER", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Reason implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Reason[] $VALUES;
        public static final ProtoAdapter<Reason> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Reason DUPLICATE;
        public static final Reason FRAUDULENT;
        public static final Reason REASON_INVALID;
        public static final Reason REQUESTED_BY_CUSTOMER;
        private final int value;

        private static final /* synthetic */ Reason[] $values() {
            return new Reason[]{REASON_INVALID, DUPLICATE, FRAUDULENT, REQUESTED_BY_CUSTOMER};
        }

        @JvmStatic
        public static final Reason fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Reason> getEntries() {
            return $ENTRIES;
        }

        public static Reason valueOf(String str) {
            return (Reason) Enum.valueOf(Reason.class, str);
        }

        public static Reason[] values() {
            return (Reason[]) $VALUES.clone();
        }

        private Reason(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Reason reason = new Reason("REASON_INVALID", 0, 0);
            REASON_INVALID = reason;
            DUPLICATE = new Reason("DUPLICATE", 1, 1);
            FRAUDULENT = new Reason("FRAUDULENT", 2, 2);
            REQUESTED_BY_CUSTOMER = new Reason("REQUESTED_BY_CUSTOMER", 3, 3);
            Reason[] reasonArr$values = $values();
            $VALUES = reasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(reasonArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Reason.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Reason>(orCreateKotlinClass, syntax, reason) { // from class: com.stripe.proto.iot_relay.pub.api.RefundPaymentRequest$Reason$Companion$ADAPTER$1
                {
                    RefundPaymentRequest.Reason reason2 = reason;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public RefundPaymentRequest.Reason fromValue(int value) {
                    return RefundPaymentRequest.Reason.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: RefundPaymentRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Reason fromValue(int value) {
                if (value == 0) {
                    return Reason.REASON_INVALID;
                }
                if (value == 1) {
                    return Reason.DUPLICATE;
                }
                if (value == 2) {
                    return Reason.FRAUDULENT;
                }
                if (value != 3) {
                    return null;
                }
                return Reason.REQUESTED_BY_CUSTOMER;
            }
        }
    }
}
