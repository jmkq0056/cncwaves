package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
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

/* JADX INFO: compiled from: Refund.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f B\u0091\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0097\u0001\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/model/rest/Refund;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Refund$Builder;", OfflineStorageConstantsKt.ID, "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "charge", "created", FirebaseAnalytics.Param.CURRENCY, "metadata", "", "reason", NotificationCompat.CATEGORY_STATUS, "payment_method_details", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "failure_reason", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Refund;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Refund extends Message<Refund, Builder> {
    public static final ProtoAdapter<Refund> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 1, tag = 2)
    public final Long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String charge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 3, tag = 4)
    public final Long created;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "failureReason", schemaIndex = 9, tag = 10)
    public final String failure_reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodDetails#ADAPTER", jsonName = "paymentMethodDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final PaymentMethodDetails payment_method_details;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 6, tag = 7)
    public final String reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 7, tag = 8)
    public final String status;

    public Refund() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public /* synthetic */ Refund(String str, Long l, String str2, Long l2, String str3, Map map, String str4, String str5, PaymentMethodDetails paymentMethodDetails, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? MapsKt.emptyMap() : map, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : paymentMethodDetails, (i & 512) != 0 ? null : str6, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Refund(String str, Long l, String str2, Long l2, String str3, Map<String, String> metadata, String str4, String str5, PaymentMethodDetails paymentMethodDetails, String str6, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.amount = l;
        this.charge = str2;
        this.created = l2;
        this.currency = str3;
        this.reason = str4;
        this.status = str5;
        this.payment_method_details = paymentMethodDetails;
        this.failure_reason = str6;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.amount = this.amount;
        builder.charge = this.charge;
        builder.created = this.created;
        builder.currency = this.currency;
        builder.metadata = this.metadata;
        builder.reason = this.reason;
        builder.status = this.status;
        builder.payment_method_details = this.payment_method_details;
        builder.failure_reason = this.failure_reason;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Refund)) {
            return false;
        }
        Refund refund = (Refund) other;
        return Intrinsics.areEqual(unknownFields(), refund.unknownFields()) && Intrinsics.areEqual(this.id, refund.id) && Intrinsics.areEqual(this.amount, refund.amount) && Intrinsics.areEqual(this.charge, refund.charge) && Intrinsics.areEqual(this.created, refund.created) && Intrinsics.areEqual(this.currency, refund.currency) && Intrinsics.areEqual(this.metadata, refund.metadata) && Intrinsics.areEqual(this.reason, refund.reason) && Intrinsics.areEqual(this.status, refund.status) && Intrinsics.areEqual(this.payment_method_details, refund.payment_method_details) && Intrinsics.areEqual(this.failure_reason, refund.failure_reason);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Long l = this.amount;
        int iHashCode3 = (iHashCode2 + (l != null ? l.hashCode() : 0)) * 37;
        String str2 = this.charge;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Long l2 = this.created;
        int iHashCode5 = (iHashCode4 + (l2 != null ? l2.hashCode() : 0)) * 37;
        String str3 = this.currency;
        int iHashCode6 = (((iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        String str4 = this.reason;
        int iHashCode7 = (iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.status;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
        PaymentMethodDetails paymentMethodDetails = this.payment_method_details;
        int iHashCode9 = (iHashCode8 + (paymentMethodDetails != null ? paymentMethodDetails.hashCode() : 0)) * 37;
        String str6 = this.failure_reason;
        int iHashCode10 = iHashCode9 + (str6 != null ? str6.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.amount != null) {
            arrayList.add("amount=" + this.amount);
        }
        if (this.charge != null) {
            arrayList.add("charge=" + this.charge);
        }
        if (this.created != null) {
            arrayList.add("created=" + this.created);
        }
        if (this.currency != null) {
            arrayList.add("currency=" + this.currency);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.reason != null) {
            arrayList.add("reason=" + this.reason);
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.payment_method_details != null) {
            arrayList.add("payment_method_details=" + this.payment_method_details);
        }
        if (this.failure_reason != null) {
            arrayList.add("failure_reason=" + this.failure_reason);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Refund{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Refund copy$default(Refund refund, String str, Long l, String str2, Long l2, String str3, Map map, String str4, String str5, PaymentMethodDetails paymentMethodDetails, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refund.id;
        }
        if ((i & 2) != 0) {
            l = refund.amount;
        }
        if ((i & 4) != 0) {
            str2 = refund.charge;
        }
        if ((i & 8) != 0) {
            l2 = refund.created;
        }
        if ((i & 16) != 0) {
            str3 = refund.currency;
        }
        if ((i & 32) != 0) {
            map = refund.metadata;
        }
        if ((i & 64) != 0) {
            str4 = refund.reason;
        }
        if ((i & 128) != 0) {
            str5 = refund.status;
        }
        if ((i & 256) != 0) {
            paymentMethodDetails = refund.payment_method_details;
        }
        if ((i & 512) != 0) {
            str6 = refund.failure_reason;
        }
        if ((i & 1024) != 0) {
            byteString = refund.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        PaymentMethodDetails paymentMethodDetails2 = paymentMethodDetails;
        Map map2 = map;
        String str9 = str4;
        String str10 = str3;
        String str11 = str2;
        return refund.copy(str, l, str11, l2, str10, map2, str9, str8, paymentMethodDetails2, str7, byteString2);
    }

    public final Refund copy(String id, Long amount, String charge, Long created, String currency, Map<String, String> metadata, String reason, String status, PaymentMethodDetails payment_method_details, String failure_reason, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Refund(id, amount, charge, created, currency, metadata, reason, status, payment_method_details, failure_reason, unknownFields);
    }

    /* JADX INFO: compiled from: Refund.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\bJ\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\n\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/Refund$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Refund;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "charge", "", "created", FirebaseAnalytics.Param.CURRENCY, "failure_reason", OfflineStorageConstantsKt.ID, "metadata", "", "payment_method_details", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "reason", NotificationCompat.CATEGORY_STATUS, "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Refund$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Refund, Builder> {
        public Long amount;
        public String charge;
        public Long created;
        public String currency;
        public String failure_reason;
        public String id;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public PaymentMethodDetails payment_method_details;
        public String reason;
        public String status;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder amount(Long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder charge(String charge) {
            this.charge = charge;
            return this;
        }

        public final Builder created(Long created) {
            this.created = created;
            return this;
        }

        public final Builder currency(String currency) {
            this.currency = currency;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder reason(String reason) {
            this.reason = reason;
            return this;
        }

        public final Builder status(String status) {
            this.status = status;
            return this;
        }

        public final Builder payment_method_details(PaymentMethodDetails payment_method_details) {
            this.payment_method_details = payment_method_details;
            return this;
        }

        public final Builder failure_reason(String failure_reason) {
            this.failure_reason = failure_reason;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Refund build() {
            return new Refund(this.id, this.amount, this.charge, this.created, this.currency, this.metadata, this.reason, this.status, this.payment_method_details, this.failure_reason, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Refund.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Refund$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Refund;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Refund$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Refund build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Refund.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Refund>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Refund$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.Refund$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Refund value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.amount);
                }
                if (value.charge != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.charge);
                }
                if (value.created != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(4, value.created);
                }
                if (value.currency != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.currency);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(6, value.metadata);
                if (value.reason != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.reason);
                }
                if (value.status != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.status);
                }
                if (value.payment_method_details != null) {
                    iEncodedSizeWithTag += PaymentMethodDetails.ADAPTER.encodedSizeWithTag(9, value.payment_method_details);
                }
                return value.failure_reason != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.failure_reason) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Refund value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount);
                }
                if (value.charge != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.charge);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.created);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.currency);
                }
                getMetadataAdapter().encodeWithTag(writer, 6, value.metadata);
                if (value.reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.reason);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.status);
                }
                if (value.payment_method_details != null) {
                    PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 9, value.payment_method_details);
                }
                if (value.failure_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.failure_reason);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Refund value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.failure_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.failure_reason);
                }
                if (value.payment_method_details != null) {
                    PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 9, value.payment_method_details);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.status);
                }
                if (value.reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.reason);
                }
                getMetadataAdapter().encodeWithTag(writer, 6, value.metadata);
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.currency);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.created);
                }
                if (value.charge != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.charge);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Refund decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                Long lDecode = null;
                String strDecode2 = null;
                Long lDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                PaymentMethodDetails paymentMethodDetailsDecode = null;
                String strDecode6 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 7:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                paymentMethodDetailsDecode = PaymentMethodDetails.ADAPTER.decode(reader);
                                break;
                            case 10:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Refund(strDecode, lDecode, strDecode2, lDecode2, strDecode3, linkedHashMap, strDecode4, strDecode5, paymentMethodDetailsDecode, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Refund redact(Refund value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Long l = value.amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str2 = value.charge;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                Long l2 = value.created;
                Long lRedact2 = l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null;
                String str3 = value.currency;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.reason;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.status;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                PaymentMethodDetails paymentMethodDetails = value.payment_method_details;
                PaymentMethodDetails paymentMethodDetailsRedact = paymentMethodDetails != null ? PaymentMethodDetails.ADAPTER.redact(paymentMethodDetails) : null;
                String str6 = value.failure_reason;
                return Refund.copy$default(value, strRedact, lRedact, strRedact2, lRedact2, strRedact3, null, strRedact4, strRedact5, paymentMethodDetailsRedact, str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null, ByteString.EMPTY, 32, null);
            }
        };
    }
}
