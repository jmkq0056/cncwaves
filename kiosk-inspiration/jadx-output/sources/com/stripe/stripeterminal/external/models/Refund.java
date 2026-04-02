package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Refund.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 Y2\u00060\u0001j\u0002`\u0002:\u0002XYBÓ\u0001\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010\u001cB½\u0001\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001dJ\t\u00107\u001a\u00020\u0006HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u0010\u0010@\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u000b\u0010A\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0017\u0010D\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010G\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001fJä\u0001\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÆ\u0001¢\u0006\u0002\u0010IJ\u0013\u0010J\u001a\u00020K2\b\u0010L\u001a\u0004\u0018\u00010MHÖ\u0003J\t\u0010N\u001a\u00020\u0004HÖ\u0001J\t\u0010O\u001a\u00020\u0006HÖ\u0001J&\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u00002\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VHÁ\u0001¢\u0006\u0002\bWR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b#\u0010$\u001a\u0004\b%\u0010\"R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010 \u001a\u0004\b&\u0010\u001fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\"R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\"R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\"R\u001f\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b.\u0010$\u001a\u0004\b/\u0010\"R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\"R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\"R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\"R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\"R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\"¨\u0006Z"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Refund;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", OfflineStorageConstantsKt.ID, "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "chargeId", FirebaseAnalytics.Param.CURRENCY, "description", "metadata", "", "paymentIntentId", "reason", "created", NotificationCompat.CATEGORY_STATUS, "balanceTransaction", "failureBalanceTransaction", "failureReason", "receiptNumber", "sourceTransferReversal", "transferReversal", "paymentMethodDetails", "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;)V", "getAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getBalanceTransaction", "()Ljava/lang/String;", "getChargeId$annotations", "()V", "getChargeId", "getCreated", "getCurrency", "getDescription", "getFailureBalanceTransaction", "getFailureReason", "getId", "getMetadata", "()Ljava/util/Map;", "getPaymentIntentId$annotations", "getPaymentIntentId", "getPaymentMethodDetails", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "getReason", "getReceiptNumber", "getSourceTransferReversal", "getStatus", "getTransferReversal", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;)Lcom/stripe/stripeterminal/external/models/Refund;", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class Refund implements java.io.Serializable {
    private final Long amount;
    private final String balanceTransaction;
    private final String chargeId;
    private final Long created;
    private final String currency;
    private final String description;
    private final String failureBalanceTransaction;
    private final String failureReason;
    private final String id;
    private final Map<String, String> metadata;
    private final String paymentIntentId;
    private final PaymentMethodDetails paymentMethodDetails;
    private final String reason;
    private final String receiptNumber;
    private final String sourceTransferReversal;
    private final String status;
    private final String transferReversal;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), null, null, null, null, null, null, null, null, null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Refund copy$default(Refund refund, String str, Long l, String str2, String str3, String str4, Map map, String str5, String str6, Long l2, String str7, String str8, String str9, String str10, String str11, String str12, String str13, PaymentMethodDetails paymentMethodDetails, int i, Object obj) {
        PaymentMethodDetails paymentMethodDetails2;
        String str14;
        String str15;
        Refund refund2;
        String str16;
        Long l3;
        String str17;
        String str18;
        String str19;
        Map map2;
        String str20;
        String str21;
        Long l4;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27 = (i & 1) != 0 ? refund.id : str;
        Long l5 = (i & 2) != 0 ? refund.amount : l;
        String str28 = (i & 4) != 0 ? refund.chargeId : str2;
        String str29 = (i & 8) != 0 ? refund.currency : str3;
        String str30 = (i & 16) != 0 ? refund.description : str4;
        Map map3 = (i & 32) != 0 ? refund.metadata : map;
        String str31 = (i & 64) != 0 ? refund.paymentIntentId : str5;
        String str32 = (i & 128) != 0 ? refund.reason : str6;
        Long l6 = (i & 256) != 0 ? refund.created : l2;
        String str33 = (i & 512) != 0 ? refund.status : str7;
        String str34 = (i & 1024) != 0 ? refund.balanceTransaction : str8;
        String str35 = (i & 2048) != 0 ? refund.failureBalanceTransaction : str9;
        String str36 = (i & 4096) != 0 ? refund.failureReason : str10;
        String str37 = (i & 8192) != 0 ? refund.receiptNumber : str11;
        String str38 = str27;
        String str39 = (i & 16384) != 0 ? refund.sourceTransferReversal : str12;
        String str40 = (i & 32768) != 0 ? refund.transferReversal : str13;
        if ((i & 65536) != 0) {
            str14 = str40;
            paymentMethodDetails2 = refund.paymentMethodDetails;
            str16 = str39;
            l3 = l5;
            str17 = str28;
            str18 = str29;
            str19 = str30;
            map2 = map3;
            str20 = str31;
            str21 = str32;
            l4 = l6;
            str22 = str33;
            str23 = str34;
            str24 = str35;
            str25 = str36;
            str26 = str37;
            str15 = str38;
            refund2 = refund;
        } else {
            paymentMethodDetails2 = paymentMethodDetails;
            str14 = str40;
            str15 = str38;
            refund2 = refund;
            str16 = str39;
            l3 = l5;
            str17 = str28;
            str18 = str29;
            str19 = str30;
            map2 = map3;
            str20 = str31;
            str21 = str32;
            l4 = l6;
            str22 = str33;
            str23 = str34;
            str24 = str35;
            str25 = str36;
            str26 = str37;
        }
        return refund2.copy(str15, l3, str17, str18, str19, map2, str20, str21, l4, str22, str23, str24, str25, str26, str16, str14, paymentMethodDetails2);
    }

    @SerialName("charge")
    public static /* synthetic */ void getChargeId$annotations() {
    }

    @SerialName("paymentIntent")
    public static /* synthetic */ void getPaymentIntentId$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getBalanceTransaction() {
        return this.balanceTransaction;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getFailureBalanceTransaction() {
        return this.failureBalanceTransaction;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getFailureReason() {
        return this.failureReason;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getReceiptNumber() {
        return this.receiptNumber;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getSourceTransferReversal() {
        return this.sourceTransferReversal;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getTransferReversal() {
        return this.transferReversal;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final PaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getChargeId() {
        return this.chargeId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final Map<String, String> component6() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getCreated() {
        return this.created;
    }

    public final Refund copy(String id, Long amount, String chargeId, String currency, String description, Map<String, String> metadata, String paymentIntentId, String reason, Long created, String status, String balanceTransaction, String failureBalanceTransaction, String failureReason, String receiptNumber, String sourceTransferReversal, String transferReversal, PaymentMethodDetails paymentMethodDetails) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new Refund(id, amount, chargeId, currency, description, metadata, paymentIntentId, reason, created, status, balanceTransaction, failureBalanceTransaction, failureReason, receiptNumber, sourceTransferReversal, transferReversal, paymentMethodDetails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Refund)) {
            return false;
        }
        Refund refund = (Refund) other;
        return Intrinsics.areEqual(this.id, refund.id) && Intrinsics.areEqual(this.amount, refund.amount) && Intrinsics.areEqual(this.chargeId, refund.chargeId) && Intrinsics.areEqual(this.currency, refund.currency) && Intrinsics.areEqual(this.description, refund.description) && Intrinsics.areEqual(this.metadata, refund.metadata) && Intrinsics.areEqual(this.paymentIntentId, refund.paymentIntentId) && Intrinsics.areEqual(this.reason, refund.reason) && Intrinsics.areEqual(this.created, refund.created) && Intrinsics.areEqual(this.status, refund.status) && Intrinsics.areEqual(this.balanceTransaction, refund.balanceTransaction) && Intrinsics.areEqual(this.failureBalanceTransaction, refund.failureBalanceTransaction) && Intrinsics.areEqual(this.failureReason, refund.failureReason) && Intrinsics.areEqual(this.receiptNumber, refund.receiptNumber) && Intrinsics.areEqual(this.sourceTransferReversal, refund.sourceTransferReversal) && Intrinsics.areEqual(this.transferReversal, refund.transferReversal) && Intrinsics.areEqual(this.paymentMethodDetails, refund.paymentMethodDetails);
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        Long l = this.amount;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.chargeId;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.currency;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Map<String, String> map = this.metadata;
        int iHashCode6 = (iHashCode5 + (map == null ? 0 : map.hashCode())) * 31;
        String str4 = this.paymentIntentId;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.reason;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l2 = this.created;
        int iHashCode9 = (iHashCode8 + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str6 = this.status;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.balanceTransaction;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.failureBalanceTransaction;
        int iHashCode12 = (iHashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.failureReason;
        int iHashCode13 = (iHashCode12 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.receiptNumber;
        int iHashCode14 = (iHashCode13 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.sourceTransferReversal;
        int iHashCode15 = (iHashCode14 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.transferReversal;
        int iHashCode16 = (iHashCode15 + (str12 == null ? 0 : str12.hashCode())) * 31;
        PaymentMethodDetails paymentMethodDetails = this.paymentMethodDetails;
        return iHashCode16 + (paymentMethodDetails != null ? paymentMethodDetails.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Refund(id=");
        sb.append(this.id).append(", amount=").append(this.amount).append(", chargeId=").append(this.chargeId).append(", currency=").append(this.currency).append(", description=").append(this.description).append(", metadata=").append(this.metadata).append(", paymentIntentId=").append(this.paymentIntentId).append(", reason=").append(this.reason).append(", created=").append(this.created).append(", status=").append(this.status).append(", balanceTransaction=").append(this.balanceTransaction).append(", failureBalanceTransaction=");
        sb.append(this.failureBalanceTransaction).append(", failureReason=").append(this.failureReason).append(", receiptNumber=").append(this.receiptNumber).append(", sourceTransferReversal=").append(this.sourceTransferReversal).append(", transferReversal=").append(this.transferReversal).append(", paymentMethodDetails=").append(this.paymentMethodDetails).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: Refund.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Refund$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Refund;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Refund> serializer() {
            return Refund$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Refund(int i, String str, Long l, @SerialName("charge") String str2, String str3, String str4, Map map, @SerialName("paymentIntent") String str5, String str6, Long l2, String str7, String str8, String str9, String str10, String str11, String str12, String str13, PaymentMethodDetails paymentMethodDetails, SerializationConstructorMarker serializationConstructorMarker) {
        if (65535 != (i & 65535)) {
            PluginExceptionsKt.throwMissingFieldException(i, 65535, Refund$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        this.amount = l;
        this.chargeId = str2;
        this.currency = str3;
        this.description = str4;
        this.metadata = map;
        this.paymentIntentId = str5;
        this.reason = str6;
        this.created = l2;
        this.status = str7;
        this.balanceTransaction = str8;
        this.failureBalanceTransaction = str9;
        this.failureReason = str10;
        this.receiptNumber = str11;
        this.sourceTransferReversal = str12;
        this.transferReversal = str13;
        this.paymentMethodDetails = (i & 65536) == 0 ? null : paymentMethodDetails;
    }

    public Refund(String id, Long l, String str, String str2, String str3, Map<String, String> map, String str4, String str5, Long l2, String str6, String str7, String str8, String str9, String str10, String str11, String str12, PaymentMethodDetails paymentMethodDetails) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.amount = l;
        this.chargeId = str;
        this.currency = str2;
        this.description = str3;
        this.metadata = map;
        this.paymentIntentId = str4;
        this.reason = str5;
        this.created = l2;
        this.status = str6;
        this.balanceTransaction = str7;
        this.failureBalanceTransaction = str8;
        this.failureReason = str9;
        this.receiptNumber = str10;
        this.sourceTransferReversal = str11;
        this.transferReversal = str12;
        this.paymentMethodDetails = paymentMethodDetails;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(Refund self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        output.encodeNullableSerializableElement(serialDesc, 1, LongSerializer.INSTANCE, self.amount);
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.chargeId);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.currency);
        output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.description);
        output.encodeNullableSerializableElement(serialDesc, 5, kSerializerArr[5], self.metadata);
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.paymentIntentId);
        output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.reason);
        output.encodeNullableSerializableElement(serialDesc, 8, LongSerializer.INSTANCE, self.created);
        output.encodeNullableSerializableElement(serialDesc, 9, StringSerializer.INSTANCE, self.status);
        output.encodeNullableSerializableElement(serialDesc, 10, StringSerializer.INSTANCE, self.balanceTransaction);
        output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.failureBalanceTransaction);
        output.encodeNullableSerializableElement(serialDesc, 12, StringSerializer.INSTANCE, self.failureReason);
        output.encodeNullableSerializableElement(serialDesc, 13, StringSerializer.INSTANCE, self.receiptNumber);
        output.encodeNullableSerializableElement(serialDesc, 14, StringSerializer.INSTANCE, self.sourceTransferReversal);
        output.encodeNullableSerializableElement(serialDesc, 15, StringSerializer.INSTANCE, self.transferReversal);
        if (!output.shouldEncodeElementDefault(serialDesc, 16) && self.paymentMethodDetails == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 16, PaymentMethodDetails$$serializer.INSTANCE, self.paymentMethodDetails);
    }

    public /* synthetic */ Refund(String str, Long l, String str2, String str3, String str4, Map map, String str5, String str6, Long l2, String str7, String str8, String str9, String str10, String str11, String str12, String str13, PaymentMethodDetails paymentMethodDetails, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, l, str2, str3, str4, map, str5, str6, l2, str7, str8, str9, str10, str11, str12, str13, (i & 65536) != 0 ? null : paymentMethodDetails);
    }

    public final String getId() {
        return this.id;
    }

    public final Long getAmount() {
        return this.amount;
    }

    public final String getChargeId() {
        return this.chargeId;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    public final String getReason() {
        return this.reason;
    }

    public final Long getCreated() {
        return this.created;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getBalanceTransaction() {
        return this.balanceTransaction;
    }

    public final String getFailureBalanceTransaction() {
        return this.failureBalanceTransaction;
    }

    public final String getFailureReason() {
        return this.failureReason;
    }

    public final String getReceiptNumber() {
        return this.receiptNumber;
    }

    public final String getSourceTransferReversal() {
        return this.sourceTransferReversal;
    }

    public final String getTransferReversal() {
        return this.transferReversal;
    }

    public final PaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }
}
