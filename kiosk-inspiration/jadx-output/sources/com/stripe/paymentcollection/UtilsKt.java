package com.stripe.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.ReaderConfigurationKt;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.metrics.PinEntryFailureReason;
import com.stripe.stripeterminal.external.models.DeviceType;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001al\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\b\b\u0002\u0010\u0015\u001a\u00020\f\u001a\f\u0010\u0016\u001a\u00020\f*\u0004\u0018\u00010\u0017\u001a\f\u0010\u0018\u001a\u0004\u0018\u00010\u0019*\u00020\u001a¨\u0006\u001b"}, d2 = {"generateConfigureReaderEvent", "Lcom/stripe/hardware/ReaderConfiguration;", "readerType", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "isOffline", "", "isDeferredAuthorizationCountry", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "domesticDebitAids", "", "", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "isFatalError", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "toFailureReason", "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;", "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UtilsKt {

    /* JADX INFO: compiled from: Utils.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[TransactionType.values().length];
            try {
                iArr[TransactionType.SETUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionType.REFUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionType.REUSABLE_CARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransactionType.MAGSTRIPE_PASSTHROUGH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransactionType.STRONG_CUSTOMER_AUTHENTICATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransactionType.CHARGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DeviceType.values().length];
            try {
                iArr2[DeviceType.CHIPPER_1X.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DeviceType.CHIPPER_2X.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[DeviceType.ETNA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[DeviceType.TAP_TO_PAY_DEVICE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[DeviceType.STRIPE_M2.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[DeviceType.STRIPE_S700.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[DeviceType.STRIPE_S700_DEVKIT.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[DeviceType.STRIPE_S710.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[DeviceType.STRIPE_S710_DEVKIT.ordinal()] = 9;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[DeviceType.UNKNOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[DeviceType.VERIFONE_P400.ordinal()] = 11;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[DeviceType.WISECUBE.ordinal()] = 12;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr2[DeviceType.WISEPAD_3.ordinal()] = 13;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr2[DeviceType.WISEPAD_3S.ordinal()] = 14;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr2[DeviceType.WISEPOS_E.ordinal()] = 15;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr2[DeviceType.WISEPOS_E_DEVKIT.ordinal()] = 16;
            } catch (NoSuchFieldError unused22) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[PinEntryStatus.values().length];
            try {
                iArr3[PinEntryStatus.CANCEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr3[PinEntryStatus.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr3[PinEntryStatus.BYPASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr3[PinEntryStatus.WRONG_PIN_LENGTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr3[PinEntryStatus.INCORRECT_PIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr3[PinEntryStatus.ICC_REMOVED.ordinal()] = 6;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr3[PinEntryStatus.CARD_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr3[PinEntryStatus.NOT_REQUESTED.ordinal()] = 8;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr3[PinEntryStatus.REQUESTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr3[PinEntryStatus.ENTERED.ordinal()] = 10;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr3[PinEntryStatus.SUCCESS.ordinal()] = 11;
            } catch (NoSuchFieldError unused33) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public static final ReaderConfiguration generateConfigureReaderEvent(Set<? extends ReaderConfiguration.ReaderType> readerType, Amount amount, TransactionType transactionType, EmvTransactionType emvTransactionType, boolean z, boolean z2, DeviceType deviceType, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, List<String> domesticDebitAids, boolean z3) {
        ReaderConfiguration.QuickChipOption quickChipOption;
        Pair pair;
        ReaderConfiguration.TransactionType transactionType2;
        Intrinsics.checkNotNullParameter(readerType, "readerType");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
        switch (WhenMappings.$EnumSwitchMapping$0[transactionType.ordinal()]) {
            case 1:
                quickChipOption = ReaderConfiguration.QuickChipOption.USE_QUICKCHIP;
                break;
            case 2:
            case 3:
            case 4:
                quickChipOption = ReaderConfiguration.QuickChipOption.USE_CONFIG;
                break;
            case 5:
            case 6:
                if (z2 && z) {
                    quickChipOption = ReaderConfiguration.QuickChipOption.USE_QUICKCHIP;
                } else {
                    quickChipOption = ReaderConfiguration.QuickChipOption.USE_CONFIG;
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        ReaderConfiguration.QuickChipOption quickChipOption2 = quickChipOption;
        if (z) {
            switch (WhenMappings.$EnumSwitchMapping$1[deviceType.ordinal()]) {
                case 1:
                    pair = TuplesKt.to(null, null);
                    break;
                case 2:
                    pair = TuplesKt.to(null, null);
                    break;
                case 3:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 4:
                    pair = TuplesKt.to(null, null);
                    break;
                case 5:
                    pair = TuplesKt.to(null, null);
                    break;
                case 6:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 7:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 8:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 9:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 10:
                    pair = TuplesKt.to(null, null);
                    break;
                case 11:
                    pair = TuplesKt.to(null, null);
                    break;
                case 12:
                    pair = TuplesKt.to(null, null);
                    break;
                case 13:
                    pair = TuplesKt.to("20B8C8", ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 14:
                    pair = TuplesKt.to("60B8C8", ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 15:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                case 16:
                    pair = TuplesKt.to(null, ReaderConfiguration.ContactlessOnlinePinOption.DISABLED);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } else {
            pair = TuplesKt.to(null, null);
        }
        String str = (String) pair.component1();
        ReaderConfiguration.ContactlessOnlinePinOption contactlessOnlinePinOption = (ReaderConfiguration.ContactlessOnlinePinOption) pair.component2();
        switch (WhenMappings.$EnumSwitchMapping$0[transactionType.ordinal()]) {
            case 1:
                transactionType2 = ReaderConfiguration.TransactionType.GOODS;
                break;
            case 2:
                transactionType2 = ReaderConfiguration.TransactionType.REFUND;
                break;
            case 3:
                transactionType2 = ReaderConfiguration.TransactionType.GOODS;
                break;
            case 4:
                transactionType2 = ReaderConfiguration.TransactionType.GOODS;
                break;
            case 5:
                transactionType2 = ReaderConfiguration.TransactionType.GOODS;
                break;
            case 6:
                transactionType2 = ReaderConfiguration.TransactionType.GOODS;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return new ReaderConfiguration(readerType, amount, transactionType2, emvTransactionType, quickChipOption2, str, ReaderConfigurationKt.domesticDebitPriorityOverride(domesticDebitPriority, domesticDebitAids, Boolean.valueOf(z)), contactlessOnlinePinOption, z3);
    }

    public static final PinEntryFailureReason toFailureReason(PinEntryStatus pinEntryStatus) {
        Intrinsics.checkNotNullParameter(pinEntryStatus, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$2[pinEntryStatus.ordinal()]) {
            case 1:
                return PinEntryFailureReason.CUSTOMER_CANCELLED;
            case 2:
                return PinEntryFailureReason.TIMEOUT;
            case 3:
                return PinEntryFailureReason.BYPASSED;
            case 4:
                return PinEntryFailureReason.WRONG_PIN_LENGTH;
            case 5:
                return PinEntryFailureReason.INCORRECT_PIN;
            case 6:
                return PinEntryFailureReason.ICC_REMOVED;
            case 7:
                return PinEntryFailureReason.CARD_ERROR;
            case 8:
            case 9:
            case 10:
            case 11:
                return null;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final boolean isFatalError(TransactionResult.Result result) {
        return result == TransactionResult.Result.DEVICE_FAILURE;
    }
}
