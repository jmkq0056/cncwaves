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
/* JADX INFO: compiled from: QuickChipOption.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/bbpos/sdk/QuickChipOption;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "QUICK_CHIP_OPTION_UNKNOWN", "USE_EMV", "USE_CONFIG", "USE_QUICKCHIP", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QuickChipOption implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ QuickChipOption[] $VALUES;
    public static final ProtoAdapter<QuickChipOption> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final QuickChipOption QUICK_CHIP_OPTION_UNKNOWN;
    public static final QuickChipOption USE_CONFIG;
    public static final QuickChipOption USE_EMV;
    public static final QuickChipOption USE_QUICKCHIP;
    private final int value;

    private static final /* synthetic */ QuickChipOption[] $values() {
        return new QuickChipOption[]{QUICK_CHIP_OPTION_UNKNOWN, USE_EMV, USE_CONFIG, USE_QUICKCHIP};
    }

    @JvmStatic
    public static final QuickChipOption fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<QuickChipOption> getEntries() {
        return $ENTRIES;
    }

    public static QuickChipOption valueOf(String str) {
        return (QuickChipOption) Enum.valueOf(QuickChipOption.class, str);
    }

    public static QuickChipOption[] values() {
        return (QuickChipOption[]) $VALUES.clone();
    }

    private QuickChipOption(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final QuickChipOption quickChipOption = new QuickChipOption("QUICK_CHIP_OPTION_UNKNOWN", 0, 0);
        QUICK_CHIP_OPTION_UNKNOWN = quickChipOption;
        USE_EMV = new QuickChipOption("USE_EMV", 1, 1);
        USE_CONFIG = new QuickChipOption("USE_CONFIG", 2, 2);
        USE_QUICKCHIP = new QuickChipOption("USE_QUICKCHIP", 3, 3);
        QuickChipOption[] quickChipOptionArr$values = $values();
        $VALUES = quickChipOptionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(quickChipOptionArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QuickChipOption.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<QuickChipOption>(orCreateKotlinClass, syntax, quickChipOption) { // from class: com.stripe.bbpos.sdk.QuickChipOption$Companion$ADAPTER$1
            {
                QuickChipOption quickChipOption2 = quickChipOption;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public QuickChipOption fromValue(int value) {
                return QuickChipOption.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: QuickChipOption.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/QuickChipOption$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/QuickChipOption;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final QuickChipOption fromValue(int value) {
            if (value == 0) {
                return QuickChipOption.QUICK_CHIP_OPTION_UNKNOWN;
            }
            if (value == 1) {
                return QuickChipOption.USE_EMV;
            }
            if (value == 2) {
                return QuickChipOption.USE_CONFIG;
            }
            if (value != 3) {
                return null;
            }
            return QuickChipOption.USE_QUICKCHIP;
        }
    }
}
