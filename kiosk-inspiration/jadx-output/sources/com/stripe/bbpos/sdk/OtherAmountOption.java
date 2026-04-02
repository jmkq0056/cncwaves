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
/* JADX INFO: compiled from: OtherAmountOption.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/bbpos/sdk/OtherAmountOption;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OTHER_AMOUNT_OPTION_UNKNOWN", "CURRENCY", "PERCENTAGE", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OtherAmountOption implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OtherAmountOption[] $VALUES;
    public static final ProtoAdapter<OtherAmountOption> ADAPTER;
    public static final OtherAmountOption CURRENCY;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final OtherAmountOption OTHER_AMOUNT_OPTION_UNKNOWN;
    public static final OtherAmountOption PERCENTAGE;
    private final int value;

    private static final /* synthetic */ OtherAmountOption[] $values() {
        return new OtherAmountOption[]{OTHER_AMOUNT_OPTION_UNKNOWN, CURRENCY, PERCENTAGE};
    }

    @JvmStatic
    public static final OtherAmountOption fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<OtherAmountOption> getEntries() {
        return $ENTRIES;
    }

    public static OtherAmountOption valueOf(String str) {
        return (OtherAmountOption) Enum.valueOf(OtherAmountOption.class, str);
    }

    public static OtherAmountOption[] values() {
        return (OtherAmountOption[]) $VALUES.clone();
    }

    private OtherAmountOption(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final OtherAmountOption otherAmountOption = new OtherAmountOption("OTHER_AMOUNT_OPTION_UNKNOWN", 0, 0);
        OTHER_AMOUNT_OPTION_UNKNOWN = otherAmountOption;
        CURRENCY = new OtherAmountOption("CURRENCY", 1, 1);
        PERCENTAGE = new OtherAmountOption("PERCENTAGE", 2, 2);
        OtherAmountOption[] otherAmountOptionArr$values = $values();
        $VALUES = otherAmountOptionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(otherAmountOptionArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OtherAmountOption.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<OtherAmountOption>(orCreateKotlinClass, syntax, otherAmountOption) { // from class: com.stripe.bbpos.sdk.OtherAmountOption$Companion$ADAPTER$1
            {
                OtherAmountOption otherAmountOption2 = otherAmountOption;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public OtherAmountOption fromValue(int value) {
                return OtherAmountOption.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: OtherAmountOption.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/OtherAmountOption$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/OtherAmountOption;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final OtherAmountOption fromValue(int value) {
            if (value == 0) {
                return OtherAmountOption.OTHER_AMOUNT_OPTION_UNKNOWN;
            }
            if (value == 1) {
                return OtherAmountOption.CURRENCY;
            }
            if (value != 2) {
                return null;
            }
            return OtherAmountOption.PERCENTAGE;
        }
    }
}
