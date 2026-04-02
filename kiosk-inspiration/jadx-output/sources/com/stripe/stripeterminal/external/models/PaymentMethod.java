package com.stripe.stripeterminal.external.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.HashMap;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: PaymentMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 Q2\u00060\u0001j\u0002`\u0002:\u0002PQB\u0099\u0001\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001bB\u008f\u0001\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u001cJ\t\u00107\u001a\u00020\u0006HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010<\u001a\u00020\fHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010>\u001a\u00020\u000fHÆ\u0003J\u0017\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0093\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÆ\u0001J\u0013\u0010C\u001a\u00020\u000f2\b\u0010D\u001a\u0004\u0018\u00010EHÖ\u0003J\t\u0010F\u001a\u00020\u0004HÖ\u0001J\t\u0010G\u001a\u00020\u0006HÖ\u0001J&\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00002\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NHÁ\u0001¢\u0006\u0002\bOR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u001e\u001a\u0004\b\"\u0010#R\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u001e\u001a\u0004\b%\u0010&R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b+\u0010*R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010\u001e\u001a\u0004\b-\u0010&R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b4\u0010\u001e\u001a\u0004\b5\u00106¨\u0006R"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", OfflineStorageConstantsKt.ID, "", "cardDetails", "Lcom/stripe/stripeterminal/external/models/CardDetails;", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "created", "", "customer", "livemode", "", "metadata", "", "type", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "interacPresentDetails", "wechatPayDetails", "Lcom/stripe/stripeterminal/external/models/WechatPayDetails;", "affirmDetails", "Lcom/stripe/stripeterminal/external/models/AffirmDetails;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V", "getAffirmDetails$annotations", "()V", "getAffirmDetails", "()Lcom/stripe/stripeterminal/external/models/AffirmDetails;", "getCardDetails$annotations", "getCardDetails", "()Lcom/stripe/stripeterminal/external/models/CardDetails;", "getCardPresentDetails$annotations", "getCardPresentDetails", "()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "getCreated", "()J", "getCustomer", "()Ljava/lang/String;", "getId", "getInteracPresentDetails$annotations", "getInteracPresentDetails", "getLivemode", "()Z", "getMetadata", "()Ljava/util/Map;", "getType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getWechatPayDetails$annotations", "getWechatPayDetails", "()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class PaymentMethod implements java.io.Serializable {
    private final AffirmDetails affirmDetails;
    private final CardDetails cardDetails;
    private final CardPresentDetails cardPresentDetails;
    private final long created;
    private final String customer;
    private final String id;
    private final CardPresentDetails interacPresentDetails;
    private final boolean livemode;
    private final Map<String, String> metadata;
    private final PaymentMethodType type;
    private final WechatPayDetails wechatPayDetails;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), PaymentMethodType.INSTANCE.serializer(), null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentMethod copy$default(PaymentMethod paymentMethod, String str, CardDetails cardDetails, CardPresentDetails cardPresentDetails, long j, String str2, boolean z, Map map, PaymentMethodType paymentMethodType, CardPresentDetails cardPresentDetails2, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paymentMethod.id;
        }
        if ((i & 2) != 0) {
            cardDetails = paymentMethod.cardDetails;
        }
        if ((i & 4) != 0) {
            cardPresentDetails = paymentMethod.cardPresentDetails;
        }
        if ((i & 8) != 0) {
            j = paymentMethod.created;
        }
        if ((i & 16) != 0) {
            str2 = paymentMethod.customer;
        }
        if ((i & 32) != 0) {
            z = paymentMethod.livemode;
        }
        if ((i & 64) != 0) {
            map = paymentMethod.metadata;
        }
        if ((i & 128) != 0) {
            paymentMethodType = paymentMethod.type;
        }
        if ((i & 256) != 0) {
            cardPresentDetails2 = paymentMethod.interacPresentDetails;
        }
        if ((i & 512) != 0) {
            wechatPayDetails = paymentMethod.wechatPayDetails;
        }
        if ((i & 1024) != 0) {
            affirmDetails = paymentMethod.affirmDetails;
        }
        WechatPayDetails wechatPayDetails2 = wechatPayDetails;
        AffirmDetails affirmDetails2 = affirmDetails;
        CardPresentDetails cardPresentDetails3 = cardPresentDetails2;
        Map map2 = map;
        String str3 = str2;
        long j2 = j;
        CardPresentDetails cardPresentDetails4 = cardPresentDetails;
        return paymentMethod.copy(str, cardDetails, cardPresentDetails4, j2, str3, z, map2, paymentMethodType, cardPresentDetails3, wechatPayDetails2, affirmDetails2);
    }

    @SerialName("affirm")
    public static /* synthetic */ void getAffirmDetails$annotations() {
    }

    @SerialName("card")
    public static /* synthetic */ void getCardDetails$annotations() {
    }

    @SerialName("cardPresent")
    public static /* synthetic */ void getCardPresentDetails$annotations() {
    }

    @SerialName("interacPresent")
    public static /* synthetic */ void getInteracPresentDetails$annotations() {
    }

    @SerialName("wechatPay")
    public static /* synthetic */ void getWechatPayDetails$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final WechatPayDetails getWechatPayDetails() {
        return this.wechatPayDetails;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final AffirmDetails getAffirmDetails() {
        return this.affirmDetails;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CardDetails getCardDetails() {
        return this.cardDetails;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCustomer() {
        return this.customer;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getLivemode() {
        return this.livemode;
    }

    public final Map<String, String> component7() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final PaymentMethodType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final CardPresentDetails getInteracPresentDetails() {
        return this.interacPresentDetails;
    }

    public final PaymentMethod copy(String id, CardDetails cardDetails, CardPresentDetails cardPresentDetails, long created, String customer, boolean livemode, Map<String, String> metadata, PaymentMethodType type, CardPresentDetails interacPresentDetails, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new PaymentMethod(id, cardDetails, cardPresentDetails, created, customer, livemode, metadata, type, interacPresentDetails, wechatPayDetails, affirmDetails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentMethod)) {
            return false;
        }
        PaymentMethod paymentMethod = (PaymentMethod) other;
        return Intrinsics.areEqual(this.id, paymentMethod.id) && Intrinsics.areEqual(this.cardDetails, paymentMethod.cardDetails) && Intrinsics.areEqual(this.cardPresentDetails, paymentMethod.cardPresentDetails) && this.created == paymentMethod.created && Intrinsics.areEqual(this.customer, paymentMethod.customer) && this.livemode == paymentMethod.livemode && Intrinsics.areEqual(this.metadata, paymentMethod.metadata) && this.type == paymentMethod.type && Intrinsics.areEqual(this.interacPresentDetails, paymentMethod.interacPresentDetails) && Intrinsics.areEqual(this.wechatPayDetails, paymentMethod.wechatPayDetails) && Intrinsics.areEqual(this.affirmDetails, paymentMethod.affirmDetails);
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        CardDetails cardDetails = this.cardDetails;
        int iHashCode2 = (iHashCode + (cardDetails == null ? 0 : cardDetails.hashCode())) * 31;
        CardPresentDetails cardPresentDetails = this.cardPresentDetails;
        int iHashCode3 = (((iHashCode2 + (cardPresentDetails == null ? 0 : cardPresentDetails.hashCode())) * 31) + Long.hashCode(this.created)) * 31;
        String str = this.customer;
        int iHashCode4 = (((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.livemode)) * 31;
        Map<String, String> map = this.metadata;
        int iHashCode5 = (iHashCode4 + (map == null ? 0 : map.hashCode())) * 31;
        PaymentMethodType paymentMethodType = this.type;
        int iHashCode6 = (iHashCode5 + (paymentMethodType == null ? 0 : paymentMethodType.hashCode())) * 31;
        CardPresentDetails cardPresentDetails2 = this.interacPresentDetails;
        int iHashCode7 = (iHashCode6 + (cardPresentDetails2 == null ? 0 : cardPresentDetails2.hashCode())) * 31;
        WechatPayDetails wechatPayDetails = this.wechatPayDetails;
        int iHashCode8 = (iHashCode7 + (wechatPayDetails == null ? 0 : wechatPayDetails.hashCode())) * 31;
        AffirmDetails affirmDetails = this.affirmDetails;
        return iHashCode8 + (affirmDetails != null ? affirmDetails.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PaymentMethod(id=");
        sb.append(this.id).append(", cardDetails=").append(this.cardDetails).append(", cardPresentDetails=").append(this.cardPresentDetails).append(", created=").append(this.created).append(", customer=").append(this.customer).append(", livemode=").append(this.livemode).append(", metadata=").append(this.metadata).append(", type=").append(this.type).append(", interacPresentDetails=").append(this.interacPresentDetails).append(", wechatPayDetails=").append(this.wechatPayDetails).append(", affirmDetails=").append(this.affirmDetails).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: PaymentMethod.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethod$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PaymentMethod> serializer() {
            return PaymentMethod$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ PaymentMethod(int i, String str, @SerialName("card") CardDetails cardDetails, @SerialName("cardPresent") CardPresentDetails cardPresentDetails, long j, String str2, boolean z, Map map, PaymentMethodType paymentMethodType, @SerialName("interacPresent") CardPresentDetails cardPresentDetails2, @SerialName("wechatPay") WechatPayDetails wechatPayDetails, @SerialName("affirm") AffirmDetails affirmDetails, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PaymentMethod$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        if ((i & 2) == 0) {
            this.cardDetails = null;
        } else {
            this.cardDetails = cardDetails;
        }
        if ((i & 4) == 0) {
            this.cardPresentDetails = null;
        } else {
            this.cardPresentDetails = cardPresentDetails;
        }
        if ((i & 8) == 0) {
            this.created = 0L;
        } else {
            this.created = j;
        }
        if ((i & 16) == 0) {
            this.customer = null;
        } else {
            this.customer = str2;
        }
        if ((i & 32) == 0) {
            this.livemode = false;
        } else {
            this.livemode = z;
        }
        if ((i & 64) == 0) {
            this.metadata = new HashMap();
        } else {
            this.metadata = map;
        }
        if ((i & 128) == 0) {
            this.type = null;
        } else {
            this.type = paymentMethodType;
        }
        if ((i & 256) == 0) {
            this.interacPresentDetails = null;
        } else {
            this.interacPresentDetails = cardPresentDetails2;
        }
        if ((i & 512) == 0) {
            this.wechatPayDetails = null;
        } else {
            this.wechatPayDetails = wechatPayDetails;
        }
        if ((i & 1024) == 0) {
            this.affirmDetails = null;
        } else {
            this.affirmDetails = affirmDetails;
        }
    }

    public PaymentMethod(String id, CardDetails cardDetails, CardPresentDetails cardPresentDetails, long j, String str, boolean z, Map<String, String> map, PaymentMethodType paymentMethodType, CardPresentDetails cardPresentDetails2, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.cardDetails = cardDetails;
        this.cardPresentDetails = cardPresentDetails;
        this.created = j;
        this.customer = str;
        this.livemode = z;
        this.metadata = map;
        this.type = paymentMethodType;
        this.interacPresentDetails = cardPresentDetails2;
        this.wechatPayDetails = wechatPayDetails;
        this.affirmDetails = affirmDetails;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(PaymentMethod self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.cardDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, CardDetails$$serializer.INSTANCE, self.cardDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.cardPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, CardPresentDetails$$serializer.INSTANCE, self.cardPresentDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.created != 0) {
            output.encodeLongElement(serialDesc, 3, self.created);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.customer != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.customer);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.livemode) {
            output.encodeBooleanElement(serialDesc, 5, self.livemode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || !Intrinsics.areEqual(self.metadata, new HashMap())) {
            output.encodeNullableSerializableElement(serialDesc, 6, kSerializerArr[6], self.metadata);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.type != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, kSerializerArr[7], self.type);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.interacPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, CardPresentDetails$$serializer.INSTANCE, self.interacPresentDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.wechatPayDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, WechatPayDetails$$serializer.INSTANCE, self.wechatPayDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 10) && self.affirmDetails == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 10, AffirmDetails$$serializer.INSTANCE, self.affirmDetails);
    }

    public final String getId() {
        return this.id;
    }

    public final CardDetails getCardDetails() {
        return this.cardDetails;
    }

    public final CardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    public final long getCreated() {
        return this.created;
    }

    public final String getCustomer() {
        return this.customer;
    }

    public final boolean getLivemode() {
        return this.livemode;
    }

    public /* synthetic */ PaymentMethod(String str, CardDetails cardDetails, CardPresentDetails cardPresentDetails, long j, String str2, boolean z, HashMap map, PaymentMethodType paymentMethodType, CardPresentDetails cardPresentDetails2, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : cardDetails, (i & 4) != 0 ? null : cardPresentDetails, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? false : z, (i & 64) != 0 ? new HashMap() : map, (i & 128) != 0 ? null : paymentMethodType, (i & 256) != 0 ? null : cardPresentDetails2, (i & 512) != 0 ? null : wechatPayDetails, (i & 1024) != 0 ? null : affirmDetails);
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final PaymentMethodType getType() {
        return this.type;
    }

    public final CardPresentDetails getInteracPresentDetails() {
        return this.interacPresentDetails;
    }

    public final WechatPayDetails getWechatPayDetails() {
        return this.wechatPayDetails;
    }

    public final AffirmDetails getAffirmDetails() {
        return this.affirmDetails;
    }
}
