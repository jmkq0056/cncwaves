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
/* JADX INFO: compiled from: InstrumentType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/payments/InstrumentType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_TYPE", "DEBIT_CARD", "CREDIT_CARD", "PRIVATE_LABEL", "GIFT", "EBT_SNAP", "EBT_CASH", "WIC", "CHECK", "CASH", "SMART_WIC", "FSA", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstrumentType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InstrumentType[] $VALUES;
    public static final ProtoAdapter<InstrumentType> ADAPTER;
    public static final InstrumentType CASH;
    public static final InstrumentType CHECK;
    public static final InstrumentType CREDIT_CARD;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final InstrumentType DEBIT_CARD;
    public static final InstrumentType EBT_CASH;
    public static final InstrumentType EBT_SNAP;
    public static final InstrumentType FSA;
    public static final InstrumentType GIFT;
    public static final InstrumentType PRIVATE_LABEL;
    public static final InstrumentType SMART_WIC;
    public static final InstrumentType UNKNOWN_TYPE;
    public static final InstrumentType WIC;
    private final int value;

    private static final /* synthetic */ InstrumentType[] $values() {
        return new InstrumentType[]{UNKNOWN_TYPE, DEBIT_CARD, CREDIT_CARD, PRIVATE_LABEL, GIFT, EBT_SNAP, EBT_CASH, WIC, CHECK, CASH, SMART_WIC, FSA};
    }

    @JvmStatic
    public static final InstrumentType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<InstrumentType> getEntries() {
        return $ENTRIES;
    }

    public static InstrumentType valueOf(String str) {
        return (InstrumentType) Enum.valueOf(InstrumentType.class, str);
    }

    public static InstrumentType[] values() {
        return (InstrumentType[]) $VALUES.clone();
    }

    private InstrumentType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final InstrumentType instrumentType = new InstrumentType("UNKNOWN_TYPE", 0, 0);
        UNKNOWN_TYPE = instrumentType;
        DEBIT_CARD = new InstrumentType("DEBIT_CARD", 1, 1);
        CREDIT_CARD = new InstrumentType("CREDIT_CARD", 2, 2);
        PRIVATE_LABEL = new InstrumentType("PRIVATE_LABEL", 3, 3);
        GIFT = new InstrumentType("GIFT", 4, 4);
        EBT_SNAP = new InstrumentType("EBT_SNAP", 5, 5);
        EBT_CASH = new InstrumentType("EBT_CASH", 6, 6);
        WIC = new InstrumentType("WIC", 7, 8);
        CHECK = new InstrumentType("CHECK", 8, 7);
        CASH = new InstrumentType("CASH", 9, 9);
        SMART_WIC = new InstrumentType("SMART_WIC", 10, 10);
        FSA = new InstrumentType("FSA", 11, 11);
        InstrumentType[] instrumentTypeArr$values = $values();
        $VALUES = instrumentTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(instrumentTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstrumentType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<InstrumentType>(orCreateKotlinClass, syntax, instrumentType) { // from class: com.stripe.proto.model.payments.InstrumentType$Companion$ADAPTER$1
            {
                InstrumentType instrumentType2 = instrumentType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public InstrumentType fromValue(int value) {
                return InstrumentType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: InstrumentType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/InstrumentType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/InstrumentType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final InstrumentType fromValue(int value) {
            switch (value) {
                case 0:
                    return InstrumentType.UNKNOWN_TYPE;
                case 1:
                    return InstrumentType.DEBIT_CARD;
                case 2:
                    return InstrumentType.CREDIT_CARD;
                case 3:
                    return InstrumentType.PRIVATE_LABEL;
                case 4:
                    return InstrumentType.GIFT;
                case 5:
                    return InstrumentType.EBT_SNAP;
                case 6:
                    return InstrumentType.EBT_CASH;
                case 7:
                    return InstrumentType.CHECK;
                case 8:
                    return InstrumentType.WIC;
                case 9:
                    return InstrumentType.CASH;
                case 10:
                    return InstrumentType.SMART_WIC;
                case 11:
                    return InstrumentType.FSA;
                default:
                    return null;
            }
        }
    }
}
