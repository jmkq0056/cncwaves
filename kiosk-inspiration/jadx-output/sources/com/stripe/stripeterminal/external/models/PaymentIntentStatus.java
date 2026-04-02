package com.stripe.stripeterminal.external.models;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PaymentIntentStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "(Ljava/lang/String;I)V", "CANCELED", "PROCESSING", "REQUIRES_CAPTURE", "REQUIRES_CONFIRMATION", "REQUIRES_PAYMENT_METHOD", "REQUIRES_ACTION", "SUCCEEDED", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class PaymentIntentStatus implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentIntentStatus[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("canceled")
    public static final PaymentIntentStatus CANCELED = new PaymentIntentStatus("CANCELED", 0);

    @SerialName("processing")
    public static final PaymentIntentStatus PROCESSING = new PaymentIntentStatus("PROCESSING", 1);

    @SerialName("requires_capture")
    public static final PaymentIntentStatus REQUIRES_CAPTURE = new PaymentIntentStatus("REQUIRES_CAPTURE", 2);

    @SerialName("requires_confirmation")
    public static final PaymentIntentStatus REQUIRES_CONFIRMATION = new PaymentIntentStatus("REQUIRES_CONFIRMATION", 3);

    @SerialName("requires_payment_method")
    public static final PaymentIntentStatus REQUIRES_PAYMENT_METHOD = new PaymentIntentStatus("REQUIRES_PAYMENT_METHOD", 4);

    @SerialName("requires_action")
    public static final PaymentIntentStatus REQUIRES_ACTION = new PaymentIntentStatus("REQUIRES_ACTION", 5);

    @SerialName("succeeded")
    public static final PaymentIntentStatus SUCCEEDED = new PaymentIntentStatus("SUCCEEDED", 6);

    private static final /* synthetic */ PaymentIntentStatus[] $values() {
        return new PaymentIntentStatus[]{CANCELED, PROCESSING, REQUIRES_CAPTURE, REQUIRES_CONFIRMATION, REQUIRES_PAYMENT_METHOD, REQUIRES_ACTION, SUCCEEDED};
    }

    public static EnumEntries<PaymentIntentStatus> getEntries() {
        return $ENTRIES;
    }

    public static PaymentIntentStatus valueOf(String str) {
        return (PaymentIntentStatus) Enum.valueOf(PaymentIntentStatus.class, str);
    }

    public static PaymentIntentStatus[] values() {
        return (PaymentIntentStatus[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: PaymentIntentStatus.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) PaymentIntentStatus.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<PaymentIntentStatus> serializer() {
            return get$cachedSerializer();
        }
    }

    private PaymentIntentStatus(String str, int i) {
    }

    static {
        PaymentIntentStatus[] paymentIntentStatusArr$values = $values();
        $VALUES = paymentIntentStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentIntentStatusArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.PaymentIntentStatus.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.PaymentIntentStatus", PaymentIntentStatus.values(), new String[]{"canceled", "processing", "requires_capture", "requires_confirmation", "requires_payment_method", "requires_action", "succeeded"}, new Annotation[][]{null, null, null, null, null, null, null}, null);
            }
        });
    }
}
