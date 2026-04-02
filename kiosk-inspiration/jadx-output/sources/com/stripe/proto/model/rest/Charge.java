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
import kotlin.Deprecated;
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

/* JADX INFO: compiled from: Charge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 72\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000267Bé\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010&\u001a\u00020'¢\u0006\u0002\u0010(Jï\u0002\u0010-\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010&\u001a\u00020'¢\u0006\u0002\u0010.J\u0013\u0010/\u001a\u00020\t2\b\u00100\u001a\u0004\u0018\u000101H\u0096\u0002J\b\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020\u0002H\u0016J\b\u00105\u001a\u00020\u0004H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010)R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010)R\u0014\u0010 \u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010)R\u0012\u0010%\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010*R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010)R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010*R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010*R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010*R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b+\u0010,R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/stripe/proto/model/rest/Charge;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Charge$Builder;", OfflineStorageConstantsKt.ID, "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "amount_refunded", "captured", "", "refunded", "created", FirebaseAnalytics.Param.CURRENCY, "description", "statement_descriptor", "receipt_email", "failure_code", "failure_message", "livemode", "metadata", "", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "payment_intent", NotificationCompat.CATEGORY_STATUS, "payment_method", "payment_method_details", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "paid", "receipt_url", "refunds", "Lcom/stripe/proto/model/rest/Refunds;", "application_fee_amount", "balance_transaction", "receipt_number", "statement_descriptor_suffix", "calculated_statement_descriptor", "authorization_code", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "getSource$annotations", "()V", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Charge;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Charge extends Message<Charge, Builder> {
    public static final ProtoAdapter<Charge> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 1, tag = 2)
    public final Long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountRefunded", schemaIndex = 2, tag = 3)
    public final Long amount_refunded;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "applicationFeeAmount", schemaIndex = 22, tag = 24)
    public final Long application_fee_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "authorizationCode", schemaIndex = 27, tag = 29)
    public final String authorization_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "balanceTransaction", schemaIndex = 23, tag = 25)
    public final String balance_transaction;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "calculatedStatementDescriptor", schemaIndex = 26, tag = 28)
    public final String calculated_statement_descriptor;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 3, tag = 5)
    public final Boolean captured;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 5, tag = 7)
    public final Long created;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 6, tag = 8)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 7, tag = 9)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "failureCode", schemaIndex = 10, tag = 12)
    public final String failure_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "failureMessage", schemaIndex = 11, tag = 13)
    public final String failure_message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 12, tag = 14)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 13, tag = 15)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 19, tag = 21)
    public final Boolean paid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentIntent", schemaIndex = 15, tag = 17)
    public final String payment_intent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentMethod", schemaIndex = 17, tag = 19)
    public final String payment_method;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodDetails#ADAPTER", jsonName = "paymentMethodDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 20)
    public final PaymentMethodDetails payment_method_details;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "receiptEmail", schemaIndex = 9, tag = 11)
    public final String receipt_email;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "receiptNumber", schemaIndex = 24, tag = 26)
    public final String receipt_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "receiptUrl", schemaIndex = 20, tag = 22)
    public final String receipt_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 4, tag = 6)
    public final Boolean refunded;

    @WireField(adapter = "com.stripe.proto.model.rest.Refunds#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 21, tag = 23)
    public final Refunds refunds;

    @WireField(adapter = "com.stripe.proto.model.rest.Source#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 16)
    public final Source source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "statementDescriptor", schemaIndex = 8, tag = 10)
    public final String statement_descriptor;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "statementDescriptorSuffix", schemaIndex = 25, tag = 27)
    public final String statement_descriptor_suffix;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 16, tag = 18)
    public final String status;

    public Charge() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870911, null);
    }

    @Deprecated(message = "source is deprecated")
    public static /* synthetic */ void getSource$annotations() {
    }

    public /* synthetic */ Charge(String str, Long l, Long l2, Boolean bool, Boolean bool2, Long l3, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool3, Map map, Source source, String str8, String str9, String str10, PaymentMethodDetails paymentMethodDetails, Boolean bool4, String str11, Refunds refunds, Long l4, String str12, String str13, String str14, String str15, String str16, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : l2, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : bool2, (i & 32) != 0 ? null : l3, (i & 64) != 0 ? null : str2, (i & 128) != 0 ? null : str3, (i & 256) != 0 ? null : str4, (i & 512) != 0 ? null : str5, (i & 1024) != 0 ? null : str6, (i & 2048) != 0 ? null : str7, (i & 4096) != 0 ? null : bool3, (i & 8192) != 0 ? MapsKt.emptyMap() : map, (i & 16384) != 0 ? null : source, (i & 32768) != 0 ? null : str8, (i & 65536) != 0 ? null : str9, (i & 131072) != 0 ? null : str10, (i & 262144) != 0 ? null : paymentMethodDetails, (i & 524288) != 0 ? null : bool4, (i & 1048576) != 0 ? null : str11, (i & 2097152) != 0 ? null : refunds, (i & 4194304) != 0 ? null : l4, (i & 8388608) != 0 ? null : str12, (i & 16777216) != 0 ? null : str13, (i & 33554432) != 0 ? null : str14, (i & 67108864) != 0 ? null : str15, (i & 134217728) != 0 ? null : str16, (i & 268435456) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Charge(String str, Long l, Long l2, Boolean bool, Boolean bool2, Long l3, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool3, Map<String, String> metadata, Source source, String str8, String str9, String str10, PaymentMethodDetails paymentMethodDetails, Boolean bool4, String str11, Refunds refunds, Long l4, String str12, String str13, String str14, String str15, String str16, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.amount = l;
        this.amount_refunded = l2;
        this.captured = bool;
        this.refunded = bool2;
        this.created = l3;
        this.currency = str2;
        this.description = str3;
        this.statement_descriptor = str4;
        this.receipt_email = str5;
        this.failure_code = str6;
        this.failure_message = str7;
        this.livemode = bool3;
        this.source = source;
        this.payment_intent = str8;
        this.status = str9;
        this.payment_method = str10;
        this.payment_method_details = paymentMethodDetails;
        this.paid = bool4;
        this.receipt_url = str11;
        this.refunds = refunds;
        this.application_fee_amount = l4;
        this.balance_transaction = str12;
        this.receipt_number = str13;
        this.statement_descriptor_suffix = str14;
        this.calculated_statement_descriptor = str15;
        this.authorization_code = str16;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.amount = this.amount;
        builder.amount_refunded = this.amount_refunded;
        builder.captured = this.captured;
        builder.refunded = this.refunded;
        builder.created = this.created;
        builder.currency = this.currency;
        builder.description = this.description;
        builder.statement_descriptor = this.statement_descriptor;
        builder.receipt_email = this.receipt_email;
        builder.failure_code = this.failure_code;
        builder.failure_message = this.failure_message;
        builder.livemode = this.livemode;
        builder.metadata = this.metadata;
        builder.source = this.source;
        builder.payment_intent = this.payment_intent;
        builder.status = this.status;
        builder.payment_method = this.payment_method;
        builder.payment_method_details = this.payment_method_details;
        builder.paid = this.paid;
        builder.receipt_url = this.receipt_url;
        builder.refunds = this.refunds;
        builder.application_fee_amount = this.application_fee_amount;
        builder.balance_transaction = this.balance_transaction;
        builder.receipt_number = this.receipt_number;
        builder.statement_descriptor_suffix = this.statement_descriptor_suffix;
        builder.calculated_statement_descriptor = this.calculated_statement_descriptor;
        builder.authorization_code = this.authorization_code;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Charge)) {
            return false;
        }
        Charge charge = (Charge) other;
        return Intrinsics.areEqual(unknownFields(), charge.unknownFields()) && Intrinsics.areEqual(this.id, charge.id) && Intrinsics.areEqual(this.amount, charge.amount) && Intrinsics.areEqual(this.amount_refunded, charge.amount_refunded) && Intrinsics.areEqual(this.captured, charge.captured) && Intrinsics.areEqual(this.refunded, charge.refunded) && Intrinsics.areEqual(this.created, charge.created) && Intrinsics.areEqual(this.currency, charge.currency) && Intrinsics.areEqual(this.description, charge.description) && Intrinsics.areEqual(this.statement_descriptor, charge.statement_descriptor) && Intrinsics.areEqual(this.receipt_email, charge.receipt_email) && Intrinsics.areEqual(this.failure_code, charge.failure_code) && Intrinsics.areEqual(this.failure_message, charge.failure_message) && Intrinsics.areEqual(this.livemode, charge.livemode) && Intrinsics.areEqual(this.metadata, charge.metadata) && Intrinsics.areEqual(this.source, charge.source) && Intrinsics.areEqual(this.payment_intent, charge.payment_intent) && Intrinsics.areEqual(this.status, charge.status) && Intrinsics.areEqual(this.payment_method, charge.payment_method) && Intrinsics.areEqual(this.payment_method_details, charge.payment_method_details) && Intrinsics.areEqual(this.paid, charge.paid) && Intrinsics.areEqual(this.receipt_url, charge.receipt_url) && Intrinsics.areEqual(this.refunds, charge.refunds) && Intrinsics.areEqual(this.application_fee_amount, charge.application_fee_amount) && Intrinsics.areEqual(this.balance_transaction, charge.balance_transaction) && Intrinsics.areEqual(this.receipt_number, charge.receipt_number) && Intrinsics.areEqual(this.statement_descriptor_suffix, charge.statement_descriptor_suffix) && Intrinsics.areEqual(this.calculated_statement_descriptor, charge.calculated_statement_descriptor) && Intrinsics.areEqual(this.authorization_code, charge.authorization_code);
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
        Long l2 = this.amount_refunded;
        int iHashCode4 = (iHashCode3 + (l2 != null ? l2.hashCode() : 0)) * 37;
        Boolean bool = this.captured;
        int iHashCode5 = (iHashCode4 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.refunded;
        int iHashCode6 = (iHashCode5 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Long l3 = this.created;
        int iHashCode7 = (iHashCode6 + (l3 != null ? l3.hashCode() : 0)) * 37;
        String str2 = this.currency;
        int iHashCode8 = (iHashCode7 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.description;
        int iHashCode9 = (iHashCode8 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.statement_descriptor;
        int iHashCode10 = (iHashCode9 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.receipt_email;
        int iHashCode11 = (iHashCode10 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.failure_code;
        int iHashCode12 = (iHashCode11 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.failure_message;
        int iHashCode13 = (iHashCode12 + (str7 != null ? str7.hashCode() : 0)) * 37;
        Boolean bool3 = this.livemode;
        int iHashCode14 = (((iHashCode13 + (bool3 != null ? bool3.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        Source source = this.source;
        int iHashCode15 = (iHashCode14 + (source != null ? source.hashCode() : 0)) * 37;
        String str8 = this.payment_intent;
        int iHashCode16 = (iHashCode15 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.status;
        int iHashCode17 = (iHashCode16 + (str9 != null ? str9.hashCode() : 0)) * 37;
        String str10 = this.payment_method;
        int iHashCode18 = (iHashCode17 + (str10 != null ? str10.hashCode() : 0)) * 37;
        PaymentMethodDetails paymentMethodDetails = this.payment_method_details;
        int iHashCode19 = (iHashCode18 + (paymentMethodDetails != null ? paymentMethodDetails.hashCode() : 0)) * 37;
        Boolean bool4 = this.paid;
        int iHashCode20 = (iHashCode19 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        String str11 = this.receipt_url;
        int iHashCode21 = (iHashCode20 + (str11 != null ? str11.hashCode() : 0)) * 37;
        Refunds refunds = this.refunds;
        int iHashCode22 = (iHashCode21 + (refunds != null ? refunds.hashCode() : 0)) * 37;
        Long l4 = this.application_fee_amount;
        int iHashCode23 = (iHashCode22 + (l4 != null ? l4.hashCode() : 0)) * 37;
        String str12 = this.balance_transaction;
        int iHashCode24 = (iHashCode23 + (str12 != null ? str12.hashCode() : 0)) * 37;
        String str13 = this.receipt_number;
        int iHashCode25 = (iHashCode24 + (str13 != null ? str13.hashCode() : 0)) * 37;
        String str14 = this.statement_descriptor_suffix;
        int iHashCode26 = (iHashCode25 + (str14 != null ? str14.hashCode() : 0)) * 37;
        String str15 = this.calculated_statement_descriptor;
        int iHashCode27 = (iHashCode26 + (str15 != null ? str15.hashCode() : 0)) * 37;
        String str16 = this.authorization_code;
        int iHashCode28 = iHashCode27 + (str16 != null ? str16.hashCode() : 0);
        this.hashCode = iHashCode28;
        return iHashCode28;
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
        if (this.amount_refunded != null) {
            arrayList.add("amount_refunded=" + this.amount_refunded);
        }
        if (this.captured != null) {
            arrayList.add("captured=" + this.captured);
        }
        if (this.refunded != null) {
            arrayList.add("refunded=" + this.refunded);
        }
        if (this.created != null) {
            arrayList.add("created=" + this.created);
        }
        if (this.currency != null) {
            arrayList.add("currency=" + this.currency);
        }
        if (this.description != null) {
            arrayList.add("description=" + this.description);
        }
        if (this.statement_descriptor != null) {
            arrayList.add("statement_descriptor=" + this.statement_descriptor);
        }
        if (this.receipt_email != null) {
            arrayList.add("receipt_email=" + this.receipt_email);
        }
        if (this.failure_code != null) {
            arrayList.add("failure_code=" + this.failure_code);
        }
        if (this.failure_message != null) {
            arrayList.add("failure_message=" + this.failure_message);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.source != null) {
            arrayList.add("source=" + this.source);
        }
        if (this.payment_intent != null) {
            arrayList.add("payment_intent=" + this.payment_intent);
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (this.payment_method_details != null) {
            arrayList.add("payment_method_details=" + this.payment_method_details);
        }
        if (this.paid != null) {
            arrayList.add("paid=" + this.paid);
        }
        if (this.receipt_url != null) {
            arrayList.add("receipt_url=" + this.receipt_url);
        }
        if (this.refunds != null) {
            arrayList.add("refunds=" + this.refunds);
        }
        if (this.application_fee_amount != null) {
            arrayList.add("application_fee_amount=" + this.application_fee_amount);
        }
        if (this.balance_transaction != null) {
            arrayList.add("balance_transaction=" + this.balance_transaction);
        }
        if (this.receipt_number != null) {
            arrayList.add("receipt_number=" + this.receipt_number);
        }
        if (this.statement_descriptor_suffix != null) {
            arrayList.add("statement_descriptor_suffix=" + this.statement_descriptor_suffix);
        }
        if (this.calculated_statement_descriptor != null) {
            arrayList.add("calculated_statement_descriptor=" + this.calculated_statement_descriptor);
        }
        if (this.authorization_code != null) {
            arrayList.add("authorization_code=" + this.authorization_code);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Charge{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Charge copy$default(Charge charge, String str, Long l, Long l2, Boolean bool, Boolean bool2, Long l3, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool3, Map map, Source source, String str8, String str9, String str10, PaymentMethodDetails paymentMethodDetails, Boolean bool4, String str11, Refunds refunds, Long l4, String str12, String str13, String str14, String str15, String str16, ByteString byteString, int i, Object obj) {
        String str17 = (i & 1) != 0 ? charge.id : str;
        return charge.copy(str17, (i & 2) != 0 ? charge.amount : l, (i & 4) != 0 ? charge.amount_refunded : l2, (i & 8) != 0 ? charge.captured : bool, (i & 16) != 0 ? charge.refunded : bool2, (i & 32) != 0 ? charge.created : l3, (i & 64) != 0 ? charge.currency : str2, (i & 128) != 0 ? charge.description : str3, (i & 256) != 0 ? charge.statement_descriptor : str4, (i & 512) != 0 ? charge.receipt_email : str5, (i & 1024) != 0 ? charge.failure_code : str6, (i & 2048) != 0 ? charge.failure_message : str7, (i & 4096) != 0 ? charge.livemode : bool3, (i & 8192) != 0 ? charge.metadata : map, (i & 16384) != 0 ? charge.source : source, (i & 32768) != 0 ? charge.payment_intent : str8, (i & 65536) != 0 ? charge.status : str9, (i & 131072) != 0 ? charge.payment_method : str10, (i & 262144) != 0 ? charge.payment_method_details : paymentMethodDetails, (i & 524288) != 0 ? charge.paid : bool4, (i & 1048576) != 0 ? charge.receipt_url : str11, (i & 2097152) != 0 ? charge.refunds : refunds, (i & 4194304) != 0 ? charge.application_fee_amount : l4, (i & 8388608) != 0 ? charge.balance_transaction : str12, (i & 16777216) != 0 ? charge.receipt_number : str13, (i & 33554432) != 0 ? charge.statement_descriptor_suffix : str14, (i & 67108864) != 0 ? charge.calculated_statement_descriptor : str15, (i & 134217728) != 0 ? charge.authorization_code : str16, (i & 268435456) != 0 ? charge.unknownFields() : byteString);
    }

    public final Charge copy(String id, Long amount, Long amount_refunded, Boolean captured, Boolean refunded, Long created, String currency, String description, String statement_descriptor, String receipt_email, String failure_code, String failure_message, Boolean livemode, Map<String, String> metadata, Source source, String payment_intent, String status, String payment_method, PaymentMethodDetails payment_method_details, Boolean paid, String receipt_url, Refunds refunds, Long application_fee_amount, String balance_transaction, String receipt_number, String statement_descriptor_suffix, String calculated_statement_descriptor, String authorization_code, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Charge(id, amount, amount_refunded, captured, refunded, created, currency, description, statement_descriptor, receipt_email, failure_code, failure_message, livemode, metadata, source, payment_intent, status, payment_method, payment_method_details, paid, receipt_url, refunds, application_fee_amount, balance_transaction, receipt_number, statement_descriptor_suffix, calculated_statement_descriptor, authorization_code, unknownFields);
    }

    /* JADX INFO: compiled from: Charge.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010)J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010)J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010)J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\b\u0010*\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\nJ\u0015\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010+J\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010)J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\nJ\u0015\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010+J\u001a\u0010\u0017\u001a\u00020\u00002\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0018J\u0015\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010+J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\nJ\u0010\u0010 \u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\nJ\u0015\u0010!\u001a\u00020\u00002\b\u0010!\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010+J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010#J\u0012\u0010$\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010%H\u0007J\u0010\u0010&\u001a\u00020\u00002\b\u0010&\u001a\u0004\u0018\u00010\nJ\u0010\u0010'\u001a\u00020\u00002\b\u0010'\u001a\u0004\u0018\u00010\nJ\u0010\u0010(\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u001e\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u001a\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010!\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/stripe/proto/model/rest/Charge$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Charge;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "amount_refunded", "application_fee_amount", "authorization_code", "", "balance_transaction", "calculated_statement_descriptor", "captured", "", "Ljava/lang/Boolean;", "created", FirebaseAnalytics.Param.CURRENCY, "description", "failure_code", "failure_message", OfflineStorageConstantsKt.ID, "livemode", "metadata", "", "paid", "payment_intent", "payment_method", "payment_method_details", "Lcom/stripe/proto/model/rest/PaymentMethodDetails;", "receipt_email", "receipt_number", "receipt_url", "refunded", "refunds", "Lcom/stripe/proto/model/rest/Refunds;", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "statement_descriptor", "statement_descriptor_suffix", NotificationCompat.CATEGORY_STATUS, "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Charge$Builder;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/Charge$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Charge, Builder> {
        public Long amount;
        public Long amount_refunded;
        public Long application_fee_amount;
        public String authorization_code;
        public String balance_transaction;
        public String calculated_statement_descriptor;
        public Boolean captured;
        public Long created;
        public String currency;
        public String description;
        public String failure_code;
        public String failure_message;
        public String id;
        public Boolean livemode;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public Boolean paid;
        public String payment_intent;
        public String payment_method;
        public PaymentMethodDetails payment_method_details;
        public String receipt_email;
        public String receipt_number;
        public String receipt_url;
        public Boolean refunded;
        public Refunds refunds;
        public Source source;
        public String statement_descriptor;
        public String statement_descriptor_suffix;
        public String status;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder amount(Long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder amount_refunded(Long amount_refunded) {
            this.amount_refunded = amount_refunded;
            return this;
        }

        public final Builder captured(Boolean captured) {
            this.captured = captured;
            return this;
        }

        public final Builder refunded(Boolean refunded) {
            this.refunded = refunded;
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

        public final Builder description(String description) {
            this.description = description;
            return this;
        }

        public final Builder statement_descriptor(String statement_descriptor) {
            this.statement_descriptor = statement_descriptor;
            return this;
        }

        public final Builder receipt_email(String receipt_email) {
            this.receipt_email = receipt_email;
            return this;
        }

        public final Builder failure_code(String failure_code) {
            this.failure_code = failure_code;
            return this;
        }

        public final Builder failure_message(String failure_message) {
            this.failure_message = failure_message;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        @Deprecated(message = "source is deprecated")
        public final Builder source(Source source) {
            this.source = source;
            return this;
        }

        public final Builder payment_intent(String payment_intent) {
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder status(String status) {
            this.status = status;
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

        public final Builder paid(Boolean paid) {
            this.paid = paid;
            return this;
        }

        public final Builder receipt_url(String receipt_url) {
            this.receipt_url = receipt_url;
            return this;
        }

        public final Builder refunds(Refunds refunds) {
            this.refunds = refunds;
            return this;
        }

        public final Builder application_fee_amount(Long application_fee_amount) {
            this.application_fee_amount = application_fee_amount;
            return this;
        }

        public final Builder balance_transaction(String balance_transaction) {
            this.balance_transaction = balance_transaction;
            return this;
        }

        public final Builder receipt_number(String receipt_number) {
            this.receipt_number = receipt_number;
            return this;
        }

        public final Builder statement_descriptor_suffix(String statement_descriptor_suffix) {
            this.statement_descriptor_suffix = statement_descriptor_suffix;
            return this;
        }

        public final Builder calculated_statement_descriptor(String calculated_statement_descriptor) {
            this.calculated_statement_descriptor = calculated_statement_descriptor;
            return this;
        }

        public final Builder authorization_code(String authorization_code) {
            this.authorization_code = authorization_code;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Charge build() {
            return new Charge(this.id, this.amount, this.amount_refunded, this.captured, this.refunded, this.created, this.currency, this.description, this.statement_descriptor, this.receipt_email, this.failure_code, this.failure_message, this.livemode, this.metadata, this.source, this.payment_intent, this.status, this.payment_method, this.payment_method_details, this.paid, this.receipt_url, this.refunds, this.application_fee_amount, this.balance_transaction, this.receipt_number, this.statement_descriptor_suffix, this.calculated_statement_descriptor, this.authorization_code, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Charge.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Charge$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Charge;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Charge$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Charge build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Charge.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Charge>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Charge$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.Charge$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Charge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.amount);
                }
                if (value.amount_refunded != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(3, value.amount_refunded);
                }
                if (value.captured != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(5, value.captured);
                }
                if (value.refunded != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.refunded);
                }
                if (value.created != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(7, value.created);
                }
                if (value.currency != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.currency);
                }
                if (value.description != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.description);
                }
                if (value.statement_descriptor != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.statement_descriptor);
                }
                if (value.receipt_email != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.receipt_email);
                }
                if (value.failure_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(12, value.failure_code);
                }
                if (value.failure_message != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(13, value.failure_message);
                }
                if (value.livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(14, value.livemode);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(15, value.metadata);
                if (value.source != null) {
                    iEncodedSizeWithTag += Source.ADAPTER.encodedSizeWithTag(16, value.source);
                }
                if (value.payment_intent != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(17, value.payment_intent);
                }
                if (value.status != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(18, value.status);
                }
                if (value.payment_method != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(19, value.payment_method);
                }
                if (value.payment_method_details != null) {
                    iEncodedSizeWithTag += PaymentMethodDetails.ADAPTER.encodedSizeWithTag(20, value.payment_method_details);
                }
                if (value.paid != null) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(21, value.paid);
                }
                if (value.receipt_url != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(22, value.receipt_url);
                }
                if (value.refunds != null) {
                    iEncodedSizeWithTag += Refunds.ADAPTER.encodedSizeWithTag(23, value.refunds);
                }
                if (value.application_fee_amount != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(24, value.application_fee_amount);
                }
                if (value.balance_transaction != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(25, value.balance_transaction);
                }
                if (value.receipt_number != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(26, value.receipt_number);
                }
                if (value.statement_descriptor_suffix != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(27, value.statement_descriptor_suffix);
                }
                if (value.calculated_statement_descriptor != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(28, value.calculated_statement_descriptor);
                }
                return value.authorization_code != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(29, value.authorization_code) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Charge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount);
                }
                if (value.amount_refunded != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 3, value.amount_refunded);
                }
                if (value.captured != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.captured);
                }
                if (value.refunded != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.refunded);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.created);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.currency);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.description);
                }
                if (value.statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.statement_descriptor);
                }
                if (value.receipt_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.receipt_email);
                }
                if (value.failure_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.failure_code);
                }
                if (value.failure_message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.failure_message);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.livemode);
                }
                getMetadataAdapter().encodeWithTag(writer, 15, value.metadata);
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 16, value.source);
                }
                if (value.payment_intent != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 17, value.payment_intent);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 18, value.status);
                }
                if (value.payment_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 19, value.payment_method);
                }
                if (value.payment_method_details != null) {
                    PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 20, value.payment_method_details);
                }
                if (value.paid != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 21, value.paid);
                }
                if (value.receipt_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 22, value.receipt_url);
                }
                if (value.refunds != null) {
                    Refunds.ADAPTER.encodeWithTag(writer, 23, value.refunds);
                }
                if (value.application_fee_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 24, value.application_fee_amount);
                }
                if (value.balance_transaction != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 25, value.balance_transaction);
                }
                if (value.receipt_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 26, value.receipt_number);
                }
                if (value.statement_descriptor_suffix != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 27, value.statement_descriptor_suffix);
                }
                if (value.calculated_statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 28, value.calculated_statement_descriptor);
                }
                if (value.authorization_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 29, value.authorization_code);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Charge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.authorization_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 29, value.authorization_code);
                }
                if (value.calculated_statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 28, value.calculated_statement_descriptor);
                }
                if (value.statement_descriptor_suffix != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 27, value.statement_descriptor_suffix);
                }
                if (value.receipt_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 26, value.receipt_number);
                }
                if (value.balance_transaction != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 25, value.balance_transaction);
                }
                if (value.application_fee_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 24, value.application_fee_amount);
                }
                if (value.refunds != null) {
                    Refunds.ADAPTER.encodeWithTag(writer, 23, value.refunds);
                }
                if (value.receipt_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 22, value.receipt_url);
                }
                if (value.paid != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 21, value.paid);
                }
                if (value.payment_method_details != null) {
                    PaymentMethodDetails.ADAPTER.encodeWithTag(writer, 20, value.payment_method_details);
                }
                if (value.payment_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 19, value.payment_method);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 18, value.status);
                }
                if (value.payment_intent != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 17, value.payment_intent);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 16, value.source);
                }
                getMetadataAdapter().encodeWithTag(writer, 15, value.metadata);
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.livemode);
                }
                if (value.failure_message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.failure_message);
                }
                if (value.failure_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.failure_code);
                }
                if (value.receipt_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.receipt_email);
                }
                if (value.statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.statement_descriptor);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.description);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.currency);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.created);
                }
                if (value.refunded != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.refunded);
                }
                if (value.captured != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 5, value.captured);
                }
                if (value.amount_refunded != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 3, value.amount_refunded);
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
            public Charge decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                Long lDecode = null;
                Long lDecode2 = null;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                Long lDecode3 = null;
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                Boolean boolDecode3 = null;
                Source sourceDecode = null;
                String strDecode7 = null;
                String strDecode8 = null;
                String strDecode9 = null;
                PaymentMethodDetails paymentMethodDetailsDecode = null;
                Boolean boolDecode4 = null;
                String strDecode10 = null;
                Refunds refundsDecode = null;
                Long lDecode4 = null;
                String strDecode11 = null;
                String strDecode12 = null;
                String strDecode13 = null;
                String strDecode14 = null;
                String strDecode15 = null;
                String strDecode16 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    Long l = lDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode16 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 3:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 4:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 5:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 6:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 7:
                                lDecode3 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 11:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 12:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 13:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 14:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 15:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 16:
                                sourceDecode = Source.ADAPTER.decode(reader);
                                break;
                            case 17:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 18:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 19:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 20:
                                paymentMethodDetailsDecode = PaymentMethodDetails.ADAPTER.decode(reader);
                                break;
                            case 21:
                                boolDecode4 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 22:
                                strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 23:
                                refundsDecode = Refunds.ADAPTER.decode(reader);
                                break;
                            case 24:
                                lDecode4 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 25:
                                strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 26:
                                strDecode12 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 27:
                                strDecode13 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 28:
                                strDecode14 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 29:
                                strDecode15 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                        }
                        lDecode = l;
                    } else {
                        return new Charge(strDecode16, l, lDecode2, boolDecode, boolDecode2, lDecode3, strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, boolDecode3, linkedHashMap, sourceDecode, strDecode7, strDecode8, strDecode9, paymentMethodDetailsDecode, boolDecode4, strDecode10, refundsDecode, lDecode4, strDecode11, strDecode12, strDecode13, strDecode14, strDecode15, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Charge redact(Charge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Long l = value.amount;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                Long l2 = value.amount_refunded;
                Long lRedact2 = l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null;
                Boolean bool = value.captured;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.refunded;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Long l3 = value.created;
                Long lRedact3 = l3 != null ? ProtoAdapter.INT64_VALUE.redact(l3) : null;
                String str2 = value.currency;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.description;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.statement_descriptor;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.receipt_email;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.failure_code;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.failure_message;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                Boolean bool3 = value.livemode;
                Boolean boolRedact3 = bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null;
                Source source = value.source;
                Source sourceRedact = source != null ? Source.ADAPTER.redact(source) : null;
                String str8 = value.payment_intent;
                String str9 = strRedact;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                String str10 = value.status;
                String str11 = strRedact8;
                String strRedact9 = str10 != null ? ProtoAdapter.STRING_VALUE.redact(str10) : null;
                String str12 = value.payment_method;
                String str13 = strRedact9;
                String strRedact10 = str12 != null ? ProtoAdapter.STRING_VALUE.redact(str12) : null;
                PaymentMethodDetails paymentMethodDetails = value.payment_method_details;
                String str14 = strRedact10;
                PaymentMethodDetails paymentMethodDetailsRedact = paymentMethodDetails != null ? PaymentMethodDetails.ADAPTER.redact(paymentMethodDetails) : null;
                Boolean bool4 = value.paid;
                PaymentMethodDetails paymentMethodDetails2 = paymentMethodDetailsRedact;
                Boolean boolRedact4 = bool4 != null ? ProtoAdapter.BOOL_VALUE.redact(bool4) : null;
                String str15 = value.receipt_url;
                Boolean bool5 = boolRedact4;
                String strRedact11 = str15 != null ? ProtoAdapter.STRING_VALUE.redact(str15) : null;
                Refunds refunds = value.refunds;
                String str16 = strRedact11;
                Refunds refundsRedact = refunds != null ? Refunds.ADAPTER.redact(refunds) : null;
                Long l4 = value.application_fee_amount;
                Refunds refunds2 = refundsRedact;
                Long lRedact4 = l4 != null ? ProtoAdapter.INT64_VALUE.redact(l4) : null;
                String str17 = value.balance_transaction;
                Long l5 = lRedact4;
                String strRedact12 = str17 != null ? ProtoAdapter.STRING_VALUE.redact(str17) : null;
                String str18 = value.receipt_number;
                String str19 = strRedact12;
                String strRedact13 = str18 != null ? ProtoAdapter.STRING_VALUE.redact(str18) : null;
                String str20 = value.statement_descriptor_suffix;
                String str21 = strRedact13;
                String strRedact14 = str20 != null ? ProtoAdapter.STRING_VALUE.redact(str20) : null;
                String str22 = value.calculated_statement_descriptor;
                String str23 = strRedact14;
                String strRedact15 = str22 != null ? ProtoAdapter.STRING_VALUE.redact(str22) : null;
                String str24 = value.authorization_code;
                return Charge.copy$default(value, str9, lRedact, lRedact2, boolRedact, boolRedact2, lRedact3, strRedact2, strRedact3, strRedact4, strRedact5, strRedact6, strRedact7, boolRedact3, null, sourceRedact, str11, str13, str14, paymentMethodDetails2, bool5, str16, refunds2, l5, str19, str21, str23, strRedact15, str24 != null ? ProtoAdapter.STRING_VALUE.redact(str24) : null, ByteString.EMPTY, 8192, null);
            }
        };
    }
}
