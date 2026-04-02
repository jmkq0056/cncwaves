package com.stripe.bbpos.sdk;

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
/* JADX INFO: compiled from: TransactionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0013B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0014"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TRANSACTION_TYPE_UNKNOWN", "GOODS", "SERVICES", "CASHBACK", "INQUIRY", "TRANSFER", "PAYMENT", "REFUND", "VOID", "REVERSAL", "CASH", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransactionType[] $VALUES;
    public static final ProtoAdapter<TransactionType> ADAPTER;
    public static final TransactionType CASH;
    public static final TransactionType CASHBACK;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final TransactionType GOODS;
    public static final TransactionType INQUIRY;
    public static final TransactionType PAYMENT;
    public static final TransactionType REFUND;
    public static final TransactionType REVERSAL;
    public static final TransactionType SERVICES;
    public static final TransactionType TRANSACTION_TYPE_UNKNOWN;
    public static final TransactionType TRANSFER;
    public static final TransactionType VOID;
    private final int value;

    private static final /* synthetic */ TransactionType[] $values() {
        return new TransactionType[]{TRANSACTION_TYPE_UNKNOWN, GOODS, SERVICES, CASHBACK, INQUIRY, TRANSFER, PAYMENT, REFUND, VOID, REVERSAL, CASH};
    }

    @JvmStatic
    public static final TransactionType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<TransactionType> getEntries() {
        return $ENTRIES;
    }

    public static TransactionType valueOf(String str) {
        return (TransactionType) Enum.valueOf(TransactionType.class, str);
    }

    public static TransactionType[] values() {
        return (TransactionType[]) $VALUES.clone();
    }

    private TransactionType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final TransactionType transactionType = new TransactionType("TRANSACTION_TYPE_UNKNOWN", 0, 0);
        TRANSACTION_TYPE_UNKNOWN = transactionType;
        GOODS = new TransactionType("GOODS", 1, 1);
        SERVICES = new TransactionType("SERVICES", 2, 2);
        CASHBACK = new TransactionType("CASHBACK", 3, 3);
        INQUIRY = new TransactionType("INQUIRY", 4, 4);
        TRANSFER = new TransactionType("TRANSFER", 5, 5);
        PAYMENT = new TransactionType("PAYMENT", 6, 6);
        REFUND = new TransactionType("REFUND", 7, 7);
        VOID = new TransactionType("VOID", 8, 8);
        REVERSAL = new TransactionType("REVERSAL", 9, 9);
        CASH = new TransactionType("CASH", 10, 10);
        TransactionType[] transactionTypeArr$values = $values();
        $VALUES = transactionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(transactionTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TransactionType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<TransactionType>(orCreateKotlinClass, syntax, transactionType) { // from class: com.stripe.bbpos.sdk.TransactionType$Companion$ADAPTER$1
            {
                TransactionType transactionType2 = transactionType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public TransactionType fromValue(int value) {
                return TransactionType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: TransactionType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/TransactionType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/TransactionType;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final TransactionType fromValue(int value) {
            switch (value) {
                case 0:
                    return TransactionType.TRANSACTION_TYPE_UNKNOWN;
                case 1:
                    return TransactionType.GOODS;
                case 2:
                    return TransactionType.SERVICES;
                case 3:
                    return TransactionType.CASHBACK;
                case 4:
                    return TransactionType.INQUIRY;
                case 5:
                    return TransactionType.TRANSFER;
                case 6:
                    return TransactionType.PAYMENT;
                case 7:
                    return TransactionType.REFUND;
                case 8:
                    return TransactionType.VOID;
                case 9:
                    return TransactionType.REVERSAL;
                case 10:
                    return TransactionType.CASH;
                default:
                    return null;
            }
        }
    }
}
