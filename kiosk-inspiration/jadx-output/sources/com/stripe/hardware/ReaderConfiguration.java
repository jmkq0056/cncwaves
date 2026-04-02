package com.stripe.hardware;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.EmvTransactionType;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderConfiguration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b \n\u0002\u0010\b\n\u0002\b\b\b\u0086\b\u0018\u0000 72\u00020\u0001:\u0006789:;<Ba\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0006HÆ\u0003J\t\u0010*\u001a\u00020\bHÆ\u0003J\t\u0010+\u001a\u00020\nHÆ\u0003J\t\u0010,\u001a\u00020\fHÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\t\u00100\u001a\u00020\u0014HÆ\u0003Jo\u00101\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014HÆ\u0001J\u0013\u00102\u001a\u00020\u00142\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u000205HÖ\u0001J\t\u00106\u001a\u00020\u000eHÖ\u0001R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'¨\u0006="}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration;", "", "readersEnabled", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "transactionAmount", "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$TransactionType;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "quickChipMode", "Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;", "terminalCapabilitiesOverride", "", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "contactlessOnlinePinOption", "Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "", "(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)V", "getContactlessOnlinePinOption", "()Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;", "getDomesticDebitPriority", "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "getEmvTransactionType", "()Lcom/stripe/hardware/emv/EmvTransactionType;", "getForcePinEntry", "()Z", "getQuickChipMode", "()Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;", "getReadersEnabled", "()Ljava/util/Set;", "getTerminalCapabilitiesOverride", "()Ljava/lang/String;", "getTransactionAmount", "()Lcom/stripe/currency/Amount;", "getTransactionType", "()Lcom/stripe/hardware/ReaderConfiguration$TransactionType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "Companion", "ContactlessOnlinePinOption", "DomesticDebitPriority", "QuickChipOption", "ReaderType", "TransactionType", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderConfiguration {
    private final ContactlessOnlinePinOption contactlessOnlinePinOption;
    private final DomesticDebitPriority domesticDebitPriority;
    private final EmvTransactionType emvTransactionType;
    private final boolean forcePinEntry;
    private final QuickChipOption quickChipMode;
    private final Set<ReaderType> readersEnabled;
    private final String terminalCapabilitiesOverride;
    private final Amount transactionAmount;
    private final TransactionType transactionType;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Set<ReaderType> SWIPE = SetsKt.setOf(ReaderType.MAGSTRIPE);
    private static final Set<ReaderType> INSERT = SetsKt.setOf(ReaderType.ICC);
    private static final Set<ReaderType> TAP = SetsKt.setOf(ReaderType.NFC);
    private static final Set<ReaderType> SWIPE_OR_INSERT = SetsKt.setOf((Object[]) new ReaderType[]{ReaderType.MAGSTRIPE, ReaderType.ICC});
    private static final Set<ReaderType> SWIPE_OR_TAP = SetsKt.setOf((Object[]) new ReaderType[]{ReaderType.MAGSTRIPE, ReaderType.NFC});
    private static final Set<ReaderType> INSERT_OR_TAP = SetsKt.setOf((Object[]) new ReaderType[]{ReaderType.ICC, ReaderType.NFC});
    private static final Set<ReaderType> SWIPE_OR_INSERT_OR_TAP = SetsKt.setOf((Object[]) new ReaderType[]{ReaderType.MAGSTRIPE, ReaderType.ICC, ReaderType.NFC});
    private static final Set<ReaderType> MANUAL_ENTRY = SetsKt.setOf(ReaderType.MANUAL_ENTRY);
    private static final Set<ReaderType> SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY = SetsKt.setOf((Object[]) new ReaderType[]{ReaderType.MAGSTRIPE, ReaderType.ICC, ReaderType.NFC, ReaderType.MANUAL_ENTRY});

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReaderConfiguration copy$default(ReaderConfiguration readerConfiguration, Set set, Amount amount, TransactionType transactionType, EmvTransactionType emvTransactionType, QuickChipOption quickChipOption, String str, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            set = readerConfiguration.readersEnabled;
        }
        if ((i & 2) != 0) {
            amount = readerConfiguration.transactionAmount;
        }
        if ((i & 4) != 0) {
            transactionType = readerConfiguration.transactionType;
        }
        if ((i & 8) != 0) {
            emvTransactionType = readerConfiguration.emvTransactionType;
        }
        if ((i & 16) != 0) {
            quickChipOption = readerConfiguration.quickChipMode;
        }
        if ((i & 32) != 0) {
            str = readerConfiguration.terminalCapabilitiesOverride;
        }
        if ((i & 64) != 0) {
            domesticDebitPriority = readerConfiguration.domesticDebitPriority;
        }
        if ((i & 128) != 0) {
            contactlessOnlinePinOption = readerConfiguration.contactlessOnlinePinOption;
        }
        if ((i & 256) != 0) {
            z = readerConfiguration.forcePinEntry;
        }
        ContactlessOnlinePinOption contactlessOnlinePinOption2 = contactlessOnlinePinOption;
        boolean z2 = z;
        String str2 = str;
        DomesticDebitPriority domesticDebitPriority2 = domesticDebitPriority;
        QuickChipOption quickChipOption2 = quickChipOption;
        TransactionType transactionType2 = transactionType;
        return readerConfiguration.copy(set, amount, transactionType2, emvTransactionType, quickChipOption2, str2, domesticDebitPriority2, contactlessOnlinePinOption2, z2);
    }

    public final Set<ReaderType> component1() {
        return this.readersEnabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getTransactionAmount() {
        return this.transactionAmount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final QuickChipOption getQuickChipMode() {
        return this.quickChipMode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTerminalCapabilitiesOverride() {
        return this.terminalCapabilitiesOverride;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final DomesticDebitPriority getDomesticDebitPriority() {
        return this.domesticDebitPriority;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final ContactlessOnlinePinOption getContactlessOnlinePinOption() {
        return this.contactlessOnlinePinOption;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getForcePinEntry() {
        return this.forcePinEntry;
    }

    public final ReaderConfiguration copy(Set<? extends ReaderType> readersEnabled, Amount transactionAmount, TransactionType transactionType, EmvTransactionType emvTransactionType, QuickChipOption quickChipMode, String terminalCapabilitiesOverride, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean forcePinEntry) {
        Intrinsics.checkNotNullParameter(readersEnabled, "readersEnabled");
        Intrinsics.checkNotNullParameter(transactionAmount, "transactionAmount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(quickChipMode, "quickChipMode");
        return new ReaderConfiguration(readersEnabled, transactionAmount, transactionType, emvTransactionType, quickChipMode, terminalCapabilitiesOverride, domesticDebitPriority, contactlessOnlinePinOption, forcePinEntry);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderConfiguration)) {
            return false;
        }
        ReaderConfiguration readerConfiguration = (ReaderConfiguration) other;
        return Intrinsics.areEqual(this.readersEnabled, readerConfiguration.readersEnabled) && Intrinsics.areEqual(this.transactionAmount, readerConfiguration.transactionAmount) && this.transactionType == readerConfiguration.transactionType && this.emvTransactionType == readerConfiguration.emvTransactionType && this.quickChipMode == readerConfiguration.quickChipMode && Intrinsics.areEqual(this.terminalCapabilitiesOverride, readerConfiguration.terminalCapabilitiesOverride) && this.domesticDebitPriority == readerConfiguration.domesticDebitPriority && this.contactlessOnlinePinOption == readerConfiguration.contactlessOnlinePinOption && this.forcePinEntry == readerConfiguration.forcePinEntry;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.readersEnabled.hashCode() * 31) + this.transactionAmount.hashCode()) * 31) + this.transactionType.hashCode()) * 31) + this.emvTransactionType.hashCode()) * 31) + this.quickChipMode.hashCode()) * 31;
        String str = this.terminalCapabilitiesOverride;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        DomesticDebitPriority domesticDebitPriority = this.domesticDebitPriority;
        int iHashCode3 = (iHashCode2 + (domesticDebitPriority == null ? 0 : domesticDebitPriority.hashCode())) * 31;
        ContactlessOnlinePinOption contactlessOnlinePinOption = this.contactlessOnlinePinOption;
        return ((iHashCode3 + (contactlessOnlinePinOption != null ? contactlessOnlinePinOption.hashCode() : 0)) * 31) + Boolean.hashCode(this.forcePinEntry);
    }

    public String toString() {
        return "ReaderConfiguration(readersEnabled=" + this.readersEnabled + ", transactionAmount=" + this.transactionAmount + ", transactionType=" + this.transactionType + ", emvTransactionType=" + this.emvTransactionType + ", quickChipMode=" + this.quickChipMode + ", terminalCapabilitiesOverride=" + this.terminalCapabilitiesOverride + ", domesticDebitPriority=" + this.domesticDebitPriority + ", contactlessOnlinePinOption=" + this.contactlessOnlinePinOption + ", forcePinEntry=" + this.forcePinEntry + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReaderConfiguration(Set<? extends ReaderType> readersEnabled, Amount transactionAmount, TransactionType transactionType, EmvTransactionType emvTransactionType, QuickChipOption quickChipMode, String str, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean z) {
        Intrinsics.checkNotNullParameter(readersEnabled, "readersEnabled");
        Intrinsics.checkNotNullParameter(transactionAmount, "transactionAmount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(quickChipMode, "quickChipMode");
        this.readersEnabled = readersEnabled;
        this.transactionAmount = transactionAmount;
        this.transactionType = transactionType;
        this.emvTransactionType = emvTransactionType;
        this.quickChipMode = quickChipMode;
        this.terminalCapabilitiesOverride = str;
        this.domesticDebitPriority = domesticDebitPriority;
        this.contactlessOnlinePinOption = contactlessOnlinePinOption;
        this.forcePinEntry = z;
    }

    public /* synthetic */ ReaderConfiguration(Set set, Amount amount, TransactionType transactionType, EmvTransactionType emvTransactionType, QuickChipOption quickChipOption, String str, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, amount, transactionType, emvTransactionType, quickChipOption, (i & 32) != 0 ? null : str, (i & 64) != 0 ? null : domesticDebitPriority, (i & 128) != 0 ? null : contactlessOnlinePinOption, (i & 256) != 0 ? false : z);
    }

    public final Set<ReaderType> getReadersEnabled() {
        return this.readersEnabled;
    }

    public final Amount getTransactionAmount() {
        return this.transactionAmount;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    public final QuickChipOption getQuickChipMode() {
        return this.quickChipMode;
    }

    public final String getTerminalCapabilitiesOverride() {
        return this.terminalCapabilitiesOverride;
    }

    public final DomesticDebitPriority getDomesticDebitPriority() {
        return this.domesticDebitPriority;
    }

    public final ContactlessOnlinePinOption getContactlessOnlinePinOption() {
        return this.contactlessOnlinePinOption;
    }

    public final boolean getForcePinEntry() {
        return this.forcePinEntry;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "", "(Ljava/lang/String;I)V", "MAGSTRIPE", "ICC", "NFC", "MANUAL_ENTRY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReaderType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ReaderType[] $VALUES;
        public static final ReaderType MAGSTRIPE = new ReaderType("MAGSTRIPE", 0);
        public static final ReaderType ICC = new ReaderType("ICC", 1);
        public static final ReaderType NFC = new ReaderType("NFC", 2);
        public static final ReaderType MANUAL_ENTRY = new ReaderType("MANUAL_ENTRY", 3);

        private static final /* synthetic */ ReaderType[] $values() {
            return new ReaderType[]{MAGSTRIPE, ICC, NFC, MANUAL_ENTRY};
        }

        public static EnumEntries<ReaderType> getEntries() {
            return $ENTRIES;
        }

        public static ReaderType valueOf(String str) {
            return (ReaderType) Enum.valueOf(ReaderType.class, str);
        }

        public static ReaderType[] values() {
            return (ReaderType[]) $VALUES.clone();
        }

        private ReaderType(String str, int i) {
        }

        static {
            ReaderType[] readerTypeArr$values = $values();
            $VALUES = readerTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(readerTypeArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration$TransactionType;", "", "(Ljava/lang/String;I)V", "GOODS", "REFUND", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TransactionType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TransactionType[] $VALUES;
        public static final TransactionType GOODS = new TransactionType("GOODS", 0);
        public static final TransactionType REFUND = new TransactionType("REFUND", 1);

        private static final /* synthetic */ TransactionType[] $values() {
            return new TransactionType[]{GOODS, REFUND};
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

        private TransactionType(String str, int i) {
        }

        static {
            TransactionType[] transactionTypeArr$values = $values();
            $VALUES = transactionTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(transactionTypeArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;", "", "(Ljava/lang/String;I)V", "USE_EMV", "USE_CONFIG", "USE_QUICKCHIP", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class QuickChipOption {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ QuickChipOption[] $VALUES;
        public static final QuickChipOption USE_EMV = new QuickChipOption("USE_EMV", 0);
        public static final QuickChipOption USE_CONFIG = new QuickChipOption("USE_CONFIG", 1);
        public static final QuickChipOption USE_QUICKCHIP = new QuickChipOption("USE_QUICKCHIP", 2);

        private static final /* synthetic */ QuickChipOption[] $values() {
            return new QuickChipOption[]{USE_EMV, USE_CONFIG, USE_QUICKCHIP};
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

        private QuickChipOption(String str, int i) {
        }

        static {
            QuickChipOption[] quickChipOptionArr$values = $values();
            $VALUES = quickChipOptionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(quickChipOptionArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "", "(Ljava/lang/String;I)V", "STANDARD", "TOP", "BOTTOM", "OFF", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DomesticDebitPriority {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DomesticDebitPriority[] $VALUES;
        public static final DomesticDebitPriority STANDARD = new DomesticDebitPriority("STANDARD", 0);
        public static final DomesticDebitPriority TOP = new DomesticDebitPriority("TOP", 1);
        public static final DomesticDebitPriority BOTTOM = new DomesticDebitPriority("BOTTOM", 2);
        public static final DomesticDebitPriority OFF = new DomesticDebitPriority("OFF", 3);

        private static final /* synthetic */ DomesticDebitPriority[] $values() {
            return new DomesticDebitPriority[]{STANDARD, TOP, BOTTOM, OFF};
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

        private DomesticDebitPriority(String str, int i) {
        }

        static {
            DomesticDebitPriority[] domesticDebitPriorityArr$values = $values();
            $VALUES = domesticDebitPriorityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(domesticDebitPriorityArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;", "", "(Ljava/lang/String;I)V", "DISABLED", "ENABLED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ContactlessOnlinePinOption {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ContactlessOnlinePinOption[] $VALUES;
        public static final ContactlessOnlinePinOption DISABLED = new ContactlessOnlinePinOption("DISABLED", 0);
        public static final ContactlessOnlinePinOption ENABLED = new ContactlessOnlinePinOption("ENABLED", 1);

        private static final /* synthetic */ ContactlessOnlinePinOption[] $values() {
            return new ContactlessOnlinePinOption[]{DISABLED, ENABLED};
        }

        public static EnumEntries<ContactlessOnlinePinOption> getEntries() {
            return $ENTRIES;
        }

        public static ContactlessOnlinePinOption valueOf(String str) {
            return (ContactlessOnlinePinOption) Enum.valueOf(ContactlessOnlinePinOption.class, str);
        }

        public static ContactlessOnlinePinOption[] values() {
            return (ContactlessOnlinePinOption[]) $VALUES.clone();
        }

        private ContactlessOnlinePinOption(String str, int i) {
        }

        static {
            ContactlessOnlinePinOption[] contactlessOnlinePinOptionArr$values = $values();
            $VALUES = contactlessOnlinePinOptionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(contactlessOnlinePinOptionArr$values);
        }
    }

    /* JADX INFO: compiled from: ReaderConfiguration.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0007R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0007R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/stripe/hardware/ReaderConfiguration$Companion;", "", "()V", "INSERT", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "getINSERT", "()Ljava/util/Set;", "INSERT_OR_TAP", "getINSERT_OR_TAP", "MANUAL_ENTRY", "getMANUAL_ENTRY", "SWIPE", "getSWIPE", "SWIPE_OR_INSERT", "getSWIPE_OR_INSERT", "SWIPE_OR_INSERT_OR_TAP", "getSWIPE_OR_INSERT_OR_TAP", "SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY", "getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY", "SWIPE_OR_TAP", "getSWIPE_OR_TAP", "TAP", "getTAP", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Set<ReaderType> getSWIPE() {
            return ReaderConfiguration.SWIPE;
        }

        public final Set<ReaderType> getINSERT() {
            return ReaderConfiguration.INSERT;
        }

        public final Set<ReaderType> getTAP() {
            return ReaderConfiguration.TAP;
        }

        public final Set<ReaderType> getSWIPE_OR_INSERT() {
            return ReaderConfiguration.SWIPE_OR_INSERT;
        }

        public final Set<ReaderType> getSWIPE_OR_TAP() {
            return ReaderConfiguration.SWIPE_OR_TAP;
        }

        public final Set<ReaderType> getINSERT_OR_TAP() {
            return ReaderConfiguration.INSERT_OR_TAP;
        }

        public final Set<ReaderType> getSWIPE_OR_INSERT_OR_TAP() {
            return ReaderConfiguration.SWIPE_OR_INSERT_OR_TAP;
        }

        public final Set<ReaderType> getMANUAL_ENTRY() {
            return ReaderConfiguration.MANUAL_ENTRY;
        }

        public final Set<ReaderType> getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY() {
            return ReaderConfiguration.SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY;
        }
    }
}
