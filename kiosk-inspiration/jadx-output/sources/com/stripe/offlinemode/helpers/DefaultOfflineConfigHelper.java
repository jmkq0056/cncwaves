package com.stripe.offlinemode.helpers;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.device.ActiveLocationConfigRepository;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.stripeterminal.internal.common.extensions.ReaderExtensionsKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DefaultOfflineConfigHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u00012\u00020\u0002BA\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000f¢\u0006\u0002\u0010\u0010J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010\u0014J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010\u0014J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001aJ&\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010 \u001a\u00020\u001cH\u0016J\u0018\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019H\u0016J\b\u0010%\u001a\u00020\u001cH\u0016J\u001a\u0010&\u001a\u00020\u001c2\b\u0010'\u001a\u0004\u0018\u00010\u00192\u0006\u0010(\u001a\u00020\u0019H\u0016J\b\u0010)\u001a\u00020\u001cH\u0016J\b\u0010*\u001a\u00020\u001cH\u0016J\b\u0010+\u001a\u00020\u001cH\u0016J\b\u0010,\u001a\u00020\u001cH\u0016J8\u0010-\u001a\u00020.2\u0006\u0010'\u001a\u00020\u00192\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u0001022\b\u00103\u001a\u0004\u0018\u0001042\b\u00105\u001a\u0004\u0018\u000106H\u0016J8\u00107\u001a\u00020.2\u0006\u0010(\u001a\u00020\u00192\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u0001022\b\u00108\u001a\u0004\u0018\u0001042\b\u00109\u001a\u0004\u0018\u000106H\u0016JP\u0010:\u001a\u00020.2\u0006\u0010;\u001a\u00020<2>\u0010=\u001a:\u0012\u0015\u0012\u0013\u0018\u000104¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0015\u0012\u0013\u0018\u000106¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020.0>j\u0002`CH\u0016J8\u0010D\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00192\u0006\u0010H\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u00192\u0006\u0010J\u001a\u00020\u00192\u0006\u0010K\u001a\u00020\u0012H\u0016J\u0010\u0010L\u001a\u00020\u001c2\u0006\u0010M\u001a\u00020\u0019H\u0016J\b\u0010N\u001a\u00020\u001cH\u0016J\b\u0010O\u001a\u00020\u001cH\u0016J\u0012\u0010P\u001a\u0004\u0018\u00010\u00192\u0006\u0010Q\u001a\u00020\u0019H\u0016J\b\u0010R\u001a\u00020\u0019H\u0002J\u0012\u0010S\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "proxyOfflineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "activeLocationConfigRepository", "Lcom/stripe/device/ActiveLocationConfigRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "getForwardingJitterMs", "", "getHttpHealthCheckTimeoutMs", "()Ljava/lang/Long;", "getHttpHighTimeoutMs", "getHttpLowTimeoutMs", "getMaxTransactionLimit", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", "(Ljava/lang/String;)Ljava/lang/Long;", "isCardDenylistedForOffline", "", "firstSix", "lastFour", "cardholderName", "isDeferredAuthorizationCountry", "isKnownForwardingError", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "errorCode", "isMobileWalletOnSetupIntentsEnabled", "isOfflineEnabledForLocationAndReader", "locationId", "serialNumber", "isOfflineListenerSet", "isOfflineModeEnabled", "isSetupIntentsEnabled", "offlineListenerHasSetupIntentCallbacks", "onOfflineConfigUpdate", "", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetoothAutoReconnectConfigPb", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbAutoReconnectConfigPb", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "onOfflineConfigUpdateForMobileReader", "bluetoothAutoReconnectConfig", "usbAutoReconnectConfig", "setActiveConfigs", "offlineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "setReconnectParams", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "usbConfig", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "shouldAllowOfflineConnection", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "firmware", "config", "keyProfileVersion", "keyProfileId", "currentTimeMs", "shouldAllowOfflineTransaction", "tvrStringHex", "shouldAllowPairingUnseenReader", "supportsSca", "switchInterfaceAuthorizationResponseCodeForAid", "aid", "tvrMask", "updateAccountOfflineConfig", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineConfigHelper implements OfflineConfigHelper, UpdateClient.OfflineConfigUpdateListener {
    private final ActiveLocationConfigRepository activeLocationConfigRepository;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final OfflineRepository offlineRepository;
    private final ProxyOfflineListener proxyOfflineListener;
    private final SettingsRepository settingsRepository;

    /* JADX INFO: compiled from: DefaultOfflineConfigHelper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OfflineApiRequest.ApiRequestType.values().length];
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_SETUP_INTENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DefaultOfflineConfigHelper(SettingsRepository settingsRepository, @Offline OfflineRepository offlineRepository, ProxyOfflineListener proxyOfflineListener, ActiveLocationConfigRepository activeLocationConfigRepository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        Intrinsics.checkNotNullParameter(activeLocationConfigRepository, "activeLocationConfigRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.settingsRepository = settingsRepository;
        this.offlineRepository = offlineRepository;
        this.proxyOfflineListener = proxyOfflineListener;
        this.activeLocationConfigRepository = activeLocationConfigRepository;
        this.logger = logger;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public void onOfflineConfigUpdate(String locationId, OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb) throws TerminalException {
        Intrinsics.checkNotNullParameter(locationId, "locationId");
        updateAccountOfflineConfig(offlineConfig);
        this.activeLocationConfigRepository.setActiveLocationConfigs(locationId, offlineConfig, tippingConfig, bluetoothAutoReconnectConfigPb, usbAutoReconnectConfigPb);
    }

    @Override // com.stripe.core.readerupdate.UpdateClient.OfflineConfigUpdateListener
    public void onOfflineConfigUpdateForMobileReader(String serialNumber, OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfig, UsbAutoReconnectConfigPb usbAutoReconnectConfig) throws TerminalException {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultOfflineConfigHelper defaultOfflineConfigHelper = this;
            ApiLocationPb apiLocationPb = this.offlineRepository.getLatestOfflineLocationForReader(serialNumber).full_location;
            objM817constructorimpl = Result.m817constructorimpl(apiLocationPb != null ? apiLocationPb.id : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m820exceptionOrNullimpl(objM817constructorimpl) == null) {
            obj = objM817constructorimpl;
        } else {
            this.logger.e("Failed to fetch location ID for reader " + serialNumber + '.', new Pair[0]);
        }
        String str = (String) obj;
        if (str != null) {
            onOfflineConfigUpdate(str, offlineConfig, tippingConfig, bluetoothAutoReconnectConfig, usbAutoReconnectConfig);
        }
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isOfflineModeEnabled() {
        return this.proxyOfflineListener.isListenerSetFlow().getValue().booleanValue() && this.offlineRepository.isOfflineModeEnabledOnActiveReader();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isSetupIntentsEnabled() {
        return this.proxyOfflineListener.getListenerHasSetupIntentCallbackFlow().getValue().booleanValue() && this.offlineRepository.getCurrentConnectionSupportsOfflineSetupIntents() && isOfflineModeEnabled() && this.offlineRepository.getAccountOfflineConfig().setup_intents_enabled;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isOfflineListenerSet() {
        return this.proxyOfflineListener.isListenerSetFlow().getValue().booleanValue();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean offlineListenerHasSetupIntentCallbacks() {
        return this.proxyOfflineListener.getListenerHasSetupIntentCallbackFlow().getValue().booleanValue();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isMobileWalletOnSetupIntentsEnabled() {
        return this.offlineRepository.getAccountOfflineConfig().mobile_wallet_on_setup_intents_enabled;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isOfflineEnabledForLocationAndReader(String locationId, String serialNumber) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        if (!this.proxyOfflineListener.isListenerSetFlow().getValue().booleanValue()) {
            return false;
        }
        OfflineRepository offlineRepository = this.offlineRepository;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(Boolean.valueOf(OfflineRepository.isOfflineEnabledForLocationAndReader$default(offlineRepository, locationId, serialNumber, null, 4, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = false;
        }
        return ((Boolean) objM817constructorimpl).booleanValue();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public Long getHttpLowTimeoutMs() {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultOfflineConfigHelper defaultOfflineConfigHelper = this;
            objM817constructorimpl = Result.m817constructorimpl(Long.valueOf(this.offlineRepository.getAccountOfflineConfig().http_low_timeout_ms));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            this.logger.e("Failed to fetch low HTTP timeout from offline repository.", thM820exceptionOrNullimpl, new Pair[0]);
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = null;
        }
        return (Long) objM817constructorimpl;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public Long getHttpHighTimeoutMs() {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultOfflineConfigHelper defaultOfflineConfigHelper = this;
            objM817constructorimpl = Result.m817constructorimpl(Long.valueOf(this.offlineRepository.getAccountOfflineConfig().http_high_timeout_ms));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            this.logger.e("Failed to fetch high HTTP timeout from offline repository.", thM820exceptionOrNullimpl, new Pair[0]);
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = null;
        }
        return (Long) objM817constructorimpl;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public Long getHttpHealthCheckTimeoutMs() {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultOfflineConfigHelper defaultOfflineConfigHelper = this;
            objM817constructorimpl = Result.m817constructorimpl(Long.valueOf(this.offlineRepository.getAccountOfflineConfig().http_health_check_timeout_ms));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            this.logger.e("Failed to fetch health-check HTTP timeout from offline repository.", thM820exceptionOrNullimpl, new Pair[0]);
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = null;
        }
        return (Long) objM817constructorimpl;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public long getForwardingJitterMs() {
        return this.offlineRepository.getAccountOfflineConfig().forwarding_jitter_ms;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public Long getMaxTransactionLimit(String currencyCode) {
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        Map<String, Long> map = this.offlineRepository.getAccountOfflineConfig().max_transaction_amount_by_currency;
        String lowerCase = currencyCode.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return map.get(lowerCase);
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isKnownForwardingError(OfflineApiRequest.ApiRequestType type, String errorCode) {
        List<String> list;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfig = this.offlineRepository.getAccountOfflineConfig();
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            list = accountOfflineConfig.expected_create_error_codes;
        } else if (i == 2) {
            list = accountOfflineConfig.expected_confirm_error_codes;
        } else if (i == 3) {
            list = accountOfflineConfig.expected_setup_intent_create_error_codes;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            list = accountOfflineConfig.expected_setup_intent_confirm_error_codes;
        }
        return list.contains(errorCode);
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean supportsSca() {
        return this.offlineRepository.getAccountOfflineConfig().supports_sca && !this.offlineRepository.getAccountOfflineConfig().disable_forced_sca_flow;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public String switchInterfaceAuthorizationResponseCodeForAid(String aid) {
        Intrinsics.checkNotNullParameter(aid, "aid");
        return this.offlineRepository.getAccountOfflineConfig().aid_to_offline_pin_response_auth_code.get(aid);
    }

    private final String tvrMask() {
        return this.offlineRepository.getAccountOfflineConfig().tvr_mask;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isDeferredAuthorizationCountry() {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultOfflineConfigHelper defaultOfflineConfigHelper = this;
            objM817constructorimpl = Result.m817constructorimpl(Boolean.valueOf(this.offlineRepository.getAccountOfflineConfig().is_deferred_authorization_country));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m820exceptionOrNullimpl(objM817constructorimpl) != null) {
            this.logger.e("Failed to retrieve isDeferredAuthCountry from offline repository. Returning false.", new Pair[0]);
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = false;
        }
        return ((Boolean) objM817constructorimpl).booleanValue();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean shouldAllowOfflineTransaction(String tvrStringHex) {
        Intrinsics.checkNotNullParameter(tvrStringHex, "tvrStringHex");
        return (Long.parseLong(tvrStringHex, CharsKt.checkRadix(16)) & Long.parseLong(tvrMask(), CharsKt.checkRadix(16))) == 0;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean isCardDenylistedForOffline(String firstSix, String lastFour, String cardholderName) {
        if (firstSix == null || lastFour == null) {
            this.logger.w("Masked PAN is unavailable, cannot perform denylist check.", new Pair[0]);
            return false;
        }
        List<String> list = this.offlineRepository.getAccountOfflineConfig().denylisted_cardholder_names;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (String str : list) {
                String lowerCase = (cardholderName == null ? "" : cardholderName).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String lowerCase2 = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                if (StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) lowerCase2, false, 2, (Object) null)) {
                    return true;
                }
            }
        }
        List<OfflineConfigPb.OfflinePanDenylistEntry> list2 = this.offlineRepository.getAccountOfflineConfig().denylisted_masked_pans;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (OfflineConfigPb.OfflinePanDenylistEntry offlinePanDenylistEntry : list2) {
            if (Intrinsics.areEqual(firstSix, offlinePanDenylistEntry.first_six) && Intrinsics.areEqual(lastFour, offlinePanDenylistEntry.last_four)) {
                String lowerCase3 = (cardholderName == null ? "" : cardholderName).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                String lowerCase4 = offlinePanDenylistEntry.cardholder_name.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                if (Intrinsics.areEqual(lowerCase3, lowerCase4)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean shouldAllowOfflineConnection(Reader reader, String firmware, String config, String keyProfileVersion, String keyProfileId, long currentTimeMs) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(firmware, "firmware");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(keyProfileVersion, "keyProfileVersion");
        Intrinsics.checkNotNullParameter(keyProfileId, "keyProfileId");
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfig = this.offlineRepository.getAccountOfflineConfig();
        this.logger.i("Evaluating reader KFC for offline activation.", TuplesKt.to("currentOfflineRegionConfig", accountOfflineConfig.region_to_region_offline_config), TuplesKt.to("firmware", firmware), TuplesKt.to("config", config), TuplesKt.to("keyProfileVersion", keyProfileVersion), TuplesKt.to("keyProfileId", keyProfileId), TuplesKt.to("currentTimeMs", Long.valueOf(currentTimeMs)));
        return ReaderExtensionsKt.isRunningAllowedVersionFromOfflineKFC(reader, firmware, config, keyProfileVersion, keyProfileId, accountOfflineConfig, currentTimeMs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public void setActiveConfigs(OfflineLocation offlineLocation, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) {
        Intrinsics.checkNotNullParameter(offlineLocation, "offlineLocation");
        Intrinsics.checkNotNullParameter(setReconnectParams, "setReconnectParams");
        SettingsRepository settingsRepository = this.settingsRepository;
        TippingConfigPb tippingConfigPb = offlineLocation.tipping_config;
        if (tippingConfigPb == null) {
            tippingConfigPb = new TippingConfigPb(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
        settingsRepository.setTippingConfig(tippingConfigPb);
        setReconnectParams.invoke(offlineLocation.bluetooth_auto_reconnect_config, offlineLocation.usb_auto_reconnect_config);
    }

    @Override // com.stripe.offlinemode.helpers.OfflineConfigHelper
    public boolean shouldAllowPairingUnseenReader() {
        return !this.offlineRepository.getAccountOfflineConfig().offline_pair_unseen_reader_circuit_breaker;
    }

    private final void updateAccountOfflineConfig(OfflineConfigPb offlineConfig) throws TerminalException {
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb;
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb2 = (offlineConfig == null || (accountOfflineConfigPb = offlineConfig.account_offline_config) == null) ? new OfflineConfigPb.AccountOfflineConfigPb(0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, null, null, null, null, 0, false, null, null, false, false, null, false, null, 134217727, null) : accountOfflineConfigPb;
        Map<String, OfflineConfigPb.RegionOfflineConfigPb> map = this.offlineRepository.getAccountOfflineConfig().region_to_region_offline_config;
        Map mutableMap = MapsKt.toMutableMap(accountOfflineConfigPb2.region_to_region_offline_config);
        Iterator<T> it = this.offlineRepository.getAccountOfflineConfig().region_to_region_offline_config.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            OfflineConfigPb.RegionOfflineConfigPb regionOfflineConfigPb = (OfflineConfigPb.RegionOfflineConfigPb) entry.getValue();
            if (accountOfflineConfigPb2.region_to_region_offline_config.containsKey(str)) {
                OfflineConfigPb.RegionOfflineConfigPb regionOfflineConfigPb2 = accountOfflineConfigPb2.region_to_region_offline_config.get(str);
                if (regionOfflineConfigPb2 == null) {
                    throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "RegionOfflineConfig unexpectedly null for region " + str + '.', null, null, 12, null);
                }
                Map mutableMap2 = MapsKt.toMutableMap(regionOfflineConfigPb.device_type_to_offline_allowed_versions_with_expirations);
                mutableMap2.putAll(regionOfflineConfigPb2.device_type_to_offline_allowed_versions_with_expirations);
                mutableMap.put(str, new OfflineConfigPb.RegionOfflineConfigPb(null, mutableMap2, null, 5, null));
            }
        }
        this.logger.i("Updating account offline config.", TuplesKt.to("existingOfflineConfigRegionMap", map), TuplesKt.to("updatedOfflineConfigRegionMap", accountOfflineConfigPb2.region_to_region_offline_config), TuplesKt.to("mergedRegionConfigMap", mutableMap));
        this.offlineRepository.setAccountOfflineConfig(OfflineConfigPb.AccountOfflineConfigPb.copy$default(accountOfflineConfigPb2, 0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, mutableMap, null, null, null, 0, false, null, null, false, false, null, false, null, 134201343, null));
    }
}
