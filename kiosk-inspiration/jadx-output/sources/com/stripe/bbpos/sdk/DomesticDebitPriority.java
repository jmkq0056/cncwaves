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
/* JADX INFO: compiled from: DomesticDebitPriority.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DOMESTIC_DEBIT_PRIORITY_UNKNOWN", "STANDARD", "TOP", "BOTTOM", "OFF", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DomesticDebitPriority implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DomesticDebitPriority[] $VALUES;
    public static final ProtoAdapter<DomesticDebitPriority> ADAPTER;
    public static final DomesticDebitPriority BOTTOM;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DomesticDebitPriority DOMESTIC_DEBIT_PRIORITY_UNKNOWN;
    public static final DomesticDebitPriority OFF;
    public static final DomesticDebitPriority STANDARD;
    public static final DomesticDebitPriority TOP;
    private final int value;

    private static final /* synthetic */ DomesticDebitPriority[] $values() {
        return new DomesticDebitPriority[]{DOMESTIC_DEBIT_PRIORITY_UNKNOWN, STANDARD, TOP, BOTTOM, OFF};
    }

    @JvmStatic
    public static final DomesticDebitPriority fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<DomesticDebitPriority> getEntries() {
        return $ENTRIES;
    }

    public static DomesticDebitPriority valueOf(String str) {
        return (DomesticDebitPriority) Enum.valueOf(DomesticDebitPriority.class, str);
    }

    public static DomesticDebitPriority[] values() {
        return (DomesticDebitPriority[]) $VALUES.clone();
    }

    private DomesticDebitPriority(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final DomesticDebitPriority domesticDebitPriority = new DomesticDebitPriority("DOMESTIC_DEBIT_PRIORITY_UNKNOWN", 0, 0);
        DOMESTIC_DEBIT_PRIORITY_UNKNOWN = domesticDebitPriority;
        STANDARD = new DomesticDebitPriority("STANDARD", 1, 1);
        TOP = new DomesticDebitPriority("TOP", 2, 2);
        BOTTOM = new DomesticDebitPriority("BOTTOM", 3, 3);
        OFF = new DomesticDebitPriority("OFF", 4, 4);
        DomesticDebitPriority[] domesticDebitPriorityArr$values = $values();
        $VALUES = domesticDebitPriorityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(domesticDebitPriorityArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DomesticDebitPriority.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<DomesticDebitPriority>(orCreateKotlinClass, syntax, domesticDebitPriority) { // from class: com.stripe.bbpos.sdk.DomesticDebitPriority$Companion$ADAPTER$1
            {
                DomesticDebitPriority domesticDebitPriority2 = domesticDebitPriority;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public DomesticDebitPriority fromValue(int value) {
                return DomesticDebitPriority.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: DomesticDebitPriority.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/DomesticDebitPriority$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DomesticDebitPriority fromValue(int value) {
            if (value == 0) {
                return DomesticDebitPriority.DOMESTIC_DEBIT_PRIORITY_UNKNOWN;
            }
            if (value == 1) {
                return DomesticDebitPriority.STANDARD;
            }
            if (value == 2) {
                return DomesticDebitPriority.TOP;
            }
            if (value == 3) {
                return DomesticDebitPriority.BOTTOM;
            }
            if (value != 4) {
                return null;
            }
            return DomesticDebitPriority.OFF;
        }
    }
}
