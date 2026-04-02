package com.stripe.stripeterminal.external.models;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.annotation.Annotation;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PaymentMethodType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0011B\u0019\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "typeName", "", "isNonCardPaymentMethod", "", "(Ljava/lang/String;ILjava/lang/String;Z)V", "()Z", "getTypeName", "()Ljava/lang/String;", "CARD_PRESENT", "CARD", "INTERAC_PRESENT", "WECHAT_PAY", "AFFIRM", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class PaymentMethodType implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentMethodType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final boolean isNonCardPaymentMethod;
    private final String typeName;

    @SerialName("card_present")
    public static final PaymentMethodType CARD_PRESENT = new PaymentMethodType("CARD_PRESENT", 0, "card_present", false, 2, null);

    @SerialName("card")
    public static final PaymentMethodType CARD = new PaymentMethodType("CARD", 1, "card", false, 2, null);

    @SerialName("interac_present")
    public static final PaymentMethodType INTERAC_PRESENT = new PaymentMethodType("INTERAC_PRESENT", 2, "interac_present", false, 2, null);

    @SerialName("wechat_pay")
    public static final PaymentMethodType WECHAT_PAY = new PaymentMethodType("WECHAT_PAY", 3, "wechat_pay", true);

    @SerialName("affirm")
    public static final PaymentMethodType AFFIRM = new PaymentMethodType("AFFIRM", 4, "affirm", true);

    private static final /* synthetic */ PaymentMethodType[] $values() {
        return new PaymentMethodType[]{CARD_PRESENT, CARD, INTERAC_PRESENT, WECHAT_PAY, AFFIRM};
    }

    public static EnumEntries<PaymentMethodType> getEntries() {
        return $ENTRIES;
    }

    public static PaymentMethodType valueOf(String str) {
        return (PaymentMethodType) Enum.valueOf(PaymentMethodType.class, str);
    }

    public static PaymentMethodType[] values() {
        return (PaymentMethodType[]) $VALUES.clone();
    }

    private PaymentMethodType(String str, int i, String str2, boolean z) {
        this.typeName = str2;
        this.isNonCardPaymentMethod = z;
    }

    /* synthetic */ PaymentMethodType(String str, int i, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, (i2 & 2) != 0 ? false : z);
    }

    public final String getTypeName() {
        return this.typeName;
    }

    /* JADX INFO: renamed from: isNonCardPaymentMethod, reason: from getter */
    public final boolean getIsNonCardPaymentMethod() {
        return this.isNonCardPaymentMethod;
    }

    static {
        PaymentMethodType[] paymentMethodTypeArr$values = $values();
        $VALUES = paymentMethodTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentMethodTypeArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.PaymentMethodType.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.PaymentMethodType", PaymentMethodType.values(), new String[]{"card_present", "card", "interac_present", "wechat_pay", "affirm"}, new Annotation[][]{null, null, null, null, null}, null);
            }
        });
    }

    /* JADX INFO: compiled from: PaymentMethodType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bHÆ\u0001¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;", "", "()V", "fromTypeName", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", TypedValues.Custom.S_STRING, "", "serializer", "Lkotlinx/serialization/KSerializer;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) PaymentMethodType.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<PaymentMethodType> serializer() {
            return get$cachedSerializer();
        }

        public final PaymentMethodType fromTypeName(String string) {
            PaymentMethodType paymentMethodType = null;
            if (string == null) {
                return null;
            }
            Iterator<PaymentMethodType> it = PaymentMethodType.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                PaymentMethodType next = it.next();
                if (Intrinsics.areEqual(next.getTypeName(), string)) {
                    paymentMethodType = next;
                    break;
                }
            }
            return paymentMethodType;
        }
    }
}
