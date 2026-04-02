package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: CardPresentDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 w2\u00060\u0001j\u0002`\u0002:\u0002vwB\u0081\u0002\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0004\u0012\b\b\u0001\u0010\n\u001a\u00020\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001d\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010$B\u008f\u0002\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010%J\u000b\u0010P\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0012\u0010T\u001a\u0004\u0018\u00010\u0015HÀ\u0003¢\u0006\u0004\bU\u0010?J\u000b\u0010V\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u00060\u001dHÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010a\u001a\u00020\u0004HÆ\u0003J\t\u0010b\u001a\u00020\u0004HÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0096\u0002\u0010g\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010hJ\u0013\u0010i\u001a\u00020\u00152\b\u0010j\u001a\u0004\u0018\u00010kHÖ\u0003J\t\u0010l\u001a\u00020\u0004HÖ\u0001J\t\u0010m\u001a\u00020\u0006HÖ\u0001J&\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020\u00002\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020tHÁ\u0001¢\u0006\u0002\buR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b(\u0010)\u001a\u0004\b*\u0010'R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b+\u0010'R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b,\u0010'R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010)\u001a\u0004\b0\u0010'R\u001c\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010)\u001a\u0004\b2\u00103R\u001c\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b4\u0010)\u001a\u0004\b5\u00103R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b6\u0010'R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b7\u0010'R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b8\u0010'R\u001c\u00109\u001a\u00020:8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b;\u0010)\u001a\u0004\b<\u0010=R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u0004¢\u0006\n\n\u0002\u0010@\u001a\u0004\b>\u0010?R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\bA\u0010'R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\bB\u0010'R\u0013\u0010 \u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\bC\u0010'R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\bD\u0010'R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\bI\u0010'R\u0013\u0010!\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010'R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bK\u0010)\u001a\u0004\bL\u0010MR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\bN\u0010O¨\u0006x"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "brand", "", "country", "emvAuthData", "expMonth", "expYear", "funding", "generatedCard", "last4", "readMethod", "cardholderName", "receiptDetails", "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;", "networks", "Lcom/stripe/stripeterminal/external/models/CardNetworks;", "incrementalAuthorizationSupported", "", "network", "iin", "issuer", "description", "wallet", "Lcom/stripe/stripeterminal/external/models/Wallet;", "preferredLocales", "", "dynamicCurrencyConversion", "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;", FirebaseAnalytics.Param.LOCATION, OfflineStorageConstantsKt.READER, "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)V", "getBrand", "()Ljava/lang/String;", "getCardholderName$annotations", "()V", "getCardholderName", "getCountry", "getDescription", "getDynamicCurrencyConversion", "()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;", "getEmvAuthData$annotations", "getEmvAuthData", "getExpMonth$annotations", "getExpMonth", "()I", "getExpYear$annotations", "getExpYear", "getFunding", "getGeneratedCard", "getIin", "incrementalAuthorizationStatus", "Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;", "getIncrementalAuthorizationStatus$annotations", "getIncrementalAuthorizationStatus", "()Lcom/stripe/stripeterminal/external/models/IncrementalAuthorizationStatus;", "getIncrementalAuthorizationSupported$public_release", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getIssuer", "getLast4", "getLocation", "getNetwork", "getNetworks", "()Lcom/stripe/stripeterminal/external/models/CardNetworks;", "getPreferredLocales", "()Ljava/util/List;", "getReadMethod", "getReader", "getReceiptDetails$annotations", "getReceiptDetails", "()Lcom/stripe/stripeterminal/external/models/ReceiptDetails;", "getWallet", "()Lcom/stripe/stripeterminal/external/models/Wallet;", "component1", "component10", "component11", "component12", "component13", "component13$public_release", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ReceiptDetails;Lcom/stripe/stripeterminal/external/models/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Wallet;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversion;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class CardPresentDetails implements java.io.Serializable {
    private final String brand;
    private final String cardholderName;
    private final String country;
    private final String description;
    private final DynamicCurrencyConversion dynamicCurrencyConversion;
    private final String emvAuthData;
    private final int expMonth;
    private final int expYear;
    private final String funding;
    private final String generatedCard;
    private final String iin;
    private final IncrementalAuthorizationStatus incrementalAuthorizationStatus;
    private final Boolean incrementalAuthorizationSupported;
    private final String issuer;
    private final String last4;
    private final String location;
    private final String network;
    private final CardNetworks networks;
    private final List<String> preferredLocales;
    private final String readMethod;
    private final String reader;
    private final ReceiptDetails receiptDetails;
    private final Wallet wallet;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE), null, null, null};

    public CardPresentDetails() {
        this((String) null, (String) null, (String) null, 0, 0, (String) null, (String) null, (String) null, (String) null, (String) null, (ReceiptDetails) null, (CardNetworks) null, (Boolean) null, (String) null, (String) null, (String) null, (String) null, (Wallet) null, (List) null, (DynamicCurrencyConversion) null, (String) null, (String) null, 4194303, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CardPresentDetails copy$default(CardPresentDetails cardPresentDetails, String str, String str2, String str3, int i, int i2, String str4, String str5, String str6, String str7, String str8, ReceiptDetails receiptDetails, CardNetworks cardNetworks, Boolean bool, String str9, String str10, String str11, String str12, Wallet wallet, List list, DynamicCurrencyConversion dynamicCurrencyConversion, String str13, String str14, int i3, Object obj) {
        String str15;
        String str16;
        String str17 = (i3 & 1) != 0 ? cardPresentDetails.brand : str;
        String str18 = (i3 & 2) != 0 ? cardPresentDetails.country : str2;
        String str19 = (i3 & 4) != 0 ? cardPresentDetails.emvAuthData : str3;
        int i4 = (i3 & 8) != 0 ? cardPresentDetails.expMonth : i;
        int i5 = (i3 & 16) != 0 ? cardPresentDetails.expYear : i2;
        String str20 = (i3 & 32) != 0 ? cardPresentDetails.funding : str4;
        String str21 = (i3 & 64) != 0 ? cardPresentDetails.generatedCard : str5;
        String str22 = (i3 & 128) != 0 ? cardPresentDetails.last4 : str6;
        String str23 = (i3 & 256) != 0 ? cardPresentDetails.readMethod : str7;
        String str24 = (i3 & 512) != 0 ? cardPresentDetails.cardholderName : str8;
        ReceiptDetails receiptDetails2 = (i3 & 1024) != 0 ? cardPresentDetails.receiptDetails : receiptDetails;
        CardNetworks cardNetworks2 = (i3 & 2048) != 0 ? cardPresentDetails.networks : cardNetworks;
        Boolean bool2 = (i3 & 4096) != 0 ? cardPresentDetails.incrementalAuthorizationSupported : bool;
        String str25 = (i3 & 8192) != 0 ? cardPresentDetails.network : str9;
        String str26 = str17;
        String str27 = (i3 & 16384) != 0 ? cardPresentDetails.iin : str10;
        String str28 = (i3 & 32768) != 0 ? cardPresentDetails.issuer : str11;
        String str29 = (i3 & 65536) != 0 ? cardPresentDetails.description : str12;
        Wallet wallet2 = (i3 & 131072) != 0 ? cardPresentDetails.wallet : wallet;
        List list2 = (i3 & 262144) != 0 ? cardPresentDetails.preferredLocales : list;
        DynamicCurrencyConversion dynamicCurrencyConversion2 = (i3 & 524288) != 0 ? cardPresentDetails.dynamicCurrencyConversion : dynamicCurrencyConversion;
        String str30 = (i3 & 1048576) != 0 ? cardPresentDetails.location : str13;
        if ((i3 & 2097152) != 0) {
            str16 = str30;
            str15 = cardPresentDetails.reader;
        } else {
            str15 = str14;
            str16 = str30;
        }
        return cardPresentDetails.copy(str26, str18, str19, i4, i5, str20, str21, str22, str23, str24, receiptDetails2, cardNetworks2, bool2, str25, str27, str28, str29, wallet2, list2, dynamicCurrencyConversion2, str16, str15);
    }

    public static /* synthetic */ void getCardholderName$annotations() {
    }

    public static /* synthetic */ void getEmvAuthData$annotations() {
    }

    public static /* synthetic */ void getExpMonth$annotations() {
    }

    public static /* synthetic */ void getExpYear$annotations() {
    }

    @Transient
    public static /* synthetic */ void getIncrementalAuthorizationStatus$annotations() {
    }

    @SerialName("receipt")
    public static /* synthetic */ void getReceiptDetails$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBrand() {
        return this.brand;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCardholderName() {
        return this.cardholderName;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final ReceiptDetails getReceiptDetails() {
        return this.receiptDetails;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final CardNetworks getNetworks() {
        return this.networks;
    }

    /* JADX INFO: renamed from: component13$public_release, reason: from getter */
    public final Boolean getIncrementalAuthorizationSupported() {
        return this.incrementalAuthorizationSupported;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getNetwork() {
        return this.network;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getIin() {
        return this.iin;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getIssuer() {
        return this.issuer;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Wallet getWallet() {
        return this.wallet;
    }

    public final List<String> component19() {
        return this.preferredLocales;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final DynamicCurrencyConversion getDynamicCurrencyConversion() {
        return this.dynamicCurrencyConversion;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getLocation() {
        return this.location;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getReader() {
        return this.reader;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEmvAuthData() {
        return this.emvAuthData;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getExpMonth() {
        return this.expMonth;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getExpYear() {
        return this.expYear;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getFunding() {
        return this.funding;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getGeneratedCard() {
        return this.generatedCard;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getLast4() {
        return this.last4;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getReadMethod() {
        return this.readMethod;
    }

    public final CardPresentDetails copy(String brand, String country, String emvAuthData, int expMonth, int expYear, String funding, String generatedCard, String last4, String readMethod, String cardholderName, ReceiptDetails receiptDetails, CardNetworks networks, Boolean incrementalAuthorizationSupported, String network, String iin, String issuer, String description, Wallet wallet, List<String> preferredLocales, DynamicCurrencyConversion dynamicCurrencyConversion, String location, String reader) {
        Intrinsics.checkNotNullParameter(preferredLocales, "preferredLocales");
        return new CardPresentDetails(brand, country, emvAuthData, expMonth, expYear, funding, generatedCard, last4, readMethod, cardholderName, receiptDetails, networks, incrementalAuthorizationSupported, network, iin, issuer, description, wallet, preferredLocales, dynamicCurrencyConversion, location, reader);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardPresentDetails)) {
            return false;
        }
        CardPresentDetails cardPresentDetails = (CardPresentDetails) other;
        return Intrinsics.areEqual(this.brand, cardPresentDetails.brand) && Intrinsics.areEqual(this.country, cardPresentDetails.country) && Intrinsics.areEqual(this.emvAuthData, cardPresentDetails.emvAuthData) && this.expMonth == cardPresentDetails.expMonth && this.expYear == cardPresentDetails.expYear && Intrinsics.areEqual(this.funding, cardPresentDetails.funding) && Intrinsics.areEqual(this.generatedCard, cardPresentDetails.generatedCard) && Intrinsics.areEqual(this.last4, cardPresentDetails.last4) && Intrinsics.areEqual(this.readMethod, cardPresentDetails.readMethod) && Intrinsics.areEqual(this.cardholderName, cardPresentDetails.cardholderName) && Intrinsics.areEqual(this.receiptDetails, cardPresentDetails.receiptDetails) && Intrinsics.areEqual(this.networks, cardPresentDetails.networks) && Intrinsics.areEqual(this.incrementalAuthorizationSupported, cardPresentDetails.incrementalAuthorizationSupported) && Intrinsics.areEqual(this.network, cardPresentDetails.network) && Intrinsics.areEqual(this.iin, cardPresentDetails.iin) && Intrinsics.areEqual(this.issuer, cardPresentDetails.issuer) && Intrinsics.areEqual(this.description, cardPresentDetails.description) && Intrinsics.areEqual(this.wallet, cardPresentDetails.wallet) && Intrinsics.areEqual(this.preferredLocales, cardPresentDetails.preferredLocales) && Intrinsics.areEqual(this.dynamicCurrencyConversion, cardPresentDetails.dynamicCurrencyConversion) && Intrinsics.areEqual(this.location, cardPresentDetails.location) && Intrinsics.areEqual(this.reader, cardPresentDetails.reader);
    }

    public int hashCode() {
        String str = this.brand;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.country;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.emvAuthData;
        int iHashCode3 = (((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + Integer.hashCode(this.expMonth)) * 31) + Integer.hashCode(this.expYear)) * 31;
        String str4 = this.funding;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.generatedCard;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.last4;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.readMethod;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.cardholderName;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        ReceiptDetails receiptDetails = this.receiptDetails;
        int iHashCode9 = (iHashCode8 + (receiptDetails == null ? 0 : receiptDetails.hashCode())) * 31;
        CardNetworks cardNetworks = this.networks;
        int iHashCode10 = (iHashCode9 + (cardNetworks == null ? 0 : cardNetworks.hashCode())) * 31;
        Boolean bool = this.incrementalAuthorizationSupported;
        int iHashCode11 = (iHashCode10 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str9 = this.network;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.iin;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.issuer;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.description;
        int iHashCode15 = (iHashCode14 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Wallet wallet = this.wallet;
        int iHashCode16 = (((iHashCode15 + (wallet == null ? 0 : wallet.hashCode())) * 31) + this.preferredLocales.hashCode()) * 31;
        DynamicCurrencyConversion dynamicCurrencyConversion = this.dynamicCurrencyConversion;
        int iHashCode17 = (iHashCode16 + (dynamicCurrencyConversion == null ? 0 : dynamicCurrencyConversion.hashCode())) * 31;
        String str13 = this.location;
        int iHashCode18 = (iHashCode17 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.reader;
        return iHashCode18 + (str14 != null ? str14.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CardPresentDetails(brand=");
        sb.append(this.brand).append(", country=").append(this.country).append(", emvAuthData=").append(this.emvAuthData).append(", expMonth=").append(this.expMonth).append(", expYear=").append(this.expYear).append(", funding=").append(this.funding).append(", generatedCard=").append(this.generatedCard).append(", last4=").append(this.last4).append(", readMethod=").append(this.readMethod).append(", cardholderName=").append(this.cardholderName).append(", receiptDetails=").append(this.receiptDetails).append(", networks=");
        sb.append(this.networks).append(", incrementalAuthorizationSupported=").append(this.incrementalAuthorizationSupported).append(", network=").append(this.network).append(", iin=").append(this.iin).append(", issuer=").append(this.issuer).append(", description=").append(this.description).append(", wallet=").append(this.wallet).append(", preferredLocales=").append(this.preferredLocales).append(", dynamicCurrencyConversion=").append(this.dynamicCurrencyConversion).append(", location=").append(this.location).append(", reader=").append(this.reader).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: CardPresentDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CardPresentDetails> serializer() {
            return CardPresentDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CardPresentDetails(int i, String str, String str2, String str3, int i2, int i3, String str4, String str5, String str6, String str7, String str8, @SerialName("receipt") ReceiptDetails receiptDetails, CardNetworks cardNetworks, Boolean bool, String str9, String str10, String str11, String str12, Wallet wallet, List list, DynamicCurrencyConversion dynamicCurrencyConversion, String str13, String str14, SerializationConstructorMarker serializationConstructorMarker) {
        IncrementalAuthorizationStatus incrementalAuthorizationStatus;
        if ((i & 1) == 0) {
            this.brand = null;
        } else {
            this.brand = str;
        }
        if ((i & 2) == 0) {
            this.country = null;
        } else {
            this.country = str2;
        }
        if ((i & 4) == 0) {
            this.emvAuthData = null;
        } else {
            this.emvAuthData = str3;
        }
        if ((i & 8) == 0) {
            this.expMonth = 0;
        } else {
            this.expMonth = i2;
        }
        if ((i & 16) == 0) {
            this.expYear = 0;
        } else {
            this.expYear = i3;
        }
        if ((i & 32) == 0) {
            this.funding = null;
        } else {
            this.funding = str4;
        }
        if ((i & 64) == 0) {
            this.generatedCard = null;
        } else {
            this.generatedCard = str5;
        }
        if ((i & 128) == 0) {
            this.last4 = null;
        } else {
            this.last4 = str6;
        }
        if ((i & 256) == 0) {
            this.readMethod = null;
        } else {
            this.readMethod = str7;
        }
        if ((i & 512) == 0) {
            this.cardholderName = null;
        } else {
            this.cardholderName = str8;
        }
        if ((i & 1024) == 0) {
            this.receiptDetails = null;
        } else {
            this.receiptDetails = receiptDetails;
        }
        if ((i & 2048) == 0) {
            this.networks = null;
        } else {
            this.networks = cardNetworks;
        }
        if ((i & 4096) == 0) {
            this.incrementalAuthorizationSupported = null;
        } else {
            this.incrementalAuthorizationSupported = bool;
        }
        if ((i & 8192) == 0) {
            this.network = null;
        } else {
            this.network = str9;
        }
        if ((i & 16384) == 0) {
            this.iin = null;
        } else {
            this.iin = str10;
        }
        if ((32768 & i) == 0) {
            this.issuer = null;
        } else {
            this.issuer = str11;
        }
        if ((65536 & i) == 0) {
            this.description = null;
        } else {
            this.description = str12;
        }
        if ((131072 & i) == 0) {
            this.wallet = null;
        } else {
            this.wallet = wallet;
        }
        this.preferredLocales = (262144 & i) == 0 ? CollectionsKt.emptyList() : list;
        if ((524288 & i) == 0) {
            this.dynamicCurrencyConversion = null;
        } else {
            this.dynamicCurrencyConversion = dynamicCurrencyConversion;
        }
        if ((1048576 & i) == 0) {
            this.location = null;
        } else {
            this.location = str13;
        }
        if ((i & 2097152) == 0) {
            this.reader = null;
        } else {
            this.reader = str14;
        }
        Boolean bool2 = this.incrementalAuthorizationSupported;
        if (bool2 == null) {
            incrementalAuthorizationStatus = IncrementalAuthorizationStatus.UNKNOWN;
        } else if (Intrinsics.areEqual((Object) bool2, (Object) false)) {
            incrementalAuthorizationStatus = IncrementalAuthorizationStatus.NOT_SUPPORTED;
        } else {
            if (!Intrinsics.areEqual((Object) bool2, (Object) true)) {
                throw new NoWhenBranchMatchedException();
            }
            incrementalAuthorizationStatus = IncrementalAuthorizationStatus.SUPPORTED;
        }
        this.incrementalAuthorizationStatus = incrementalAuthorizationStatus;
    }

    public CardPresentDetails(String str, String str2, String str3, int i, int i2, String str4, String str5, String str6, String str7, String str8, ReceiptDetails receiptDetails, CardNetworks cardNetworks, Boolean bool, String str9, String str10, String str11, String str12, Wallet wallet, List<String> preferredLocales, DynamicCurrencyConversion dynamicCurrencyConversion, String str13, String str14) {
        IncrementalAuthorizationStatus incrementalAuthorizationStatus;
        Intrinsics.checkNotNullParameter(preferredLocales, "preferredLocales");
        this.brand = str;
        this.country = str2;
        this.emvAuthData = str3;
        this.expMonth = i;
        this.expYear = i2;
        this.funding = str4;
        this.generatedCard = str5;
        this.last4 = str6;
        this.readMethod = str7;
        this.cardholderName = str8;
        this.receiptDetails = receiptDetails;
        this.networks = cardNetworks;
        this.incrementalAuthorizationSupported = bool;
        this.network = str9;
        this.iin = str10;
        this.issuer = str11;
        this.description = str12;
        this.wallet = wallet;
        this.preferredLocales = preferredLocales;
        this.dynamicCurrencyConversion = dynamicCurrencyConversion;
        this.location = str13;
        this.reader = str14;
        if (bool == null) {
            incrementalAuthorizationStatus = IncrementalAuthorizationStatus.UNKNOWN;
        } else if (Intrinsics.areEqual((Object) bool, (Object) false)) {
            incrementalAuthorizationStatus = IncrementalAuthorizationStatus.NOT_SUPPORTED;
        } else {
            if (!Intrinsics.areEqual((Object) bool, (Object) true)) {
                throw new NoWhenBranchMatchedException();
            }
            incrementalAuthorizationStatus = IncrementalAuthorizationStatus.SUPPORTED;
        }
        this.incrementalAuthorizationStatus = incrementalAuthorizationStatus;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(CardPresentDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.brand != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.brand);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.country != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.country);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.emvAuthData != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.emvAuthData);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.expMonth != 0) {
            output.encodeIntElement(serialDesc, 3, self.expMonth);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.expYear != 0) {
            output.encodeIntElement(serialDesc, 4, self.expYear);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.funding != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.funding);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.generatedCard != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.generatedCard);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.last4 != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.last4);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.readMethod != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, StringSerializer.INSTANCE, self.readMethod);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.cardholderName != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, StringSerializer.INSTANCE, self.cardholderName);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.receiptDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, ReceiptDetails$$serializer.INSTANCE, self.receiptDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.networks != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, CardNetworks$$serializer.INSTANCE, self.networks);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || self.incrementalAuthorizationSupported != null) {
            output.encodeNullableSerializableElement(serialDesc, 12, BooleanSerializer.INSTANCE, self.incrementalAuthorizationSupported);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.network != null) {
            output.encodeNullableSerializableElement(serialDesc, 13, StringSerializer.INSTANCE, self.network);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.iin != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, StringSerializer.INSTANCE, self.iin);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.issuer != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, StringSerializer.INSTANCE, self.issuer);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 16) || self.description != null) {
            output.encodeNullableSerializableElement(serialDesc, 16, StringSerializer.INSTANCE, self.description);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 17) || self.wallet != null) {
            output.encodeNullableSerializableElement(serialDesc, 17, Wallet$$serializer.INSTANCE, self.wallet);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 18) || !Intrinsics.areEqual(self.preferredLocales, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 18, kSerializerArr[18], self.preferredLocales);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 19) || self.dynamicCurrencyConversion != null) {
            output.encodeNullableSerializableElement(serialDesc, 19, DynamicCurrencyConversion$$serializer.INSTANCE, self.dynamicCurrencyConversion);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 20) || self.location != null) {
            output.encodeNullableSerializableElement(serialDesc, 20, StringSerializer.INSTANCE, self.location);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 21) && self.reader == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 21, StringSerializer.INSTANCE, self.reader);
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getEmvAuthData() {
        return this.emvAuthData;
    }

    public final int getExpMonth() {
        return this.expMonth;
    }

    public final int getExpYear() {
        return this.expYear;
    }

    public final String getFunding() {
        return this.funding;
    }

    public final String getGeneratedCard() {
        return this.generatedCard;
    }

    public final String getLast4() {
        return this.last4;
    }

    public final String getReadMethod() {
        return this.readMethod;
    }

    public final String getCardholderName() {
        return this.cardholderName;
    }

    public final ReceiptDetails getReceiptDetails() {
        return this.receiptDetails;
    }

    public final CardNetworks getNetworks() {
        return this.networks;
    }

    public final Boolean getIncrementalAuthorizationSupported$public_release() {
        return this.incrementalAuthorizationSupported;
    }

    public final String getNetwork() {
        return this.network;
    }

    public final String getIin() {
        return this.iin;
    }

    public final String getIssuer() {
        return this.issuer;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Wallet getWallet() {
        return this.wallet;
    }

    public /* synthetic */ CardPresentDetails(String str, String str2, String str3, int i, int i2, String str4, String str5, String str6, String str7, String str8, ReceiptDetails receiptDetails, CardNetworks cardNetworks, Boolean bool, String str9, String str10, String str11, String str12, Wallet wallet, List list, DynamicCurrencyConversion dynamicCurrencyConversion, String str13, String str14, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, (i3 & 8) != 0 ? 0 : i, (i3 & 16) == 0 ? i2 : 0, (i3 & 32) != 0 ? null : str4, (i3 & 64) != 0 ? null : str5, (i3 & 128) != 0 ? null : str6, (i3 & 256) != 0 ? null : str7, (i3 & 512) != 0 ? null : str8, (i3 & 1024) != 0 ? null : receiptDetails, (i3 & 2048) != 0 ? null : cardNetworks, (i3 & 4096) != 0 ? null : bool, (i3 & 8192) != 0 ? null : str9, (i3 & 16384) != 0 ? null : str10, (i3 & 32768) != 0 ? null : str11, (i3 & 65536) != 0 ? null : str12, (i3 & 131072) != 0 ? null : wallet, (i3 & 262144) != 0 ? CollectionsKt.emptyList() : list, (i3 & 524288) != 0 ? null : dynamicCurrencyConversion, (i3 & 1048576) != 0 ? null : str13, (i3 & 2097152) != 0 ? null : str14);
    }

    public final List<String> getPreferredLocales() {
        return this.preferredLocales;
    }

    public final DynamicCurrencyConversion getDynamicCurrencyConversion() {
        return this.dynamicCurrencyConversion;
    }

    public final String getLocation() {
        return this.location;
    }

    public final String getReader() {
        return this.reader;
    }

    public final IncrementalAuthorizationStatus getIncrementalAuthorizationStatus() {
        return this.incrementalAuthorizationStatus;
    }
}
