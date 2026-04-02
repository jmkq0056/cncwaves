package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DynamicCurrencyConversionSelectionModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/stripe/hardware/paymentcollection/DisclosureMode;", "", "(Ljava/lang/String;I)V", "SETUP_FUTURE_USAGE", "INCREMENTAL", "EXTENDED", "INCREMENTAL_AND_EXTENDED", "SETUP_AND_INCREMENTAL_AND_EXTENDED", "NONE", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisclosureMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DisclosureMode[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DisclosureMode SETUP_FUTURE_USAGE = new DisclosureMode("SETUP_FUTURE_USAGE", 0);
    public static final DisclosureMode INCREMENTAL = new DisclosureMode("INCREMENTAL", 1);
    public static final DisclosureMode EXTENDED = new DisclosureMode("EXTENDED", 2);
    public static final DisclosureMode INCREMENTAL_AND_EXTENDED = new DisclosureMode("INCREMENTAL_AND_EXTENDED", 3);
    public static final DisclosureMode SETUP_AND_INCREMENTAL_AND_EXTENDED = new DisclosureMode("SETUP_AND_INCREMENTAL_AND_EXTENDED", 4);
    public static final DisclosureMode NONE = new DisclosureMode("NONE", 5);

    private static final /* synthetic */ DisclosureMode[] $values() {
        return new DisclosureMode[]{SETUP_FUTURE_USAGE, INCREMENTAL, EXTENDED, INCREMENTAL_AND_EXTENDED, SETUP_AND_INCREMENTAL_AND_EXTENDED, NONE};
    }

    public static EnumEntries<DisclosureMode> getEntries() {
        return $ENTRIES;
    }

    public static DisclosureMode valueOf(String str) {
        return (DisclosureMode) Enum.valueOf(DisclosureMode.class, str);
    }

    public static DisclosureMode[] values() {
        return (DisclosureMode[]) $VALUES.clone();
    }

    private DisclosureMode(String str, int i) {
    }

    static {
        DisclosureMode[] disclosureModeArr$values = $values();
        $VALUES = disclosureModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(disclosureModeArr$values);
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: compiled from: DynamicCurrencyConversionSelectionModel.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/paymentcollection/DisclosureMode$Companion;", "", "()V", "fromOptions", "Lcom/stripe/hardware/paymentcollection/DisclosureMode;", "setupFutureUsage", "", "requestIncremental", "requestExtended", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DisclosureMode fromOptions(boolean setupFutureUsage, boolean requestIncremental, boolean requestExtended) {
            if (setupFutureUsage && requestIncremental && requestExtended) {
                return DisclosureMode.SETUP_AND_INCREMENTAL_AND_EXTENDED;
            }
            if (requestIncremental && requestExtended) {
                return DisclosureMode.INCREMENTAL_AND_EXTENDED;
            }
            if (requestExtended) {
                return DisclosureMode.EXTENDED;
            }
            if (requestIncremental) {
                return DisclosureMode.INCREMENTAL;
            }
            if (setupFutureUsage) {
                return DisclosureMode.SETUP_FUTURE_USAGE;
            }
            return DisclosureMode.NONE;
        }
    }
}
