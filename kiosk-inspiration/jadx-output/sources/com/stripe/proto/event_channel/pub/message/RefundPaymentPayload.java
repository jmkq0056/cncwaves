package com.stripe.proto.event_channel.pub.message;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.proto.event_channel.pub.message.RefundPaymentPayload;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: RefundPaymentPayload.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001e\u001f B{\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0014\b\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0081\u0001\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\u0014\b\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0014\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006!"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;", "charge", "", "payment_intent", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "reason", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;", "refund_application_fee", "", "reverse_transfer", "metadata", "", "enable_customer_cancellation", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Reason", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RefundPaymentPayload extends Message<RefundPaymentPayload, Builder> {
    public static final ProtoAdapter<RefundPaymentPayload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String charge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "enableCustomerCancellation", schemaIndex = 8, tag = 9)
    public final Boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 7, tag = 8)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String payment_intent;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.RefundPaymentPayload$Reason#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final Reason reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "refundApplicationFee", schemaIndex = 5, tag = 6)
    public final Boolean refund_application_fee;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "reverseTransfer", schemaIndex = 6, tag = 7)
    public final Boolean reverse_transfer;

    public RefundPaymentPayload() {
        this(null, null, 0L, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ RefundPaymentPayload(String str, String str2, long j, String str3, Reason reason, Boolean bool, Boolean bool2, Map map, Boolean bool3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? Reason.REASON_INVALID : reason, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : bool2, (i & 128) != 0 ? MapsKt.emptyMap() : map, (i & 256) != 0 ? null : bool3, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefundPaymentPayload(String charge, String payment_intent, long j, String currency, Reason reason, Boolean bool, Boolean bool2, Map<String, String> metadata, Boolean bool3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(charge, "charge");
        Intrinsics.checkNotNullParameter(payment_intent, "payment_intent");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge = charge;
        this.payment_intent = payment_intent;
        this.amount = j;
        this.currency = currency;
        this.reason = reason;
        this.refund_application_fee = bool;
        this.reverse_transfer = bool2;
        this.enable_customer_cancellation = bool3;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge = this.charge;
        builder.payment_intent = this.payment_intent;
        builder.amount = this.amount;
        builder.currency = this.currency;
        builder.reason = this.reason;
        builder.refund_application_fee = this.refund_application_fee;
        builder.reverse_transfer = this.reverse_transfer;
        builder.metadata = this.metadata;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RefundPaymentPayload)) {
            return false;
        }
        RefundPaymentPayload refundPaymentPayload = (RefundPaymentPayload) other;
        return Intrinsics.areEqual(unknownFields(), refundPaymentPayload.unknownFields()) && Intrinsics.areEqual(this.charge, refundPaymentPayload.charge) && Intrinsics.areEqual(this.payment_intent, refundPaymentPayload.payment_intent) && this.amount == refundPaymentPayload.amount && Intrinsics.areEqual(this.currency, refundPaymentPayload.currency) && this.reason == refundPaymentPayload.reason && Intrinsics.areEqual(this.refund_application_fee, refundPaymentPayload.refund_application_fee) && Intrinsics.areEqual(this.reverse_transfer, refundPaymentPayload.reverse_transfer) && Intrinsics.areEqual(this.metadata, refundPaymentPayload.metadata) && Intrinsics.areEqual(this.enable_customer_cancellation, refundPaymentPayload.enable_customer_cancellation);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((unknownFields().hashCode() * 37) + this.charge.hashCode()) * 37) + this.payment_intent.hashCode()) * 37) + Long.hashCode(this.amount)) * 37) + this.currency.hashCode()) * 37) + this.reason.hashCode()) * 37;
        Boolean bool = this.refund_application_fee;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.reverse_transfer;
        int iHashCode3 = (((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        Boolean bool3 = this.enable_customer_cancellation;
        int iHashCode4 = iHashCode3 + (bool3 != null ? bool3.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
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
        if (!this.metadata.isEmpty()) {
            arrayList2.add("metadata=" + this.metadata);
        }
        if (this.enable_customer_cancellation != null) {
            arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RefundPaymentPayload{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RefundPaymentPayload copy$default(RefundPaymentPayload refundPaymentPayload, String str, String str2, long j, String str3, Reason reason, Boolean bool, Boolean bool2, Map map, Boolean bool3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refundPaymentPayload.charge;
        }
        if ((i & 2) != 0) {
            str2 = refundPaymentPayload.payment_intent;
        }
        if ((i & 4) != 0) {
            j = refundPaymentPayload.amount;
        }
        if ((i & 8) != 0) {
            str3 = refundPaymentPayload.currency;
        }
        if ((i & 16) != 0) {
            reason = refundPaymentPayload.reason;
        }
        if ((i & 32) != 0) {
            bool = refundPaymentPayload.refund_application_fee;
        }
        if ((i & 64) != 0) {
            bool2 = refundPaymentPayload.reverse_transfer;
        }
        if ((i & 128) != 0) {
            map = refundPaymentPayload.metadata;
        }
        if ((i & 256) != 0) {
            bool3 = refundPaymentPayload.enable_customer_cancellation;
        }
        if ((i & 512) != 0) {
            byteString = refundPaymentPayload.unknownFields();
        }
        Boolean bool4 = bool3;
        ByteString byteString2 = byteString;
        Map map2 = map;
        Boolean bool5 = bool;
        String str4 = str3;
        long j2 = j;
        return refundPaymentPayload.copy(str, str2, j2, str4, reason, bool5, bool2, map2, bool4, byteString2);
    }

    public final RefundPaymentPayload copy(String charge, String payment_intent, long amount, String currency, Reason reason, Boolean refund_application_fee, Boolean reverse_transfer, Map<String, String> metadata, Boolean enable_customer_cancellation, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(charge, "charge");
        Intrinsics.checkNotNullParameter(payment_intent, "payment_intent");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RefundPaymentPayload(charge, payment_intent, amount, currency, reason, refund_application_fee, reverse_transfer, metadata, enable_customer_cancellation, unknownFields);
    }

    /* JADX INFO: compiled from: RefundPaymentPayload.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0014J\u001a\u0010\f\u001a\u00020\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0014R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u001e\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "charge", "", FirebaseAnalytics.Param.CURRENCY, "enable_customer_cancellation", "", "Ljava/lang/Boolean;", "metadata", "", "payment_intent", "reason", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;", "refund_application_fee", "reverse_transfer", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RefundPaymentPayload, Builder> {
        public long amount;
        public Boolean enable_customer_cancellation;
        public Boolean refund_application_fee;
        public Boolean reverse_transfer;
        public String charge = "";
        public String payment_intent = "";
        public String currency = "";
        public Reason reason = Reason.REASON_INVALID;
        public Map<String, String> metadata = MapsKt.emptyMap();

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

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder enable_customer_cancellation(Boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RefundPaymentPayload build() {
            return new RefundPaymentPayload(this.charge, this.payment_intent, this.amount, this.currency, this.reason, this.refund_application_fee, this.reverse_transfer, this.metadata, this.enable_customer_cancellation, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RefundPaymentPayload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RefundPaymentPayload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RefundPaymentPayload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RefundPaymentPayload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.RefundPaymentPayload$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.event_channel.pub.message.RefundPaymentPayload$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RefundPaymentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.charge, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.charge);
                }
                if (!Intrinsics.areEqual(value.payment_intent, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.payment_intent);
                }
                if (value.amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.currency);
                }
                if (value.reason != RefundPaymentPayload.Reason.REASON_INVALID) {
                    size += RefundPaymentPayload.Reason.ADAPTER.encodedSizeWithTag(5, value.reason);
                }
                if (value.refund_application_fee != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(7, value.reverse_transfer);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(8, value.metadata);
                return value.enable_customer_cancellation != null ? iEncodedSizeWithTag + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(9, value.enable_customer_cancellation) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RefundPaymentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.charge, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge);
                }
                if (!Intrinsics.areEqual(value.payment_intent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.payment_intent);
                }
                if (value.amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.currency);
                }
                if (value.reason != RefundPaymentPayload.Reason.REASON_INVALID) {
                    RefundPaymentPayload.Reason.ADAPTER.encodeWithTag(writer, 5, value.reason);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.reverse_transfer);
                }
                getMetadataAdapter().encodeWithTag(writer, 8, value.metadata);
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 9, value.enable_customer_cancellation);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RefundPaymentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 9, value.enable_customer_cancellation);
                }
                getMetadataAdapter().encodeWithTag(writer, 8, value.metadata);
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.reverse_transfer);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.refund_application_fee);
                }
                if (value.reason != RefundPaymentPayload.Reason.REASON_INVALID) {
                    RefundPaymentPayload.Reason.ADAPTER.encodeWithTag(writer, 5, value.reason);
                }
                if (!Intrinsics.areEqual(value.currency, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.currency);
                }
                if (value.amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.amount));
                }
                if (!Intrinsics.areEqual(value.payment_intent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.payment_intent);
                }
                if (Intrinsics.areEqual(value.charge, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0029. Please report as an issue. */
            /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
                	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.event_channel.pub.message.RefundPaymentPayload decode(com.squareup.wire.ProtoReader r21) {
                /*
                    Method dump skipped, instruction units count: 240
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.event_channel.pub.message.RefundPaymentPayload$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.event_channel.pub.message.RefundPaymentPayload");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RefundPaymentPayload redact(RefundPaymentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.refund_application_fee;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.reverse_transfer;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Boolean bool3 = value.enable_customer_cancellation;
                return RefundPaymentPayload.copy$default(value, null, null, 0L, null, null, boolRedact, boolRedact2, null, bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null, ByteString.EMPTY, WinError.ERROR_BAD_THREADID_ADDR, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: RefundPaymentPayload.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REASON_INVALID", "DUPLICATE", "FRAUDULENT", "REQUESTED_BY_CUSTOMER", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
            ADAPTER = new EnumAdapter<Reason>(orCreateKotlinClass, syntax, reason) { // from class: com.stripe.proto.event_channel.pub.message.RefundPaymentPayload$Reason$Companion$ADAPTER$1
                {
                    RefundPaymentPayload.Reason reason2 = reason;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public RefundPaymentPayload.Reason fromValue(int value) {
                    return RefundPaymentPayload.Reason.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: RefundPaymentPayload.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
