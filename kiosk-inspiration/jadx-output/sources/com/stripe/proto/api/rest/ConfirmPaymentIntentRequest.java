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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
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

/* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B\u008b\u0001\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u0091\u0001\u0010\u0019\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0005H\u0016R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;", "expand", "", "", "source_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "payment_method_data", "amount_to_confirm", "", OfflineStorageConstantsKt.ID, "amount_tip", "payment_method_options", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "amount_surcharge", "return_url", "redirect_preferences", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)V", "Ljava/lang/Long;", "getSource_data$annotations", "()V", "copy", "(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "RedirectPreferences", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentIntentRequest extends Message<ConfirmPaymentIntentRequest, Builder> {
    public static final ProtoAdapter<ConfirmPaymentIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountSurcharge", schemaIndex = 7, tag = 8)
    public final Long amount_surcharge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountTip", schemaIndex = 5, tag = 6)
    public final Long amount_tip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountToConfirm", schemaIndex = 3, tag = 4)
    public final Long amount_to_confirm;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String id;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER", jsonName = "paymentMethodData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final RequestedPaymentMethod payment_method_data;

    @WireField(adapter = "com.stripe.proto.api.rest.PaymentMethodOptions#ADAPTER", jsonName = "paymentMethodOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final PaymentMethodOptions payment_method_options;

    @WireField(adapter = "com.stripe.proto.api.rest.ConfirmPaymentIntentRequest$RedirectPreferences#ADAPTER", jsonName = "redirectPreferences", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final RedirectPreferences redirect_preferences;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "returnUrl", schemaIndex = 8, tag = 9)
    public final String return_url;

    @WireField(adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER", jsonName = "sourceData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RequestedPaymentMethod source_data;

    public ConfirmPaymentIntentRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    @Deprecated(message = "source_data is deprecated")
    public static /* synthetic */ void getSource_data$annotations() {
    }

    public /* synthetic */ ConfirmPaymentIntentRequest(List list, RequestedPaymentMethod requestedPaymentMethod, RequestedPaymentMethod requestedPaymentMethod2, Long l, String str, Long l2, PaymentMethodOptions paymentMethodOptions, Long l3, String str2, RedirectPreferences redirectPreferences, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : requestedPaymentMethod, (i & 4) != 0 ? null : requestedPaymentMethod2, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : str, (i & 32) != 0 ? null : l2, (i & 64) != 0 ? null : paymentMethodOptions, (i & 128) != 0 ? null : l3, (i & 256) != 0 ? null : str2, (i & 512) != 0 ? null : redirectPreferences, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmPaymentIntentRequest(List<String> expand, RequestedPaymentMethod requestedPaymentMethod, RequestedPaymentMethod requestedPaymentMethod2, Long l, String str, Long l2, PaymentMethodOptions paymentMethodOptions, Long l3, String str2, RedirectPreferences redirectPreferences, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.source_data = requestedPaymentMethod;
        this.payment_method_data = requestedPaymentMethod2;
        this.amount_to_confirm = l;
        this.id = str;
        this.amount_tip = l2;
        this.payment_method_options = paymentMethodOptions;
        this.amount_surcharge = l3;
        this.return_url = str2;
        this.redirect_preferences = redirectPreferences;
        this.expand = Internal.immutableCopyOf("expand", expand);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expand = this.expand;
        builder.source_data = this.source_data;
        builder.payment_method_data = this.payment_method_data;
        builder.amount_to_confirm = this.amount_to_confirm;
        builder.id = this.id;
        builder.amount_tip = this.amount_tip;
        builder.payment_method_options = this.payment_method_options;
        builder.amount_surcharge = this.amount_surcharge;
        builder.return_url = this.return_url;
        builder.redirect_preferences = this.redirect_preferences;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmPaymentIntentRequest)) {
            return false;
        }
        ConfirmPaymentIntentRequest confirmPaymentIntentRequest = (ConfirmPaymentIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), confirmPaymentIntentRequest.unknownFields()) && Intrinsics.areEqual(this.expand, confirmPaymentIntentRequest.expand) && Intrinsics.areEqual(this.source_data, confirmPaymentIntentRequest.source_data) && Intrinsics.areEqual(this.payment_method_data, confirmPaymentIntentRequest.payment_method_data) && Intrinsics.areEqual(this.amount_to_confirm, confirmPaymentIntentRequest.amount_to_confirm) && Intrinsics.areEqual(this.id, confirmPaymentIntentRequest.id) && Intrinsics.areEqual(this.amount_tip, confirmPaymentIntentRequest.amount_tip) && Intrinsics.areEqual(this.payment_method_options, confirmPaymentIntentRequest.payment_method_options) && Intrinsics.areEqual(this.amount_surcharge, confirmPaymentIntentRequest.amount_surcharge) && Intrinsics.areEqual(this.return_url, confirmPaymentIntentRequest.return_url) && Intrinsics.areEqual(this.redirect_preferences, confirmPaymentIntentRequest.redirect_preferences);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.expand.hashCode()) * 37;
        RequestedPaymentMethod requestedPaymentMethod = this.source_data;
        int iHashCode2 = (iHashCode + (requestedPaymentMethod != null ? requestedPaymentMethod.hashCode() : 0)) * 37;
        RequestedPaymentMethod requestedPaymentMethod2 = this.payment_method_data;
        int iHashCode3 = (iHashCode2 + (requestedPaymentMethod2 != null ? requestedPaymentMethod2.hashCode() : 0)) * 37;
        Long l = this.amount_to_confirm;
        int iHashCode4 = (iHashCode3 + (l != null ? l.hashCode() : 0)) * 37;
        String str = this.id;
        int iHashCode5 = (iHashCode4 + (str != null ? str.hashCode() : 0)) * 37;
        Long l2 = this.amount_tip;
        int iHashCode6 = (iHashCode5 + (l2 != null ? l2.hashCode() : 0)) * 37;
        PaymentMethodOptions paymentMethodOptions = this.payment_method_options;
        int iHashCode7 = (iHashCode6 + (paymentMethodOptions != null ? paymentMethodOptions.hashCode() : 0)) * 37;
        Long l3 = this.amount_surcharge;
        int iHashCode8 = (iHashCode7 + (l3 != null ? l3.hashCode() : 0)) * 37;
        String str2 = this.return_url;
        int iHashCode9 = (iHashCode8 + (str2 != null ? str2.hashCode() : 0)) * 37;
        RedirectPreferences redirectPreferences = this.redirect_preferences;
        int iHashCode10 = iHashCode9 + (redirectPreferences != null ? redirectPreferences.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.source_data != null) {
            arrayList.add("source_data=" + this.source_data);
        }
        if (this.payment_method_data != null) {
            arrayList.add("payment_method_data=" + this.payment_method_data);
        }
        if (this.amount_to_confirm != null) {
            arrayList.add("amount_to_confirm=" + this.amount_to_confirm);
        }
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.amount_tip != null) {
            arrayList.add("amount_tip=" + this.amount_tip);
        }
        if (this.payment_method_options != null) {
            arrayList.add("payment_method_options=" + this.payment_method_options);
        }
        if (this.amount_surcharge != null) {
            arrayList.add("amount_surcharge=" + this.amount_surcharge);
        }
        if (this.return_url != null) {
            arrayList.add("return_url=" + this.return_url);
        }
        if (this.redirect_preferences != null) {
            arrayList.add("redirect_preferences=" + this.redirect_preferences);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmPaymentIntentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfirmPaymentIntentRequest copy$default(ConfirmPaymentIntentRequest confirmPaymentIntentRequest, List list, RequestedPaymentMethod requestedPaymentMethod, RequestedPaymentMethod requestedPaymentMethod2, Long l, String str, Long l2, PaymentMethodOptions paymentMethodOptions, Long l3, String str2, RedirectPreferences redirectPreferences, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = confirmPaymentIntentRequest.expand;
        }
        if ((i & 2) != 0) {
            requestedPaymentMethod = confirmPaymentIntentRequest.source_data;
        }
        if ((i & 4) != 0) {
            requestedPaymentMethod2 = confirmPaymentIntentRequest.payment_method_data;
        }
        if ((i & 8) != 0) {
            l = confirmPaymentIntentRequest.amount_to_confirm;
        }
        if ((i & 16) != 0) {
            str = confirmPaymentIntentRequest.id;
        }
        if ((i & 32) != 0) {
            l2 = confirmPaymentIntentRequest.amount_tip;
        }
        if ((i & 64) != 0) {
            paymentMethodOptions = confirmPaymentIntentRequest.payment_method_options;
        }
        if ((i & 128) != 0) {
            l3 = confirmPaymentIntentRequest.amount_surcharge;
        }
        if ((i & 256) != 0) {
            str2 = confirmPaymentIntentRequest.return_url;
        }
        if ((i & 512) != 0) {
            redirectPreferences = confirmPaymentIntentRequest.redirect_preferences;
        }
        if ((i & 1024) != 0) {
            byteString = confirmPaymentIntentRequest.unknownFields();
        }
        RedirectPreferences redirectPreferences2 = redirectPreferences;
        ByteString byteString2 = byteString;
        Long l4 = l3;
        String str3 = str2;
        Long l5 = l2;
        PaymentMethodOptions paymentMethodOptions2 = paymentMethodOptions;
        String str4 = str;
        RequestedPaymentMethod requestedPaymentMethod3 = requestedPaymentMethod2;
        return confirmPaymentIntentRequest.copy(list, requestedPaymentMethod, requestedPaymentMethod3, l, str4, l5, paymentMethodOptions2, l4, str3, redirectPreferences2, byteString2);
    }

    public final ConfirmPaymentIntentRequest copy(List<String> expand, RequestedPaymentMethod source_data, RequestedPaymentMethod payment_method_data, Long amount_to_confirm, String id, Long amount_tip, PaymentMethodOptions payment_method_options, Long amount_surcharge, String return_url, RedirectPreferences redirect_preferences, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmPaymentIntentRequest(expand, source_data, payment_method_data, amount_to_confirm, id, amount_tip, payment_method_options, amount_surcharge, return_url, redirect_preferences, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0015J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0015J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u000eH\u0007R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "()V", "amount_surcharge", "", "Ljava/lang/Long;", "amount_tip", "amount_to_confirm", "expand", "", "", OfflineStorageConstantsKt.ID, "payment_method_data", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "payment_method_options", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "redirect_preferences", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "return_url", "source_data", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmPaymentIntentRequest, Builder> {
        public Long amount_surcharge;
        public Long amount_tip;
        public Long amount_to_confirm;
        public List<String> expand = CollectionsKt.emptyList();
        public String id;
        public RequestedPaymentMethod payment_method_data;
        public PaymentMethodOptions payment_method_options;
        public RedirectPreferences redirect_preferences;
        public String return_url;
        public RequestedPaymentMethod source_data;

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        @Deprecated(message = "source_data is deprecated")
        public final Builder source_data(RequestedPaymentMethod source_data) {
            this.source_data = source_data;
            return this;
        }

        public final Builder payment_method_data(RequestedPaymentMethod payment_method_data) {
            this.payment_method_data = payment_method_data;
            return this;
        }

        public final Builder amount_to_confirm(Long amount_to_confirm) {
            this.amount_to_confirm = amount_to_confirm;
            return this;
        }

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder amount_tip(Long amount_tip) {
            this.amount_tip = amount_tip;
            return this;
        }

        public final Builder payment_method_options(PaymentMethodOptions payment_method_options) {
            this.payment_method_options = payment_method_options;
            return this;
        }

        public final Builder amount_surcharge(Long amount_surcharge) {
            this.amount_surcharge = amount_surcharge;
            return this;
        }

        public final Builder return_url(String return_url) {
            this.return_url = return_url;
            return this;
        }

        public final Builder redirect_preferences(RedirectPreferences redirect_preferences) {
            this.redirect_preferences = redirect_preferences;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmPaymentIntentRequest build() {
            return new ConfirmPaymentIntentRequest(this.expand, this.source_data, this.payment_method_data, this.amount_to_confirm, this.id, this.amount_tip, this.payment_method_options, this.amount_surcharge, this.return_url, this.redirect_preferences, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmPaymentIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmPaymentIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmPaymentIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ConfirmPaymentIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmPaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.expand);
                if (value.source_data != null) {
                    size += RequestedPaymentMethod.ADAPTER.encodedSizeWithTag(2, value.source_data);
                }
                if (value.payment_method_data != null) {
                    size += RequestedPaymentMethod.ADAPTER.encodedSizeWithTag(3, value.payment_method_data);
                }
                if (value.amount_to_confirm != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(4, value.amount_to_confirm);
                }
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.id);
                }
                if (value.amount_tip != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(6, value.amount_tip);
                }
                if (value.payment_method_options != null) {
                    size += PaymentMethodOptions.ADAPTER.encodedSizeWithTag(7, value.payment_method_options);
                }
                if (value.amount_surcharge != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(8, value.amount_surcharge);
                }
                if (value.return_url != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.return_url);
                }
                return value.redirect_preferences != null ? size + ConfirmPaymentIntentRequest.RedirectPreferences.ADAPTER.encodedSizeWithTag(10, value.redirect_preferences) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmPaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
                if (value.source_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.source_data);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.payment_method_data);
                }
                if (value.amount_to_confirm != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.amount_to_confirm);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.id);
                }
                if (value.amount_tip != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.amount_tip);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 7, value.payment_method_options);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 8, value.amount_surcharge);
                }
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.return_url);
                }
                if (value.redirect_preferences != null) {
                    ConfirmPaymentIntentRequest.RedirectPreferences.ADAPTER.encodeWithTag(writer, 10, value.redirect_preferences);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmPaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.redirect_preferences != null) {
                    ConfirmPaymentIntentRequest.RedirectPreferences.ADAPTER.encodeWithTag(writer, 10, value.redirect_preferences);
                }
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.return_url);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 8, value.amount_surcharge);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 7, value.payment_method_options);
                }
                if (value.amount_tip != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.amount_tip);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.id);
                }
                if (value.amount_to_confirm != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.amount_to_confirm);
                }
                if (value.payment_method_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.payment_method_data);
                }
                if (value.source_data != null) {
                    RequestedPaymentMethod.ADAPTER.encodeWithTag(writer, 2, value.source_data);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                RequestedPaymentMethod requestedPaymentMethodDecode = null;
                RequestedPaymentMethod requestedPaymentMethodDecode2 = null;
                Long lDecode = null;
                String strDecode = null;
                Long lDecode2 = null;
                PaymentMethodOptions paymentMethodOptionsDecode = null;
                Long lDecode3 = null;
                String strDecode2 = null;
                ConfirmPaymentIntentRequest.RedirectPreferences redirectPreferencesDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 2:
                                requestedPaymentMethodDecode = RequestedPaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 3:
                                requestedPaymentMethodDecode2 = RequestedPaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 4:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 7:
                                paymentMethodOptionsDecode = PaymentMethodOptions.ADAPTER.decode(reader);
                                break;
                            case 8:
                                lDecode3 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                redirectPreferencesDecode = ConfirmPaymentIntentRequest.RedirectPreferences.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ConfirmPaymentIntentRequest(arrayList, requestedPaymentMethodDecode, requestedPaymentMethodDecode2, lDecode, strDecode, lDecode2, paymentMethodOptionsDecode, lDecode3, strDecode2, redirectPreferencesDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentIntentRequest redact(ConfirmPaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RequestedPaymentMethod requestedPaymentMethod = value.source_data;
                RequestedPaymentMethod requestedPaymentMethodRedact = requestedPaymentMethod != null ? RequestedPaymentMethod.ADAPTER.redact(requestedPaymentMethod) : null;
                RequestedPaymentMethod requestedPaymentMethod2 = value.payment_method_data;
                RequestedPaymentMethod requestedPaymentMethodRedact2 = requestedPaymentMethod2 != null ? RequestedPaymentMethod.ADAPTER.redact(requestedPaymentMethod2) : null;
                Long l = value.amount_to_confirm;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Long l2 = value.amount_tip;
                Long lRedact2 = l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null;
                PaymentMethodOptions paymentMethodOptions = value.payment_method_options;
                PaymentMethodOptions paymentMethodOptionsRedact = paymentMethodOptions != null ? PaymentMethodOptions.ADAPTER.redact(paymentMethodOptions) : null;
                Long l3 = value.amount_surcharge;
                Long lRedact3 = l3 != null ? ProtoAdapter.INT64_VALUE.redact(l3) : null;
                String str2 = value.return_url;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                ConfirmPaymentIntentRequest.RedirectPreferences redirectPreferences = value.redirect_preferences;
                return ConfirmPaymentIntentRequest.copy$default(value, null, requestedPaymentMethodRedact, requestedPaymentMethodRedact2, lRedact, strRedact, lRedact2, paymentMethodOptionsRedact, lRedact3, strRedact2, redirectPreferences != null ? ConfirmPaymentIntentRequest.RedirectPreferences.ADAPTER.redact(redirectPreferences) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;", "additional_formats", "", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RedirectPreferences extends Message<RedirectPreferences, Builder> {
        public static final ProtoAdapter<RedirectPreferences> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "additionalFormats", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<String> additional_formats;

        /* JADX WARN: Multi-variable type inference failed */
        public RedirectPreferences() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ RedirectPreferences(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RedirectPreferences(List<String> additional_formats, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(additional_formats, "additional_formats");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.additional_formats = Internal.immutableCopyOf("additional_formats", additional_formats);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.additional_formats = this.additional_formats;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RedirectPreferences)) {
                return false;
            }
            RedirectPreferences redirectPreferences = (RedirectPreferences) other;
            return Intrinsics.areEqual(unknownFields(), redirectPreferences.unknownFields()) && Intrinsics.areEqual(this.additional_formats, redirectPreferences.additional_formats);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.additional_formats.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.additional_formats.isEmpty()) {
                arrayList.add("additional_formats=" + Internal.sanitize(this.additional_formats));
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "RedirectPreferences{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RedirectPreferences copy$default(RedirectPreferences redirectPreferences, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = redirectPreferences.additional_formats;
            }
            if ((i & 2) != 0) {
                byteString = redirectPreferences.unknownFields();
            }
            return redirectPreferences.copy(list, byteString);
        }

        public final RedirectPreferences copy(List<String> additional_formats, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(additional_formats, "additional_formats");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new RedirectPreferences(additional_formats, unknownFields);
        }

        /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "()V", "additional_formats", "", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<RedirectPreferences, Builder> {
            public List<String> additional_formats = CollectionsKt.emptyList();

            public final Builder additional_formats(List<String> additional_formats) {
                Intrinsics.checkNotNullParameter(additional_formats, "additional_formats");
                Internal.checkElementsNotNull(additional_formats);
                this.additional_formats = additional_formats;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RedirectPreferences build() {
                return new RedirectPreferences(this.additional_formats, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ RedirectPreferences build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RedirectPreferences.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<RedirectPreferences>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ConfirmPaymentIntentRequest$RedirectPreferences$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ConfirmPaymentIntentRequest.RedirectPreferences value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.additional_formats);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ConfirmPaymentIntentRequest.RedirectPreferences value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.additional_formats);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ConfirmPaymentIntentRequest.RedirectPreferences value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.additional_formats);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ConfirmPaymentIntentRequest.RedirectPreferences decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ConfirmPaymentIntentRequest.RedirectPreferences(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ConfirmPaymentIntentRequest.RedirectPreferences redact(ConfirmPaymentIntentRequest.RedirectPreferences value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ConfirmPaymentIntentRequest.RedirectPreferences.copy$default(value, null, ByteString.EMPTY, 1, null);
                }
            };
        }
    }
}
