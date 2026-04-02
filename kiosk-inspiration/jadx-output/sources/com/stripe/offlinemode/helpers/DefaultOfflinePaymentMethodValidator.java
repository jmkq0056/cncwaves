package com.stripe.offlinemode.helpers;

import com.stripe.hardware.emv.CvmType;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.log.OfflineDeclineReasons;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.models.ReadMethod;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import okio.ByteString;

/* JADX INFO: compiled from: DefaultOfflinePaymentMethodValidator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BS\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\"\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0007j\u0002`\f\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011¢\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J8\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001f0!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u0018H\u0016R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0007j\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;", "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "offlineDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "emitHealthMetrics", "", "error", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "isCardExpired", "", "tlvMap", "Lcom/stripe/hardware/emv/TlvMap;", "isOnlinePINCvm", "emvTlvMap", "isPinCheckFailedTvrBitSet", "tvrHex", "", "validatePaymentMethod", "Lkotlin/Pair;", "paymentMethod", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "livemode", "intentCollectedOffline", "isSetupIntent", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflinePaymentMethodValidator implements OfflinePaymentMethodValidator {
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final OfflineConfigHelper offlineConfigHelper;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger;
    private final TerminalStatusManager statusManager;

    /* JADX INFO: compiled from: DefaultOfflinePaymentMethodValidator.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TerminalErrorCode.values().length];
            try {
                iArr[TerminalErrorCode.INTERAC_NOT_SUPPORTED_OFFLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TerminalErrorCode.CARD_SWIPE_NOT_AVAILABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TerminalErrorCode.ONLINE_PIN_NOT_SUPPORTED_OFFLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TerminalErrorCode.OFFLINE_AND_CARD_EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TerminalErrorCode.TEST_CARD_IN_LIVEMODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TerminalErrorCode.UNEXPECTED_SDK_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TerminalErrorCode.OFFLINE_TRANSACTION_DECLINED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TerminalErrorCode.OFFLINE_COLLECT_AND_CONFIRM_MISMATCH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TerminalErrorCode.MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DefaultOfflinePaymentMethodValidator(TerminalStatusManager statusManager, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.statusManager = statusManager;
        this.offlineConfigHelper = offlineConfigHelper;
        this.offlineDiscreteLogger = offlineDiscreteLogger;
        this.logger = logger;
    }

    @Override // com.stripe.offlinemode.helpers.OfflinePaymentMethodValidator
    public Pair<TlvMap, String> validatePaymentMethod(RequestedPaymentMethod paymentMethod, boolean livemode, boolean intentCollectedOffline, boolean isSetupIntent) throws TerminalException {
        if (paymentMethod == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Payment method data must not be null.", null, null, 12, null);
        }
        if (Intrinsics.areEqual(paymentMethod.type, PaymentMethodType.INTERAC_PRESENT.getTypeName())) {
            throw new TerminalException(TerminalErrorCode.INTERAC_NOT_SUPPORTED_OFFLINE, "Interac payments are not supported offline.", null, null, 12, null);
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = paymentMethod.card_present;
        if (requestedCardPresent == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Card present data must not be null.", null, null, 12, null);
        }
        if (CollectionsKt.contains(OfflinePaymentMethodValidator.INSTANCE.getMAGSTRIPE_READ_METHODS(), requestedCardPresent.read_method)) {
            throw new TerminalException(TerminalErrorCode.CARD_SWIPE_NOT_AVAILABLE, "Payments collected by swipe cannot be processed offline.", null, null, 12, null);
        }
        if (this.statusManager.getConnectedReader() == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Connected reader must not be null.", null, null, 12, null);
        }
        String str = requestedCardPresent.emv_data;
        if (str == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Emv Data must not be null.", null, null, 12, null);
        }
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(str);
        if (tlvMap == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to parse EMV data.", null, null, 12, null);
        }
        if (tlvMap.getSize() == 0) {
            throw new TerminalException(TerminalErrorCode.MISSING_EMV_DATA, "Failed to read EMV data from presented payment method.", null, null, 12, null);
        }
        if (isOnlinePINCvm(tlvMap)) {
            throw new TerminalException(TerminalErrorCode.ONLINE_PIN_NOT_SUPPORTED_OFFLINE, "Payments collected with an online PIN cannot be processed offline.", null, null, 12, null);
        }
        if (livemode && isCardExpired(tlvMap)) {
            throw new TerminalException(TerminalErrorCode.OFFLINE_AND_CARD_EXPIRED, "Card expired.", null, null, 12, null);
        }
        String str2 = tlvMap.get(TlvMap.TAG_TERMINAL_VERIFICATION_RESULTS);
        if (str2 == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to retrieve verification results from EMV data.", null, null, 12, null);
        }
        if (isPinCheckFailedTvrBitSet(str2)) {
            throw new TerminalException(TerminalErrorCode.ONLINE_PIN_NOT_SUPPORTED_OFFLINE, "Payments collected with an online PIN cannot be processed offline.", null, null, 12, null);
        }
        if (!this.offlineConfigHelper.shouldAllowOfflineTransaction(str2)) {
            throw new TerminalException(TerminalErrorCode.OFFLINE_TRANSACTION_DECLINED, "Card verification failed.", null, null, 12, null);
        }
        if (livemode && Intrinsics.areEqual(requestedCardPresent.read_method, ReadMethod.CONTACT_EMV.getMethod()) && this.offlineConfigHelper.isCardDenylistedForOffline(tlvMap.getFirst6(), tlvMap.getLast4(), tlvMap.getCardholderName())) {
            throw new TerminalException(TerminalErrorCode.TEST_CARD_IN_LIVEMODE, "Your card was declined. Your request was in live mode, but used a known test card.", null, null, 12, null);
        }
        if (isSetupIntent && tlvMap.isMobileWallet() && !this.offlineConfigHelper.isMobileWalletOnSetupIntentsEnabled()) {
            throw new TerminalException(TerminalErrorCode.MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS, "Mobile wallets cannot be used to confirm SetupIntents.", null, null, 12, null);
        }
        if (this.offlineConfigHelper.isDeferredAuthorizationCountry() && !intentCollectedOffline) {
            throw new TerminalException(TerminalErrorCode.OFFLINE_COLLECT_AND_CONFIRM_MISMATCH, "Payment was collected online and cannot be confirmed offline. Please retry the payment.", null, null, 12, null);
        }
        return new Pair<>(tlvMap, requestedCardPresent.read_method);
    }

    @Override // com.stripe.offlinemode.helpers.OfflinePaymentMethodValidator
    public void emitHealthMetrics(TerminalException error) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(error, "error");
        String str = null;
        switch (WhenMappings.$EnumSwitchMapping$0[error.getErrorCode().ordinal()]) {
            case 1:
                str = OfflineDeclineReasons.INTERAC_NOT_SUPPORTED;
                break;
            case 2:
                str = OfflineDeclineReasons.CARD_SWIPE_NOT_AVAILABLE;
                break;
            case 3:
                str = OfflineDeclineReasons.ONLINE_PIN_NOT_SUPPORTED;
                break;
            case 4:
                str = OfflineDeclineReasons.CARD_EXPIRED;
                break;
            case 5:
                str = OfflineDeclineReasons.TEST_CARD_IN_LIVEMODE;
                break;
            case 6:
                String errorMessage = error.getErrorMessage();
                if (Intrinsics.areEqual(errorMessage, "Failed to retrieve verification results from EMV data.")) {
                    str = OfflineDeclineReasons.TVR_MISSING;
                } else if (Intrinsics.areEqual(errorMessage, "Failed to retrieve application ID from card EMV data.")) {
                    str = OfflineDeclineReasons.MISSING_AID;
                }
                break;
            case 7:
                str = OfflineDeclineReasons.TVR_MASK_FAILED;
                break;
            case 8:
                str = OfflineDeclineReasons.STARTED_ONLINE_NOW_OFFLINE;
                break;
            case 9:
                str = OfflineDeclineReasons.MOBILE_WALLET_ON_SETUP_INTENT;
                break;
        }
        if (str != null) {
            HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.DECLINE_REASON, str)), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.helpers.DefaultOfflinePaymentMethodValidator.emitHealthMetrics.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.offline_decline = it;
                }
            }, 5, null);
        }
    }

    private final boolean isOnlinePINCvm(TlvMap emvTlvMap) {
        String cardholderVerificationMethod = emvTlvMap.getCardholderVerificationMethod();
        return cardholderVerificationMethod != null && CvmType.INSTANCE.fromStatus(cardholderVerificationMethod) == CvmType.ONLINE_ENCIPHERED_PIN;
    }

    private final boolean isPinCheckFailedTvrBitSet(String tvrHex) {
        return (ByteString.INSTANCE.decodeHex(tvrHex).toByteArray()[2] & 144) == 144;
    }

    private final boolean isCardExpired(TlvMap tlvMap) throws IllegalAccessException, InstantiationException {
        String str = tlvMap.get(TlvMap.TAG_EXPIRATION_DATE);
        String str2 = tlvMap.get(TlvMap.TAG_TRANSACTION_DATE);
        if (str != null && str2 != null) {
            return Integer.parseInt(str, CharsKt.checkRadix(10)) < Integer.parseInt(str2, CharsKt.checkRadix(10));
        }
        this.logger.w("Unable to determine whether card expired due to missing date tags. Expiration date: " + str + ". Transaction date: " + str2, new Pair[0]);
        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, null, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.helpers.DefaultOfflinePaymentMethodValidator$isCardExpired$1$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(it, "it");
                incrementCounter.emv_data_missing_expiration_tags = it;
            }
        }, 7, null);
        return false;
    }
}
