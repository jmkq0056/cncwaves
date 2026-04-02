package com.stripe.proto.model.payments;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PaymentProcessor.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/payments/PaymentProcessor;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_PROCESSOR", "RC3", "WORLDPAY", "CHASE", "VANTIV", "GIVEX", "FAKE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentProcessor implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentProcessor[] $VALUES;
    public static final ProtoAdapter<PaymentProcessor> ADAPTER;
    public static final PaymentProcessor CHASE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final PaymentProcessor FAKE;
    public static final PaymentProcessor GIVEX;
    public static final PaymentProcessor RC3;
    public static final PaymentProcessor UNKNOWN_PROCESSOR;
    public static final PaymentProcessor VANTIV;
    public static final PaymentProcessor WORLDPAY;
    private final int value;

    private static final /* synthetic */ PaymentProcessor[] $values() {
        return new PaymentProcessor[]{UNKNOWN_PROCESSOR, RC3, WORLDPAY, CHASE, VANTIV, GIVEX, FAKE};
    }

    @JvmStatic
    public static final PaymentProcessor fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<PaymentProcessor> getEntries() {
        return $ENTRIES;
    }

    public static PaymentProcessor valueOf(String str) {
        return (PaymentProcessor) Enum.valueOf(PaymentProcessor.class, str);
    }

    public static PaymentProcessor[] values() {
        return (PaymentProcessor[]) $VALUES.clone();
    }

    private PaymentProcessor(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final PaymentProcessor paymentProcessor = new PaymentProcessor("UNKNOWN_PROCESSOR", 0, 0);
        UNKNOWN_PROCESSOR = paymentProcessor;
        RC3 = new PaymentProcessor("RC3", 1, 1);
        WORLDPAY = new PaymentProcessor("WORLDPAY", 2, 2);
        CHASE = new PaymentProcessor("CHASE", 3, 3);
        VANTIV = new PaymentProcessor("VANTIV", 4, 4);
        GIVEX = new PaymentProcessor("GIVEX", 5, 5);
        FAKE = new PaymentProcessor("FAKE", 6, 6);
        PaymentProcessor[] paymentProcessorArr$values = $values();
        $VALUES = paymentProcessorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentProcessorArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentProcessor.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<PaymentProcessor>(orCreateKotlinClass, syntax, paymentProcessor) { // from class: com.stripe.proto.model.payments.PaymentProcessor$Companion$ADAPTER$1
            {
                PaymentProcessor paymentProcessor2 = paymentProcessor;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public PaymentProcessor fromValue(int value) {
                return PaymentProcessor.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: PaymentProcessor.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/PaymentProcessor$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/PaymentProcessor;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PaymentProcessor fromValue(int value) {
            switch (value) {
                case 0:
                    return PaymentProcessor.UNKNOWN_PROCESSOR;
                case 1:
                    return PaymentProcessor.RC3;
                case 2:
                    return PaymentProcessor.WORLDPAY;
                case 3:
                    return PaymentProcessor.CHASE;
                case 4:
                    return PaymentProcessor.VANTIV;
                case 5:
                    return PaymentProcessor.GIVEX;
                case 6:
                    return PaymentProcessor.FAKE;
                default:
                    return null;
            }
        }
    }
}
