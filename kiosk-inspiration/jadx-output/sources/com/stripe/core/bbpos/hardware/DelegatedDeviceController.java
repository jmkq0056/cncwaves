package com.stripe.core.bbpos.hardware;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.bbpos.sdk.AmountInputType;
import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.bbpos.sdk.ContactlessOnlinePinOption;
import com.stripe.bbpos.sdk.DomesticDebitPriority;
import com.stripe.bbpos.sdk.OtherAmountOption;
import com.stripe.bbpos.sdk.QuickChipOption;
import com.stripe.bbpos.sdk.TransactionType;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.bbpos.hardware.api.TippingOption;
import com.stripe.core.bbpos.hardware.emv.CheckCardModeConverter;
import com.stripe.currency.Amount;
import com.stripe.currency.CurrencyCode;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.tipping.FixedAmountTips;
import com.stripe.hardware.tipping.InvalidTipConfig;
import com.stripe.hardware.tipping.PercentageTips;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.time.Clock;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DelegatedDeviceController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0014\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001aÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;", "", "clock", "Lcom/stripe/time/Clock;", "getClock", "()Lcom/stripe/time/Clock;", "featureFlagsProvider", "Ljavax/inject/Provider;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "getFeatureFlagsProvider", "()Ljavax/inject/Provider;", "pinPadAccessibilityChecker", "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;", "getPinPadAccessibilityChecker", "()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;", "enableInputAmount", "", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "tipConfigValidationResult", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "startEmv", "configuration", "Lcom/stripe/hardware/ReaderConfiguration;", "checkCardModeOverride", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DelegatedDeviceController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: DelegatedDeviceController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[ReaderConfiguration.TransactionType.values().length];
            try {
                iArr[ReaderConfiguration.TransactionType.GOODS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderConfiguration.TransactionType.REFUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ReaderConfiguration.QuickChipOption.values().length];
            try {
                iArr2[ReaderConfiguration.QuickChipOption.USE_EMV.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ReaderConfiguration.QuickChipOption.USE_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ReaderConfiguration.QuickChipOption.USE_QUICKCHIP.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[ReaderConfiguration.DomesticDebitPriority.values().length];
            try {
                iArr3[ReaderConfiguration.DomesticDebitPriority.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[ReaderConfiguration.DomesticDebitPriority.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[ReaderConfiguration.DomesticDebitPriority.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[ReaderConfiguration.DomesticDebitPriority.OFF.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[ReaderConfiguration.ContactlessOnlinePinOption.values().length];
            try {
                iArr4[ReaderConfiguration.ContactlessOnlinePinOption.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr4[ReaderConfiguration.ContactlessOnlinePinOption.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    Clock getClock();

    Provider<ReaderFeatureFlags> getFeatureFlagsProvider();

    PinPadAccessibilityChecker getPinPadAccessibilityChecker();

    default void enableInputAmount(DeviceControllerWrapper deviceControllerWrapper, TipConfigValidationResult tipConfigValidationResult) {
        TippingOption.None noneM443boximpl;
        Intrinsics.checkNotNullParameter(deviceControllerWrapper, "<this>");
        Intrinsics.checkNotNullParameter(tipConfigValidationResult, "tipConfigValidationResult");
        if (tipConfigValidationResult instanceof PercentageTips) {
            PercentageTips percentageTips = (PercentageTips) tipConfigValidationResult;
            CurrencyCode currency = percentageTips.getCurrency();
            int numeric = currency.getNumeric();
            int minorUnit = currency.getMinorUnit();
            String str = INSTANCE.formattedWith(percentageTips.getAmount(), percentageTips.getCurrency());
            List<Integer> percentageTips2 = percentageTips.getPercentageTips();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(percentageTips2, 10));
            Iterator<T> it = percentageTips2.iterator();
            while (it.hasNext()) {
                BigDecimal bigDecimalValueOf = BigDecimal.valueOf(((Number) it.next()).intValue());
                Intrinsics.checkNotNullExpressionValue(bigDecimalValueOf, "valueOf(...)");
                arrayList.add(bigDecimalValueOf.toPlainString());
            }
            noneM443boximpl = TippingOption.Percentage.m450boximpl(TippingOption.Percentage.m451constructorimpl(new com.stripe.bbpos.sdk.PercentageTips(numeric, minorUnit, str, arrayList, null, 16, null)));
        } else if (tipConfigValidationResult instanceof FixedAmountTips) {
            FixedAmountTips fixedAmountTips = (FixedAmountTips) tipConfigValidationResult;
            CurrencyCode currency2 = fixedAmountTips.getCurrency();
            int numeric2 = currency2.getNumeric();
            int minorUnit2 = currency2.getMinorUnit();
            String str2 = INSTANCE.formattedWith(fixedAmountTips.getAmount(), fixedAmountTips.getCurrency());
            List<Long> amountTips = fixedAmountTips.getAmountTips();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(amountTips, 10));
            Iterator<T> it2 = amountTips.iterator();
            while (it2.hasNext()) {
                arrayList2.add(INSTANCE.formattedWith(((Number) it2.next()).longValue(), currency2));
            }
            noneM443boximpl = TippingOption.FixedAmount.m443boximpl(TippingOption.FixedAmount.m444constructorimpl(new com.stripe.bbpos.sdk.FixedAmountTips(numeric2, minorUnit2, str2, arrayList2, null, 16, null)));
        } else {
            if (!(tipConfigValidationResult instanceof InvalidTipConfig)) {
                throw new NoWhenBranchMatchedException();
            }
            noneM443boximpl = TippingOption.None.INSTANCE;
        }
        deviceControllerWrapper.enableInputAmount(3600, AmountInputType.TIPS_ONLY, OtherAmountOption.CURRENCY, noneM443boximpl);
    }

    static /* synthetic */ void startEmv$default(DelegatedDeviceController delegatedDeviceController, DeviceControllerWrapper deviceControllerWrapper, ReaderConfiguration readerConfiguration, CheckCardMode checkCardMode, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startEmv");
        }
        if ((i & 2) != 0) {
            checkCardMode = null;
        }
        delegatedDeviceController.startEmv(deviceControllerWrapper, readerConfiguration, checkCardMode);
    }

    default void startEmv(DeviceControllerWrapper deviceControllerWrapper, ReaderConfiguration configuration, CheckCardMode checkCardMode) {
        TransactionType transactionType;
        QuickChipOption quickChipOption;
        DomesticDebitPriority domesticDebitPriority;
        ContactlessOnlinePinOption contactlessOnlinePinOption;
        ContactlessOnlinePinOption contactlessOnlinePinOption2;
        Intrinsics.checkNotNullParameter(deviceControllerWrapper, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        CurrencyCode currency = configuration.getTransactionAmount().getCurrency();
        boolean zIsPinPadAccessible = getPinPadAccessibilityChecker().isPinPadAccessible();
        int i = WhenMappings.$EnumSwitchMapping$0[configuration.getTransactionType().ordinal()];
        if (i == 1) {
            transactionType = TransactionType.GOODS;
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            transactionType = TransactionType.REFUND;
        }
        CheckCardMode checkCardMode2 = checkCardMode == null ? CheckCardModeConverter.INSTANCE.toCheckCardMode(configuration.getReadersEnabled()) : checkCardMode;
        int i2 = WhenMappings.$EnumSwitchMapping$1[configuration.getQuickChipMode().ordinal()];
        if (i2 == 1) {
            quickChipOption = QuickChipOption.USE_EMV;
        } else if (i2 == 2) {
            quickChipOption = QuickChipOption.USE_CONFIG;
        } else {
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            quickChipOption = QuickChipOption.USE_QUICKCHIP;
        }
        boolean z = configuration.getEmvTransactionType() != EmvTransactionType.QUICK;
        TransactionType transactionType2 = transactionType;
        CheckCardMode checkCardMode3 = checkCardMode2;
        int numeric = currency.getNumeric();
        int minorUnit = currency.getMinorUnit();
        Companion companion = INSTANCE;
        String str = companion.formatted(configuration.getTransactionAmount());
        String terminalTime = companion.toTerminalTime(getClock().currentTimeMillis());
        String terminalCapabilitiesOverride = configuration.getTerminalCapabilitiesOverride();
        ReaderConfiguration.DomesticDebitPriority domesticDebitPriority2 = configuration.getDomesticDebitPriority();
        int i3 = domesticDebitPriority2 == null ? -1 : WhenMappings.$EnumSwitchMapping$2[domesticDebitPriority2.ordinal()];
        if (i3 == -1) {
            domesticDebitPriority = null;
        } else if (i3 == 1) {
            domesticDebitPriority = DomesticDebitPriority.STANDARD;
        } else if (i3 == 2) {
            domesticDebitPriority = DomesticDebitPriority.TOP;
        } else if (i3 == 3) {
            domesticDebitPriority = DomesticDebitPriority.BOTTOM;
        } else if (i3 == 4) {
            domesticDebitPriority = DomesticDebitPriority.OFF;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        ReaderConfiguration.ContactlessOnlinePinOption contactlessOnlinePinOption3 = configuration.getContactlessOnlinePinOption();
        int i4 = contactlessOnlinePinOption3 == null ? -1 : WhenMappings.$EnumSwitchMapping$3[contactlessOnlinePinOption3.ordinal()];
        if (i4 != -1) {
            if (i4 == 1) {
                contactlessOnlinePinOption2 = ContactlessOnlinePinOption.DISABLED;
            } else if (i4 == 2) {
                contactlessOnlinePinOption2 = ContactlessOnlinePinOption.ENABLED;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            contactlessOnlinePinOption = contactlessOnlinePinOption2;
        } else {
            contactlessOnlinePinOption = null;
        }
        boolean forcePinEntry = configuration.getForcePinEntry();
        Integer numValueOf = Integer.valueOf((int) DelegatedDeviceControllerKt.getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS());
        numValueOf.intValue();
        deviceControllerWrapper.startEmv(transactionType2, checkCardMode3, quickChipOption, z, numeric, minorUnit, str, terminalTime, 3600, 90, 90, 90, terminalCapabilitiesOverride, domesticDebitPriority, contactlessOnlinePinOption, forcePinEntry, zIsPinPadAccessible, zIsPinPadAccessible ? numValueOf : null);
    }

    /* JADX INFO: compiled from: DelegatedDeviceController.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0002J\u0014\u0010\b\u001a\u00020\u0006*\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\f\u0010\f\u001a\u00020\u0006*\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;", "", "()V", "terminalTimeFormatter", "Ljava/text/SimpleDateFormat;", "formatted", "", "Lcom/stripe/currency/Amount;", "formattedWith", "", FirebaseAnalytics.Param.CURRENCY, "Lcom/stripe/currency/CurrencyCode;", "toTerminalTime", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final SimpleDateFormat terminalTimeFormatter = new SimpleDateFormat("yyMMddHHmmss", Locale.US);

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String formatted(Amount amount) {
            return formattedWith(amount.getValue(), amount.getCurrency());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String formattedWith(long j, CurrencyCode currencyCode) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(j);
            Intrinsics.checkNotNullExpressionValue(bigDecimalValueOf, "valueOf(...)");
            String plainString = bigDecimalValueOf.movePointLeft(currencyCode.getMinorUnit()).toPlainString();
            Intrinsics.checkNotNullExpressionValue(plainString, "toPlainString(...)");
            return plainString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String toTerminalTime(long j) {
            String str = terminalTimeFormatter.format(Long.valueOf(j));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            return str;
        }
    }
}
