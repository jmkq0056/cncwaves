package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
import androidx.core.graphics.TypefaceCompat;
import com.google.android.gms.common.internal.ImagesContract;
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
import com.sun.jna.platform.win32.Advapi32;
import com.sun.jna.platform.win32.WinError;
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

/* JADX INFO: compiled from: SetupIntent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 /2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004./01B\u008d\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010 \u001a\u00020!¢\u0006\u0002\u0010\"J\u0093\u0002\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010 \u001a\u00020!¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\u00182\b\u0010(\u001a\u0004\u0018\u00010)H\u0096\u0002J\b\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\u0002H\u0016J\b\u0010-\u001a\u00020\u0004H\u0016R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010#R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010$R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$Builder;", OfflineStorageConstantsKt.ID, "", "client_secret", "customer", "description", "last_setup_error", "Lcom/stripe/proto/model/rest/LastSetupError;", "metadata", "", "next_action", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "payment_method", "payment_method_types", "", NotificationCompat.CATEGORY_STATUS, "usage", "created", "", "latest_attempt", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;", "livemode", "", "mandate", "single_use_mandate", "application", "on_behalf_of", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "cancellation_reason", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "NextAction", "SetupAttempt", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupIntent extends Message<SetupIntent, Builder> {
    public static final ProtoAdapter<SetupIntent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 16, tag = 17)
    public final String application;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "cancellationReason", schemaIndex = 19, tag = 20)
    public final String cancellation_reason;

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

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt#ADAPTER", jsonName = "latestAttempt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final SetupAttempt latest_attempt;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 13, tag = 14)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 14, tag = 15)
    public final String mandate;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$NextAction#ADAPTER", jsonName = "nextAction", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final NextAction next_action;

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

    public SetupIntent() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2097151, null);
    }

    public /* synthetic */ SetupIntent(String str, String str2, String str3, String str4, LastSetupError lastSetupError, Map map, NextAction nextAction, String str5, List list, String str6, String str7, Long l, SetupAttempt setupAttempt, Boolean bool, String str8, String str9, String str10, String str11, PaymentMethodOptions paymentMethodOptions, String str12, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : lastSetupError, (i & 32) != 0 ? MapsKt.emptyMap() : map, (i & 64) != 0 ? null : nextAction, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? CollectionsKt.emptyList() : list, (i & 512) != 0 ? null : str6, (i & 1024) != 0 ? null : str7, (i & 2048) != 0 ? null : l, (i & 4096) != 0 ? null : setupAttempt, (i & 8192) != 0 ? null : bool, (i & 16384) != 0 ? null : str8, (i & 32768) != 0 ? null : str9, (i & 65536) != 0 ? null : str10, (i & 131072) != 0 ? null : str11, (i & 262144) != 0 ? null : paymentMethodOptions, (i & 524288) != 0 ? null : str12, (i & 1048576) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetupIntent(String str, String str2, String str3, String str4, LastSetupError lastSetupError, Map<String, String> metadata, NextAction nextAction, String str5, List<String> payment_method_types, String str6, String str7, Long l, SetupAttempt setupAttempt, Boolean bool, String str8, String str9, String str10, String str11, PaymentMethodOptions paymentMethodOptions, String str12, ByteString unknownFields) {
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
        this.latest_attempt = setupAttempt;
        this.livemode = bool;
        this.mandate = str8;
        this.single_use_mandate = str9;
        this.application = str10;
        this.on_behalf_of = str11;
        this.payment_method_options = paymentMethodOptions;
        this.cancellation_reason = str12;
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
        builder.cancellation_reason = this.cancellation_reason;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SetupIntent)) {
            return false;
        }
        SetupIntent setupIntent = (SetupIntent) other;
        return Intrinsics.areEqual(unknownFields(), setupIntent.unknownFields()) && Intrinsics.areEqual(this.id, setupIntent.id) && Intrinsics.areEqual(this.client_secret, setupIntent.client_secret) && Intrinsics.areEqual(this.customer, setupIntent.customer) && Intrinsics.areEqual(this.description, setupIntent.description) && Intrinsics.areEqual(this.last_setup_error, setupIntent.last_setup_error) && Intrinsics.areEqual(this.metadata, setupIntent.metadata) && Intrinsics.areEqual(this.next_action, setupIntent.next_action) && Intrinsics.areEqual(this.payment_method, setupIntent.payment_method) && Intrinsics.areEqual(this.payment_method_types, setupIntent.payment_method_types) && Intrinsics.areEqual(this.status, setupIntent.status) && Intrinsics.areEqual(this.usage, setupIntent.usage) && Intrinsics.areEqual(this.created, setupIntent.created) && Intrinsics.areEqual(this.latest_attempt, setupIntent.latest_attempt) && Intrinsics.areEqual(this.livemode, setupIntent.livemode) && Intrinsics.areEqual(this.mandate, setupIntent.mandate) && Intrinsics.areEqual(this.single_use_mandate, setupIntent.single_use_mandate) && Intrinsics.areEqual(this.application, setupIntent.application) && Intrinsics.areEqual(this.on_behalf_of, setupIntent.on_behalf_of) && Intrinsics.areEqual(this.payment_method_options, setupIntent.payment_method_options) && Intrinsics.areEqual(this.cancellation_reason, setupIntent.cancellation_reason);
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
        NextAction nextAction = this.next_action;
        int iHashCode7 = (iHashCode6 + (nextAction != null ? nextAction.hashCode() : 0)) * 37;
        String str5 = this.payment_method;
        int iHashCode8 = (((iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37) + this.payment_method_types.hashCode()) * 37;
        String str6 = this.status;
        int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.usage;
        int iHashCode10 = (iHashCode9 + (str7 != null ? str7.hashCode() : 0)) * 37;
        Long l = this.created;
        int iHashCode11 = (iHashCode10 + (l != null ? l.hashCode() : 0)) * 37;
        SetupAttempt setupAttempt = this.latest_attempt;
        int iHashCode12 = (iHashCode11 + (setupAttempt != null ? setupAttempt.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode13 = (iHashCode12 + (bool != null ? bool.hashCode() : 0)) * 37;
        String str8 = this.mandate;
        int iHashCode14 = (iHashCode13 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.single_use_mandate;
        int iHashCode15 = (iHashCode14 + (str9 != null ? str9.hashCode() : 0)) * 37;
        String str10 = this.application;
        int iHashCode16 = (iHashCode15 + (str10 != null ? str10.hashCode() : 0)) * 37;
        String str11 = this.on_behalf_of;
        int iHashCode17 = (iHashCode16 + (str11 != null ? str11.hashCode() : 0)) * 37;
        PaymentMethodOptions paymentMethodOptions = this.payment_method_options;
        int iHashCode18 = (iHashCode17 + (paymentMethodOptions != null ? paymentMethodOptions.hashCode() : 0)) * 37;
        String str12 = this.cancellation_reason;
        int iHashCode19 = iHashCode18 + (str12 != null ? str12.hashCode() : 0);
        this.hashCode = iHashCode19;
        return iHashCode19;
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
        if (this.cancellation_reason != null) {
            arrayList.add("cancellation_reason=" + this.cancellation_reason);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SetupIntent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SetupIntent copy$default(SetupIntent setupIntent, String str, String str2, String str3, String str4, LastSetupError lastSetupError, Map map, NextAction nextAction, String str5, List list, String str6, String str7, Long l, SetupAttempt setupAttempt, Boolean bool, String str8, String str9, String str10, String str11, PaymentMethodOptions paymentMethodOptions, String str12, ByteString byteString, int i, Object obj) {
        String str13 = (i & 1) != 0 ? setupIntent.id : str;
        return setupIntent.copy(str13, (i & 2) != 0 ? setupIntent.client_secret : str2, (i & 4) != 0 ? setupIntent.customer : str3, (i & 8) != 0 ? setupIntent.description : str4, (i & 16) != 0 ? setupIntent.last_setup_error : lastSetupError, (i & 32) != 0 ? setupIntent.metadata : map, (i & 64) != 0 ? setupIntent.next_action : nextAction, (i & 128) != 0 ? setupIntent.payment_method : str5, (i & 256) != 0 ? setupIntent.payment_method_types : list, (i & 512) != 0 ? setupIntent.status : str6, (i & 1024) != 0 ? setupIntent.usage : str7, (i & 2048) != 0 ? setupIntent.created : l, (i & 4096) != 0 ? setupIntent.latest_attempt : setupAttempt, (i & 8192) != 0 ? setupIntent.livemode : bool, (i & 16384) != 0 ? setupIntent.mandate : str8, (i & 32768) != 0 ? setupIntent.single_use_mandate : str9, (i & 65536) != 0 ? setupIntent.application : str10, (i & 131072) != 0 ? setupIntent.on_behalf_of : str11, (i & 262144) != 0 ? setupIntent.payment_method_options : paymentMethodOptions, (i & 524288) != 0 ? setupIntent.cancellation_reason : str12, (i & 1048576) != 0 ? setupIntent.unknownFields() : byteString);
    }

    public final SetupIntent copy(String id, String client_secret, String customer, String description, LastSetupError last_setup_error, Map<String, String> metadata, NextAction next_action, String payment_method, List<String> payment_method_types, String status, String usage, Long created, SetupAttempt latest_attempt, Boolean livemode, String mandate, String single_use_mandate, String application, String on_behalf_of, PaymentMethodOptions payment_method_options, String cancellation_reason, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(payment_method_types, "payment_method_types");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SetupIntent(id, client_secret, customer, description, last_setup_error, metadata, next_action, payment_method, payment_method_types, status, usage, created, latest_attempt, livemode, mandate, single_use_mandate, application, on_behalf_of, payment_method_options, cancellation_reason, unknownFields);
    }

    /* JADX INFO: compiled from: SetupIntent.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010#\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010$J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0015\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010%J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0014\u0010\u001e\u001a\u00020\u00002\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fJ\u0010\u0010 \u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\u0005J\u0010\u0010!\u001a\u00020\u00002\b\u0010!\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0014R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent;", "()V", "application", "", "cancellation_reason", "client_secret", "created", "", "Ljava/lang/Long;", "customer", "description", OfflineStorageConstantsKt.ID, "last_setup_error", "Lcom/stripe/proto/model/rest/LastSetupError;", "latest_attempt", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;", "livemode", "", "Ljava/lang/Boolean;", "mandate", "metadata", "", "next_action", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "on_behalf_of", "payment_method", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "payment_method_types", "", "single_use_mandate", NotificationCompat.CATEGORY_STATUS, "usage", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/SetupIntent$Builder;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/SetupIntent$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SetupIntent, Builder> {
        public String application;
        public String cancellation_reason;
        public String client_secret;
        public Long created;
        public String customer;
        public String description;
        public String id;
        public LastSetupError last_setup_error;
        public SetupAttempt latest_attempt;
        public Boolean livemode;
        public String mandate;
        public NextAction next_action;
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

        public final Builder next_action(NextAction next_action) {
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

        public final Builder latest_attempt(SetupAttempt latest_attempt) {
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

        public final Builder cancellation_reason(String cancellation_reason) {
            this.cancellation_reason = cancellation_reason;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SetupIntent build() {
            return new SetupIntent(this.id, this.client_secret, this.customer, this.description, this.last_setup_error, this.metadata, this.next_action, this.payment_method, this.payment_method_types, this.status, this.usage, this.created, this.latest_attempt, this.livemode, this.mandate, this.single_use_mandate, this.application, this.on_behalf_of, this.payment_method_options, this.cancellation_reason, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SetupIntent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SetupIntent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetupIntent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SetupIntent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.SetupIntent$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SetupIntent value) {
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
                    iEncodedSizeWithTag2 += SetupIntent.SetupAttempt.ADAPTER.encodedSizeWithTag(13, value.latest_attempt);
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
                if (value.payment_method_options != null) {
                    iEncodedSizeWithTag2 += PaymentMethodOptions.ADAPTER.encodedSizeWithTag(19, value.payment_method_options);
                }
                return value.cancellation_reason != null ? iEncodedSizeWithTag2 + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(20, value.cancellation_reason) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SetupIntent value) throws IOException {
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
                    SetupIntent.SetupAttempt.ADAPTER.encodeWithTag(writer, 13, value.latest_attempt);
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
                if (value.cancellation_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 20, value.cancellation_reason);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SetupIntent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.cancellation_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 20, value.cancellation_reason);
                }
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
                    SetupIntent.SetupAttempt.ADAPTER.encodeWithTag(writer, 13, value.latest_attempt);
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
            public SetupIntent decode(ProtoReader reader) throws IOException {
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
                SetupIntent.SetupAttempt setupAttemptDecode = null;
                Boolean boolDecode = null;
                String strDecode7 = null;
                String strDecode8 = null;
                String strDecode9 = null;
                String strDecode10 = null;
                PaymentMethodOptions paymentMethodOptionsDecode = null;
                String strDecode11 = null;
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
                                setupAttemptDecode = SetupIntent.SetupAttempt.ADAPTER.decode(reader);
                                break;
                            case 14:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 15:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 16:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 17:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 18:
                                strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 19:
                                paymentMethodOptionsDecode = PaymentMethodOptions.ADAPTER.decode(reader);
                                break;
                            case 20:
                                strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new SetupIntent(strDecode12, str, strDecode2, strDecode3, lastSetupErrorDecode, linkedHashMap, nextActionDecode, strDecode4, arrayList, strDecode5, strDecode6, lDecode, setupAttemptDecode, boolDecode, strDecode7, strDecode8, strDecode9, strDecode10, paymentMethodOptionsDecode, strDecode11, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SetupIntent redact(SetupIntent value) {
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
                SetupIntent.SetupAttempt setupAttempt = value.latest_attempt;
                SetupIntent.SetupAttempt setupAttemptRedact = setupAttempt != null ? SetupIntent.SetupAttempt.ADAPTER.redact(setupAttempt) : null;
                Boolean bool = value.livemode;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str7 = value.mandate;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                String str8 = value.single_use_mandate;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                String str9 = value.application;
                String strRedact9 = str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null;
                String str10 = value.on_behalf_of;
                String strRedact10 = str10 != null ? ProtoAdapter.STRING_VALUE.redact(str10) : null;
                PaymentMethodOptions paymentMethodOptions = value.payment_method_options;
                PaymentMethodOptions paymentMethodOptionsRedact = paymentMethodOptions != null ? PaymentMethodOptions.ADAPTER.redact(paymentMethodOptions) : null;
                String str11 = value.cancellation_reason;
                return SetupIntent.copy$default(value, strRedact, null, strRedact2, strRedact3, lastSetupErrorRedact, null, nextActionRedact, strRedact4, null, strRedact5, strRedact6, lRedact, setupAttemptRedact, boolRedact, strRedact7, strRedact8, strRedact9, strRedact10, paymentMethodOptionsRedact, str11 != null ? ProtoAdapter.STRING_VALUE.redact(str11) : null, ByteString.EMPTY, WinError.ERROR_NOT_OWNER, null);
            }
        };
    }

    /* JADX INFO: compiled from: SetupIntent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ>\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;", "redirect_to_url", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;", "type", "", com.stripe.stripeterminal.external.models.NextAction.USE_STRIPE_SDK, "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "RedirectToUrl", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NextAction extends Message<NextAction, Builder> {
        public static final ProtoAdapter<NextAction> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$NextAction$RedirectToUrl#ADAPTER", jsonName = "redirectToUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final RedirectToUrl redirect_to_url;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
        public final String type;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "useStripeSdk", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
        public final Map<String, String> use_stripe_sdk;

        public NextAction() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ NextAction(RedirectToUrl redirectToUrl, String str, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : redirectToUrl, (i & 2) != 0 ? null : str, (i & 4) != 0 ? MapsKt.emptyMap() : map, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NextAction(RedirectToUrl redirectToUrl, String str, Map<String, String> use_stripe_sdk, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(use_stripe_sdk, "use_stripe_sdk");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.redirect_to_url = redirectToUrl;
            this.type = str;
            this.use_stripe_sdk = Internal.immutableCopyOf(com.stripe.stripeterminal.external.models.NextAction.USE_STRIPE_SDK, use_stripe_sdk);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.redirect_to_url = this.redirect_to_url;
            builder.type = this.type;
            builder.use_stripe_sdk = this.use_stripe_sdk;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof NextAction)) {
                return false;
            }
            NextAction nextAction = (NextAction) other;
            return Intrinsics.areEqual(unknownFields(), nextAction.unknownFields()) && Intrinsics.areEqual(this.redirect_to_url, nextAction.redirect_to_url) && Intrinsics.areEqual(this.type, nextAction.type) && Intrinsics.areEqual(this.use_stripe_sdk, nextAction.use_stripe_sdk);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            RedirectToUrl redirectToUrl = this.redirect_to_url;
            int iHashCode2 = (iHashCode + (redirectToUrl != null ? redirectToUrl.hashCode() : 0)) * 37;
            String str = this.type;
            int iHashCode3 = ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 37) + this.use_stripe_sdk.hashCode();
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.redirect_to_url != null) {
                arrayList.add("redirect_to_url=" + this.redirect_to_url);
            }
            if (this.type != null) {
                arrayList.add("type=" + this.type);
            }
            if (!this.use_stripe_sdk.isEmpty()) {
                arrayList.add("use_stripe_sdk=" + this.use_stripe_sdk);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "NextAction{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ NextAction copy$default(NextAction nextAction, RedirectToUrl redirectToUrl, String str, Map map, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                redirectToUrl = nextAction.redirect_to_url;
            }
            if ((i & 2) != 0) {
                str = nextAction.type;
            }
            if ((i & 4) != 0) {
                map = nextAction.use_stripe_sdk;
            }
            if ((i & 8) != 0) {
                byteString = nextAction.unknownFields();
            }
            return nextAction.copy(redirectToUrl, str, map, byteString);
        }

        public final NextAction copy(RedirectToUrl redirect_to_url, String type, Map<String, String> use_stripe_sdk, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(use_stripe_sdk, "use_stripe_sdk");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new NextAction(redirect_to_url, type, use_stripe_sdk, unknownFields);
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "()V", "redirect_to_url", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;", "type", "", com.stripe.stripeterminal.external.models.NextAction.USE_STRIPE_SDK, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<NextAction, Builder> {
            public RedirectToUrl redirect_to_url;
            public String type;
            public Map<String, String> use_stripe_sdk = MapsKt.emptyMap();

            public final Builder redirect_to_url(RedirectToUrl redirect_to_url) {
                this.redirect_to_url = redirect_to_url;
                return this;
            }

            public final Builder type(String type) {
                this.type = type;
                return this;
            }

            public final Builder use_stripe_sdk(Map<String, String> use_stripe_sdk) {
                Intrinsics.checkNotNullParameter(use_stripe_sdk, "use_stripe_sdk");
                this.use_stripe_sdk = use_stripe_sdk;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public NextAction build() {
                return new NextAction(this.redirect_to_url, this.type, this.use_stripe_sdk, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ NextAction build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NextAction.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<NextAction>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$NextAction$Companion$ADAPTER$1

                /* JADX INFO: renamed from: use_stripe_sdkAdapter$delegate, reason: from kotlin metadata */
                private final Lazy use_stripe_sdkAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.SetupIntent$NextAction$Companion$ADAPTER$1$use_stripe_sdkAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                    }
                });

                private final ProtoAdapter<Map<String, String>> getUse_stripe_sdkAdapter() {
                    return (ProtoAdapter) this.use_stripe_sdkAdapter.getValue();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(SetupIntent.NextAction value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.redirect_to_url != null) {
                        size += SetupIntent.NextAction.RedirectToUrl.ADAPTER.encodedSizeWithTag(1, value.redirect_to_url);
                    }
                    if (value.type != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.type);
                    }
                    return size + getUse_stripe_sdkAdapter().encodedSizeWithTag(3, value.use_stripe_sdk);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, SetupIntent.NextAction value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.redirect_to_url != null) {
                        SetupIntent.NextAction.RedirectToUrl.ADAPTER.encodeWithTag(writer, 1, value.redirect_to_url);
                    }
                    if (value.type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.type);
                    }
                    getUse_stripe_sdkAdapter().encodeWithTag(writer, 3, value.use_stripe_sdk);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, SetupIntent.NextAction value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    getUse_stripe_sdkAdapter().encodeWithTag(writer, 3, value.use_stripe_sdk);
                    if (value.type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.type);
                    }
                    if (value.redirect_to_url != null) {
                        SetupIntent.NextAction.RedirectToUrl.ADAPTER.encodeWithTag(writer, 1, value.redirect_to_url);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public SetupIntent.NextAction decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    long jBeginMessage = reader.beginMessage();
                    SetupIntent.NextAction.RedirectToUrl redirectToUrlDecode = null;
                    String strDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new SetupIntent.NextAction(redirectToUrlDecode, strDecode, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            redirectToUrlDecode = SetupIntent.NextAction.RedirectToUrl.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else if (iNextTag == 3) {
                            linkedHashMap.putAll(getUse_stripe_sdkAdapter().decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public SetupIntent.NextAction redact(SetupIntent.NextAction value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    SetupIntent.NextAction.RedirectToUrl redirectToUrl = value.redirect_to_url;
                    SetupIntent.NextAction.RedirectToUrl redirectToUrlRedact = redirectToUrl != null ? SetupIntent.NextAction.RedirectToUrl.ADAPTER.redact(redirectToUrl) : null;
                    String str = value.type;
                    return SetupIntent.NextAction.copy$default(value, redirectToUrlRedact, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, null, ByteString.EMPTY, 4, null);
                }
            };
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl$Builder;", "return_url", "", ImagesContract.URL, "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class RedirectToUrl extends Message<RedirectToUrl, Builder> {
            public static final ProtoAdapter<RedirectToUrl> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "returnUrl", schemaIndex = 0, tag = 1)
            public final String return_url;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
            public final String url;

            public RedirectToUrl() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ RedirectToUrl(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RedirectToUrl(String str, String str2, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.return_url = str;
                this.url = str2;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.return_url = this.return_url;
                builder.url = this.url;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof RedirectToUrl)) {
                    return false;
                }
                RedirectToUrl redirectToUrl = (RedirectToUrl) other;
                return Intrinsics.areEqual(unknownFields(), redirectToUrl.unknownFields()) && Intrinsics.areEqual(this.return_url, redirectToUrl.return_url) && Intrinsics.areEqual(this.url, redirectToUrl.url);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.return_url;
                int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                String str2 = this.url;
                int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
                this.hashCode = iHashCode3;
                return iHashCode3;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.return_url != null) {
                    arrayList.add("return_url=" + this.return_url);
                }
                if (this.url != null) {
                    arrayList.add("url=" + this.url);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "RedirectToUrl{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ RedirectToUrl copy$default(RedirectToUrl redirectToUrl, String str, String str2, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = redirectToUrl.return_url;
                }
                if ((i & 2) != 0) {
                    str2 = redirectToUrl.url;
                }
                if ((i & 4) != 0) {
                    byteString = redirectToUrl.unknownFields();
                }
                return redirectToUrl.copy(str, str2, byteString);
            }

            public final RedirectToUrl copy(String return_url, String url, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new RedirectToUrl(return_url, url, unknownFields);
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;", "()V", "return_url", "", ImagesContract.URL, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<RedirectToUrl, Builder> {
                public String return_url;
                public String url;

                public final Builder return_url(String return_url) {
                    this.return_url = return_url;
                    return this;
                }

                public final Builder url(String url) {
                    this.url = url;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public RedirectToUrl build() {
                    return new RedirectToUrl(this.return_url, this.url, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$NextAction$RedirectToUrl$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ RedirectToUrl build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RedirectToUrl.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<RedirectToUrl>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$NextAction$RedirectToUrl$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(SetupIntent.NextAction.RedirectToUrl value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.return_url != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.return_url);
                        }
                        return value.url != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.url) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, SetupIntent.NextAction.RedirectToUrl value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.return_url != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.return_url);
                        }
                        if (value.url != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.url);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, SetupIntent.NextAction.RedirectToUrl value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.url != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.url);
                        }
                        if (value.return_url != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.return_url);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public SetupIntent.NextAction.RedirectToUrl redact(SetupIntent.NextAction.RedirectToUrl value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.return_url;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        String str2 = value.url;
                        return value.copy(strRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public SetupIntent.NextAction.RedirectToUrl decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        String strDecode2 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new SetupIntent.NextAction.RedirectToUrl(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 2) {
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }

    /* JADX INFO: compiled from: SetupIntent.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004#$%&B«\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017J±\u0001\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;", OfflineStorageConstantsKt.ID, "", "object_", "application", "created", "", "customer", "livemode", "", "on_behalf_of", "payment_method", "payment_method_details", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;", "setup_error", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;", "setup_intent", NotificationCompat.CATEGORY_STATUS, "usage", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "PaymentMethodDetails", "SetupError", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SetupAttempt extends Message<SetupAttempt, Builder> {
        public static final ProtoAdapter<SetupAttempt> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
        public final String application;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 3, tag = 4)
        public final Long created;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
        public final String customer;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
        public final String id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 5, tag = 6)
        public final Boolean livemode;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "object", schemaIndex = 1, tag = 2)
        public final String object_;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "onBehalfOf", schemaIndex = 6, tag = 7)
        public final String on_behalf_of;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentMethod", schemaIndex = 7, tag = 8)
        public final String payment_method;

        @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails#ADAPTER", jsonName = "paymentMethodDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
        public final PaymentMethodDetails payment_method_details;

        @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$SetupError#ADAPTER", jsonName = "setupError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
        public final SetupError setup_error;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "setupIntent", schemaIndex = 10, tag = 11)
        public final String setup_intent;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 11, tag = 12)
        public final String status;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 12, tag = 13)
        public final String usage;

        public SetupAttempt() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Advapi32.MAX_VALUE_NAME, null);
        }

        public /* synthetic */ SetupAttempt(String str, String str2, String str3, Long l, String str4, Boolean bool, String str5, String str6, PaymentMethodDetails paymentMethodDetails, SetupError setupError, String str7, String str8, String str9, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : paymentMethodDetails, (i & 512) != 0 ? null : setupError, (i & 1024) != 0 ? null : str7, (i & 2048) != 0 ? null : str8, (i & 4096) == 0 ? str9 : null, (i & 8192) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SetupAttempt(String str, String str2, String str3, Long l, String str4, Boolean bool, String str5, String str6, PaymentMethodDetails paymentMethodDetails, SetupError setupError, String str7, String str8, String str9, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.id = str;
            this.object_ = str2;
            this.application = str3;
            this.created = l;
            this.customer = str4;
            this.livemode = bool;
            this.on_behalf_of = str5;
            this.payment_method = str6;
            this.payment_method_details = paymentMethodDetails;
            this.setup_error = setupError;
            this.setup_intent = str7;
            this.status = str8;
            this.usage = str9;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.id = this.id;
            builder.object_ = this.object_;
            builder.application = this.application;
            builder.created = this.created;
            builder.customer = this.customer;
            builder.livemode = this.livemode;
            builder.on_behalf_of = this.on_behalf_of;
            builder.payment_method = this.payment_method;
            builder.payment_method_details = this.payment_method_details;
            builder.setup_error = this.setup_error;
            builder.setup_intent = this.setup_intent;
            builder.status = this.status;
            builder.usage = this.usage;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SetupAttempt)) {
                return false;
            }
            SetupAttempt setupAttempt = (SetupAttempt) other;
            return Intrinsics.areEqual(unknownFields(), setupAttempt.unknownFields()) && Intrinsics.areEqual(this.id, setupAttempt.id) && Intrinsics.areEqual(this.object_, setupAttempt.object_) && Intrinsics.areEqual(this.application, setupAttempt.application) && Intrinsics.areEqual(this.created, setupAttempt.created) && Intrinsics.areEqual(this.customer, setupAttempt.customer) && Intrinsics.areEqual(this.livemode, setupAttempt.livemode) && Intrinsics.areEqual(this.on_behalf_of, setupAttempt.on_behalf_of) && Intrinsics.areEqual(this.payment_method, setupAttempt.payment_method) && Intrinsics.areEqual(this.payment_method_details, setupAttempt.payment_method_details) && Intrinsics.areEqual(this.setup_error, setupAttempt.setup_error) && Intrinsics.areEqual(this.setup_intent, setupAttempt.setup_intent) && Intrinsics.areEqual(this.status, setupAttempt.status) && Intrinsics.areEqual(this.usage, setupAttempt.usage);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.id;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.object_;
            int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.application;
            int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
            Long l = this.created;
            int iHashCode5 = (iHashCode4 + (l != null ? l.hashCode() : 0)) * 37;
            String str4 = this.customer;
            int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
            Boolean bool = this.livemode;
            int iHashCode7 = (iHashCode6 + (bool != null ? bool.hashCode() : 0)) * 37;
            String str5 = this.on_behalf_of;
            int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
            String str6 = this.payment_method;
            int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 37;
            PaymentMethodDetails paymentMethodDetails = this.payment_method_details;
            int iHashCode10 = (iHashCode9 + (paymentMethodDetails != null ? paymentMethodDetails.hashCode() : 0)) * 37;
            SetupError setupError = this.setup_error;
            int iHashCode11 = (iHashCode10 + (setupError != null ? setupError.hashCode() : 0)) * 37;
            String str7 = this.setup_intent;
            int iHashCode12 = (iHashCode11 + (str7 != null ? str7.hashCode() : 0)) * 37;
            String str8 = this.status;
            int iHashCode13 = (iHashCode12 + (str8 != null ? str8.hashCode() : 0)) * 37;
            String str9 = this.usage;
            int iHashCode14 = iHashCode13 + (str9 != null ? str9.hashCode() : 0);
            this.hashCode = iHashCode14;
            return iHashCode14;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.id != null) {
                arrayList.add("id=" + this.id);
            }
            if (this.object_ != null) {
                arrayList.add("object_=" + this.object_);
            }
            if (this.application != null) {
                arrayList.add("application=" + this.application);
            }
            if (this.created != null) {
                arrayList.add("created=" + this.created);
            }
            if (this.customer != null) {
                arrayList.add("customer=" + this.customer);
            }
            if (this.livemode != null) {
                arrayList.add("livemode=" + this.livemode);
            }
            if (this.on_behalf_of != null) {
                arrayList.add("on_behalf_of=" + this.on_behalf_of);
            }
            if (this.payment_method != null) {
                arrayList.add("payment_method=" + this.payment_method);
            }
            if (this.payment_method_details != null) {
                arrayList.add("payment_method_details=" + this.payment_method_details);
            }
            if (this.setup_error != null) {
                arrayList.add("setup_error=" + this.setup_error);
            }
            if (this.setup_intent != null) {
                arrayList.add("setup_intent=" + this.setup_intent);
            }
            if (this.status != null) {
                arrayList.add("status=" + this.status);
            }
            if (this.usage != null) {
                arrayList.add("usage=" + this.usage);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SetupAttempt{", "}", 0, null, null, 56, null);
        }

        public final SetupAttempt copy(String id, String object_, String application, Long created, String customer, Boolean livemode, String on_behalf_of, String payment_method, PaymentMethodDetails payment_method_details, SetupError setup_error, String setup_intent, String status, String usage, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SetupAttempt(id, object_, application, created, customer, livemode, on_behalf_of, payment_method, payment_method_details, setup_error, setup_intent, status, usage, unknownFields);
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0019J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;", "()V", "application", "", "created", "", "Ljava/lang/Long;", "customer", OfflineStorageConstantsKt.ID, "livemode", "", "Ljava/lang/Boolean;", "object_", "on_behalf_of", "payment_method", "payment_method_details", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;", "setup_error", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;", "setup_intent", NotificationCompat.CATEGORY_STATUS, "usage", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SetupAttempt, Builder> {
            public String application;
            public Long created;
            public String customer;
            public String id;
            public Boolean livemode;
            public String object_;
            public String on_behalf_of;
            public String payment_method;
            public PaymentMethodDetails payment_method_details;
            public SetupError setup_error;
            public String setup_intent;
            public String status;
            public String usage;

            public final Builder id(String id) {
                this.id = id;
                return this;
            }

            public final Builder object_(String object_) {
                this.object_ = object_;
                return this;
            }

            public final Builder application(String application) {
                this.application = application;
                return this;
            }

            public final Builder created(Long created) {
                this.created = created;
                return this;
            }

            public final Builder customer(String customer) {
                this.customer = customer;
                return this;
            }

            public final Builder livemode(Boolean livemode) {
                this.livemode = livemode;
                return this;
            }

            public final Builder on_behalf_of(String on_behalf_of) {
                this.on_behalf_of = on_behalf_of;
                return this;
            }

            public final Builder payment_method(String payment_method) {
                this.payment_method = payment_method;
                return this;
            }

            public final Builder payment_method_details(PaymentMethodDetails payment_method_details) {
                this.payment_method_details = payment_method_details;
                return this;
            }

            public final Builder setup_error(SetupError setup_error) {
                this.setup_error = setup_error;
                return this;
            }

            public final Builder setup_intent(String setup_intent) {
                this.setup_intent = setup_intent;
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

            @Override // com.squareup.wire.Message.Builder
            public SetupAttempt build() {
                return new SetupAttempt(this.id, this.object_, this.application, this.created, this.customer, this.livemode, this.on_behalf_of, this.payment_method, this.payment_method_details, this.setup_error, this.setup_intent, this.status, this.usage, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SetupAttempt build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetupAttempt.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SetupAttempt>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$SetupAttempt$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(SetupIntent.SetupAttempt value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.id != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                    }
                    if (value.object_ != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.object_);
                    }
                    if (value.application != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.application);
                    }
                    if (value.created != null) {
                        size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(4, value.created);
                    }
                    if (value.customer != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.customer);
                    }
                    if (value.livemode != null) {
                        size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.livemode);
                    }
                    if (value.on_behalf_of != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.on_behalf_of);
                    }
                    if (value.payment_method != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.payment_method);
                    }
                    if (value.payment_method_details != null) {
                        size += SetupIntent.SetupAttempt.PaymentMethodDetails.ADAPTER.encodedSizeWithTag(9, value.payment_method_details);
                    }
                    if (value.setup_error != null) {
                        size += SetupIntent.SetupAttempt.SetupError.ADAPTER.encodedSizeWithTag(10, value.setup_error);
                    }
                    if (value.setup_intent != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.setup_intent);
                    }
                    if (value.status != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(12, value.status);
                    }
                    return value.usage != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(13, value.usage) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, SetupIntent.SetupAttempt value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.id != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                    }
                    if (value.object_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.object_);
                    }
                    if (value.application != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.application);
                    }
                    if (value.created != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.created);
                    }
                    if (value.customer != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.customer);
                    }
                    if (value.livemode != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.livemode);
                    }
                    if (value.on_behalf_of != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.on_behalf_of);
                    }
                    if (value.payment_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.payment_method);
                    }
                    if (value.payment_method_details != null) {
                        SetupIntent.SetupAttempt.PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 9, value.payment_method_details);
                    }
                    if (value.setup_error != null) {
                        SetupIntent.SetupAttempt.SetupError.ADAPTER.encodeWithTag(writer, 10, value.setup_error);
                    }
                    if (value.setup_intent != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.setup_intent);
                    }
                    if (value.status != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.status);
                    }
                    if (value.usage != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.usage);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, SetupIntent.SetupAttempt value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.usage != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.usage);
                    }
                    if (value.status != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.status);
                    }
                    if (value.setup_intent != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.setup_intent);
                    }
                    if (value.setup_error != null) {
                        SetupIntent.SetupAttempt.SetupError.ADAPTER.encodeWithTag(writer, 10, value.setup_error);
                    }
                    if (value.payment_method_details != null) {
                        SetupIntent.SetupAttempt.PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 9, value.payment_method_details);
                    }
                    if (value.payment_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.payment_method);
                    }
                    if (value.on_behalf_of != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.on_behalf_of);
                    }
                    if (value.livemode != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.livemode);
                    }
                    if (value.customer != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.customer);
                    }
                    if (value.created != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.created);
                    }
                    if (value.application != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.application);
                    }
                    if (value.object_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.object_);
                    }
                    if (value.id != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public SetupIntent.SetupAttempt redact(SetupIntent.SetupAttempt value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.id;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    String str2 = value.object_;
                    String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                    String str3 = value.application;
                    String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                    Long l = value.created;
                    Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                    String str4 = value.customer;
                    String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                    Boolean bool = value.livemode;
                    Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                    String str5 = value.on_behalf_of;
                    String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                    String str6 = value.payment_method;
                    String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                    SetupIntent.SetupAttempt.PaymentMethodDetails paymentMethodDetails = value.payment_method_details;
                    SetupIntent.SetupAttempt.PaymentMethodDetails paymentMethodDetailsRedact = paymentMethodDetails != null ? SetupIntent.SetupAttempt.PaymentMethodDetails.ADAPTER.redact(paymentMethodDetails) : null;
                    SetupIntent.SetupAttempt.SetupError setupError = value.setup_error;
                    SetupIntent.SetupAttempt.SetupError setupErrorRedact = setupError != null ? SetupIntent.SetupAttempt.SetupError.ADAPTER.redact(setupError) : null;
                    String str7 = value.setup_intent;
                    String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                    String str8 = value.status;
                    String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                    String str9 = value.usage;
                    return value.copy(strRedact, strRedact2, strRedact3, lRedact, strRedact4, boolRedact, strRedact5, strRedact6, paymentMethodDetailsRedact, setupErrorRedact, strRedact7, strRedact8, str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public SetupIntent.SetupAttempt decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    String strDecode2 = null;
                    Long lDecode = null;
                    String strDecode3 = null;
                    Boolean boolDecode = null;
                    String strDecode4 = null;
                    String strDecode5 = null;
                    SetupIntent.SetupAttempt.PaymentMethodDetails paymentMethodDetailsDecode = null;
                    SetupIntent.SetupAttempt.SetupError setupErrorDecode = null;
                    String strDecode6 = null;
                    String strDecode7 = null;
                    String strDecode8 = null;
                    String strDecode9 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        String str = strDecode;
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 2:
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                    continue;
                                case 3:
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 4:
                                    lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                    break;
                                case 5:
                                    strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 6:
                                    boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                    break;
                                case 7:
                                    strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 8:
                                    strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 9:
                                    paymentMethodDetailsDecode = SetupIntent.SetupAttempt.PaymentMethodDetails.ADAPTER.decode(reader);
                                    break;
                                case 10:
                                    setupErrorDecode = SetupIntent.SetupAttempt.SetupError.ADAPTER.decode(reader);
                                    break;
                                case 11:
                                    strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 12:
                                    strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 13:
                                    strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                            strDecode = str;
                        } else {
                            return new SetupIntent.SetupAttempt(strDecode9, str, strDecode2, lDecode, strDecode3, boolDecode, strDecode4, strDecode5, paymentMethodDetailsDecode, setupErrorDecode, strDecode6, strDecode7, strDecode8, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;", "type", "", "card_present", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;", "interac_present", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "CardPresent", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class PaymentMethodDetails extends Message<PaymentMethodDetails, Builder> {
            public static final ProtoAdapter<PaymentMethodDetails> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent#ADAPTER", jsonName = "cardPresent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final CardPresent card_present;

            @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent#ADAPTER", jsonName = "interacPresent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
            public final CardPresent interac_present;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
            public final String type;

            public PaymentMethodDetails() {
                this(null, null, null, null, 15, null);
            }

            public /* synthetic */ PaymentMethodDetails(String str, CardPresent cardPresent, CardPresent cardPresent2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : cardPresent, (i & 4) != 0 ? null : cardPresent2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public PaymentMethodDetails(String str, CardPresent cardPresent, CardPresent cardPresent2, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.type = str;
                this.card_present = cardPresent;
                this.interac_present = cardPresent2;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.type = this.type;
                builder.card_present = this.card_present;
                builder.interac_present = this.interac_present;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof PaymentMethodDetails)) {
                    return false;
                }
                PaymentMethodDetails paymentMethodDetails = (PaymentMethodDetails) other;
                return Intrinsics.areEqual(unknownFields(), paymentMethodDetails.unknownFields()) && Intrinsics.areEqual(this.type, paymentMethodDetails.type) && Intrinsics.areEqual(this.card_present, paymentMethodDetails.card_present) && Intrinsics.areEqual(this.interac_present, paymentMethodDetails.interac_present);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.type;
                int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                CardPresent cardPresent = this.card_present;
                int iHashCode3 = (iHashCode2 + (cardPresent != null ? cardPresent.hashCode() : 0)) * 37;
                CardPresent cardPresent2 = this.interac_present;
                int iHashCode4 = iHashCode3 + (cardPresent2 != null ? cardPresent2.hashCode() : 0);
                this.hashCode = iHashCode4;
                return iHashCode4;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.type != null) {
                    arrayList.add("type=" + this.type);
                }
                if (this.card_present != null) {
                    arrayList.add("card_present=" + this.card_present);
                }
                if (this.interac_present != null) {
                    arrayList.add("interac_present=" + this.interac_present);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentMethodDetails{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ PaymentMethodDetails copy$default(PaymentMethodDetails paymentMethodDetails, String str, CardPresent cardPresent, CardPresent cardPresent2, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = paymentMethodDetails.type;
                }
                if ((i & 2) != 0) {
                    cardPresent = paymentMethodDetails.card_present;
                }
                if ((i & 4) != 0) {
                    cardPresent2 = paymentMethodDetails.interac_present;
                }
                if ((i & 8) != 0) {
                    byteString = paymentMethodDetails.unknownFields();
                }
                return paymentMethodDetails.copy(str, cardPresent, cardPresent2, byteString);
            }

            public final PaymentMethodDetails copy(String type, CardPresent card_present, CardPresent interac_present, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new PaymentMethodDetails(type, card_present, interac_present, unknownFields);
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;", "()V", "card_present", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;", "interac_present", "type", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<PaymentMethodDetails, Builder> {
                public CardPresent card_present;
                public CardPresent interac_present;
                public String type;

                public final Builder type(String type) {
                    this.type = type;
                    return this;
                }

                public final Builder card_present(CardPresent card_present) {
                    this.card_present = card_present;
                    return this;
                }

                public final Builder interac_present(CardPresent interac_present) {
                    this.interac_present = interac_present;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public PaymentMethodDetails build() {
                    return new PaymentMethodDetails(this.type, this.card_present, this.interac_present, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ PaymentMethodDetails build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentMethodDetails.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<PaymentMethodDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(SetupIntent.SetupAttempt.PaymentMethodDetails value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.type != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.type);
                        }
                        if (value.card_present != null) {
                            size += SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.encodedSizeWithTag(2, value.card_present);
                        }
                        return value.interac_present != null ? size + SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.encodedSizeWithTag(3, value.interac_present) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, SetupIntent.SetupAttempt.PaymentMethodDetails value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.type != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                        }
                        if (value.card_present != null) {
                            SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.encodeWithTag(writer, 2, value.card_present);
                        }
                        if (value.interac_present != null) {
                            SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.encodeWithTag(writer, 3, value.interac_present);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, SetupIntent.SetupAttempt.PaymentMethodDetails value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.interac_present != null) {
                            SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.encodeWithTag(writer, 3, value.interac_present);
                        }
                        if (value.card_present != null) {
                            SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.encodeWithTag(writer, 2, value.card_present);
                        }
                        if (value.type != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public SetupIntent.SetupAttempt.PaymentMethodDetails redact(SetupIntent.SetupAttempt.PaymentMethodDetails value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.type;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresent = value.card_present;
                        SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresentRedact = cardPresent != null ? SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.redact(cardPresent) : null;
                        SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresent2 = value.interac_present;
                        return value.copy(strRedact, cardPresentRedact, cardPresent2 != null ? SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.redact(cardPresent2) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public SetupIntent.SetupAttempt.PaymentMethodDetails decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresentDecode = null;
                        SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent cardPresentDecode2 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new SetupIntent.SetupAttempt.PaymentMethodDetails(strDecode, cardPresentDecode, cardPresentDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 2) {
                                cardPresentDecode = SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.decode(reader);
                            } else if (iNextTag == 3) {
                                cardPresentDecode2 = SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent.ADAPTER.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;", "generated_card", "", "emv_auth_data", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class CardPresent extends Message<CardPresent, Builder> {
                public static final ProtoAdapter<CardPresent> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "emvAuthData", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
                public final String emv_auth_data;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "generatedCard", schemaIndex = 0, tag = 1)
                public final String generated_card;

                public CardPresent() {
                    this(null, null, null, 7, null);
                }

                public /* synthetic */ CardPresent(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CardPresent(String str, String str2, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.generated_card = str;
                    this.emv_auth_data = str2;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.generated_card = this.generated_card;
                    builder.emv_auth_data = this.emv_auth_data;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof CardPresent)) {
                        return false;
                    }
                    CardPresent cardPresent = (CardPresent) other;
                    return Intrinsics.areEqual(unknownFields(), cardPresent.unknownFields()) && Intrinsics.areEqual(this.generated_card, cardPresent.generated_card) && Intrinsics.areEqual(this.emv_auth_data, cardPresent.emv_auth_data);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = unknownFields().hashCode() * 37;
                    String str = this.generated_card;
                    int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                    String str2 = this.emv_auth_data;
                    int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
                    this.hashCode = iHashCode3;
                    return iHashCode3;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    if (this.generated_card != null) {
                        arrayList.add("generated_card=" + this.generated_card);
                    }
                    if (this.emv_auth_data != null) {
                        arrayList.add("emv_auth_data=██");
                    }
                    return CollectionsKt.joinToString$default(arrayList, ", ", "CardPresent{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ CardPresent copy$default(CardPresent cardPresent, String str, String str2, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = cardPresent.generated_card;
                    }
                    if ((i & 2) != 0) {
                        str2 = cardPresent.emv_auth_data;
                    }
                    if ((i & 4) != 0) {
                        byteString = cardPresent.unknownFields();
                    }
                    return cardPresent.copy(str, str2, byteString);
                }

                public final CardPresent copy(String generated_card, String emv_auth_data, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new CardPresent(generated_card, emv_auth_data, unknownFields);
                }

                /* JADX INFO: compiled from: SetupIntent.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;", "()V", "emv_auth_data", "", "generated_card", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<CardPresent, Builder> {
                    public String emv_auth_data;
                    public String generated_card;

                    public final Builder generated_card(String generated_card) {
                        this.generated_card = generated_card;
                        return this;
                    }

                    public final Builder emv_auth_data(String emv_auth_data) {
                        this.emv_auth_data = emv_auth_data;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public CardPresent build() {
                        return new CardPresent(this.generated_card, this.emv_auth_data, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: SetupIntent.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ CardPresent build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardPresent.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<CardPresent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (value.generated_card != null) {
                                size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.generated_card);
                            }
                            return value.emv_auth_data != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.emv_auth_data) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.generated_card != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.generated_card);
                            }
                            if (value.emv_auth_data != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.emv_auth_data);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (value.emv_auth_data != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.emv_auth_data);
                            }
                            if (value.generated_card != null) {
                                ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.generated_card);
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent redact(SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            String str = value.generated_card;
                            return value.copy(str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, null, ByteString.EMPTY);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = null;
                            String strDecode2 = null;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new SetupIntent.SetupAttempt.PaymentMethodDetails.CardPresent(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else if (iNextTag == 2) {
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    };
                }
            }
        }

        /* JADX INFO: compiled from: SetupIntent.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBo\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJp\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;", "code", "", "decline_code", "doc_url", "message", "param_", "payment_method", "Lcom/stripe/proto/model/rest/PaymentMethod;", "payment_method_type", "type", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class SetupError extends Message<SetupError, Builder> {
            public static final ProtoAdapter<SetupError> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
            public final String code;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "declineCode", schemaIndex = 1, tag = 2)
            public final String decline_code;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "docUrl", schemaIndex = 2, tag = 3)
            public final String doc_url;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 3, tag = 4)
            public final String message;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "param", schemaIndex = 4, tag = 5)
            public final String param_;

            @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER", jsonName = "paymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
            public final PaymentMethod payment_method;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentMethodType", schemaIndex = 6, tag = 7)
            public final String payment_method_type;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 7, tag = 8)
            public final String type;

            public SetupError() {
                this(null, null, null, null, null, null, null, null, null, 511, null);
            }

            public /* synthetic */ SetupError(String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : paymentMethod, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetupError(String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, String str7, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.code = str;
                this.decline_code = str2;
                this.doc_url = str3;
                this.message = str4;
                this.param_ = str5;
                this.payment_method = paymentMethod;
                this.payment_method_type = str6;
                this.type = str7;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.code = this.code;
                builder.decline_code = this.decline_code;
                builder.doc_url = this.doc_url;
                builder.message = this.message;
                builder.param_ = this.param_;
                builder.payment_method = this.payment_method;
                builder.payment_method_type = this.payment_method_type;
                builder.type = this.type;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof SetupError)) {
                    return false;
                }
                SetupError setupError = (SetupError) other;
                return Intrinsics.areEqual(unknownFields(), setupError.unknownFields()) && Intrinsics.areEqual(this.code, setupError.code) && Intrinsics.areEqual(this.decline_code, setupError.decline_code) && Intrinsics.areEqual(this.doc_url, setupError.doc_url) && Intrinsics.areEqual(this.message, setupError.message) && Intrinsics.areEqual(this.param_, setupError.param_) && Intrinsics.areEqual(this.payment_method, setupError.payment_method) && Intrinsics.areEqual(this.payment_method_type, setupError.payment_method_type) && Intrinsics.areEqual(this.type, setupError.type);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.code;
                int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                String str2 = this.decline_code;
                int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
                String str3 = this.doc_url;
                int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
                String str4 = this.message;
                int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
                String str5 = this.param_;
                int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
                PaymentMethod paymentMethod = this.payment_method;
                int iHashCode7 = (iHashCode6 + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
                String str6 = this.payment_method_type;
                int iHashCode8 = (iHashCode7 + (str6 != null ? str6.hashCode() : 0)) * 37;
                String str7 = this.type;
                int iHashCode9 = iHashCode8 + (str7 != null ? str7.hashCode() : 0);
                this.hashCode = iHashCode9;
                return iHashCode9;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.code != null) {
                    arrayList.add("code=" + this.code);
                }
                if (this.decline_code != null) {
                    arrayList.add("decline_code=" + this.decline_code);
                }
                if (this.doc_url != null) {
                    arrayList.add("doc_url=" + this.doc_url);
                }
                if (this.message != null) {
                    arrayList.add("message=" + this.message);
                }
                if (this.param_ != null) {
                    arrayList.add("param_=" + this.param_);
                }
                if (this.payment_method != null) {
                    arrayList.add("payment_method=" + this.payment_method);
                }
                if (this.payment_method_type != null) {
                    arrayList.add("payment_method_type=" + this.payment_method_type);
                }
                if (this.type != null) {
                    arrayList.add("type=" + this.type);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "SetupError{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ SetupError copy$default(SetupError setupError, String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, String str7, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = setupError.code;
                }
                if ((i & 2) != 0) {
                    str2 = setupError.decline_code;
                }
                if ((i & 4) != 0) {
                    str3 = setupError.doc_url;
                }
                if ((i & 8) != 0) {
                    str4 = setupError.message;
                }
                if ((i & 16) != 0) {
                    str5 = setupError.param_;
                }
                if ((i & 32) != 0) {
                    paymentMethod = setupError.payment_method;
                }
                if ((i & 64) != 0) {
                    str6 = setupError.payment_method_type;
                }
                if ((i & 128) != 0) {
                    str7 = setupError.type;
                }
                if ((i & 256) != 0) {
                    byteString = setupError.unknownFields();
                }
                String str8 = str7;
                ByteString byteString2 = byteString;
                PaymentMethod paymentMethod2 = paymentMethod;
                String str9 = str6;
                String str10 = str5;
                String str11 = str3;
                return setupError.copy(str, str2, str11, str4, str10, paymentMethod2, str9, str8, byteString2);
            }

            public final SetupError copy(String code, String decline_code, String doc_url, String message, String param_, PaymentMethod payment_method, String payment_method_type, String type, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new SetupError(code, decline_code, doc_url, message, param_, payment_method, payment_method_type, type, unknownFields);
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;", "()V", "code", "", "decline_code", "doc_url", "message", "param_", "payment_method", "Lcom/stripe/proto/model/rest/PaymentMethod;", "payment_method_type", "type", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<SetupError, Builder> {
                public String code;
                public String decline_code;
                public String doc_url;
                public String message;
                public String param_;
                public PaymentMethod payment_method;
                public String payment_method_type;
                public String type;

                public final Builder code(String code) {
                    this.code = code;
                    return this;
                }

                public final Builder decline_code(String decline_code) {
                    this.decline_code = decline_code;
                    return this;
                }

                public final Builder doc_url(String doc_url) {
                    this.doc_url = doc_url;
                    return this;
                }

                public final Builder message(String message) {
                    this.message = message;
                    return this;
                }

                public final Builder param_(String param_) {
                    this.param_ = param_;
                    return this;
                }

                public final Builder payment_method(PaymentMethod payment_method) {
                    this.payment_method = payment_method;
                    return this;
                }

                public final Builder payment_method_type(String payment_method_type) {
                    this.payment_method_type = payment_method_type;
                    return this;
                }

                public final Builder type(String type) {
                    this.type = type;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public SetupError build() {
                    return new SetupError(this.code, this.decline_code, this.doc_url, this.message, this.param_, this.payment_method, this.payment_method_type, this.type, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: SetupIntent.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ SetupError build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetupError.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<SetupError>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(SetupIntent.SetupAttempt.SetupError value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.code != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.code);
                        }
                        if (value.decline_code != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.decline_code);
                        }
                        if (value.doc_url != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.doc_url);
                        }
                        if (value.message != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.message);
                        }
                        if (value.param_ != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.param_);
                        }
                        if (value.payment_method != null) {
                            size += PaymentMethod.ADAPTER.encodedSizeWithTag(6, value.payment_method);
                        }
                        if (value.payment_method_type != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.payment_method_type);
                        }
                        return value.type != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.type) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, SetupIntent.SetupAttempt.SetupError value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.code != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.code);
                        }
                        if (value.decline_code != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.decline_code);
                        }
                        if (value.doc_url != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.doc_url);
                        }
                        if (value.message != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.message);
                        }
                        if (value.param_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.param_);
                        }
                        if (value.payment_method != null) {
                            PaymentMethod.ADAPTER.encodeWithTag(writer, 6, value.payment_method);
                        }
                        if (value.payment_method_type != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.payment_method_type);
                        }
                        if (value.type != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.type);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, SetupIntent.SetupAttempt.SetupError value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.type != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.type);
                        }
                        if (value.payment_method_type != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.payment_method_type);
                        }
                        if (value.payment_method != null) {
                            PaymentMethod.ADAPTER.encodeWithTag(writer, 6, value.payment_method);
                        }
                        if (value.param_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.param_);
                        }
                        if (value.message != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.message);
                        }
                        if (value.doc_url != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.doc_url);
                        }
                        if (value.decline_code != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.decline_code);
                        }
                        if (value.code != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.code);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public SetupIntent.SetupAttempt.SetupError redact(SetupIntent.SetupAttempt.SetupError value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.code;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        String str2 = value.decline_code;
                        String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                        String str3 = value.doc_url;
                        String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                        String str4 = value.message;
                        String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                        String str5 = value.param_;
                        String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                        PaymentMethod paymentMethod = value.payment_method;
                        PaymentMethod paymentMethodRedact = paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null;
                        String str6 = value.payment_method_type;
                        String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                        String str7 = value.type;
                        return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, paymentMethodRedact, strRedact6, str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public SetupIntent.SetupAttempt.SetupError decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        String strDecode2 = null;
                        String strDecode3 = null;
                        String strDecode4 = null;
                        String strDecode5 = null;
                        PaymentMethod paymentMethodDecode = null;
                        String strDecode6 = null;
                        String strDecode7 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                switch (iNextTag) {
                                    case 1:
                                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 2:
                                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 3:
                                        strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 4:
                                        strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 5:
                                        strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 6:
                                        paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                                        break;
                                    case 7:
                                        strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    case 8:
                                        strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                        break;
                                    default:
                                        reader.readUnknownField(iNextTag);
                                        break;
                                }
                            } else {
                                return new SetupIntent.SetupAttempt.SetupError(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, paymentMethodDecode, strDecode6, strDecode7, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }
    }
}
