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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.rest.CardPresent;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CardPresent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000 32\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003234B³\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010$\u001a\u00020%¢\u0006\u0002\u0010&J¹\u0002\u0010*\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010$\u001a\u00020%¢\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020\u00172\b\u0010-\u001a\u0004\u0018\u00010.H\u0096\u0002J\b\u0010/\u001a\u00020\bH\u0016J\b\u00100\u001a\u00020\u0002H\u0016J\b\u00101\u001a\u00020\u0004H\u0016R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010'R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u0004\u0018\u00010!8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010(R\u0014\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010(R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010)R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/stripe/proto/model/rest/CardPresent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/CardPresent$Builder;", "brand", "", "country", "emv_auth_data", "exp_month", "", "exp_year", "fingerprint", "funding", "generated_card", "last4", "read_method", "receipt", "Lcom/stripe/proto/model/rest/Receipt;", "preferred_locales", "", "cardholder_name", "networks", "Lcom/stripe/proto/model/rest/CardNetworks;", "incremental_authorization_supported", "", "iin", "issuer", "description", "network", "wallet", "Lcom/stripe/proto/model/rest/Wallet;", "amount_authorized", "", "dynamic_currency_conversion", "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;", FirebaseAnalytics.Param.LOCATION, "reader_", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Integer;", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent;", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "DynamicCurrencyConversionDetails", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardPresent extends Message<CardPresent, Builder> {
    public static final ProtoAdapter<CardPresent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountAuthorized", schemaIndex = 20, tag = 22)
    public final Long amount_authorized;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String brand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "cardholderName", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 12, tag = 14)
    public final String cardholder_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String country;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 17, tag = 19)
    public final String description;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPresent$DynamicCurrencyConversionDetails#ADAPTER", jsonName = "dynamicCurrencyConversion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 21, tag = 23)
    public final DynamicCurrencyConversionDetails dynamic_currency_conversion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "emvAuthData", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final String emv_auth_data;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "expMonth", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 5)
    public final Integer exp_month;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "expYear", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 4, tag = 6)
    public final Integer exp_year;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 5, tag = 7)
    public final String fingerprint;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 6, tag = 8)
    public final String funding;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "generatedCard", schemaIndex = 7, tag = 12)
    public final String generated_card;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 15, tag = 17)
    public final String iin;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "incrementalAuthorizationSupported", schemaIndex = 14, tag = 16)
    public final Boolean incremental_authorization_supported;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 16, tag = 18)
    public final String issuer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 8, tag = 9)
    public final String last4;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 22, tag = 24)
    public final String location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 18, tag = 20)
    public final String network;

    @WireField(adapter = "com.stripe.proto.model.rest.CardNetworks#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 15)
    public final CardNetworks networks;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "preferredLocales", label = WireField.Label.REPEATED, schemaIndex = 11, tag = 13)
    public final List<String> preferred_locales;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "readMethod", schemaIndex = 9, tag = 10)
    public final String read_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = OfflineStorageConstantsKt.READER, schemaIndex = 23, tag = 25)
    public final String reader_;

    @WireField(adapter = "com.stripe.proto.model.rest.Receipt#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final Receipt receipt;

    @WireField(adapter = "com.stripe.proto.model.rest.Wallet#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 21)
    public final Wallet wallet;

    public CardPresent() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 33554431, null);
    }

    public /* synthetic */ CardPresent(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, String str6, String str7, String str8, Receipt receipt, List list, String str9, CardNetworks cardNetworks, Boolean bool, String str10, String str11, String str12, String str13, Wallet wallet, Long l, DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, String str14, String str15, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : str7, (i & 512) != 0 ? null : str8, (i & 1024) != 0 ? null : receipt, (i & 2048) != 0 ? CollectionsKt.emptyList() : list, (i & 4096) != 0 ? null : str9, (i & 8192) != 0 ? null : cardNetworks, (i & 16384) != 0 ? null : bool, (i & 32768) != 0 ? null : str10, (i & 65536) != 0 ? null : str11, (i & 131072) != 0 ? null : str12, (i & 262144) != 0 ? null : str13, (i & 524288) != 0 ? null : wallet, (i & 1048576) != 0 ? null : l, (i & 2097152) != 0 ? null : dynamicCurrencyConversionDetails, (i & 4194304) != 0 ? null : str14, (i & 8388608) != 0 ? null : str15, (i & 16777216) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardPresent(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, String str6, String str7, String str8, Receipt receipt, List<String> preferred_locales, String str9, CardNetworks cardNetworks, Boolean bool, String str10, String str11, String str12, String str13, Wallet wallet, Long l, DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, String str14, String str15, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(preferred_locales, "preferred_locales");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.brand = str;
        this.country = str2;
        this.emv_auth_data = str3;
        this.exp_month = num;
        this.exp_year = num2;
        this.fingerprint = str4;
        this.funding = str5;
        this.generated_card = str6;
        this.last4 = str7;
        this.read_method = str8;
        this.receipt = receipt;
        this.cardholder_name = str9;
        this.networks = cardNetworks;
        this.incremental_authorization_supported = bool;
        this.iin = str10;
        this.issuer = str11;
        this.description = str12;
        this.network = str13;
        this.wallet = wallet;
        this.amount_authorized = l;
        this.dynamic_currency_conversion = dynamicCurrencyConversionDetails;
        this.location = str14;
        this.reader_ = str15;
        this.preferred_locales = Internal.immutableCopyOf("preferred_locales", preferred_locales);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.brand = this.brand;
        builder.country = this.country;
        builder.emv_auth_data = this.emv_auth_data;
        builder.exp_month = this.exp_month;
        builder.exp_year = this.exp_year;
        builder.fingerprint = this.fingerprint;
        builder.funding = this.funding;
        builder.generated_card = this.generated_card;
        builder.last4 = this.last4;
        builder.read_method = this.read_method;
        builder.receipt = this.receipt;
        builder.preferred_locales = this.preferred_locales;
        builder.cardholder_name = this.cardholder_name;
        builder.networks = this.networks;
        builder.incremental_authorization_supported = this.incremental_authorization_supported;
        builder.iin = this.iin;
        builder.issuer = this.issuer;
        builder.description = this.description;
        builder.network = this.network;
        builder.wallet = this.wallet;
        builder.amount_authorized = this.amount_authorized;
        builder.dynamic_currency_conversion = this.dynamic_currency_conversion;
        builder.location = this.location;
        builder.reader_ = this.reader_;
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
        return Intrinsics.areEqual(unknownFields(), cardPresent.unknownFields()) && Intrinsics.areEqual(this.brand, cardPresent.brand) && Intrinsics.areEqual(this.country, cardPresent.country) && Intrinsics.areEqual(this.emv_auth_data, cardPresent.emv_auth_data) && Intrinsics.areEqual(this.exp_month, cardPresent.exp_month) && Intrinsics.areEqual(this.exp_year, cardPresent.exp_year) && Intrinsics.areEqual(this.fingerprint, cardPresent.fingerprint) && Intrinsics.areEqual(this.funding, cardPresent.funding) && Intrinsics.areEqual(this.generated_card, cardPresent.generated_card) && Intrinsics.areEqual(this.last4, cardPresent.last4) && Intrinsics.areEqual(this.read_method, cardPresent.read_method) && Intrinsics.areEqual(this.receipt, cardPresent.receipt) && Intrinsics.areEqual(this.preferred_locales, cardPresent.preferred_locales) && Intrinsics.areEqual(this.cardholder_name, cardPresent.cardholder_name) && Intrinsics.areEqual(this.networks, cardPresent.networks) && Intrinsics.areEqual(this.incremental_authorization_supported, cardPresent.incremental_authorization_supported) && Intrinsics.areEqual(this.iin, cardPresent.iin) && Intrinsics.areEqual(this.issuer, cardPresent.issuer) && Intrinsics.areEqual(this.description, cardPresent.description) && Intrinsics.areEqual(this.network, cardPresent.network) && Intrinsics.areEqual(this.wallet, cardPresent.wallet) && Intrinsics.areEqual(this.amount_authorized, cardPresent.amount_authorized) && Intrinsics.areEqual(this.dynamic_currency_conversion, cardPresent.dynamic_currency_conversion) && Intrinsics.areEqual(this.location, cardPresent.location) && Intrinsics.areEqual(this.reader_, cardPresent.reader_);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.brand;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.country;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.emv_auth_data;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Integer num = this.exp_month;
        int iHashCode5 = (iHashCode4 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.exp_year;
        int iHashCode6 = (iHashCode5 + (num2 != null ? num2.hashCode() : 0)) * 37;
        String str4 = this.fingerprint;
        int iHashCode7 = (iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.funding;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.generated_card;
        int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.last4;
        int iHashCode10 = (iHashCode9 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.read_method;
        int iHashCode11 = (iHashCode10 + (str8 != null ? str8.hashCode() : 0)) * 37;
        Receipt receipt = this.receipt;
        int iHashCode12 = (((iHashCode11 + (receipt != null ? receipt.hashCode() : 0)) * 37) + this.preferred_locales.hashCode()) * 37;
        String str9 = this.cardholder_name;
        int iHashCode13 = (iHashCode12 + (str9 != null ? str9.hashCode() : 0)) * 37;
        CardNetworks cardNetworks = this.networks;
        int iHashCode14 = (iHashCode13 + (cardNetworks != null ? cardNetworks.hashCode() : 0)) * 37;
        Boolean bool = this.incremental_authorization_supported;
        int iHashCode15 = (iHashCode14 + (bool != null ? bool.hashCode() : 0)) * 37;
        String str10 = this.iin;
        int iHashCode16 = (iHashCode15 + (str10 != null ? str10.hashCode() : 0)) * 37;
        String str11 = this.issuer;
        int iHashCode17 = (iHashCode16 + (str11 != null ? str11.hashCode() : 0)) * 37;
        String str12 = this.description;
        int iHashCode18 = (iHashCode17 + (str12 != null ? str12.hashCode() : 0)) * 37;
        String str13 = this.network;
        int iHashCode19 = (iHashCode18 + (str13 != null ? str13.hashCode() : 0)) * 37;
        Wallet wallet = this.wallet;
        int iHashCode20 = (iHashCode19 + (wallet != null ? wallet.hashCode() : 0)) * 37;
        Long l = this.amount_authorized;
        int iHashCode21 = (iHashCode20 + (l != null ? l.hashCode() : 0)) * 37;
        DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = this.dynamic_currency_conversion;
        int iHashCode22 = (iHashCode21 + (dynamicCurrencyConversionDetails != null ? dynamicCurrencyConversionDetails.hashCode() : 0)) * 37;
        String str14 = this.location;
        int iHashCode23 = (iHashCode22 + (str14 != null ? str14.hashCode() : 0)) * 37;
        String str15 = this.reader_;
        int iHashCode24 = iHashCode23 + (str15 != null ? str15.hashCode() : 0);
        this.hashCode = iHashCode24;
        return iHashCode24;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.brand != null) {
            arrayList.add("brand=" + this.brand);
        }
        if (this.country != null) {
            arrayList.add("country=" + this.country);
        }
        if (this.emv_auth_data != null) {
            arrayList.add("emv_auth_data=██");
        }
        if (this.exp_month != null) {
            arrayList.add("exp_month=██");
        }
        if (this.exp_year != null) {
            arrayList.add("exp_year=██");
        }
        if (this.fingerprint != null) {
            arrayList.add("fingerprint=██");
        }
        if (this.funding != null) {
            arrayList.add("funding=" + this.funding);
        }
        if (this.generated_card != null) {
            arrayList.add("generated_card=" + this.generated_card);
        }
        if (this.last4 != null) {
            arrayList.add("last4=" + this.last4);
        }
        if (this.read_method != null) {
            arrayList.add("read_method=" + this.read_method);
        }
        if (this.receipt != null) {
            arrayList.add("receipt=" + this.receipt);
        }
        if (!this.preferred_locales.isEmpty()) {
            arrayList.add("preferred_locales=" + Internal.sanitize(this.preferred_locales));
        }
        if (this.cardholder_name != null) {
            arrayList.add("cardholder_name=██");
        }
        if (this.networks != null) {
            arrayList.add("networks=" + this.networks);
        }
        if (this.incremental_authorization_supported != null) {
            arrayList.add("incremental_authorization_supported=" + this.incremental_authorization_supported);
        }
        if (this.iin != null) {
            arrayList.add("iin=" + this.iin);
        }
        if (this.issuer != null) {
            arrayList.add("issuer=" + this.issuer);
        }
        if (this.description != null) {
            arrayList.add("description=" + this.description);
        }
        if (this.network != null) {
            arrayList.add("network=" + this.network);
        }
        if (this.wallet != null) {
            arrayList.add("wallet=" + this.wallet);
        }
        if (this.amount_authorized != null) {
            arrayList.add("amount_authorized=" + this.amount_authorized);
        }
        if (this.dynamic_currency_conversion != null) {
            arrayList.add("dynamic_currency_conversion=" + this.dynamic_currency_conversion);
        }
        if (this.location != null) {
            arrayList.add("location=" + this.location);
        }
        if (this.reader_ != null) {
            arrayList.add("reader_=" + this.reader_);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CardPresent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CardPresent copy$default(CardPresent cardPresent, String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, String str6, String str7, String str8, Receipt receipt, List list, String str9, CardNetworks cardNetworks, Boolean bool, String str10, String str11, String str12, String str13, Wallet wallet, Long l, DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, String str14, String str15, ByteString byteString, int i, Object obj) {
        String str16 = (i & 1) != 0 ? cardPresent.brand : str;
        return cardPresent.copy(str16, (i & 2) != 0 ? cardPresent.country : str2, (i & 4) != 0 ? cardPresent.emv_auth_data : str3, (i & 8) != 0 ? cardPresent.exp_month : num, (i & 16) != 0 ? cardPresent.exp_year : num2, (i & 32) != 0 ? cardPresent.fingerprint : str4, (i & 64) != 0 ? cardPresent.funding : str5, (i & 128) != 0 ? cardPresent.generated_card : str6, (i & 256) != 0 ? cardPresent.last4 : str7, (i & 512) != 0 ? cardPresent.read_method : str8, (i & 1024) != 0 ? cardPresent.receipt : receipt, (i & 2048) != 0 ? cardPresent.preferred_locales : list, (i & 4096) != 0 ? cardPresent.cardholder_name : str9, (i & 8192) != 0 ? cardPresent.networks : cardNetworks, (i & 16384) != 0 ? cardPresent.incremental_authorization_supported : bool, (i & 32768) != 0 ? cardPresent.iin : str10, (i & 65536) != 0 ? cardPresent.issuer : str11, (i & 131072) != 0 ? cardPresent.description : str12, (i & 262144) != 0 ? cardPresent.network : str13, (i & 524288) != 0 ? cardPresent.wallet : wallet, (i & 1048576) != 0 ? cardPresent.amount_authorized : l, (i & 2097152) != 0 ? cardPresent.dynamic_currency_conversion : dynamicCurrencyConversionDetails, (i & 4194304) != 0 ? cardPresent.location : str14, (i & 8388608) != 0 ? cardPresent.reader_ : str15, (i & 16777216) != 0 ? cardPresent.unknownFields() : byteString);
    }

    public final CardPresent copy(String brand, String country, String emv_auth_data, Integer exp_month, Integer exp_year, String fingerprint, String funding, String generated_card, String last4, String read_method, Receipt receipt, List<String> preferred_locales, String cardholder_name, CardNetworks networks, Boolean incremental_authorization_supported, String iin, String issuer, String description, String network, Wallet wallet, Long amount_authorized, DynamicCurrencyConversionDetails dynamic_currency_conversion, String location, String reader_, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(preferred_locales, "preferred_locales");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CardPresent(brand, country, emv_auth_data, exp_month, exp_year, fingerprint, funding, generated_card, last4, read_method, receipt, preferred_locales, cardholder_name, networks, incremental_authorization_supported, iin, issuer, description, network, wallet, amount_authorized, dynamic_currency_conversion, location, reader_, unknownFields);
    }

    /* JADX INFO: compiled from: CardPresent.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010(J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\b\u0010)\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\bJ\u0015\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010*J\u0015\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010*J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\bJ\u0015\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010+J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u001d\u001a\u00020\u00002\b\u0010\u001d\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0014\u0010 \u001a\u00020\u00002\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\b0!J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010\bJ\u0010\u0010#\u001a\u00020\u00002\b\u0010#\u001a\u0004\u0018\u00010\bJ\u0010\u0010$\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010%J\u0010\u0010&\u001a\u00020\u00002\b\u0010&\u001a\u0004\u0018\u00010'R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0019R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010 \u001a\b\u0012\u0004\u0012\u00020\b0!8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/stripe/proto/model/rest/CardPresent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/CardPresent;", "()V", "amount_authorized", "", "Ljava/lang/Long;", "brand", "", "cardholder_name", "country", "description", "dynamic_currency_conversion", "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;", "emv_auth_data", "exp_month", "", "Ljava/lang/Integer;", "exp_year", "fingerprint", "funding", "generated_card", "iin", "incremental_authorization_supported", "", "Ljava/lang/Boolean;", "issuer", "last4", FirebaseAnalytics.Param.LOCATION, "network", "networks", "Lcom/stripe/proto/model/rest/CardNetworks;", "preferred_locales", "", "read_method", "reader_", "receipt", "Lcom/stripe/proto/model/rest/Receipt;", "wallet", "Lcom/stripe/proto/model/rest/Wallet;", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/CardPresent$Builder;", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPresent$Builder;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/CardPresent$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CardPresent, Builder> {
        public Long amount_authorized;
        public String brand;
        public String cardholder_name;
        public String country;
        public String description;
        public DynamicCurrencyConversionDetails dynamic_currency_conversion;
        public String emv_auth_data;
        public Integer exp_month;
        public Integer exp_year;
        public String fingerprint;
        public String funding;
        public String generated_card;
        public String iin;
        public Boolean incremental_authorization_supported;
        public String issuer;
        public String last4;
        public String location;
        public String network;
        public CardNetworks networks;
        public List<String> preferred_locales = CollectionsKt.emptyList();
        public String read_method;
        public String reader_;
        public Receipt receipt;
        public Wallet wallet;

        public final Builder brand(String brand) {
            this.brand = brand;
            return this;
        }

        public final Builder country(String country) {
            this.country = country;
            return this;
        }

        public final Builder emv_auth_data(String emv_auth_data) {
            this.emv_auth_data = emv_auth_data;
            return this;
        }

        public final Builder exp_month(Integer exp_month) {
            this.exp_month = exp_month;
            return this;
        }

        public final Builder exp_year(Integer exp_year) {
            this.exp_year = exp_year;
            return this;
        }

        public final Builder fingerprint(String fingerprint) {
            this.fingerprint = fingerprint;
            return this;
        }

        public final Builder funding(String funding) {
            this.funding = funding;
            return this;
        }

        public final Builder generated_card(String generated_card) {
            this.generated_card = generated_card;
            return this;
        }

        public final Builder last4(String last4) {
            this.last4 = last4;
            return this;
        }

        public final Builder read_method(String read_method) {
            this.read_method = read_method;
            return this;
        }

        public final Builder receipt(Receipt receipt) {
            this.receipt = receipt;
            return this;
        }

        public final Builder preferred_locales(List<String> preferred_locales) {
            Intrinsics.checkNotNullParameter(preferred_locales, "preferred_locales");
            Internal.checkElementsNotNull(preferred_locales);
            this.preferred_locales = preferred_locales;
            return this;
        }

        public final Builder cardholder_name(String cardholder_name) {
            this.cardholder_name = cardholder_name;
            return this;
        }

        public final Builder networks(CardNetworks networks) {
            this.networks = networks;
            return this;
        }

        public final Builder incremental_authorization_supported(Boolean incremental_authorization_supported) {
            this.incremental_authorization_supported = incremental_authorization_supported;
            return this;
        }

        public final Builder iin(String iin) {
            this.iin = iin;
            return this;
        }

        public final Builder issuer(String issuer) {
            this.issuer = issuer;
            return this;
        }

        public final Builder description(String description) {
            this.description = description;
            return this;
        }

        public final Builder network(String network) {
            this.network = network;
            return this;
        }

        public final Builder wallet(Wallet wallet) {
            this.wallet = wallet;
            return this;
        }

        public final Builder amount_authorized(Long amount_authorized) {
            this.amount_authorized = amount_authorized;
            return this;
        }

        public final Builder dynamic_currency_conversion(DynamicCurrencyConversionDetails dynamic_currency_conversion) {
            this.dynamic_currency_conversion = dynamic_currency_conversion;
            return this;
        }

        public final Builder location(String location) {
            this.location = location;
            return this;
        }

        public final Builder reader_(String reader_) {
            this.reader_ = reader_;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CardPresent build() {
            return new CardPresent(this.brand, this.country, this.emv_auth_data, this.exp_month, this.exp_year, this.fingerprint, this.funding, this.generated_card, this.last4, this.read_method, this.receipt, this.preferred_locales, this.cardholder_name, this.networks, this.incremental_authorization_supported, this.iin, this.issuer, this.description, this.network, this.wallet, this.amount_authorized, this.dynamic_currency_conversion, this.location, this.reader_, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CardPresent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/CardPresent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/CardPresent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/CardPresent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<CardPresent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.CardPresent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CardPresent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.brand != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.brand);
                }
                if (value.country != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.country);
                }
                if (value.emv_auth_data != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.emv_auth_data);
                }
                if (value.exp_month != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(5, value.exp_month);
                }
                if (value.exp_year != null) {
                    size += ProtoAdapter.INT32_VALUE.encodedSizeWithTag(6, value.exp_year);
                }
                if (value.fingerprint != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.fingerprint);
                }
                if (value.funding != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.funding);
                }
                if (value.generated_card != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(12, value.generated_card);
                }
                if (value.last4 != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.last4);
                }
                if (value.read_method != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.read_method);
                }
                if (value.receipt != null) {
                    size += Receipt.ADAPTER.encodedSizeWithTag(11, value.receipt);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(13, value.preferred_locales);
                if (value.cardholder_name != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(14, value.cardholder_name);
                }
                if (value.networks != null) {
                    iEncodedSizeWithTag += CardNetworks.ADAPTER.encodedSizeWithTag(15, value.networks);
                }
                if (value.incremental_authorization_supported != null) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(16, value.incremental_authorization_supported);
                }
                if (value.iin != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(17, value.iin);
                }
                if (value.issuer != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(18, value.issuer);
                }
                if (value.description != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(19, value.description);
                }
                if (value.network != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(20, value.network);
                }
                if (value.wallet != null) {
                    iEncodedSizeWithTag += Wallet.ADAPTER.encodedSizeWithTag(21, value.wallet);
                }
                if (value.amount_authorized != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(22, value.amount_authorized);
                }
                if (value.dynamic_currency_conversion != null) {
                    iEncodedSizeWithTag += CardPresent.DynamicCurrencyConversionDetails.ADAPTER.encodedSizeWithTag(23, value.dynamic_currency_conversion);
                }
                if (value.location != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(24, value.location);
                }
                return value.reader_ != null ? iEncodedSizeWithTag + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(25, value.reader_) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CardPresent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.brand != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.brand);
                }
                if (value.country != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.country);
                }
                if (value.emv_auth_data != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.emv_auth_data);
                }
                if (value.exp_month != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 5, value.exp_month);
                }
                if (value.exp_year != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 6, value.exp_year);
                }
                if (value.fingerprint != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.fingerprint);
                }
                if (value.funding != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.funding);
                }
                if (value.generated_card != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.generated_card);
                }
                if (value.last4 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.last4);
                }
                if (value.read_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.read_method);
                }
                if (value.receipt != null) {
                    Receipt.ADAPTER.encodeWithTag(writer, 11, value.receipt);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 13, value.preferred_locales);
                if (value.cardholder_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.cardholder_name);
                }
                if (value.networks != null) {
                    CardNetworks.ADAPTER.encodeWithTag(writer, 15, value.networks);
                }
                if (value.incremental_authorization_supported != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 16, value.incremental_authorization_supported);
                }
                if (value.iin != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 17, value.iin);
                }
                if (value.issuer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 18, value.issuer);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 19, value.description);
                }
                if (value.network != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 20, value.network);
                }
                if (value.wallet != null) {
                    Wallet.ADAPTER.encodeWithTag(writer, 21, value.wallet);
                }
                if (value.amount_authorized != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 22, value.amount_authorized);
                }
                if (value.dynamic_currency_conversion != null) {
                    CardPresent.DynamicCurrencyConversionDetails.ADAPTER.encodeWithTag(writer, 23, value.dynamic_currency_conversion);
                }
                if (value.location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 24, value.location);
                }
                if (value.reader_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 25, value.reader_);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CardPresent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reader_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 25, value.reader_);
                }
                if (value.location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 24, value.location);
                }
                if (value.dynamic_currency_conversion != null) {
                    CardPresent.DynamicCurrencyConversionDetails.ADAPTER.encodeWithTag(writer, 23, value.dynamic_currency_conversion);
                }
                if (value.amount_authorized != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 22, value.amount_authorized);
                }
                if (value.wallet != null) {
                    Wallet.ADAPTER.encodeWithTag(writer, 21, value.wallet);
                }
                if (value.network != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 20, value.network);
                }
                if (value.description != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 19, value.description);
                }
                if (value.issuer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 18, value.issuer);
                }
                if (value.iin != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 17, value.iin);
                }
                if (value.incremental_authorization_supported != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 16, value.incremental_authorization_supported);
                }
                if (value.networks != null) {
                    CardNetworks.ADAPTER.encodeWithTag(writer, 15, value.networks);
                }
                if (value.cardholder_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.cardholder_name);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 13, value.preferred_locales);
                if (value.receipt != null) {
                    Receipt.ADAPTER.encodeWithTag(writer, 11, value.receipt);
                }
                if (value.read_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.read_method);
                }
                if (value.last4 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.last4);
                }
                if (value.generated_card != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.generated_card);
                }
                if (value.funding != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.funding);
                }
                if (value.fingerprint != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.fingerprint);
                }
                if (value.exp_year != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 6, value.exp_year);
                }
                if (value.exp_month != null) {
                    ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 5, value.exp_month);
                }
                if (value.emv_auth_data != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.emv_auth_data);
                }
                if (value.country != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.country);
                }
                if (value.brand != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.brand);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CardPresent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                Integer numDecode = null;
                Integer numDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                Receipt receiptDecode = null;
                String strDecode8 = null;
                CardNetworks cardNetworksDecode = null;
                Boolean boolDecode = null;
                String strDecode9 = null;
                String strDecode10 = null;
                String strDecode11 = null;
                String strDecode12 = null;
                Wallet walletDecode = null;
                Long lDecode = null;
                CardPresent.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetailsDecode = null;
                String strDecode13 = null;
                String strDecode14 = null;
                String strDecode15 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode15 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 5:
                                numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 6:
                                numDecode2 = ProtoAdapter.INT32_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 11:
                                receiptDecode = Receipt.ADAPTER.decode(reader);
                                break;
                            case 12:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 13:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 14:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 15:
                                cardNetworksDecode = CardNetworks.ADAPTER.decode(reader);
                                break;
                            case 16:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 17:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 18:
                                strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 19:
                                strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 20:
                                strDecode12 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 21:
                                walletDecode = Wallet.ADAPTER.decode(reader);
                                break;
                            case 22:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 23:
                                dynamicCurrencyConversionDetailsDecode = CardPresent.DynamicCurrencyConversionDetails.ADAPTER.decode(reader);
                                break;
                            case 24:
                                strDecode13 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 25:
                                strDecode14 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new CardPresent(strDecode15, str, strDecode2, numDecode, numDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, receiptDecode, arrayList, strDecode8, cardNetworksDecode, boolDecode, strDecode9, strDecode10, strDecode11, strDecode12, walletDecode, lDecode, dynamicCurrencyConversionDetailsDecode, strDecode13, strDecode14, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CardPresent redact(CardPresent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.brand;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.country;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.funding;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.generated_card;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.last4;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.read_method;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                Receipt receipt = value.receipt;
                Receipt receiptRedact = receipt != null ? Receipt.ADAPTER.redact(receipt) : null;
                CardNetworks cardNetworks = value.networks;
                CardNetworks cardNetworksRedact = cardNetworks != null ? CardNetworks.ADAPTER.redact(cardNetworks) : null;
                Boolean bool = value.incremental_authorization_supported;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str7 = value.iin;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                String str8 = value.issuer;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                String str9 = value.description;
                String strRedact9 = str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null;
                String str10 = value.network;
                String strRedact10 = str10 != null ? ProtoAdapter.STRING_VALUE.redact(str10) : null;
                Wallet wallet = value.wallet;
                Wallet walletRedact = wallet != null ? Wallet.ADAPTER.redact(wallet) : null;
                Long l = value.amount_authorized;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                CardPresent.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = value.dynamic_currency_conversion;
                CardPresent.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetailsRedact = dynamicCurrencyConversionDetails != null ? CardPresent.DynamicCurrencyConversionDetails.ADAPTER.redact(dynamicCurrencyConversionDetails) : null;
                String str11 = value.location;
                String strRedact11 = str11 != null ? ProtoAdapter.STRING_VALUE.redact(str11) : null;
                String str12 = value.reader_;
                return CardPresent.copy$default(value, strRedact, strRedact2, null, null, null, null, strRedact3, strRedact4, strRedact5, strRedact6, receiptRedact, null, null, cardNetworksRedact, boolRedact, strRedact7, strRedact8, strRedact9, strRedact10, walletRedact, lRedact, dynamicCurrencyConversionDetailsRedact, strRedact11, str12 != null ? ProtoAdapter.STRING_VALUE.redact(str12) : null, ByteString.EMPTY, 2048, null);
            }
        };
    }

    /* JADX INFO: compiled from: CardPresent.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\u0081\u0001\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\r\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;", NotificationCompat.CATEGORY_STATUS, "", "original_amount", "", "original_currency", "transaction_fx_rate", "", "transaction_markup_percent", "cardholder_rate", "reference_fx_rate", "reference_markup_percent", "fx_as_of", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V", "Ljava/lang/Float;", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DynamicCurrencyConversionDetails extends Message<DynamicCurrencyConversionDetails, Builder> {
        public static final ProtoAdapter<DynamicCurrencyConversionDetails> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "cardholderRate", schemaIndex = 5, tag = 6)
        public final Float cardholder_rate;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "fxAsOf", schemaIndex = 8, tag = 9)
        public final Float fx_as_of;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "originalAmount", schemaIndex = 1, tag = 2)
        public final Long original_amount;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "originalCurrency", schemaIndex = 2, tag = 3)
        public final String original_currency;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "referenceFxRate", schemaIndex = 6, tag = 7)
        public final Float reference_fx_rate;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "referenceMarkupPercent", schemaIndex = 7, tag = 8)
        public final Float reference_markup_percent;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
        public final String status;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "transactionFxRate", schemaIndex = 3, tag = 4)
        public final Float transaction_fx_rate;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "transactionMarkupPercent", schemaIndex = 4, tag = 5)
        public final Float transaction_markup_percent;

        public DynamicCurrencyConversionDetails() {
            this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
        }

        public /* synthetic */ DynamicCurrencyConversionDetails(String str, Long l, String str2, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : f, (i & 16) != 0 ? null : f2, (i & 32) != 0 ? null : f3, (i & 64) != 0 ? null : f4, (i & 128) != 0 ? null : f5, (i & 256) != 0 ? null : f6, (i & 512) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DynamicCurrencyConversionDetails(String str, Long l, String str2, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.status = str;
            this.original_amount = l;
            this.original_currency = str2;
            this.transaction_fx_rate = f;
            this.transaction_markup_percent = f2;
            this.cardholder_rate = f3;
            this.reference_fx_rate = f4;
            this.reference_markup_percent = f5;
            this.fx_as_of = f6;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.status = this.status;
            builder.original_amount = this.original_amount;
            builder.original_currency = this.original_currency;
            builder.transaction_fx_rate = this.transaction_fx_rate;
            builder.transaction_markup_percent = this.transaction_markup_percent;
            builder.cardholder_rate = this.cardholder_rate;
            builder.reference_fx_rate = this.reference_fx_rate;
            builder.reference_markup_percent = this.reference_markup_percent;
            builder.fx_as_of = this.fx_as_of;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof DynamicCurrencyConversionDetails)) {
                return false;
            }
            DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = (DynamicCurrencyConversionDetails) other;
            return Intrinsics.areEqual(unknownFields(), dynamicCurrencyConversionDetails.unknownFields()) && Intrinsics.areEqual(this.status, dynamicCurrencyConversionDetails.status) && Intrinsics.areEqual(this.original_amount, dynamicCurrencyConversionDetails.original_amount) && Intrinsics.areEqual(this.original_currency, dynamicCurrencyConversionDetails.original_currency) && Intrinsics.areEqual(this.transaction_fx_rate, dynamicCurrencyConversionDetails.transaction_fx_rate) && Intrinsics.areEqual(this.transaction_markup_percent, dynamicCurrencyConversionDetails.transaction_markup_percent) && Intrinsics.areEqual(this.cardholder_rate, dynamicCurrencyConversionDetails.cardholder_rate) && Intrinsics.areEqual(this.reference_fx_rate, dynamicCurrencyConversionDetails.reference_fx_rate) && Intrinsics.areEqual(this.reference_markup_percent, dynamicCurrencyConversionDetails.reference_markup_percent) && Intrinsics.areEqual(this.fx_as_of, dynamicCurrencyConversionDetails.fx_as_of);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.status;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            Long l = this.original_amount;
            int iHashCode3 = (iHashCode2 + (l != null ? l.hashCode() : 0)) * 37;
            String str2 = this.original_currency;
            int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
            Float f = this.transaction_fx_rate;
            int iHashCode5 = (iHashCode4 + (f != null ? f.hashCode() : 0)) * 37;
            Float f2 = this.transaction_markup_percent;
            int iHashCode6 = (iHashCode5 + (f2 != null ? f2.hashCode() : 0)) * 37;
            Float f3 = this.cardholder_rate;
            int iHashCode7 = (iHashCode6 + (f3 != null ? f3.hashCode() : 0)) * 37;
            Float f4 = this.reference_fx_rate;
            int iHashCode8 = (iHashCode7 + (f4 != null ? f4.hashCode() : 0)) * 37;
            Float f5 = this.reference_markup_percent;
            int iHashCode9 = (iHashCode8 + (f5 != null ? f5.hashCode() : 0)) * 37;
            Float f6 = this.fx_as_of;
            int iHashCode10 = iHashCode9 + (f6 != null ? f6.hashCode() : 0);
            this.hashCode = iHashCode10;
            return iHashCode10;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.status != null) {
                arrayList.add("status=" + this.status);
            }
            if (this.original_amount != null) {
                arrayList.add("original_amount=" + this.original_amount);
            }
            if (this.original_currency != null) {
                arrayList.add("original_currency=" + this.original_currency);
            }
            if (this.transaction_fx_rate != null) {
                arrayList.add("transaction_fx_rate=" + this.transaction_fx_rate);
            }
            if (this.transaction_markup_percent != null) {
                arrayList.add("transaction_markup_percent=" + this.transaction_markup_percent);
            }
            if (this.cardholder_rate != null) {
                arrayList.add("cardholder_rate=" + this.cardholder_rate);
            }
            if (this.reference_fx_rate != null) {
                arrayList.add("reference_fx_rate=" + this.reference_fx_rate);
            }
            if (this.reference_markup_percent != null) {
                arrayList.add("reference_markup_percent=" + this.reference_markup_percent);
            }
            if (this.fx_as_of != null) {
                arrayList.add("fx_as_of=" + this.fx_as_of);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "DynamicCurrencyConversionDetails{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ DynamicCurrencyConversionDetails copy$default(DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails, String str, Long l, String str2, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = dynamicCurrencyConversionDetails.status;
            }
            if ((i & 2) != 0) {
                l = dynamicCurrencyConversionDetails.original_amount;
            }
            if ((i & 4) != 0) {
                str2 = dynamicCurrencyConversionDetails.original_currency;
            }
            if ((i & 8) != 0) {
                f = dynamicCurrencyConversionDetails.transaction_fx_rate;
            }
            if ((i & 16) != 0) {
                f2 = dynamicCurrencyConversionDetails.transaction_markup_percent;
            }
            if ((i & 32) != 0) {
                f3 = dynamicCurrencyConversionDetails.cardholder_rate;
            }
            if ((i & 64) != 0) {
                f4 = dynamicCurrencyConversionDetails.reference_fx_rate;
            }
            if ((i & 128) != 0) {
                f5 = dynamicCurrencyConversionDetails.reference_markup_percent;
            }
            if ((i & 256) != 0) {
                f6 = dynamicCurrencyConversionDetails.fx_as_of;
            }
            if ((i & 512) != 0) {
                byteString = dynamicCurrencyConversionDetails.unknownFields();
            }
            Float f7 = f6;
            ByteString byteString2 = byteString;
            Float f8 = f4;
            Float f9 = f5;
            Float f10 = f2;
            Float f11 = f3;
            return dynamicCurrencyConversionDetails.copy(str, l, str2, f, f10, f11, f8, f9, f7, byteString2);
        }

        public final DynamicCurrencyConversionDetails copy(String status, Long original_amount, String original_currency, Float transaction_fx_rate, Float transaction_markup_percent, Float cardholder_rate, Float reference_fx_rate, Float reference_markup_percent, Float fx_as_of, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new DynamicCurrencyConversionDetails(status, original_amount, original_currency, transaction_fx_rate, transaction_markup_percent, cardholder_rate, reference_fx_rate, reference_markup_percent, fx_as_of, unknownFields);
        }

        /* JADX INFO: compiled from: CardPresent.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0014J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0015\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0015\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\fJ\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0015\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;", "()V", "cardholder_rate", "", "Ljava/lang/Float;", "fx_as_of", "original_amount", "", "Ljava/lang/Long;", "original_currency", "", "reference_fx_rate", "reference_markup_percent", NotificationCompat.CATEGORY_STATUS, "transaction_fx_rate", "transaction_markup_percent", "build", "(Ljava/lang/Float;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<DynamicCurrencyConversionDetails, Builder> {
            public Float cardholder_rate;
            public Float fx_as_of;
            public Long original_amount;
            public String original_currency;
            public Float reference_fx_rate;
            public Float reference_markup_percent;
            public String status;
            public Float transaction_fx_rate;
            public Float transaction_markup_percent;

            public final Builder status(String status) {
                this.status = status;
                return this;
            }

            public final Builder original_amount(Long original_amount) {
                this.original_amount = original_amount;
                return this;
            }

            public final Builder original_currency(String original_currency) {
                this.original_currency = original_currency;
                return this;
            }

            public final Builder transaction_fx_rate(Float transaction_fx_rate) {
                this.transaction_fx_rate = transaction_fx_rate;
                return this;
            }

            public final Builder transaction_markup_percent(Float transaction_markup_percent) {
                this.transaction_markup_percent = transaction_markup_percent;
                return this;
            }

            public final Builder cardholder_rate(Float cardholder_rate) {
                this.cardholder_rate = cardholder_rate;
                return this;
            }

            public final Builder reference_fx_rate(Float reference_fx_rate) {
                this.reference_fx_rate = reference_fx_rate;
                return this;
            }

            public final Builder reference_markup_percent(Float reference_markup_percent) {
                this.reference_markup_percent = reference_markup_percent;
                return this;
            }

            public final Builder fx_as_of(Float fx_as_of) {
                this.fx_as_of = fx_as_of;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public DynamicCurrencyConversionDetails build() {
                return new DynamicCurrencyConversionDetails(this.status, this.original_amount, this.original_currency, this.transaction_fx_rate, this.transaction_markup_percent, this.cardholder_rate, this.reference_fx_rate, this.reference_markup_percent, this.fx_as_of, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CardPresent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ DynamicCurrencyConversionDetails build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionDetails.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<DynamicCurrencyConversionDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.CardPresent$DynamicCurrencyConversionDetails$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CardPresent.DynamicCurrencyConversionDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.status != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.status);
                    }
                    return size + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.original_amount) + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.original_currency) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(4, value.transaction_fx_rate) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(5, value.transaction_markup_percent) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(6, value.cardholder_rate) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(7, value.reference_fx_rate) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(8, value.reference_markup_percent) + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(9, value.fx_as_of);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CardPresent.DynamicCurrencyConversionDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.status != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.status);
                    }
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.original_amount);
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.original_currency);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 4, value.transaction_fx_rate);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 5, value.transaction_markup_percent);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 6, value.cardholder_rate);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 7, value.reference_fx_rate);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 8, value.reference_markup_percent);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 9, value.fx_as_of);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CardPresent.DynamicCurrencyConversionDetails value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 9, value.fx_as_of);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 8, value.reference_markup_percent);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 7, value.reference_fx_rate);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 6, value.cardholder_rate);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 5, value.transaction_markup_percent);
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 4, value.transaction_fx_rate);
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.original_currency);
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.original_amount);
                    if (value.status != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.status);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CardPresent.DynamicCurrencyConversionDetails redact(CardPresent.DynamicCurrencyConversionDetails value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.status;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    Long l = value.original_amount;
                    Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                    String str2 = value.original_currency;
                    String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                    Float f = value.transaction_fx_rate;
                    Float fRedact = f != null ? ProtoAdapter.FLOAT_VALUE.redact(f) : null;
                    Float f2 = value.transaction_markup_percent;
                    Float fRedact2 = f2 != null ? ProtoAdapter.FLOAT_VALUE.redact(f2) : null;
                    Float f3 = value.cardholder_rate;
                    Float fRedact3 = f3 != null ? ProtoAdapter.FLOAT_VALUE.redact(f3) : null;
                    Float f4 = value.reference_fx_rate;
                    Float fRedact4 = f4 != null ? ProtoAdapter.FLOAT_VALUE.redact(f4) : null;
                    Float f5 = value.reference_markup_percent;
                    Float fRedact5 = f5 != null ? ProtoAdapter.FLOAT_VALUE.redact(f5) : null;
                    Float f6 = value.fx_as_of;
                    return value.copy(strRedact, lRedact, strRedact2, fRedact, fRedact2, fRedact3, fRedact4, fRedact5, f6 != null ? ProtoAdapter.FLOAT_VALUE.redact(f6) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CardPresent.DynamicCurrencyConversionDetails decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    Long lDecode = null;
                    String strDecode2 = null;
                    Float fDecode = null;
                    Float fDecode2 = null;
                    Float fDecode3 = null;
                    Float fDecode4 = null;
                    Float fDecode5 = null;
                    Float fDecode6 = null;
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
                                    fDecode = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                    break;
                                case 5:
                                    fDecode2 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                    break;
                                case 6:
                                    fDecode3 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                    break;
                                case 7:
                                    fDecode4 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                    break;
                                case 8:
                                    fDecode5 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                    break;
                                case 9:
                                    fDecode6 = ProtoAdapter.FLOAT_VALUE.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new CardPresent.DynamicCurrencyConversionDetails(strDecode, lDecode, strDecode2, fDecode, fDecode2, fDecode3, fDecode4, fDecode5, fDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
