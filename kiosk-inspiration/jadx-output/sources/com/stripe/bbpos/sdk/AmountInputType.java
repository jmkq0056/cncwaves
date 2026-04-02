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
/* JADX INFO: compiled from: AmountInputType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/bbpos/sdk/AmountInputType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "AMOUNT_INPUT_TYPE_UNKNOWN", "AMOUNT_ONLY", "AMOUNT_AND_CASHBACK", "CASHBACK_ONLY", "TIPS_ONLY", "AMOUNT_AND_TIPS", "AMOUNT_AND_TIPS_IN_PERCENTAGE", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AmountInputType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AmountInputType[] $VALUES;
    public static final ProtoAdapter<AmountInputType> ADAPTER;
    public static final AmountInputType AMOUNT_AND_CASHBACK;
    public static final AmountInputType AMOUNT_AND_TIPS;
    public static final AmountInputType AMOUNT_AND_TIPS_IN_PERCENTAGE;
    public static final AmountInputType AMOUNT_INPUT_TYPE_UNKNOWN;
    public static final AmountInputType AMOUNT_ONLY;
    public static final AmountInputType CASHBACK_ONLY;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final AmountInputType TIPS_ONLY;
    private final int value;

    private static final /* synthetic */ AmountInputType[] $values() {
        return new AmountInputType[]{AMOUNT_INPUT_TYPE_UNKNOWN, AMOUNT_ONLY, AMOUNT_AND_CASHBACK, CASHBACK_ONLY, TIPS_ONLY, AMOUNT_AND_TIPS, AMOUNT_AND_TIPS_IN_PERCENTAGE};
    }

    @JvmStatic
    public static final AmountInputType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<AmountInputType> getEntries() {
        return $ENTRIES;
    }

    public static AmountInputType valueOf(String str) {
        return (AmountInputType) Enum.valueOf(AmountInputType.class, str);
    }

    public static AmountInputType[] values() {
        return (AmountInputType[]) $VALUES.clone();
    }

    private AmountInputType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final AmountInputType amountInputType = new AmountInputType("AMOUNT_INPUT_TYPE_UNKNOWN", 0, 0);
        AMOUNT_INPUT_TYPE_UNKNOWN = amountInputType;
        AMOUNT_ONLY = new AmountInputType("AMOUNT_ONLY", 1, 1);
        AMOUNT_AND_CASHBACK = new AmountInputType("AMOUNT_AND_CASHBACK", 2, 2);
        CASHBACK_ONLY = new AmountInputType("CASHBACK_ONLY", 3, 3);
        TIPS_ONLY = new AmountInputType("TIPS_ONLY", 4, 4);
        AMOUNT_AND_TIPS = new AmountInputType("AMOUNT_AND_TIPS", 5, 5);
        AMOUNT_AND_TIPS_IN_PERCENTAGE = new AmountInputType("AMOUNT_AND_TIPS_IN_PERCENTAGE", 6, 6);
        AmountInputType[] amountInputTypeArr$values = $values();
        $VALUES = amountInputTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(amountInputTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AmountInputType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<AmountInputType>(orCreateKotlinClass, syntax, amountInputType) { // from class: com.stripe.bbpos.sdk.AmountInputType$Companion$ADAPTER$1
            {
                AmountInputType amountInputType2 = amountInputType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public AmountInputType fromValue(int value) {
                return AmountInputType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: AmountInputType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/AmountInputType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/AmountInputType;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AmountInputType fromValue(int value) {
            switch (value) {
                case 0:
                    return AmountInputType.AMOUNT_INPUT_TYPE_UNKNOWN;
                case 1:
                    return AmountInputType.AMOUNT_ONLY;
                case 2:
                    return AmountInputType.AMOUNT_AND_CASHBACK;
                case 3:
                    return AmountInputType.CASHBACK_ONLY;
                case 4:
                    return AmountInputType.TIPS_ONLY;
                case 5:
                    return AmountInputType.AMOUNT_AND_TIPS;
                case 6:
                    return AmountInputType.AMOUNT_AND_TIPS_IN_PERCENTAGE;
                default:
                    return null;
            }
        }
    }
}
