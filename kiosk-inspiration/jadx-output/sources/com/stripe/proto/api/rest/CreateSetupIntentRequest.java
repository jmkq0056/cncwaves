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
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
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

/* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003#$%B\u00ad\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J³\u0001\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;", "confirm", "", "customer", "", "description", "metadata", "", "payment_method", "payment_method_types", "", "usage", "mandate_data", "Lcom/stripe/proto/api/rest/Mandate;", "on_behalf_of", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "return_url", "single_use", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "SingleUseMandate", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateSetupIntentRequest extends Message<CreateSetupIntentRequest, Builder> {
    public static final ProtoAdapter<CreateSetupIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 0, tag = 1)
    public final Boolean confirm;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String description;

    @WireField(adapter = "com.stripe.proto.api.rest.Mandate#ADAPTER", jsonName = "mandateData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final Mandate mandate_data;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 4)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "onBehalfOf", schemaIndex = 8, tag = 9)
    public final String on_behalf_of;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentMethod", schemaIndex = 4, tag = 5)
    public final String payment_method;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions#ADAPTER", jsonName = "paymentMethodOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final com.stripe.proto.model.rest.PaymentMethodOptions payment_method_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethodTypes", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 6)
    public final List<String> payment_method_types;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "returnUrl", schemaIndex = 10, tag = 11)
    public final String return_url;

    @WireField(adapter = "com.stripe.proto.api.rest.CreateSetupIntentRequest$SingleUseMandate#ADAPTER", jsonName = "singleUse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final SingleUseMandate single_use;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 6, tag = 7)
    public final String usage;

    public CreateSetupIntentRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public /* synthetic */ CreateSetupIntentRequest(Boolean bool, String str, String str2, Map map, String str3, List list, String str4, Mandate mandate, String str5, com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions, String str6, SingleUseMandate singleUseMandate, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? MapsKt.emptyMap() : map, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : mandate, (i & 256) != 0 ? null : str5, (i & 512) != 0 ? null : paymentMethodOptions, (i & 1024) != 0 ? null : str6, (i & 2048) == 0 ? singleUseMandate : null, (i & 4096) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateSetupIntentRequest(Boolean bool, String str, String str2, Map<String, String> metadata, String str3, List<String> payment_method_types, String str4, Mandate mandate, String str5, com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions, String str6, SingleUseMandate singleUseMandate, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.confirm = bool;
        this.customer = str;
        this.description = str2;
        this.payment_method = str3;
        this.usage = str4;
        this.mandate_data = mandate;
        this.on_behalf_of = str5;
        this.payment_method_options = paymentMethodOptions;
        this.return_url = str6;
        this.single_use = singleUseMandate;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        this.payment_method_types = Internal.immutableCopyOf("payment_method_types", payment_method_types);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.confirm = this.confirm;
        builder.customer = this.customer;
        builder.description = this.description;
        builder.metadata = this.metadata;
        builder.payment_method = this.payment_method;
        builder.payment_method_types = this.payment_method_types;
        builder.usage = this.usage;
        builder.mandate_data = this.mandate_data;
        builder.on_behalf_of = this.on_behalf_of;
        builder.payment_method_options = this.payment_method_options;
        builder.return_url = this.return_url;
        builder.single_use = this.single_use;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreateSetupIntentRequest)) {
            return false;
        }
        CreateSetupIntentRequest createSetupIntentRequest = (CreateSetupIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), createSetupIntentRequest.unknownFields()) && Intrinsics.areEqual(this.confirm, createSetupIntentRequest.confirm) && Intrinsics.areEqual(this.customer, createSetupIntentRequest.customer) && Intrinsics.areEqual(this.description, createSetupIntentRequest.description) && Intrinsics.areEqual(this.metadata, createSetupIntentRequest.metadata) && Intrinsics.areEqual(this.payment_method, createSetupIntentRequest.payment_method) && Intrinsics.areEqual(this.payment_method_types, createSetupIntentRequest.payment_method_types) && Intrinsics.areEqual(this.usage, createSetupIntentRequest.usage) && Intrinsics.areEqual(this.mandate_data, createSetupIntentRequest.mandate_data) && Intrinsics.areEqual(this.on_behalf_of, createSetupIntentRequest.on_behalf_of) && Intrinsics.areEqual(this.payment_method_options, createSetupIntentRequest.payment_method_options) && Intrinsics.areEqual(this.return_url, createSetupIntentRequest.return_url) && Intrinsics.areEqual(this.single_use, createSetupIntentRequest.single_use);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Boolean bool = this.confirm;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        String str = this.customer;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.description;
        int iHashCode4 = (((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        String str3 = this.payment_method;
        int iHashCode5 = (((iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37) + this.payment_method_types.hashCode()) * 37;
        String str4 = this.usage;
        int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
        Mandate mandate = this.mandate_data;
        int iHashCode7 = (iHashCode6 + (mandate != null ? mandate.hashCode() : 0)) * 37;
        String str5 = this.on_behalf_of;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
        com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions = this.payment_method_options;
        int iHashCode9 = (iHashCode8 + (paymentMethodOptions != null ? paymentMethodOptions.hashCode() : 0)) * 37;
        String str6 = this.return_url;
        int iHashCode10 = (iHashCode9 + (str6 != null ? str6.hashCode() : 0)) * 37;
        SingleUseMandate singleUseMandate = this.single_use;
        int iHashCode11 = iHashCode10 + (singleUseMandate != null ? singleUseMandate.hashCode() : 0);
        this.hashCode = iHashCode11;
        return iHashCode11;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.confirm != null) {
            arrayList.add("confirm=" + this.confirm);
        }
        if (this.customer != null) {
            arrayList.add("customer=" + this.customer);
        }
        if (this.description != null) {
            arrayList.add("description=" + this.description);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (!this.payment_method_types.isEmpty()) {
            arrayList.add("payment_method_types=" + Internal.sanitize(this.payment_method_types));
        }
        if (this.usage != null) {
            arrayList.add("usage=" + this.usage);
        }
        if (this.mandate_data != null) {
            arrayList.add("mandate_data=" + this.mandate_data);
        }
        if (this.on_behalf_of != null) {
            arrayList.add("on_behalf_of=" + this.on_behalf_of);
        }
        if (this.payment_method_options != null) {
            arrayList.add("payment_method_options=" + this.payment_method_options);
        }
        if (this.return_url != null) {
            arrayList.add("return_url=" + this.return_url);
        }
        if (this.single_use != null) {
            arrayList.add("single_use=" + this.single_use);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreateSetupIntentRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CreateSetupIntentRequest copy$default(CreateSetupIntentRequest createSetupIntentRequest, Boolean bool, String str, String str2, Map map, String str3, List list, String str4, Mandate mandate, String str5, com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions, String str6, SingleUseMandate singleUseMandate, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = createSetupIntentRequest.confirm;
        }
        return createSetupIntentRequest.copy(bool, (i & 2) != 0 ? createSetupIntentRequest.customer : str, (i & 4) != 0 ? createSetupIntentRequest.description : str2, (i & 8) != 0 ? createSetupIntentRequest.metadata : map, (i & 16) != 0 ? createSetupIntentRequest.payment_method : str3, (i & 32) != 0 ? createSetupIntentRequest.payment_method_types : list, (i & 64) != 0 ? createSetupIntentRequest.usage : str4, (i & 128) != 0 ? createSetupIntentRequest.mandate_data : mandate, (i & 256) != 0 ? createSetupIntentRequest.on_behalf_of : str5, (i & 512) != 0 ? createSetupIntentRequest.payment_method_options : paymentMethodOptions, (i & 1024) != 0 ? createSetupIntentRequest.return_url : str6, (i & 2048) != 0 ? createSetupIntentRequest.single_use : singleUseMandate, (i & 4096) != 0 ? createSetupIntentRequest.unknownFields() : byteString);
    }

    public final CreateSetupIntentRequest copy(Boolean confirm, String customer, String description, Map<String, String> metadata, String payment_method, List<String> payment_method_types, String usage, Mandate mandate_data, String on_behalf_of, com.stripe.proto.model.rest.PaymentMethodOptions payment_method_options, String return_url, SingleUseMandate single_use, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreateSetupIntentRequest(confirm, customer, description, metadata, payment_method, payment_method_types, usage, mandate_data, on_behalf_of, payment_method_options, return_url, single_use, unknownFields);
    }

    /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0019J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u001a\u0010\f\u001a\u00020\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0014\u0010\u0012\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "()V", "confirm", "", "Ljava/lang/Boolean;", "customer", "", "description", "mandate_data", "Lcom/stripe/proto/api/rest/Mandate;", "metadata", "", "on_behalf_of", "payment_method", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "payment_method_types", "", "return_url", "single_use", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "usage", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreateSetupIntentRequest, Builder> {
        public Boolean confirm;
        public String customer;
        public String description;
        public Mandate mandate_data;
        public String on_behalf_of;
        public String payment_method;
        public com.stripe.proto.model.rest.PaymentMethodOptions payment_method_options;
        public String return_url;
        public SingleUseMandate single_use;
        public String usage;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public List<String> payment_method_types = CollectionsKt.emptyList();

        public final Builder confirm(Boolean confirm) {
            this.confirm = confirm;
            return this;
        }

        public final Builder customer(String customer) {
            this.customer = customer;
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

        public final Builder payment_method(String payment_method) {
            this.payment_method = payment_method;
            return this;
        }

        public final Builder payment_method_types(List<String> payment_method_types) {
            Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
            Internal.checkElementsNotNull(payment_method_types);
            this.payment_method_types = payment_method_types;
            return this;
        }

        public final Builder usage(String usage) {
            this.usage = usage;
            return this;
        }

        public final Builder mandate_data(Mandate mandate_data) {
            this.mandate_data = mandate_data;
            return this;
        }

        public final Builder on_behalf_of(String on_behalf_of) {
            this.on_behalf_of = on_behalf_of;
            return this;
        }

        public final Builder payment_method_options(com.stripe.proto.model.rest.PaymentMethodOptions payment_method_options) {
            this.payment_method_options = payment_method_options;
            return this;
        }

        public final Builder return_url(String return_url) {
            this.return_url = return_url;
            return this;
        }

        public final Builder single_use(SingleUseMandate single_use) {
            this.single_use = single_use;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreateSetupIntentRequest build() {
            return new CreateSetupIntentRequest(this.confirm, this.customer, this.description, this.metadata, this.payment_method, this.payment_method_types, this.usage, this.mandate_data, this.on_behalf_of, this.payment_method_options, this.return_url, this.single_use, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreateSetupIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreateSetupIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreateSetupIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.CreateSetupIntentRequest$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.rest.CreateSetupIntentRequest$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreateSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.confirm != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(1, value.confirm);
                }
                if (value.customer != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.customer);
                }
                if (value.description != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.description);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(4, value.metadata);
                if (value.payment_method != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.payment_method);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(6, value.payment_method_types);
                if (value.usage != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.usage);
                }
                if (value.mandate_data != null) {
                    iEncodedSizeWithTag2 += Mandate.ADAPTER.encodedSizeWithTag(8, value.mandate_data);
                }
                if (value.on_behalf_of != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.on_behalf_of);
                }
                if (value.payment_method_options != null) {
                    iEncodedSizeWithTag2 += com.stripe.proto.model.rest.PaymentMethodOptions.ADAPTER.encodedSizeWithTag(10, value.payment_method_options);
                }
                if (value.return_url != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.return_url);
                }
                return value.single_use != null ? iEncodedSizeWithTag2 + CreateSetupIntentRequest.SingleUseMandate.ADAPTER.encodedSizeWithTag(12, value.single_use) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreateSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.confirm != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.confirm);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.customer);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.description);
                }
                getMetadataAdapter().encodeWithTag(writer, 4, value.metadata);
                if (value.payment_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.payment_method);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.payment_method_types);
                if (value.usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.usage);
                }
                if (value.mandate_data != null) {
                    Mandate.ADAPTER.encodeWithTag(writer, 8, value.mandate_data);
                }
                if (value.on_behalf_of != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.on_behalf_of);
                }
                if (value.payment_method_options != null) {
                    com.stripe.proto.model.rest.PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 10, value.payment_method_options);
                }
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.return_url);
                }
                if (value.single_use != null) {
                    CreateSetupIntentRequest.SingleUseMandate.ADAPTER.encodeWithTag(writer, 12, value.single_use);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreateSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.single_use != null) {
                    CreateSetupIntentRequest.SingleUseMandate.ADAPTER.encodeWithTag(writer, 12, value.single_use);
                }
                if (value.return_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.return_url);
                }
                if (value.payment_method_options != null) {
                    com.stripe.proto.model.rest.PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 10, value.payment_method_options);
                }
                if (value.on_behalf_of != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.on_behalf_of);
                }
                if (value.mandate_data != null) {
                    Mandate.ADAPTER.encodeWithTag(writer, 8, value.mandate_data);
                }
                if (value.usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.usage);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.payment_method_types);
                if (value.payment_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.payment_method);
                }
                getMetadataAdapter().encodeWithTag(writer, 4, value.metadata);
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.description);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.customer);
                }
                if (value.confirm != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.confirm);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreateSetupIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                Mandate mandateDecode = null;
                String strDecode5 = null;
                com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptionsDecode = null;
                String strDecode6 = null;
                CreateSetupIntentRequest.SingleUseMandate singleUseMandateDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    Boolean bool = boolDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 7:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                mandateDecode = Mandate.ADAPTER.decode(reader);
                                break;
                            case 9:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                paymentMethodOptionsDecode = com.stripe.proto.model.rest.PaymentMethodOptions.ADAPTER.decode(reader);
                                break;
                            case 11:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 12:
                                singleUseMandateDecode = CreateSetupIntentRequest.SingleUseMandate.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        boolDecode = bool;
                    } else {
                        return new CreateSetupIntentRequest(bool, strDecode, strDecode2, linkedHashMap, strDecode3, arrayList, strDecode4, mandateDecode, strDecode5, paymentMethodOptionsDecode, strDecode6, singleUseMandateDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreateSetupIntentRequest redact(CreateSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.confirm;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str = value.customer;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.description;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.payment_method;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.usage;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                Mandate mandate = value.mandate_data;
                Mandate mandateRedact = mandate != null ? Mandate.ADAPTER.redact(mandate) : null;
                String str5 = value.on_behalf_of;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions = value.payment_method_options;
                com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptionsRedact = paymentMethodOptions != null ? com.stripe.proto.model.rest.PaymentMethodOptions.ADAPTER.redact(paymentMethodOptions) : null;
                String str6 = value.return_url;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                CreateSetupIntentRequest.SingleUseMandate singleUseMandate = value.single_use;
                return CreateSetupIntentRequest.copy$default(value, boolRedact, strRedact, strRedact2, null, strRedact3, null, strRedact4, mandateRedact, strRedact5, paymentMethodOptionsRedact, strRedact6, singleUseMandate != null ? CreateSetupIntentRequest.SingleUseMandate.ADAPTER.redact(singleUseMandate) : null, ByteString.EMPTY, 40, null);
            }
        };
    }

    /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ-\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SingleUseMandate extends Message<SingleUseMandate, Builder> {
        public static final ProtoAdapter<SingleUseMandate> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", schemaIndex = 0, tag = 1)
        public final Integer amount;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
        public final String currency;

        public SingleUseMandate() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ SingleUseMandate(Integer num, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SingleUseMandate(Integer num, String str, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.amount = num;
            this.currency = str;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.amount = this.amount;
            builder.currency = this.currency;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SingleUseMandate)) {
                return false;
            }
            SingleUseMandate singleUseMandate = (SingleUseMandate) other;
            return Intrinsics.areEqual(unknownFields(), singleUseMandate.unknownFields()) && Intrinsics.areEqual(this.amount, singleUseMandate.amount) && Intrinsics.areEqual(this.currency, singleUseMandate.currency);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Integer num = this.amount;
            int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
            String str = this.currency;
            int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.amount != null) {
                arrayList.add("amount=" + this.amount);
            }
            if (this.currency != null) {
                arrayList.add("currency=" + this.currency);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SingleUseMandate{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ SingleUseMandate copy$default(SingleUseMandate singleUseMandate, Integer num, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                num = singleUseMandate.amount;
            }
            if ((i & 2) != 0) {
                str = singleUseMandate.currency;
            }
            if ((i & 4) != 0) {
                byteString = singleUseMandate.unknownFields();
            }
            return singleUseMandate.copy(num, str, byteString);
        }

        public final SingleUseMandate copy(Integer amount, String currency, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SingleUseMandate(amount, currency, unknownFields);
        }

        /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Integer;", FirebaseAnalytics.Param.CURRENCY, "", "(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SingleUseMandate, Builder> {
            public Integer amount;
            public String currency;

            public final Builder amount(Integer amount) {
                this.amount = amount;
                return this;
            }

            public final Builder currency(String currency) {
                this.currency = currency;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SingleUseMandate build() {
                return new SingleUseMandate(this.amount, this.currency, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SingleUseMandate build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SingleUseMandate.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SingleUseMandate>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.CreateSetupIntentRequest$SingleUseMandate$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CreateSetupIntentRequest.SingleUseMandate value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.amount != null) {
                        size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(1, value.amount);
                    }
                    return value.currency != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.currency) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CreateSetupIntentRequest.SingleUseMandate value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.amount != null) {
                        ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 1, value.amount);
                    }
                    if (value.currency != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.currency);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CreateSetupIntentRequest.SingleUseMandate value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.currency != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.currency);
                    }
                    if (value.amount != null) {
                        ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 1, value.amount);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CreateSetupIntentRequest.SingleUseMandate redact(CreateSetupIntentRequest.SingleUseMandate value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Integer num = value.amount;
                    Integer numRedact = num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null;
                    String str = value.currency;
                    return value.copy(numRedact, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CreateSetupIntentRequest.SingleUseMandate decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Integer numDecode = null;
                    String strDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CreateSetupIntentRequest.SingleUseMandate(numDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
