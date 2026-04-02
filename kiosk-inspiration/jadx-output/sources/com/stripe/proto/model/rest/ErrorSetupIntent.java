package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
import androidx.core.graphics.TypefaceCompat;
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
import com.stripe.proto.model.rest.SetupIntent;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinNT;
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

/* JADX INFO: compiled from: ErrorSetupIntent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 -2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002,-B\u0081\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010 J\u0087\u0002\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00172\b\u0010&\u001a\u0004\u0018\u00010'H\u0096\u0002J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u0002H\u0016J\b\u0010+\u001a\u00020\u0004H\u0016R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010!R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\"R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/stripe/proto/model/rest/ErrorSetupIntent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;", OfflineStorageConstantsKt.ID, "", "client_secret", "customer", "description", "last_setup_error", "Lcom/stripe/proto/model/rest/LastSetupError;", "metadata", "", "next_action", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "payment_method", "payment_method_types", "", NotificationCompat.CATEGORY_STATUS, "usage", "created", "", "latest_attempt", "livemode", "", "mandate", "single_use_mandate", "application", "on_behalf_of", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ErrorSetupIntent;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ErrorSetupIntent extends Message<ErrorSetupIntent, Builder> {
    public static final ProtoAdapter<ErrorSetupIntent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 16, tag = 17)
    public final String application;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "clientSecret", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String client_secret;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 11, tag = 12)
    public final Long created;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 3, tag = 4)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.stripe.proto.model.rest.LastSetupError#ADAPTER", jsonName = "lastSetupError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final LastSetupError last_setup_error;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "latestAttempt", schemaIndex = 12, tag = 13)
    public final String latest_attempt;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 13, tag = 14)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 14, tag = 15)
    public final String mandate;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$NextAction#ADAPTER", jsonName = "nextAction", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final SetupIntent.NextAction next_action;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "onBehalfOf", schemaIndex = 17, tag = 18)
    public final String on_behalf_of;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentMethod", schemaIndex = 7, tag = 8)
    public final String payment_method;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions#ADAPTER", jsonName = "paymentMethodOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final PaymentMethodOptions payment_method_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethodTypes", label = WireField.Label.REPEATED, schemaIndex = 8, tag = 9)
    public final List<String> payment_method_types;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "singleUseMandate", schemaIndex = 15, tag = 16)
    public final String single_use_mandate;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 9, tag = 10)
    public final String status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 10, tag = 11)
    public final String usage;

    public ErrorSetupIntent() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, WinNT.NLS_VALID_LOCALE_MASK, null);
    }

    public /* synthetic */ ErrorSetupIntent(String str, String str2, String str3, String str4, LastSetupError lastSetupError, Map map, SetupIntent.NextAction nextAction, String str5, List list, String str6, String str7, Long l, String str8, Boolean bool, String str9, String str10, String str11, String str12, PaymentMethodOptions paymentMethodOptions, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : lastSetupError, (i & 32) != 0 ? MapsKt.emptyMap() : map, (i & 64) != 0 ? null : nextAction, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? CollectionsKt.emptyList() : list, (i & 512) != 0 ? null : str6, (i & 1024) != 0 ? null : str7, (i & 2048) != 0 ? null : l, (i & 4096) != 0 ? null : str8, (i & 8192) != 0 ? null : bool, (i & 16384) != 0 ? null : str9, (i & 32768) != 0 ? null : str10, (i & 65536) != 0 ? null : str11, (i & 131072) != 0 ? null : str12, (i & 262144) != 0 ? null : paymentMethodOptions, (i & 524288) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorSetupIntent(String str, String str2, String str3, String str4, LastSetupError lastSetupError, Map<String, String> metadata, SetupIntent.NextAction nextAction, String str5, List<String> payment_method_types, String str6, String str7, Long l, String str8, Boolean bool, String str9, String str10, String str11, String str12, PaymentMethodOptions paymentMethodOptions, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.client_secret = str2;
        this.customer = str3;
        this.description = str4;
        this.last_setup_error = lastSetupError;
        this.next_action = nextAction;
        this.payment_method = str5;
        this.status = str6;
        this.usage = str7;
        this.created = l;
        this.latest_attempt = str8;
        this.livemode = bool;
        this.mandate = str9;
        this.single_use_mandate = str10;
        this.application = str11;
        this.on_behalf_of = str12;
        this.payment_method_options = paymentMethodOptions;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        this.payment_method_types = Internal.immutableCopyOf("payment_method_types", payment_method_types);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.client_secret = this.client_secret;
        builder.customer = this.customer;
        builder.description = this.description;
        builder.last_setup_error = this.last_setup_error;
        builder.metadata = this.metadata;
        builder.next_action = this.next_action;
        builder.payment_method = this.payment_method;
        builder.payment_method_types = this.payment_method_types;
        builder.status = this.status;
        builder.usage = this.usage;
        builder.created = this.created;
        builder.latest_attempt = this.latest_attempt;
        builder.livemode = this.livemode;
        builder.mandate = this.mandate;
        builder.single_use_mandate = this.single_use_mandate;
        builder.application = this.application;
        builder.on_behalf_of = this.on_behalf_of;
        builder.payment_method_options = this.payment_method_options;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ErrorSetupIntent)) {
            return false;
        }
        ErrorSetupIntent errorSetupIntent = (ErrorSetupIntent) other;
        return Intrinsics.areEqual(unknownFields(), errorSetupIntent.unknownFields()) && Intrinsics.areEqual(this.id, errorSetupIntent.id) && Intrinsics.areEqual(this.client_secret, errorSetupIntent.client_secret) && Intrinsics.areEqual(this.customer, errorSetupIntent.customer) && Intrinsics.areEqual(this.description, errorSetupIntent.description) && Intrinsics.areEqual(this.last_setup_error, errorSetupIntent.last_setup_error) && Intrinsics.areEqual(this.metadata, errorSetupIntent.metadata) && Intrinsics.areEqual(this.next_action, errorSetupIntent.next_action) && Intrinsics.areEqual(this.payment_method, errorSetupIntent.payment_method) && Intrinsics.areEqual(this.payment_method_types, errorSetupIntent.payment_method_types) && Intrinsics.areEqual(this.status, errorSetupIntent.status) && Intrinsics.areEqual(this.usage, errorSetupIntent.usage) && Intrinsics.areEqual(this.created, errorSetupIntent.created) && Intrinsics.areEqual(this.latest_attempt, errorSetupIntent.latest_attempt) && Intrinsics.areEqual(this.livemode, errorSetupIntent.livemode) && Intrinsics.areEqual(this.mandate, errorSetupIntent.mandate) && Intrinsics.areEqual(this.single_use_mandate, errorSetupIntent.single_use_mandate) && Intrinsics.areEqual(this.application, errorSetupIntent.application) && Intrinsics.areEqual(this.on_behalf_of, errorSetupIntent.on_behalf_of) && Intrinsics.areEqual(this.payment_method_options, errorSetupIntent.payment_method_options);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.client_secret;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.customer;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.description;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        LastSetupError lastSetupError = this.last_setup_error;
        int iHashCode6 = (((iHashCode5 + (lastSetupError != null ? lastSetupError.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        SetupIntent.NextAction nextAction = this.next_action;
        int iHashCode7 = (iHashCode6 + (nextAction != null ? nextAction.hashCode() : 0)) * 37;
        String str5 = this.payment_method;
        int iHashCode8 = (((iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37) + this.payment_method_types.hashCode()) * 37;
        String str6 = this.status;
        int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.usage;
        int iHashCode10 = (iHashCode9 + (str7 != null ? str7.hashCode() : 0)) * 37;
        Long l = this.created;
        int iHashCode11 = (iHashCode10 + (l != null ? l.hashCode() : 0)) * 37;
        String str8 = this.latest_attempt;
        int iHashCode12 = (iHashCode11 + (str8 != null ? str8.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode13 = (iHashCode12 + (bool != null ? bool.hashCode() : 0)) * 37;
        String str9 = this.mandate;
        int iHashCode14 = (iHashCode13 + (str9 != null ? str9.hashCode() : 0)) * 37;
        String str10 = this.single_use_mandate;
        int iHashCode15 = (iHashCode14 + (str10 != null ? str10.hashCode() : 0)) * 37;
        String str11 = this.application;
        int iHashCode16 = (iHashCode15 + (str11 != null ? str11.hashCode() : 0)) * 37;
        String str12 = this.on_behalf_of;
        int iHashCode17 = (iHashCode16 + (str12 != null ? str12.hashCode() : 0)) * 37;
        PaymentMethodOptions paymentMethodOptions = this.payment_method_options;
        int iHashCode18 = iHashCode17 + (paymentMethodOptions != null ? paymentMethodOptions.hashCode() : 0);
        this.hashCode = iHashCode18;
        return iHashCode18;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.client_secret != null) {
            arrayList.add("client_secret=██");
        }
        if (this.customer != null) {
            arrayList.add("customer=" + this.customer);
        }
        if (this.description != null) {
            arrayList.add("description=" + this.description);
        }
        if (this.last_setup_error != null) {
            arrayList.add("last_setup_error=" + this.last_setup_error);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.next_action != null) {
            arrayList.add("next_action=" + this.next_action);
        }
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (!this.payment_method_types.isEmpty()) {
            arrayList.add("payment_method_types=" + Internal.sanitize(this.payment_method_types));
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.usage != null) {
            arrayList.add("usage=" + this.usage);
        }
        if (this.created != null) {
            arrayList.add("created=" + this.created);
        }
        if (this.latest_attempt != null) {
            arrayList.add("latest_attempt=" + this.latest_attempt);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        if (this.mandate != null) {
            arrayList.add("mandate=" + this.mandate);
        }
        if (this.single_use_mandate != null) {
            arrayList.add("single_use_mandate=" + this.single_use_mandate);
        }
        if (this.application != null) {
            arrayList.add("application=" + this.application);
        }
        if (this.on_behalf_of != null) {
            arrayList.add("on_behalf_of=" + this.on_behalf_of);
        }
        if (this.payment_method_options != null) {
            arrayList.add("payment_method_options=" + this.payment_method_options);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ErrorSetupIntent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ErrorSetupIntent copy$default(ErrorSetupIntent errorSetupIntent, String str, String str2, String str3, String str4, LastSetupError lastSetupError, Map map, SetupIntent.NextAction nextAction, String str5, List list, String str6, String str7, Long l, String str8, Boolean bool, String str9, String str10, String str11, String str12, PaymentMethodOptions paymentMethodOptions, ByteString byteString, int i, Object obj) {
        String str13 = (i & 1) != 0 ? errorSetupIntent.id : str;
        return errorSetupIntent.copy(str13, (i & 2) != 0 ? errorSetupIntent.client_secret : str2, (i & 4) != 0 ? errorSetupIntent.customer : str3, (i & 8) != 0 ? errorSetupIntent.description : str4, (i & 16) != 0 ? errorSetupIntent.last_setup_error : lastSetupError, (i & 32) != 0 ? errorSetupIntent.metadata : map, (i & 64) != 0 ? errorSetupIntent.next_action : nextAction, (i & 128) != 0 ? errorSetupIntent.payment_method : str5, (i & 256) != 0 ? errorSetupIntent.payment_method_types : list, (i & 512) != 0 ? errorSetupIntent.status : str6, (i & 1024) != 0 ? errorSetupIntent.usage : str7, (i & 2048) != 0 ? errorSetupIntent.created : l, (i & 4096) != 0 ? errorSetupIntent.latest_attempt : str8, (i & 8192) != 0 ? errorSetupIntent.livemode : bool, (i & 16384) != 0 ? errorSetupIntent.mandate : str9, (i & 32768) != 0 ? errorSetupIntent.single_use_mandate : str10, (i & 65536) != 0 ? errorSetupIntent.application : str11, (i & 131072) != 0 ? errorSetupIntent.on_behalf_of : str12, (i & 262144) != 0 ? errorSetupIntent.payment_method_options : paymentMethodOptions, (i & 524288) != 0 ? errorSetupIntent.unknownFields() : byteString);
    }

    public final ErrorSetupIntent copy(String id, String client_secret, String customer, String description, LastSetupError last_setup_error, Map<String, String> metadata, SetupIntent.NextAction next_action, String payment_method, List<String> payment_method_types, String status, String usage, Long created, String latest_attempt, Boolean livemode, String mandate, String single_use_mandate, String application, String on_behalf_of, PaymentMethodOptions payment_method_options, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ErrorSetupIntent(id, client_secret, customer, description, last_setup_error, metadata, next_action, payment_method, payment_method_types, status, usage, created, latest_attempt, livemode, mandate, single_use_mandate, application, on_behalf_of, payment_method_options, unknownFields);
    }

    /* JADX INFO: compiled from: ErrorSetupIntent.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010!\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\"J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010#J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0014\u0010\u001c\u001a\u00020\u00002\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010 \u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ErrorSetupIntent;", "()V", "application", "", "client_secret", "created", "", "Ljava/lang/Long;", "customer", "description", OfflineStorageConstantsKt.ID, "last_setup_error", "Lcom/stripe/proto/model/rest/LastSetupError;", "latest_attempt", "livemode", "", "Ljava/lang/Boolean;", "mandate", "metadata", "", "next_action", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "on_behalf_of", "payment_method", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "payment_method_types", "", "single_use_mandate", NotificationCompat.CATEGORY_STATUS, "usage", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ErrorSetupIntent, Builder> {
        public String application;
        public String client_secret;
        public Long created;
        public String customer;
        public String description;
        public String id;
        public LastSetupError last_setup_error;
        public String latest_attempt;
        public Boolean livemode;
        public String mandate;
        public SetupIntent.NextAction next_action;
        public String on_behalf_of;
        public String payment_method;
        public PaymentMethodOptions payment_method_options;
        public String single_use_mandate;
        public String status;
        public String usage;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public List<String> payment_method_types = CollectionsKt.emptyList();

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder client_secret(String client_secret) {
            this.client_secret = client_secret;
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

        public final Builder last_setup_error(LastSetupError last_setup_error) {
            this.last_setup_error = last_setup_error;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder next_action(SetupIntent.NextAction next_action) {
            this.next_action = next_action;
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

        public final Builder status(String status) {
            this.status = status;
            return this;
        }

        public final Builder usage(String usage) {
            this.usage = usage;
            return this;
        }

        public final Builder created(Long created) {
            this.created = created;
            return this;
        }

        public final Builder latest_attempt(String latest_attempt) {
            this.latest_attempt = latest_attempt;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder mandate(String mandate) {
            this.mandate = mandate;
            return this;
        }

        public final Builder single_use_mandate(String single_use_mandate) {
            this.single_use_mandate = single_use_mandate;
            return this;
        }

        public final Builder application(String application) {
            this.application = application;
            return this;
        }

        public final Builder on_behalf_of(String on_behalf_of) {
            this.on_behalf_of = on_behalf_of;
            return this;
        }

        public final Builder payment_method_options(PaymentMethodOptions payment_method_options) {
            this.payment_method_options = payment_method_options;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ErrorSetupIntent build() {
            return new ErrorSetupIntent(this.id, this.client_secret, this.customer, this.description, this.last_setup_error, this.metadata, this.next_action, this.payment_method, this.payment_method_types, this.status, this.usage, this.created, this.latest_attempt, this.livemode, this.mandate, this.single_use_mandate, this.application, this.on_behalf_of, this.payment_method_options, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ErrorSetupIntent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorSetupIntent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ErrorSetupIntent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ErrorSetupIntent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ErrorSetupIntent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ErrorSetupIntent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ErrorSetupIntent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ErrorSetupIntent$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.ErrorSetupIntent$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ErrorSetupIntent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.client_secret != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.client_secret);
                }
                if (value.customer != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.customer);
                }
                if (value.description != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.description);
                }
                if (value.last_setup_error != null) {
                    size += LastSetupError.ADAPTER.encodedSizeWithTag(5, value.last_setup_error);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(6, value.metadata);
                if (value.next_action != null) {
                    iEncodedSizeWithTag += SetupIntent.NextAction.ADAPTER.encodedSizeWithTag(7, value.next_action);
                }
                if (value.payment_method != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.payment_method);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(9, value.payment_method_types);
                if (value.status != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.status);
                }
                if (value.usage != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.usage);
                }
                if (value.created != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(12, value.created);
                }
                if (value.latest_attempt != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(13, value.latest_attempt);
                }
                if (value.livemode != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(14, value.livemode);
                }
                if (value.mandate != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(15, value.mandate);
                }
                if (value.single_use_mandate != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(16, value.single_use_mandate);
                }
                if (value.application != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(17, value.application);
                }
                if (value.on_behalf_of != null) {
                    iEncodedSizeWithTag2 += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(18, value.on_behalf_of);
                }
                return value.payment_method_options != null ? iEncodedSizeWithTag2 + PaymentMethodOptions.ADAPTER.encodedSizeWithTag(19, value.payment_method_options) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ErrorSetupIntent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.client_secret != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.client_secret);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.customer);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.description);
                }
                if (value.last_setup_error != null) {
                    LastSetupError.ADAPTER.encodeWithTag(writer, 5, value.last_setup_error);
                }
                getMetadataAdapter().encodeWithTag(writer, 6, value.metadata);
                if (value.next_action != null) {
                    SetupIntent.NextAction.ADAPTER.encodeWithTag(writer, 7, value.next_action);
                }
                if (value.payment_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.payment_method);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 9, value.payment_method_types);
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.status);
                }
                if (value.usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.usage);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 12, value.created);
                }
                if (value.latest_attempt != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.latest_attempt);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.livemode);
                }
                if (value.mandate != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 15, value.mandate);
                }
                if (value.single_use_mandate != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 16, value.single_use_mandate);
                }
                if (value.application != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 17, value.application);
                }
                if (value.on_behalf_of != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 18, value.on_behalf_of);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 19, value.payment_method_options);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ErrorSetupIntent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 19, value.payment_method_options);
                }
                if (value.on_behalf_of != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 18, value.on_behalf_of);
                }
                if (value.application != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 17, value.application);
                }
                if (value.single_use_mandate != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 16, value.single_use_mandate);
                }
                if (value.mandate != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 15, value.mandate);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.livemode);
                }
                if (value.latest_attempt != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.latest_attempt);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 12, value.created);
                }
                if (value.usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.usage);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.status);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 9, value.payment_method_types);
                if (value.payment_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.payment_method);
                }
                if (value.next_action != null) {
                    SetupIntent.NextAction.ADAPTER.encodeWithTag(writer, 7, value.next_action);
                }
                getMetadataAdapter().encodeWithTag(writer, 6, value.metadata);
                if (value.last_setup_error != null) {
                    LastSetupError.ADAPTER.encodeWithTag(writer, 5, value.last_setup_error);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.description);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.customer);
                }
                if (value.client_secret != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.client_secret);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ErrorSetupIntent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                LastSetupError lastSetupErrorDecode = null;
                SetupIntent.NextAction nextActionDecode = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                Long lDecode = null;
                String strDecode7 = null;
                Boolean boolDecode = null;
                String strDecode8 = null;
                String strDecode9 = null;
                String strDecode10 = null;
                String strDecode11 = null;
                PaymentMethodOptions paymentMethodOptionsDecode = null;
                String strDecode12 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode12 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                lastSetupErrorDecode = LastSetupError.ADAPTER.decode(reader);
                                break;
                            case 6:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 7:
                                nextActionDecode = SetupIntent.NextAction.ADAPTER.decode(reader);
                                break;
                            case 8:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 10:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 11:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 12:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 13:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 14:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 15:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 16:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 17:
                                strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 18:
                                strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 19:
                                paymentMethodOptionsDecode = PaymentMethodOptions.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new ErrorSetupIntent(strDecode12, str, strDecode2, strDecode3, lastSetupErrorDecode, linkedHashMap, nextActionDecode, strDecode4, arrayList, strDecode5, strDecode6, lDecode, strDecode7, boolDecode, strDecode8, strDecode9, strDecode10, strDecode11, paymentMethodOptionsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ErrorSetupIntent redact(ErrorSetupIntent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.customer;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.description;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                LastSetupError lastSetupError = value.last_setup_error;
                LastSetupError lastSetupErrorRedact = lastSetupError != null ? LastSetupError.ADAPTER.redact(lastSetupError) : null;
                SetupIntent.NextAction nextAction = value.next_action;
                SetupIntent.NextAction nextActionRedact = nextAction != null ? SetupIntent.NextAction.ADAPTER.redact(nextAction) : null;
                String str4 = value.payment_method;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.status;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.usage;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                Long l = value.created;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str7 = value.latest_attempt;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                Boolean bool = value.livemode;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str8 = value.mandate;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                String str9 = value.single_use_mandate;
                String strRedact9 = str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null;
                String str10 = value.application;
                String strRedact10 = str10 != null ? ProtoAdapter.STRING_VALUE.redact(str10) : null;
                String str11 = value.on_behalf_of;
                String strRedact11 = str11 != null ? ProtoAdapter.STRING_VALUE.redact(str11) : null;
                PaymentMethodOptions paymentMethodOptions = value.payment_method_options;
                return ErrorSetupIntent.copy$default(value, strRedact, null, strRedact2, strRedact3, lastSetupErrorRedact, null, nextActionRedact, strRedact4, null, strRedact5, strRedact6, lRedact, strRedact7, boolRedact, strRedact8, strRedact9, strRedact10, strRedact11, paymentMethodOptions != null ? PaymentMethodOptions.ADAPTER.redact(paymentMethodOptions) : null, ByteString.EMPTY, WinError.ERROR_NOT_OWNER, null);
            }
        };
    }
}
