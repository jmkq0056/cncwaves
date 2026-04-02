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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.sdk.PaymentMethod;
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

/* JADX INFO: compiled from: ConfirmInteracRefundRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBs\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Jt\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;", "reason", "", "refund_application_fee", "", "reverse_transfer", "interac_payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "metadata", "", "stripe_account_id", "charge_id", "payment_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;ZZLcom/stripe/proto/model/sdk/PaymentMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmInteracRefundRequest extends Message<ConfirmInteracRefundRequest, Builder> {
    public static final ProtoAdapter<ConfirmInteracRefundRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "chargeId", oneofName = OfflineStorageConstantsKt.ID, schemaIndex = 6, tag = 1)
    public final String charge_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER", jsonName = "interacPaymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 6)
    public final PaymentMethod interac_payment_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 4, tag = 7)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentId", oneofName = OfflineStorageConstantsKt.ID, schemaIndex = 7, tag = 9)
    public final String payment_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 2)
    public final String reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "refundApplicationFee", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 4)
    public final boolean refund_application_fee;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "reverseTransfer", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 5)
    public final boolean reverse_transfer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeAccountId", schemaIndex = 5, tag = 8)
    public final String stripe_account_id;

    public ConfirmInteracRefundRequest() {
        this(null, false, false, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ ConfirmInteracRefundRequest(String str, boolean z, boolean z2, PaymentMethod paymentMethod, Map map, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? null : paymentMethod, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : str3, (i & 128) != 0 ? null : str4, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmInteracRefundRequest(String reason, boolean z, boolean z2, PaymentMethod paymentMethod, Map<String, String> metadata, String str, String str2, String str3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reason = reason;
        this.refund_application_fee = z;
        this.reverse_transfer = z2;
        this.interac_payment_method = paymentMethod;
        this.stripe_account_id = str;
        this.charge_id = str2;
        this.payment_id = str3;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        if (Internal.countNonNull(str2, str3) > 1) {
            throw new IllegalArgumentException("At most one of charge_id, payment_id may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reason = this.reason;
        builder.refund_application_fee = this.refund_application_fee;
        builder.reverse_transfer = this.reverse_transfer;
        builder.interac_payment_method = this.interac_payment_method;
        builder.metadata = this.metadata;
        builder.stripe_account_id = this.stripe_account_id;
        builder.charge_id = this.charge_id;
        builder.payment_id = this.payment_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmInteracRefundRequest)) {
            return false;
        }
        ConfirmInteracRefundRequest confirmInteracRefundRequest = (ConfirmInteracRefundRequest) other;
        return Intrinsics.areEqual(unknownFields(), confirmInteracRefundRequest.unknownFields()) && Intrinsics.areEqual(this.reason, confirmInteracRefundRequest.reason) && this.refund_application_fee == confirmInteracRefundRequest.refund_application_fee && this.reverse_transfer == confirmInteracRefundRequest.reverse_transfer && Intrinsics.areEqual(this.interac_payment_method, confirmInteracRefundRequest.interac_payment_method) && Intrinsics.areEqual(this.metadata, confirmInteracRefundRequest.metadata) && Intrinsics.areEqual(this.stripe_account_id, confirmInteracRefundRequest.stripe_account_id) && Intrinsics.areEqual(this.charge_id, confirmInteracRefundRequest.charge_id) && Intrinsics.areEqual(this.payment_id, confirmInteracRefundRequest.payment_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.reason.hashCode()) * 37) + Boolean.hashCode(this.refund_application_fee)) * 37) + Boolean.hashCode(this.reverse_transfer)) * 37;
        PaymentMethod paymentMethod = this.interac_payment_method;
        int iHashCode2 = (((iHashCode + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        String str = this.stripe_account_id;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.charge_id;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.payment_id;
        int iHashCode5 = iHashCode4 + (str3 != null ? str3.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("reason=" + Internal.sanitize(this.reason));
        arrayList2.add("refund_application_fee=" + this.refund_application_fee);
        arrayList2.add("reverse_transfer=" + this.reverse_transfer);
        if (this.interac_payment_method != null) {
            arrayList2.add("interac_payment_method=" + this.interac_payment_method);
        }
        if (!this.metadata.isEmpty()) {
            arrayList2.add("metadata=" + this.metadata);
        }
        if (this.stripe_account_id != null) {
            arrayList2.add("stripe_account_id=" + Internal.sanitize(this.stripe_account_id));
        }
        if (this.charge_id != null) {
            arrayList2.add("charge_id=" + Internal.sanitize(this.charge_id));
        }
        if (this.payment_id != null) {
            arrayList2.add("payment_id=" + Internal.sanitize(this.payment_id));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmInteracRefundRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfirmInteracRefundRequest copy$default(ConfirmInteracRefundRequest confirmInteracRefundRequest, String str, boolean z, boolean z2, PaymentMethod paymentMethod, Map map, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = confirmInteracRefundRequest.reason;
        }
        if ((i & 2) != 0) {
            z = confirmInteracRefundRequest.refund_application_fee;
        }
        if ((i & 4) != 0) {
            z2 = confirmInteracRefundRequest.reverse_transfer;
        }
        if ((i & 8) != 0) {
            paymentMethod = confirmInteracRefundRequest.interac_payment_method;
        }
        if ((i & 16) != 0) {
            map = confirmInteracRefundRequest.metadata;
        }
        if ((i & 32) != 0) {
            str2 = confirmInteracRefundRequest.stripe_account_id;
        }
        if ((i & 64) != 0) {
            str3 = confirmInteracRefundRequest.charge_id;
        }
        if ((i & 128) != 0) {
            str4 = confirmInteracRefundRequest.payment_id;
        }
        if ((i & 256) != 0) {
            byteString = confirmInteracRefundRequest.unknownFields();
        }
        String str5 = str4;
        ByteString byteString2 = byteString;
        String str6 = str2;
        String str7 = str3;
        Map map2 = map;
        boolean z3 = z2;
        return confirmInteracRefundRequest.copy(str, z, z3, paymentMethod, map2, str6, str7, str5, byteString2);
    }

    public final ConfirmInteracRefundRequest copy(String reason, boolean refund_application_fee, boolean reverse_transfer, PaymentMethod interac_payment_method, Map<String, String> metadata, String stripe_account_id, String charge_id, String payment_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmInteracRefundRequest(reason, refund_application_fee, reverse_transfer, interac_payment_method, metadata, stripe_account_id, charge_id, payment_id, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmInteracRefundRequest.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "()V", "charge_id", "", "interac_payment_method", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "metadata", "", "payment_id", "reason", "refund_application_fee", "", "reverse_transfer", "stripe_account_id", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmInteracRefundRequest, Builder> {
        public String charge_id;
        public PaymentMethod interac_payment_method;
        public String payment_id;
        public boolean refund_application_fee;
        public boolean reverse_transfer;
        public String stripe_account_id;
        public String reason = "";
        public Map<String, String> metadata = MapsKt.emptyMap();

        public final Builder reason(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
            return this;
        }

        public final Builder refund_application_fee(boolean refund_application_fee) {
            this.refund_application_fee = refund_application_fee;
            return this;
        }

        public final Builder reverse_transfer(boolean reverse_transfer) {
            this.reverse_transfer = reverse_transfer;
            return this;
        }

        public final Builder interac_payment_method(PaymentMethod interac_payment_method) {
            this.interac_payment_method = interac_payment_method;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder stripe_account_id(String stripe_account_id) {
            this.stripe_account_id = stripe_account_id;
            return this;
        }

        public final Builder charge_id(String charge_id) {
            this.charge_id = charge_id;
            this.payment_id = null;
            return this;
        }

        public final Builder payment_id(String payment_id) {
            this.payment_id = payment_id;
            this.charge_id = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmInteracRefundRequest build() {
            return new ConfirmInteracRefundRequest(this.reason, this.refund_application_fee, this.reverse_transfer, this.interac_payment_method, this.metadata, this.stripe_account_id, this.charge_id, this.payment_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmInteracRefundRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmInteracRefundRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmInteracRefundRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmInteracRefundRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmInteracRefundRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.sdk.ConfirmInteracRefundRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmInteracRefundRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.reason, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.reason);
                }
                if (value.refund_application_fee) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.refund_application_fee));
                }
                if (value.reverse_transfer) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.reverse_transfer));
                }
                if (value.interac_payment_method != null) {
                    size += PaymentMethod.ADAPTER.encodedSizeWithTag(6, value.interac_payment_method);
                }
                return size + getMetadataAdapter().encodedSizeWithTag(7, value.metadata) + ProtoAdapter.STRING.encodedSizeWithTag(8, value.stripe_account_id) + ProtoAdapter.STRING.encodedSizeWithTag(1, value.charge_id) + ProtoAdapter.STRING.encodedSizeWithTag(9, value.payment_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmInteracRefundRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.reason, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reason);
                }
                if (value.refund_application_fee) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.refund_application_fee));
                }
                if (value.reverse_transfer) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.reverse_transfer));
                }
                if (value.interac_payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 6, value.interac_payment_method);
                }
                getMetadataAdapter().encodeWithTag(writer, 7, value.metadata);
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.stripe_account_id);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
                ProtoAdapter.STRING.encodeWithTag(writer, 9, value.payment_id);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmInteracRefundRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 9, value.payment_id);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.stripe_account_id);
                getMetadataAdapter().encodeWithTag(writer, 7, value.metadata);
                if (value.interac_payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 6, value.interac_payment_method);
                }
                if (value.reverse_transfer) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.reverse_transfer));
                }
                if (value.refund_application_fee) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.refund_application_fee));
                }
                if (Intrinsics.areEqual(value.reason, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reason);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmInteracRefundRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                boolean zBooleanValue = false;
                PaymentMethod paymentMethodDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                boolean zBooleanValue2 = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 4:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 5:
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 6:
                                paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 7:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 8:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                        }
                    } else {
                        return new ConfirmInteracRefundRequest(strDecode, zBooleanValue, zBooleanValue2, paymentMethodDecode, linkedHashMap, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmInteracRefundRequest redact(ConfirmInteracRefundRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentMethod paymentMethod = value.interac_payment_method;
                return ConfirmInteracRefundRequest.copy$default(value, null, false, false, paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null, null, null, null, null, ByteString.EMPTY, 247, null);
            }
        };
    }
}
