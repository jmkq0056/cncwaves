package com.stripe.proto.api.rest;

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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: RefundChargeRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fBy\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u007f\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006 "}, d2 = {"Lcom/stripe/proto/api/rest/RefundChargeRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "reason", "", "refund_application_fee", "", "reverse_transfer", "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "metadata", "", "charge", "payment_intent", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RefundChargeRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RefundChargeRequest extends Message<RefundChargeRequest, Builder> {
    public static final ProtoAdapter<RefundChargeRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 4, tag = 6)
    public final Long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", oneofName = OfflineStorageConstantsKt.ID, schemaIndex = 6, tag = 1)
    public final String charge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 7)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentIntent", oneofName = OfflineStorageConstantsKt.ID, schemaIndex = 7, tag = 8)
    public final String payment_intent;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER", jsonName = "paymentMethodData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final RequestedPaymentMethod payment_method_data;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 2)
    public final String reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "refundApplicationFee", schemaIndex = 1, tag = 3)
    public final Boolean refund_application_fee;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "reverseTransfer", schemaIndex = 2, tag = 4)
    public final Boolean reverse_transfer;

    public RefundChargeRequest() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ RefundChargeRequest(String str, Boolean bool, Boolean bool2, RequestedPaymentMethod requestedPaymentMethod, Long l, Map map, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : bool2, (i & 8) != 0 ? null : requestedPaymentMethod, (i & 16) != 0 ? null : l, (i & 32) != 0 ? MapsKt.emptyMap() : map, (i & 64) != 0 ? null : str2, (i & 128) != 0 ? null : str3, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefundChargeRequest(String str, Boolean bool, Boolean bool2, RequestedPaymentMethod requestedPaymentMethod, Long l, Map<String, String> metadata, String str2, String str3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reason = str;
        this.refund_application_fee = bool;
        this.reverse_transfer = bool2;
        this.payment_method_data = requestedPaymentMethod;
        this.amount = l;
        this.charge = str2;
        this.payment_intent = str3;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        if (Internal.countNonNull(str2, str3) > 1) {
            throw new IllegalArgumentException("At most one of charge, payment_intent may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reason = this.reason;
        builder.refund_application_fee = this.refund_application_fee;
        builder.reverse_transfer = this.reverse_transfer;
        builder.payment_method_data = this.payment_method_data;
        builder.amount = this.amount;
        builder.metadata = this.metadata;
        builder.charge = this.charge;
        builder.payment_intent = this.payment_intent;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RefundChargeRequest)) {
            return false;
        }
        RefundChargeRequest refundChargeRequest = (RefundChargeRequest) other;
        return Intrinsics.areEqual(unknownFields(), refundChargeRequest.unknownFields()) && Intrinsics.areEqual(this.reason, refundChargeRequest.reason) && Intrinsics.areEqual(this.refund_application_fee, refundChargeRequest.refund_application_fee) && Intrinsics.areEqual(this.reverse_transfer, refundChargeRequest.reverse_transfer) && Intrinsics.areEqual(this.payment_method_data, refundChargeRequest.payment_method_data) && Intrinsics.areEqual(this.amount, refundChargeRequest.amount) && Intrinsics.areEqual(this.metadata, refundChargeRequest.metadata) && Intrinsics.areEqual(this.charge, refundChargeRequest.charge) && Intrinsics.areEqual(this.payment_intent, refundChargeRequest.payment_intent);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.reason;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Boolean bool = this.refund_application_fee;
        int iHashCode3 = (iHashCode2 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.reverse_transfer;
        int iHashCode4 = (iHashCode3 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        RequestedPaymentMethod requestedPaymentMethod = this.payment_method_data;
        int iHashCode5 = (iHashCode4 + (requestedPaymentMethod != null ? requestedPaymentMethod.hashCode() : 0)) * 37;
        Long l = this.amount;
        int iHashCode6 = (((iHashCode5 + (l != null ? l.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        String str2 = this.charge;
        int iHashCode7 = (iHashCode6 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.payment_intent;
        int iHashCode8 = iHashCode7 + (str3 != null ? str3.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.reason != null) {
            arrayList.add("reason=" + this.reason);
        }
        if (this.refund_application_fee != null) {
            arrayList.add("refund_application_fee=" + this.refund_application_fee);
        }
        if (this.reverse_transfer != null) {
            arrayList.add("reverse_transfer=" + this.reverse_transfer);
        }
        if (this.payment_method_data != null) {
            arrayList.add("payment_method_data=" + this.payment_method_data);
        }
        if (this.amount != null) {
            arrayList.add("amount=" + this.amount);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.charge != null) {
            arrayList.add("charge=" + this.charge);
        }
        if (this.payment_intent != null) {
            arrayList.add("payment_intent=" + this.payment_intent);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RefundChargeRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RefundChargeRequest copy$default(RefundChargeRequest refundChargeRequest, String str, Boolean bool, Boolean bool2, RequestedPaymentMethod requestedPaymentMethod, Long l, Map map, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refundChargeRequest.reason;
        }
        if ((i & 2) != 0) {
            bool = refundChargeRequest.refund_application_fee;
        }
        if ((i & 4) != 0) {
            bool2 = refundChargeRequest.reverse_transfer;
        }
        if ((i & 8) != 0) {
            requestedPaymentMethod = refundChargeRequest.payment_method_data;
        }
        if ((i & 16) != 0) {
            l = refundChargeRequest.amount;
        }
        if ((i & 32) != 0) {
            map = refundChargeRequest.metadata;
        }
        if ((i & 64) != 0) {
            str2 = refundChargeRequest.charge;
        }
        if ((i & 128) != 0) {
            str3 = refundChargeRequest.payment_intent;
        }
        if ((i & 256) != 0) {
            byteString = refundChargeRequest.unknownFields();
        }
        String str4 = str3;
        ByteString byteString2 = byteString;
        Map map2 = map;
        String str5 = str2;
        Long l2 = l;
        Boolean bool3 = bool2;
        return refundChargeRequest.copy(str, bool, bool3, requestedPaymentMethod, l2, map2, str5, str4, byteString2);
    }

    public final RefundChargeRequest copy(String reason, Boolean refund_application_fee, Boolean reverse_transfer, RequestedPaymentMethod payment_method_data, Long amount, Map<String, String> metadata, String charge, String payment_intent, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RefundChargeRequest(reason, refund_application_fee, reverse_transfer, payment_method_data, amount, metadata, charge, payment_intent, unknownFields);
    }

    /* JADX INFO: compiled from: RefundChargeRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\bJ\u0015\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0015J\u0015\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0015R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "charge", "", "metadata", "", "payment_intent", "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "reason", "refund_application_fee", "", "Ljava/lang/Boolean;", "reverse_transfer", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RefundChargeRequest, Builder> {
        public Long amount;
        public String charge;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public String payment_intent;
        public RequestedPaymentMethod payment_method_data;
        public String reason;
        public Boolean refund_application_fee;
        public Boolean reverse_transfer;

        public final Builder reason(String reason) {
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

        public final Builder payment_method_data(RequestedPaymentMethod payment_method_data) {
            this.payment_method_data = payment_method_data;
            return this;
        }

        public final Builder amount(Long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder charge(String charge) {
            this.charge = charge;
            this.payment_intent = null;
            return this;
        }

        public final Builder payment_intent(String payment_intent) {
            this.payment_intent = payment_intent;
            this.charge = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RefundChargeRequest build() {
            return new RefundChargeRequest(this.reason, this.refund_application_fee, this.reverse_transfer, this.payment_method_data, this.amount, this.metadata, this.charge, this.payment_intent, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RefundChargeRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RefundChargeRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RefundChargeRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RefundChargeRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RefundChargeRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RefundChargeRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.rest.RefundChargeRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RefundChargeRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.reason != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.reason);
                }
                if (value.refund_application_fee != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(3, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(4, value.reverse_transfer);
                }
                if (value.payment_method_data != null) {
                    size += RequestedPaymentMethod.ADAPTER.encodedSizeWithTag(5, value.payment_method_data);
                }
                if (value.amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(6, value.amount);
                }
                return size + getMetadataAdapter().encodedSizeWithTag(7, value.metadata) + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.charge) + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.payment_intent);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RefundChargeRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.reason);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.reverse_transfer);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 5, value.payment_method_data);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.amount);
                }
                getMetadataAdapter().encodeWithTag(writer, 7, value.metadata);
                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.charge);
                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.payment_intent);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RefundChargeRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.payment_intent);
                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.charge);
                getMetadataAdapter().encodeWithTag(writer, 7, value.metadata);
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.amount);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 5, value.payment_method_data);
                }
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.reverse_transfer);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.refund_application_fee);
                }
                if (value.reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.reason);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RefundChargeRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                RequestedPaymentMethod requestedPaymentMethodDecode = null;
                Long lDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 4:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 5:
                                requestedPaymentMethodDecode = RequestedPaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 6:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 7:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 8:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new RefundChargeRequest(strDecode, boolDecode, boolDecode2, requestedPaymentMethodDecode, lDecode, linkedHashMap, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RefundChargeRequest redact(RefundChargeRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.reason;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Boolean bool = value.refund_application_fee;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.reverse_transfer;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                RequestedPaymentMethod requestedPaymentMethod = value.payment_method_data;
                RequestedPaymentMethod requestedPaymentMethodRedact = requestedPaymentMethod != null ? RequestedPaymentMethod.ADAPTER.redact(requestedPaymentMethod) : null;
                Long l = value.amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str2 = value.charge;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.payment_intent;
                return RefundChargeRequest.copy$default(value, strRedact, boolRedact, boolRedact2, requestedPaymentMethodRedact, lRedact, null, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY, 32, null);
            }
        };
    }
}
