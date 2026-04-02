package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
import androidx.core.graphics.TypefaceCompat;
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

/* JADX INFO: compiled from: PaymentIntentExpandedMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 :2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u00029:Bå\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010 \u001a\u00020\u001e\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010)\u001a\u00020*¢\u0006\u0002\u0010+Jë\u0002\u00100\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010 \u001a\u00020\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010)\u001a\u00020*¢\u0006\u0002\u00101J\u0013\u00102\u001a\u00020\u00102\b\u00103\u001a\u0004\u0018\u000104H\u0096\u0002J\b\u00105\u001a\u000206H\u0016J\b\u00107\u001a\u00020\u0002H\u0016J\b\u00108\u001a\u00020\u0004H\u0016R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0014\u0010'\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0014\u0010#\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0010\u0010\u001d\u001a\u00020\u001e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020\u001e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010,R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010-R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b.\u0010/R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;", OfflineStorageConstantsKt.ID, "", "created", "", NotificationCompat.CATEGORY_STATUS, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, FirebaseAnalytics.Param.CURRENCY, FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "statement_descriptor", "description", "receipt_email", "livemode", "", "last_payment_error", "Lcom/stripe/proto/model/rest/ErrorResponse;", "metadata", "", "charges", "Lcom/stripe/proto/model/rest/Charges;", "payment_method", "Lcom/stripe/proto/model/rest/PaymentMethod;", "amount_capturable", "amount_received", "application_fee_amount", "canceled_at", "capture_method", "Lcom/stripe/proto/model/rest/Method;", "client_secret", "confirmation_method", "customer", "transfer_group", "amount_tip", "statement_descriptor_suffix", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "amount_surcharge", "setup_future_usage", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "getSource$annotations", "()V", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentIntentExpandedMethod extends Message<PaymentIntentExpandedMethod, Builder> {
    public static final ProtoAdapter<PaymentIntentExpandedMethod> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 3, tag = 4)
    public final Long amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountCapturable", schemaIndex = 14, tag = 15)
    public final Long amount_capturable;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountReceived", schemaIndex = 15, tag = 16)
    public final Long amount_received;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountSurcharge", schemaIndex = 26, tag = 27)
    public final Long amount_surcharge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountTip", schemaIndex = 23, tag = 24)
    public final Long amount_tip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "applicationFeeAmount", schemaIndex = 16, tag = 17)
    public final Long application_fee_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "canceledAt", schemaIndex = 17, tag = 18)
    public final Long canceled_at;

    @WireField(adapter = "com.stripe.proto.model.rest.Method#ADAPTER", jsonName = "captureMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final Method capture_method;

    @WireField(adapter = "com.stripe.proto.model.rest.Charges#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final Charges charges;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "clientSecret", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 19, tag = 20)
    public final String client_secret;

    @WireField(adapter = "com.stripe.proto.model.rest.Method#ADAPTER", jsonName = "confirmationMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 20, tag = 21)
    public final Method confirmation_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 1, tag = 2)
    public final Long created;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 21, tag = 22)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 7, tag = 8)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorResponse#ADAPTER", jsonName = "lastPaymentError", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final ErrorResponse last_payment_error;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 9, tag = 10)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 11, tag = 12)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER", jsonName = "paymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final PaymentMethod payment_method;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethodOptions#ADAPTER", jsonName = "paymentMethodOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 25, tag = 26)
    public final PaymentMethodOptions payment_method_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "receiptEmail", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 8, tag = 9)
    public final String receipt_email;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "setupFutureUsage", schemaIndex = 27, tag = 28)
    public final String setup_future_usage;

    @WireField(adapter = "com.stripe.proto.model.rest.Source#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final Source source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "statementDescriptor", schemaIndex = 6, tag = 7)
    public final String statement_descriptor;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "statementDescriptorSuffix", schemaIndex = 24, tag = 25)
    public final String statement_descriptor_suffix;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "transferGroup", schemaIndex = 22, tag = 23)
    public final String transfer_group;

    public PaymentIntentExpandedMethod() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870911, null);
    }

    @Deprecated(message = "source is deprecated")
    public static /* synthetic */ void getSource$annotations() {
    }

    public /* synthetic */ PaymentIntentExpandedMethod(String str, Long l, String str2, Long l2, String str3, Source source, String str4, String str5, String str6, Boolean bool, ErrorResponse errorResponse, Map map, Charges charges, PaymentMethod paymentMethod, Long l3, Long l4, Long l5, Long l6, Method method, String str7, Method method2, String str8, String str9, Long l7, String str10, PaymentMethodOptions paymentMethodOptions, Long l8, String str11, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : source, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6, (i & 512) != 0 ? null : bool, (i & 1024) != 0 ? null : errorResponse, (i & 2048) != 0 ? MapsKt.emptyMap() : map, (i & 4096) != 0 ? null : charges, (i & 8192) != 0 ? null : paymentMethod, (i & 16384) != 0 ? null : l3, (i & 32768) != 0 ? null : l4, (i & 65536) != 0 ? null : l5, (i & 131072) != 0 ? null : l6, (i & 262144) != 0 ? Method.automatic : method, (i & 524288) != 0 ? null : str7, (i & 1048576) != 0 ? Method.automatic : method2, (i & 2097152) != 0 ? null : str8, (i & 4194304) != 0 ? null : str9, (i & 8388608) != 0 ? null : l7, (i & 16777216) != 0 ? null : str10, (i & 33554432) != 0 ? null : paymentMethodOptions, (i & 67108864) != 0 ? null : l8, (i & 134217728) != 0 ? null : str11, (i & 268435456) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentIntentExpandedMethod(String str, Long l, String str2, Long l2, String str3, Source source, String str4, String str5, String str6, Boolean bool, ErrorResponse errorResponse, Map<String, String> metadata, Charges charges, PaymentMethod paymentMethod, Long l3, Long l4, Long l5, Long l6, Method capture_method, String str7, Method confirmation_method, String str8, String str9, Long l7, String str10, PaymentMethodOptions paymentMethodOptions, Long l8, String str11, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(capture_method, "capture_method");
        Intrinsics.checkNotNullParameter(confirmation_method, "confirmation_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.created = l;
        this.status = str2;
        this.amount = l2;
        this.currency = str3;
        this.source = source;
        this.statement_descriptor = str4;
        this.description = str5;
        this.receipt_email = str6;
        this.livemode = bool;
        this.last_payment_error = errorResponse;
        this.charges = charges;
        this.payment_method = paymentMethod;
        this.amount_capturable = l3;
        this.amount_received = l4;
        this.application_fee_amount = l5;
        this.canceled_at = l6;
        this.capture_method = capture_method;
        this.client_secret = str7;
        this.confirmation_method = confirmation_method;
        this.customer = str8;
        this.transfer_group = str9;
        this.amount_tip = l7;
        this.statement_descriptor_suffix = str10;
        this.payment_method_options = paymentMethodOptions;
        this.amount_surcharge = l8;
        this.setup_future_usage = str11;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.created = this.created;
        builder.status = this.status;
        builder.amount = this.amount;
        builder.currency = this.currency;
        builder.source = this.source;
        builder.statement_descriptor = this.statement_descriptor;
        builder.description = this.description;
        builder.receipt_email = this.receipt_email;
        builder.livemode = this.livemode;
        builder.last_payment_error = this.last_payment_error;
        builder.metadata = this.metadata;
        builder.charges = this.charges;
        builder.payment_method = this.payment_method;
        builder.amount_capturable = this.amount_capturable;
        builder.amount_received = this.amount_received;
        builder.application_fee_amount = this.application_fee_amount;
        builder.canceled_at = this.canceled_at;
        builder.capture_method = this.capture_method;
        builder.client_secret = this.client_secret;
        builder.confirmation_method = this.confirmation_method;
        builder.customer = this.customer;
        builder.transfer_group = this.transfer_group;
        builder.amount_tip = this.amount_tip;
        builder.statement_descriptor_suffix = this.statement_descriptor_suffix;
        builder.payment_method_options = this.payment_method_options;
        builder.amount_surcharge = this.amount_surcharge;
        builder.setup_future_usage = this.setup_future_usage;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentIntentExpandedMethod)) {
            return false;
        }
        PaymentIntentExpandedMethod paymentIntentExpandedMethod = (PaymentIntentExpandedMethod) other;
        return Intrinsics.areEqual(unknownFields(), paymentIntentExpandedMethod.unknownFields()) && Intrinsics.areEqual(this.id, paymentIntentExpandedMethod.id) && Intrinsics.areEqual(this.created, paymentIntentExpandedMethod.created) && Intrinsics.areEqual(this.status, paymentIntentExpandedMethod.status) && Intrinsics.areEqual(this.amount, paymentIntentExpandedMethod.amount) && Intrinsics.areEqual(this.currency, paymentIntentExpandedMethod.currency) && Intrinsics.areEqual(this.source, paymentIntentExpandedMethod.source) && Intrinsics.areEqual(this.statement_descriptor, paymentIntentExpandedMethod.statement_descriptor) && Intrinsics.areEqual(this.description, paymentIntentExpandedMethod.description) && Intrinsics.areEqual(this.receipt_email, paymentIntentExpandedMethod.receipt_email) && Intrinsics.areEqual(this.livemode, paymentIntentExpandedMethod.livemode) && Intrinsics.areEqual(this.last_payment_error, paymentIntentExpandedMethod.last_payment_error) && Intrinsics.areEqual(this.metadata, paymentIntentExpandedMethod.metadata) && Intrinsics.areEqual(this.charges, paymentIntentExpandedMethod.charges) && Intrinsics.areEqual(this.payment_method, paymentIntentExpandedMethod.payment_method) && Intrinsics.areEqual(this.amount_capturable, paymentIntentExpandedMethod.amount_capturable) && Intrinsics.areEqual(this.amount_received, paymentIntentExpandedMethod.amount_received) && Intrinsics.areEqual(this.application_fee_amount, paymentIntentExpandedMethod.application_fee_amount) && Intrinsics.areEqual(this.canceled_at, paymentIntentExpandedMethod.canceled_at) && this.capture_method == paymentIntentExpandedMethod.capture_method && Intrinsics.areEqual(this.client_secret, paymentIntentExpandedMethod.client_secret) && this.confirmation_method == paymentIntentExpandedMethod.confirmation_method && Intrinsics.areEqual(this.customer, paymentIntentExpandedMethod.customer) && Intrinsics.areEqual(this.transfer_group, paymentIntentExpandedMethod.transfer_group) && Intrinsics.areEqual(this.amount_tip, paymentIntentExpandedMethod.amount_tip) && Intrinsics.areEqual(this.statement_descriptor_suffix, paymentIntentExpandedMethod.statement_descriptor_suffix) && Intrinsics.areEqual(this.payment_method_options, paymentIntentExpandedMethod.payment_method_options) && Intrinsics.areEqual(this.amount_surcharge, paymentIntentExpandedMethod.amount_surcharge) && Intrinsics.areEqual(this.setup_future_usage, paymentIntentExpandedMethod.setup_future_usage);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Long l = this.created;
        int iHashCode3 = (iHashCode2 + (l != null ? l.hashCode() : 0)) * 37;
        String str2 = this.status;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Long l2 = this.amount;
        int iHashCode5 = (iHashCode4 + (l2 != null ? l2.hashCode() : 0)) * 37;
        String str3 = this.currency;
        int iHashCode6 = (iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Source source = this.source;
        int iHashCode7 = (iHashCode6 + (source != null ? source.hashCode() : 0)) * 37;
        String str4 = this.statement_descriptor;
        int iHashCode8 = (iHashCode7 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.description;
        int iHashCode9 = (iHashCode8 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.receipt_email;
        int iHashCode10 = (iHashCode9 + (str6 != null ? str6.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode11 = (iHashCode10 + (bool != null ? bool.hashCode() : 0)) * 37;
        ErrorResponse errorResponse = this.last_payment_error;
        int iHashCode12 = (((iHashCode11 + (errorResponse != null ? errorResponse.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        Charges charges = this.charges;
        int iHashCode13 = (iHashCode12 + (charges != null ? charges.hashCode() : 0)) * 37;
        PaymentMethod paymentMethod = this.payment_method;
        int iHashCode14 = (iHashCode13 + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        Long l3 = this.amount_capturable;
        int iHashCode15 = (iHashCode14 + (l3 != null ? l3.hashCode() : 0)) * 37;
        Long l4 = this.amount_received;
        int iHashCode16 = (iHashCode15 + (l4 != null ? l4.hashCode() : 0)) * 37;
        Long l5 = this.application_fee_amount;
        int iHashCode17 = (iHashCode16 + (l5 != null ? l5.hashCode() : 0)) * 37;
        Long l6 = this.canceled_at;
        int iHashCode18 = (((iHashCode17 + (l6 != null ? l6.hashCode() : 0)) * 37) + this.capture_method.hashCode()) * 37;
        String str7 = this.client_secret;
        int iHashCode19 = (((iHashCode18 + (str7 != null ? str7.hashCode() : 0)) * 37) + this.confirmation_method.hashCode()) * 37;
        String str8 = this.customer;
        int iHashCode20 = (iHashCode19 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.transfer_group;
        int iHashCode21 = (iHashCode20 + (str9 != null ? str9.hashCode() : 0)) * 37;
        Long l7 = this.amount_tip;
        int iHashCode22 = (iHashCode21 + (l7 != null ? l7.hashCode() : 0)) * 37;
        String str10 = this.statement_descriptor_suffix;
        int iHashCode23 = (iHashCode22 + (str10 != null ? str10.hashCode() : 0)) * 37;
        PaymentMethodOptions paymentMethodOptions = this.payment_method_options;
        int iHashCode24 = (iHashCode23 + (paymentMethodOptions != null ? paymentMethodOptions.hashCode() : 0)) * 37;
        Long l8 = this.amount_surcharge;
        int iHashCode25 = (iHashCode24 + (l8 != null ? l8.hashCode() : 0)) * 37;
        String str11 = this.setup_future_usage;
        int iHashCode26 = iHashCode25 + (str11 != null ? str11.hashCode() : 0);
        this.hashCode = iHashCode26;
        return iHashCode26;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.created != null) {
            arrayList.add("created=" + this.created);
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.amount != null) {
            arrayList.add("amount=" + this.amount);
        }
        if (this.currency != null) {
            arrayList.add("currency=" + this.currency);
        }
        if (this.source != null) {
            arrayList.add("source=" + this.source);
        }
        if (this.statement_descriptor != null) {
            arrayList.add("statement_descriptor=" + this.statement_descriptor);
        }
        if (this.description != null) {
            arrayList.add("description=" + this.description);
        }
        if (this.receipt_email != null) {
            arrayList.add("receipt_email=██");
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        if (this.last_payment_error != null) {
            arrayList.add("last_payment_error=" + this.last_payment_error);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.charges != null) {
            arrayList.add("charges=" + this.charges);
        }
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (this.amount_capturable != null) {
            arrayList.add("amount_capturable=" + this.amount_capturable);
        }
        if (this.amount_received != null) {
            arrayList.add("amount_received=" + this.amount_received);
        }
        if (this.application_fee_amount != null) {
            arrayList.add("application_fee_amount=" + this.application_fee_amount);
        }
        if (this.canceled_at != null) {
            arrayList.add("canceled_at=" + this.canceled_at);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("capture_method=" + this.capture_method);
        if (this.client_secret != null) {
            arrayList2.add("client_secret=██");
        }
        arrayList2.add("confirmation_method=" + this.confirmation_method);
        if (this.customer != null) {
            arrayList2.add("customer=" + this.customer);
        }
        if (this.transfer_group != null) {
            arrayList2.add("transfer_group=" + this.transfer_group);
        }
        if (this.amount_tip != null) {
            arrayList2.add("amount_tip=" + this.amount_tip);
        }
        if (this.statement_descriptor_suffix != null) {
            arrayList2.add("statement_descriptor_suffix=" + this.statement_descriptor_suffix);
        }
        if (this.payment_method_options != null) {
            arrayList2.add("payment_method_options=" + this.payment_method_options);
        }
        if (this.amount_surcharge != null) {
            arrayList2.add("amount_surcharge=" + this.amount_surcharge);
        }
        if (this.setup_future_usage != null) {
            arrayList2.add("setup_future_usage=" + this.setup_future_usage);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentIntentExpandedMethod{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentIntentExpandedMethod copy$default(PaymentIntentExpandedMethod paymentIntentExpandedMethod, String str, Long l, String str2, Long l2, String str3, Source source, String str4, String str5, String str6, Boolean bool, ErrorResponse errorResponse, Map map, Charges charges, PaymentMethod paymentMethod, Long l3, Long l4, Long l5, Long l6, Method method, String str7, Method method2, String str8, String str9, Long l7, String str10, PaymentMethodOptions paymentMethodOptions, Long l8, String str11, ByteString byteString, int i, Object obj) {
        String str12 = (i & 1) != 0 ? paymentIntentExpandedMethod.id : str;
        return paymentIntentExpandedMethod.copy(str12, (i & 2) != 0 ? paymentIntentExpandedMethod.created : l, (i & 4) != 0 ? paymentIntentExpandedMethod.status : str2, (i & 8) != 0 ? paymentIntentExpandedMethod.amount : l2, (i & 16) != 0 ? paymentIntentExpandedMethod.currency : str3, (i & 32) != 0 ? paymentIntentExpandedMethod.source : source, (i & 64) != 0 ? paymentIntentExpandedMethod.statement_descriptor : str4, (i & 128) != 0 ? paymentIntentExpandedMethod.description : str5, (i & 256) != 0 ? paymentIntentExpandedMethod.receipt_email : str6, (i & 512) != 0 ? paymentIntentExpandedMethod.livemode : bool, (i & 1024) != 0 ? paymentIntentExpandedMethod.last_payment_error : errorResponse, (i & 2048) != 0 ? paymentIntentExpandedMethod.metadata : map, (i & 4096) != 0 ? paymentIntentExpandedMethod.charges : charges, (i & 8192) != 0 ? paymentIntentExpandedMethod.payment_method : paymentMethod, (i & 16384) != 0 ? paymentIntentExpandedMethod.amount_capturable : l3, (i & 32768) != 0 ? paymentIntentExpandedMethod.amount_received : l4, (i & 65536) != 0 ? paymentIntentExpandedMethod.application_fee_amount : l5, (i & 131072) != 0 ? paymentIntentExpandedMethod.canceled_at : l6, (i & 262144) != 0 ? paymentIntentExpandedMethod.capture_method : method, (i & 524288) != 0 ? paymentIntentExpandedMethod.client_secret : str7, (i & 1048576) != 0 ? paymentIntentExpandedMethod.confirmation_method : method2, (i & 2097152) != 0 ? paymentIntentExpandedMethod.customer : str8, (i & 4194304) != 0 ? paymentIntentExpandedMethod.transfer_group : str9, (i & 8388608) != 0 ? paymentIntentExpandedMethod.amount_tip : l7, (i & 16777216) != 0 ? paymentIntentExpandedMethod.statement_descriptor_suffix : str10, (i & 33554432) != 0 ? paymentIntentExpandedMethod.payment_method_options : paymentMethodOptions, (i & 67108864) != 0 ? paymentIntentExpandedMethod.amount_surcharge : l8, (i & 134217728) != 0 ? paymentIntentExpandedMethod.setup_future_usage : str11, (i & 268435456) != 0 ? paymentIntentExpandedMethod.unknownFields() : byteString);
    }

    public final PaymentIntentExpandedMethod copy(String id, Long created, String status, Long amount, String currency, Source source, String statement_descriptor, String description, String receipt_email, Boolean livemode, ErrorResponse last_payment_error, Map<String, String> metadata, Charges charges, PaymentMethod payment_method, Long amount_capturable, Long amount_received, Long application_fee_amount, Long canceled_at, Method capture_method, String client_secret, Method confirmation_method, String customer, String transfer_group, Long amount_tip, String statement_descriptor_suffix, PaymentMethodOptions payment_method_options, Long amount_surcharge, String setup_future_usage, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(capture_method, "capture_method");
        Intrinsics.checkNotNullParameter(confirmation_method, "confirmation_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentIntentExpandedMethod(id, created, status, amount, currency, source, statement_descriptor, description, receipt_email, livemode, last_payment_error, metadata, charges, payment_method, amount_capturable, amount_received, application_fee_amount, canceled_at, capture_method, client_secret, confirmation_method, customer, transfer_group, amount_tip, statement_descriptor_suffix, payment_method_options, amount_surcharge, setup_future_usage, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentIntentExpandedMethod.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\b\u0010-\u001a\u00020\u0002H\u0016J\u0015\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000eJ\u0015\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010,J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0002\u0010.J\u001a\u0010\u001e\u001a\u00020\u00002\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001fJ\u0010\u0010 \u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010!J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010\u0012J\u0010\u0010%\u001a\u00020\u00002\b\u0010%\u001a\u0004\u0018\u00010\u0012J\u0012\u0010&\u001a\u00020\u00002\b\u0010&\u001a\u0004\u0018\u00010'H\u0007J\u0010\u0010(\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010\u0012J\u0010\u0010)\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010\u0012J\u0010\u0010*\u001a\u00020\u00002\b\u0010*\u001a\u0004\u0018\u00010\u0012J\u0010\u0010+\u001a\u00020\u00002\b\u0010+\u001a\u0004\u0018\u00010\u0012R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u001dR\u001e\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "Ljava/lang/Long;", "amount_capturable", "amount_received", "amount_surcharge", "amount_tip", "application_fee_amount", "canceled_at", "capture_method", "Lcom/stripe/proto/model/rest/Method;", "charges", "Lcom/stripe/proto/model/rest/Charges;", "client_secret", "", "confirmation_method", "created", FirebaseAnalytics.Param.CURRENCY, "customer", "description", OfflineStorageConstantsKt.ID, "last_payment_error", "Lcom/stripe/proto/model/rest/ErrorResponse;", "livemode", "", "Ljava/lang/Boolean;", "metadata", "", "payment_method", "Lcom/stripe/proto/model/rest/PaymentMethod;", "payment_method_options", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "receipt_email", "setup_future_usage", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "statement_descriptor", "statement_descriptor_suffix", NotificationCompat.CATEGORY_STATUS, "transfer_group", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentIntentExpandedMethod, Builder> {
        public Long amount;
        public Long amount_capturable;
        public Long amount_received;
        public Long amount_surcharge;
        public Long amount_tip;
        public Long application_fee_amount;
        public Long canceled_at;
        public Charges charges;
        public String client_secret;
        public Long created;
        public String currency;
        public String customer;
        public String description;
        public String id;
        public ErrorResponse last_payment_error;
        public Boolean livemode;
        public PaymentMethod payment_method;
        public PaymentMethodOptions payment_method_options;
        public String receipt_email;
        public String setup_future_usage;
        public Source source;
        public String statement_descriptor;
        public String statement_descriptor_suffix;
        public String status;
        public String transfer_group;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public Method capture_method = Method.automatic;
        public Method confirmation_method = Method.automatic;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder created(Long created) {
            this.created = created;
            return this;
        }

        public final Builder status(String status) {
            this.status = status;
            return this;
        }

        public final Builder amount(Long amount) {
            this.amount = amount;
            return this;
        }

        public final Builder currency(String currency) {
            this.currency = currency;
            return this;
        }

        @Deprecated(message = "source is deprecated")
        public final Builder source(Source source) {
            this.source = source;
            return this;
        }

        public final Builder statement_descriptor(String statement_descriptor) {
            this.statement_descriptor = statement_descriptor;
            return this;
        }

        public final Builder description(String description) {
            this.description = description;
            return this;
        }

        public final Builder receipt_email(String receipt_email) {
            this.receipt_email = receipt_email;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder last_payment_error(ErrorResponse last_payment_error) {
            this.last_payment_error = last_payment_error;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder charges(Charges charges) {
            this.charges = charges;
            return this;
        }

        public final Builder payment_method(PaymentMethod payment_method) {
            this.payment_method = payment_method;
            return this;
        }

        public final Builder amount_capturable(Long amount_capturable) {
            this.amount_capturable = amount_capturable;
            return this;
        }

        public final Builder amount_received(Long amount_received) {
            this.amount_received = amount_received;
            return this;
        }

        public final Builder application_fee_amount(Long application_fee_amount) {
            this.application_fee_amount = application_fee_amount;
            return this;
        }

        public final Builder canceled_at(Long canceled_at) {
            this.canceled_at = canceled_at;
            return this;
        }

        public final Builder capture_method(Method capture_method) {
            Intrinsics.checkNotNullParameter(capture_method, "capture_method");
            this.capture_method = capture_method;
            return this;
        }

        public final Builder client_secret(String client_secret) {
            this.client_secret = client_secret;
            return this;
        }

        public final Builder confirmation_method(Method confirmation_method) {
            Intrinsics.checkNotNullParameter(confirmation_method, "confirmation_method");
            this.confirmation_method = confirmation_method;
            return this;
        }

        public final Builder customer(String customer) {
            this.customer = customer;
            return this;
        }

        public final Builder transfer_group(String transfer_group) {
            this.transfer_group = transfer_group;
            return this;
        }

        public final Builder amount_tip(Long amount_tip) {
            this.amount_tip = amount_tip;
            return this;
        }

        public final Builder statement_descriptor_suffix(String statement_descriptor_suffix) {
            this.statement_descriptor_suffix = statement_descriptor_suffix;
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

        public final Builder setup_future_usage(String setup_future_usage) {
            this.setup_future_usage = setup_future_usage;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentIntentExpandedMethod build() {
            return new PaymentIntentExpandedMethod(this.id, this.created, this.status, this.amount, this.currency, this.source, this.statement_descriptor, this.description, this.receipt_email, this.livemode, this.last_payment_error, this.metadata, this.charges, this.payment_method, this.amount_capturable, this.amount_received, this.application_fee_amount, this.canceled_at, this.capture_method, this.client_secret, this.confirmation_method, this.customer, this.transfer_group, this.amount_tip, this.statement_descriptor_suffix, this.payment_method_options, this.amount_surcharge, this.setup_future_usage, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentIntentExpandedMethod.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentIntentExpandedMethod build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentIntentExpandedMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentIntentExpandedMethod>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentIntentExpandedMethod$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.PaymentIntentExpandedMethod$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentIntentExpandedMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.created != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.created);
                }
                if (value.status != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.status);
                }
                if (value.amount != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(4, value.amount);
                }
                if (value.currency != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.currency);
                }
                if (value.source != null) {
                    size += Source.ADAPTER.encodedSizeWithTag(6, value.source);
                }
                if (value.statement_descriptor != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.statement_descriptor);
                }
                if (value.description != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.description);
                }
                if (value.receipt_email != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.receipt_email);
                }
                if (value.livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(10, value.livemode);
                }
                if (value.last_payment_error != null) {
                    size += ErrorResponse.ADAPTER.encodedSizeWithTag(11, value.last_payment_error);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(12, value.metadata);
                if (value.charges != null) {
                    iEncodedSizeWithTag += Charges.ADAPTER.encodedSizeWithTag(13, value.charges);
                }
                if (value.payment_method != null) {
                    iEncodedSizeWithTag += PaymentMethod.ADAPTER.encodedSizeWithTag(14, value.payment_method);
                }
                if (value.amount_capturable != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(15, value.amount_capturable);
                }
                if (value.amount_received != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(16, value.amount_received);
                }
                if (value.application_fee_amount != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(17, value.application_fee_amount);
                }
                if (value.canceled_at != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(18, value.canceled_at);
                }
                if (value.capture_method != Method.automatic) {
                    iEncodedSizeWithTag += Method.ADAPTER.encodedSizeWithTag(19, value.capture_method);
                }
                if (value.client_secret != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(20, value.client_secret);
                }
                if (value.confirmation_method != Method.automatic) {
                    iEncodedSizeWithTag += Method.ADAPTER.encodedSizeWithTag(21, value.confirmation_method);
                }
                if (value.customer != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(22, value.customer);
                }
                if (value.transfer_group != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(23, value.transfer_group);
                }
                if (value.amount_tip != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(24, value.amount_tip);
                }
                if (value.statement_descriptor_suffix != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(25, value.statement_descriptor_suffix);
                }
                if (value.payment_method_options != null) {
                    iEncodedSizeWithTag += PaymentMethodOptions.ADAPTER.encodedSizeWithTag(26, value.payment_method_options);
                }
                if (value.amount_surcharge != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(27, value.amount_surcharge);
                }
                return value.setup_future_usage != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(28, value.setup_future_usage) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentIntentExpandedMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.created);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.status);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.amount);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.currency);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 6, value.source);
                }
                if (value.statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.statement_descriptor);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.description);
                }
                if (value.receipt_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.receipt_email);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 10, value.livemode);
                }
                if (value.last_payment_error != null) {
                    ErrorResponse.ADAPTER.encodeWithTag(writer, 11, value.last_payment_error);
                }
                getMetadataAdapter().encodeWithTag(writer, 12, value.metadata);
                if (value.charges != null) {
                    Charges.ADAPTER.encodeWithTag(writer, 13, value.charges);
                }
                if (value.payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 14, value.payment_method);
                }
                if (value.amount_capturable != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 15, value.amount_capturable);
                }
                if (value.amount_received != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 16, value.amount_received);
                }
                if (value.application_fee_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 17, value.application_fee_amount);
                }
                if (value.canceled_at != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 18, value.canceled_at);
                }
                if (value.capture_method != Method.automatic) {
                    Method.ADAPTER.encodeWithTag(writer, 19, value.capture_method);
                }
                if (value.client_secret != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 20, value.client_secret);
                }
                if (value.confirmation_method != Method.automatic) {
                    Method.ADAPTER.encodeWithTag(writer, 21, value.confirmation_method);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 22, value.customer);
                }
                if (value.transfer_group != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 23, value.transfer_group);
                }
                if (value.amount_tip != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 24, value.amount_tip);
                }
                if (value.statement_descriptor_suffix != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 25, value.statement_descriptor_suffix);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 26, value.payment_method_options);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 27, value.amount_surcharge);
                }
                if (value.setup_future_usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 28, value.setup_future_usage);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentIntentExpandedMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.setup_future_usage != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 28, value.setup_future_usage);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 27, value.amount_surcharge);
                }
                if (value.payment_method_options != null) {
                    PaymentMethodOptions.ADAPTER.encodeWithTag(writer, 26, value.payment_method_options);
                }
                if (value.statement_descriptor_suffix != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 25, value.statement_descriptor_suffix);
                }
                if (value.amount_tip != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 24, value.amount_tip);
                }
                if (value.transfer_group != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 23, value.transfer_group);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 22, value.customer);
                }
                if (value.confirmation_method != Method.automatic) {
                    Method.ADAPTER.encodeWithTag(writer, 21, value.confirmation_method);
                }
                if (value.client_secret != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 20, value.client_secret);
                }
                if (value.capture_method != Method.automatic) {
                    Method.ADAPTER.encodeWithTag(writer, 19, value.capture_method);
                }
                if (value.canceled_at != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 18, value.canceled_at);
                }
                if (value.application_fee_amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 17, value.application_fee_amount);
                }
                if (value.amount_received != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 16, value.amount_received);
                }
                if (value.amount_capturable != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 15, value.amount_capturable);
                }
                if (value.payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 14, value.payment_method);
                }
                if (value.charges != null) {
                    Charges.ADAPTER.encodeWithTag(writer, 13, value.charges);
                }
                getMetadataAdapter().encodeWithTag(writer, 12, value.metadata);
                if (value.last_payment_error != null) {
                    ErrorResponse.ADAPTER.encodeWithTag(writer, 11, value.last_payment_error);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 10, value.livemode);
                }
                if (value.receipt_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.receipt_email);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.description);
                }
                if (value.statement_descriptor != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.statement_descriptor);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 6, value.source);
                }
                if (value.currency != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.currency);
                }
                if (value.amount != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.amount);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.status);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.created);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentIntentExpandedMethod decode(ProtoReader reader) throws IOException {
                Method method;
                String str;
                Long l;
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Method method2 = Method.automatic;
                Method method3 = Method.automatic;
                long jBeginMessage = reader.beginMessage();
                Method methodDecode = method2;
                String strDecode = null;
                Long lDecode = null;
                String strDecode2 = null;
                Long lDecode2 = null;
                String strDecode3 = null;
                Source sourceDecode = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                Boolean boolDecode = null;
                ErrorResponse errorResponseDecode = null;
                Charges chargesDecode = null;
                PaymentMethod paymentMethodDecode = null;
                Long lDecode3 = null;
                Long lDecode4 = null;
                Long lDecode5 = null;
                Long lDecode6 = null;
                String strDecode7 = null;
                String strDecode8 = null;
                String strDecode9 = null;
                Long lDecode7 = null;
                String strDecode10 = null;
                PaymentMethodOptions paymentMethodOptionsDecode = null;
                Long lDecode8 = null;
                String strDecode11 = null;
                Method methodDecode2 = method3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 2:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 4:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 6:
                                sourceDecode = Source.ADAPTER.decode(reader);
                                continue;
                            case 7:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 8:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 9:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 10:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                            case 11:
                                errorResponseDecode = ErrorResponse.ADAPTER.decode(reader);
                                continue;
                            case 12:
                                method = methodDecode2;
                                str = strDecode;
                                l = lDecode;
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 13:
                                chargesDecode = Charges.ADAPTER.decode(reader);
                                continue;
                            case 14:
                                paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                                continue;
                            case 15:
                                lDecode3 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 16:
                                lDecode4 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 17:
                                lDecode5 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 18:
                                lDecode6 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 19:
                                method = methodDecode2;
                                str = strDecode;
                                l = lDecode;
                                try {
                                    methodDecode = Method.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 20:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 21:
                                try {
                                    methodDecode2 = Method.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    method = methodDecode2;
                                    str = strDecode;
                                    l = lDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    methodDecode2 = method;
                                    strDecode = str;
                                    lDecode = l;
                                }
                                break;
                            case 22:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 23:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 24:
                                lDecode7 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 25:
                                strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 26:
                                paymentMethodOptionsDecode = PaymentMethodOptions.ADAPTER.decode(reader);
                                continue;
                            case 27:
                                lDecode8 = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 28:
                                strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            default:
                                method = methodDecode2;
                                str = strDecode;
                                l = lDecode;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        methodDecode2 = method;
                        strDecode = str;
                        lDecode = l;
                    } else {
                        return new PaymentIntentExpandedMethod(strDecode, lDecode, strDecode2, lDecode2, strDecode3, sourceDecode, strDecode4, strDecode5, strDecode6, boolDecode, errorResponseDecode, linkedHashMap, chargesDecode, paymentMethodDecode, lDecode3, lDecode4, lDecode5, lDecode6, methodDecode, strDecode7, methodDecode2, strDecode8, strDecode9, lDecode7, strDecode10, paymentMethodOptionsDecode, lDecode8, strDecode11, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentIntentExpandedMethod redact(PaymentIntentExpandedMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Long l = value.created;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str2 = value.status;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                Long l2 = value.amount;
                Long lRedact2 = l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null;
                String str3 = value.currency;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                Source source = value.source;
                Source sourceRedact = source != null ? Source.ADAPTER.redact(source) : null;
                String str4 = value.statement_descriptor;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.description;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                Boolean bool = value.livemode;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                ErrorResponse errorResponse = value.last_payment_error;
                ErrorResponse errorResponseRedact = errorResponse != null ? ErrorResponse.ADAPTER.redact(errorResponse) : null;
                Charges charges = value.charges;
                Charges chargesRedact = charges != null ? Charges.ADAPTER.redact(charges) : null;
                PaymentMethod paymentMethod = value.payment_method;
                PaymentMethod paymentMethodRedact = paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null;
                Long l3 = value.amount_capturable;
                Long lRedact3 = l3 != null ? ProtoAdapter.INT64_VALUE.redact(l3) : null;
                Long l4 = value.amount_received;
                Long lRedact4 = l4 != null ? ProtoAdapter.INT64_VALUE.redact(l4) : null;
                Long l5 = value.application_fee_amount;
                Long lRedact5 = l5 != null ? ProtoAdapter.INT64_VALUE.redact(l5) : null;
                Long l6 = value.canceled_at;
                Long lRedact6 = l6 != null ? ProtoAdapter.INT64_VALUE.redact(l6) : null;
                String str6 = value.customer;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.transfer_group;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                Long l7 = value.amount_tip;
                Long lRedact7 = l7 != null ? ProtoAdapter.INT64_VALUE.redact(l7) : null;
                String str8 = value.statement_descriptor_suffix;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                PaymentMethodOptions paymentMethodOptions = value.payment_method_options;
                PaymentMethodOptions paymentMethodOptionsRedact = paymentMethodOptions != null ? PaymentMethodOptions.ADAPTER.redact(paymentMethodOptions) : null;
                Long l8 = value.amount_surcharge;
                Long lRedact8 = l8 != null ? ProtoAdapter.INT64_VALUE.redact(l8) : null;
                String str9 = value.setup_future_usage;
                return PaymentIntentExpandedMethod.copy$default(value, strRedact, lRedact, strRedact2, lRedact2, strRedact3, sourceRedact, strRedact4, strRedact5, null, boolRedact, errorResponseRedact, null, chargesRedact, paymentMethodRedact, lRedact3, lRedact4, lRedact5, lRedact6, null, null, null, strRedact6, strRedact7, lRedact7, strRedact8, paymentMethodOptionsRedact, lRedact8, str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null, ByteString.EMPTY, 1312768, null);
            }
        };
    }
}
