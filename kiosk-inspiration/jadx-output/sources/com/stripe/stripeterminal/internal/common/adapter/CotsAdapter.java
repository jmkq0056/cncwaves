package com.stripe.stripeterminal.internal.common.adapter;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.cots.aidlservice.CotsCollectPinResponse;
import com.stripe.cots.aidlservice.CotsContactlessResult;
import com.stripe.cots.aidlservice.CotsReader;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.cots.common.CotsClientInterface;
import com.stripe.cots.common.CotsError;
import com.stripe.cots.common.CotsException;
import com.stripe.cots.common.CotsFakedContactlessOutcomeRepository;
import com.stripe.cots.common.DebuggableException;
import com.stripe.cots.common.ExpiringValue;
import com.stripe.cots.common.NfcAntennaLogger;
import com.stripe.cots.common.ReaderNotConnectedException;
import com.stripe.currency.CurrencyFormatter;
import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.Address;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.ReaderSupportResult;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.CotsDescriptor;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.makers.PaymentMethodDataMaker;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentMethodCollectionType;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¸\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0006\u0082\u0001\u0083\u0001\u0084\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012¢\u0006\u0002\u0010\u0013J\b\u0010&\u001a\u00020'H\u0016J>\u0010(\u001a\u0004\u0018\u0001H)\"\u0004\b\u0000\u0010)2'\u0010*\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H)0,\u0012\u0006\u0012\u0004\u0018\u00010-0+¢\u0006\u0002\b.H\u0002¢\u0006\u0002\u0010/J\b\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u0002012\u0006\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u000201H\u0016J\b\u00106\u001a\u000201H\u0016J\u0012\u00107\u001a\u0002012\b\u00108\u001a\u0004\u0018\u000109H\u0002J\u001a\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J\b\u0010@\u001a\u000201H\u0002J\u0010\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0016J\u000e\u0010E\u001a\u00020B2\u0006\u0010C\u001a\u00020DJ\b\u0010F\u001a\u00020BH\u0002J\n\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0010\u0010I\u001a\u0002012\u0006\u0010J\u001a\u00020KH\u0016J\u0018\u0010L\u001a\u0002012\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PH\u0016J\b\u0010Q\u001a\u000201H\u0016J\u0012\u0010R\u001a\u00020S2\b\u00108\u001a\u0004\u0018\u000109H\u0002J\u0010\u0010T\u001a\u0002012\u0006\u0010U\u001a\u00020VH\u0016J\b\u0010W\u001a\u000201H\u0016J\u0006\u0010X\u001a\u000201J\u0010\u0010Y\u001a\u0002012\u0006\u0010Z\u001a\u00020;H\u0016J\b\u0010[\u001a\u00020?H\u0002J\b\u0010\\\u001a\u00020?H\u0002J\u0016\u0010]\u001a\u0002012\u0006\u0010^\u001a\u00020_H\u0096@¢\u0006\u0002\u0010`J\u0010\u0010a\u001a\u0002012\u0006\u0010b\u001a\u00020?H\u0002J.\u0010c\u001a\u00020=2\u0006\u0010<\u001a\u00020=2\u0006\u0010d\u001a\u00020e2\u0014\u0010f\u001a\u0010\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u000201\u0018\u00010gH\u0014J\b\u0010h\u001a\u000201H\u0016J\u0018\u0010i\u001a\u0002012\u0006\u0010<\u001a\u00020=2\u0006\u0010j\u001a\u00020 H\u0016J\b\u0010k\u001a\u00020BH\u0016J\u0010\u0010l\u001a\u0002012\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010m\u001a\u00020=2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010n\u001a\u0002012\u0006\u0010o\u001a\u00020pH\u0016J\u0016\u0010q\u001a\u0002012\u0006\u0010r\u001a\u00020sH\u0096@¢\u0006\u0002\u0010tJ\u0018\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020NH\u0016J*\u0010z\u001a\u00020{2\u0006\u0010|\u001a\u00020{2\b\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010}\u001a\u00020?2\u0006\u0010~\u001a\u00020\u007fH\u0016J\u0010\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001*\u00020#H\u0002R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010!\u001a\u00020\"*\u00020#8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%¨\u0006\u0085\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "cotsServiceClient", "Lcom/stripe/cots/common/CotsClientInterface;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "nfcAntennaLogger", "Lcom/stripe/cots/common/NfcAntennaLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClientInterface;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "appInfo$delegate", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "cachedPayment", "Lcom/stripe/cots/common/ExpiringValue;", "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;", "disconnectListenerJob", "Lkotlinx/coroutines/Job;", "lastActivateReaderResponse", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "toMessage", "", "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;", "getToMessage", "(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Ljava/lang/String;", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "callAidlWithExceptionConverted", "T", NotificationCompat.CATEGORY_CALL, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "cancelCollectPaymentMethod", "", "cancelDiscoverReaders", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "cancelInstallUpdate", "cancelReconnectReader", "checkAndThrowCotsError", "cotsReader", "Lcom/stripe/cots/aidlservice/CotsReader;", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "", "clearCachedPayment", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "collectPaymentMethodHandler", "collectPinAndUpdatePaymentMethodData", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "disconnectReader", "disconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "discoverReaders", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "dispose", "getCotsDescriptor", "Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "init", "initKeystore", "installUpdate", "update", "isTtpaEftposEnabled", "isTtpaPinEnabled", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAidlDisconnect", "unexpected", "onConnectReader", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "requestReconnection", "Lkotlin/Function1;", "onPaymentMethodCollectedForPaymentIntent", "onReaderActivated", "response", "readReusableCard", "rebootReader", "reconnectReader", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "setFakedContactlessOutcome", "fakedContactlessOutcomeType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "supportsReadersOfType", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "discoveryConfiguration", "updatePaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "requestDynamicCurrencyConversion", "apiPaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "toCommonCotsError", "Lcom/stripe/cots/common/CotsError;", "CachedPayment", "DiscoverReadersOperation", "ReconnectReaderOperation", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsAdapter extends ProxiedAdapter {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CotsAdapter.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};

    /* JADX INFO: renamed from: appInfo$delegate, reason: from kotlin metadata */
    private final ApplicationInformationProvider appInfo;
    private final CoroutineScope appScope;
    private ExpiringValue<CachedPayment> cachedPayment;
    private final CotsClientInterface cotsServiceClient;
    private Job disconnectListenerJob;
    private final FeatureFlagsRepository featureFlagsRepository;
    private ActivateReaderResponse lastActivateReaderResponse;
    private final NfcAntennaLogger nfcAntennaLogger;
    private final TerminalStatusManager terminalStatusManager;

    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[CotsError.values().length];
            try {
                iArr[CotsError.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CotsError.DISCOVERY_DEBUG_NOT_ALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CotsError.DISCOVERY_MISSING_NFC_READER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CotsError.DISCOVERY_UNTRUSTED_HARDWARE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CotsCollectPinResponse.Result.values().length];
            try {
                iArr2[CotsCollectPinResponse.Result.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[CotsCollectPinResponse.Result.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[CotsCollectPinResponse.Result.CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[CotsCollectPinResponse.Result.ATTESTATION_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[CotsContactlessResult.ContactlessOutcome.values().length];
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.PROCEED_ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.PIN_COLLECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.ACCESS_NOT_ALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.CANCELED.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.IRRECOVERABLE_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.RECOVERABLE_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.APPROVED.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.DECLINED.ordinal()] = 8;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.NO_MUTUALLY_SUPPORTED_APPLICATIONS.ordinal()] = 9;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.SEE_PHONE.ordinal()] = 10;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.INVALID_CURRENCY.ordinal()] = 11;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.NFC_IS_DISABLED.ordinal()] = 12;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.READER_NOT_ACTIVE.ordinal()] = 13;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.CARD_READ_TIMED_OUT.ordinal()] = 14;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.INSECURE_ENVIRONMENT.ordinal()] = 15;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr3[CotsContactlessResult.ContactlessOutcome.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError unused25) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[CotsReader.CotsError.values().length];
            try {
                iArr4[CotsReader.CotsError.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr4[CotsReader.CotsError.DISCOVERY_UNTRUSTED_HARDWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr4[CotsReader.CotsError.DISCOVERY_UNTRUSTED_SOFTWARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr4[CotsReader.CotsError.DISCOVERY_MISSING_KEY_CERTIFICATES.ordinal()] = 4;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr4[CotsReader.CotsError.DISCOVERY_MISSING_NFC_READER.ordinal()] = 5;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr4[CotsReader.CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr4[CotsReader.CotsError.ATTESTATION_DEVICE_TAMPERED.ordinal()] = 7;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr4[CotsReader.CotsError.ATTESTATION_API_CONNECTION_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr4[CotsReader.CotsError.ATTESTATION_API_RESPONSE_DECODING.ordinal()] = 9;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr4[CotsReader.CotsError.ATTESTATION_SERVER_ERROR.ordinal()] = 10;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr4[CotsReader.CotsError.DISCOVERY_DEBUG_NOT_ALLOWED.ordinal()] = 11;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr4[CotsReader.CotsError.UNEXPECTED_ERROR.ordinal()] = 12;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr4[CotsReader.CotsError.UNKNOWN.ordinal()] = 13;
            } catch (NoSuchFieldError unused38) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public CollectiblePayment collectiblePayment() {
        return null;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onPaymentMethodCollectedForPaymentIntent() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsAdapter(ApplicationInformationProvider applicationInformationProvider, CotsClientInterface cotsServiceClient, TerminalStatusManager terminalStatusManager, FeatureFlagsRepository featureFlagsRepository, CoroutineScope appScope, NfcAntennaLogger nfcAntennaLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(logger);
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(cotsServiceClient, "cotsServiceClient");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(nfcAntennaLogger, "nfcAntennaLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.cotsServiceClient = cotsServiceClient;
        this.terminalStatusManager = terminalStatusManager;
        this.featureFlagsRepository = featureFlagsRepository;
        this.appScope = appScope;
        this.nfcAntennaLogger = nfcAntennaLogger;
        this.appInfo = applicationInformationProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ApplicationInformation getAppInfo() {
        return this.appInfo.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;", "", "intentId", "", "amountString", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V", "getAmountString", "()Ljava/lang/String;", "getIntentId", "getPaymentMethodData", "()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    static final /* data */ class CachedPayment {
        private final String amountString;
        private final String intentId;
        private final PaymentMethodData paymentMethodData;

        public static /* synthetic */ CachedPayment copy$default(CachedPayment cachedPayment, String str, String str2, PaymentMethodData paymentMethodData, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cachedPayment.intentId;
            }
            if ((i & 2) != 0) {
                str2 = cachedPayment.amountString;
            }
            if ((i & 4) != 0) {
                paymentMethodData = cachedPayment.paymentMethodData;
            }
            return cachedPayment.copy(str, str2, paymentMethodData);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIntentId() {
            return this.intentId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAmountString() {
            return this.amountString;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final PaymentMethodData getPaymentMethodData() {
            return this.paymentMethodData;
        }

        public final CachedPayment copy(String intentId, String amountString, PaymentMethodData paymentMethodData) {
            Intrinsics.checkNotNullParameter(amountString, "amountString");
            Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
            return new CachedPayment(intentId, amountString, paymentMethodData);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CachedPayment)) {
                return false;
            }
            CachedPayment cachedPayment = (CachedPayment) other;
            return Intrinsics.areEqual(this.intentId, cachedPayment.intentId) && Intrinsics.areEqual(this.amountString, cachedPayment.amountString) && Intrinsics.areEqual(this.paymentMethodData, cachedPayment.paymentMethodData);
        }

        public int hashCode() {
            String str = this.intentId;
            return ((((str == null ? 0 : str.hashCode()) * 31) + this.amountString.hashCode()) * 31) + this.paymentMethodData.hashCode();
        }

        public String toString() {
            return "CachedPayment(intentId=" + this.intentId + ", amountString=" + this.amountString + ", paymentMethodData=" + this.paymentMethodData + ')';
        }

        public CachedPayment(String str, String amountString, PaymentMethodData paymentMethodData) {
            Intrinsics.checkNotNullParameter(amountString, "amountString");
            Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
            this.intentId = str;
            this.amountString = amountString;
            this.paymentMethodData = paymentMethodData;
        }

        public final String getIntentId() {
            return this.intentId;
        }

        public final String getAmountString() {
            return this.amountString;
        }

        public final PaymentMethodData getPaymentMethodData() {
            return this.paymentMethodData;
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$init$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "unexpected", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$init$1", f = "CotsAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03791 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C03791(Continuation<? super C03791> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03791 c03791 = CotsAdapter.this.new C03791(continuation);
            c03791.Z$0 = ((Boolean) obj).booleanValue();
            return c03791;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C03791) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CotsAdapter.this.onAidlDisconnect(this.Z$0);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void init() {
        this.disconnectListenerJob = FlowKt.launchIn(FlowKt.onEach(this.cotsServiceClient.getDisconnectFlow(), new C03791(null)), this.appScope);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void dispose() {
        Job job = this.disconnectListenerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.disconnectListenerJob = null;
        setRequestReconnection(null);
        clearCachedPayment();
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$cancelCollectPaymentMethod$1, reason: invalid class name */
    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$cancelCollectPaymentMethod$1", f = "CotsAdapter.kt", i = {}, l = {127}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((CotsClientInterface) this.L$0).cancelCollectPayment(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelCollectPaymentMethod() throws TerminalException {
        callAidlWithExceptionConverted(new AnonymousClass1(null));
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelDiscoverReaders(CancelDiscoverReadersReason cancelDiscoverReadersReason) {
        Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        if (operationInProgress instanceof DiscoverReadersOperation) {
            Adapter.ReaderOperation<?> operationInProgress2 = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.CotsAdapter.DiscoverReadersOperation");
            ((DiscoverReadersOperation) operationInProgress2).cancel(cancelDiscoverReadersReason);
            setOperationInProgress(new Adapter.NullOperation());
            return;
        }
        if (operationInProgress instanceof Adapter.NullOperation) {
            setOperationToCancel(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
        } else {
            logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(DiscoverReadersOperation.class));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void cancelInstallUpdate() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support updates", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support updates", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSupportResult supportsReadersOfType(DeviceType deviceType, DiscoveryConfiguration discoveryConfiguration) {
        TerminalErrorCode terminalErrorCode;
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        CotsError cotsErrorCheckDeviceCompatibility = this.cotsServiceClient.checkDeviceCompatibility();
        int i = WhenMappings.$EnumSwitchMapping$0[cotsErrorCheckDeviceCompatibility.ordinal()];
        if (i == 1) {
            return ReaderSupportResult.Supported.INSTANCE;
        }
        if (i == 2) {
            terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION;
        } else if (i == 3) {
            terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_DEBUG_NOT_SUPPORTED;
        } else if (i == 4 || i == 5) {
            terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_UNSUPPORTED_DEVICE;
        } else {
            terminalErrorCode = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
        }
        return new ReaderSupportResult.NotSupported(new TerminalException(terminalErrorCode, cotsErrorCheckDeviceCompatibility.getMessage(), null, null, 12, null));
    }

    public final void initKeystore() {
        this.cotsServiceClient.initializeKeys();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) throws TerminalException {
        CachedPayment orNull;
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) {
            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Refunds are not available with Tap to Pay on Android", null, null, 12, null);
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) {
            if (isTtpaPinEnabled()) {
                PaymentMethodCollectionType.StrongCustomerAuthentication strongCustomerAuthentication = (PaymentMethodCollectionType.StrongCustomerAuthentication) paymentMethodCollectionType;
                String intentId = strongCustomerAuthentication.getIntentId();
                ExpiringValue<CachedPayment> expiringValue = this.cachedPayment;
                if (!Intrinsics.areEqual(intentId, (expiringValue == null || (orNull = expiringValue.getOrNull()) == null) ? null : orNull.getIntentId())) {
                    throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Invalid payment intent id " + strongCustomerAuthentication.getIntentId() + " for SCA PIN collection.", null, null, 12, null);
                }
                return collectPinAndUpdatePaymentMethodData();
            }
            getLogger().e("Tap to Pay shouldn't be getting SCA collectPaymentMethod requests", new Pair[0]);
        } else {
            if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough) {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Passthrough is not available with Tap to Pay on Android", null, null, 12, null);
            }
            if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent ? true : paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale) {
                clearCachedPayment();
            }
        }
        return collectPaymentMethodHandler(paymentMethodCollectionType);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion, PaymentIntentUpdater apiPaymentIntentUpdater) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(apiPaymentIntentUpdater, "apiPaymentIntentUpdater");
        return apiPaymentIntentUpdater.invoke(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData) throws TerminalException {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support dcc", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) throws TerminalException {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support non-card payments", null, null, 12, null);
    }

    private final PaymentMethodData collectPinAndUpdatePaymentMethodData() throws TerminalException {
        CachedPayment orNull;
        ExpiringValue<CachedPayment> expiringValue = this.cachedPayment;
        if (expiringValue == null || (orNull = expiringValue.getOrNull()) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Cached payment data for SCA collection is null", null, null, 12, null);
        }
        PaymentMethodData paymentMethodData = orNull.getPaymentMethodData();
        CotsCollectPinResponse cotsCollectPinResponse = (CotsCollectPinResponse) callAidlWithExceptionConverted(new CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1(orNull, null));
        if (cotsCollectPinResponse == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "SCA collection result is null", null, null, 12, null);
        }
        int i = WhenMappings.$EnumSwitchMapping$1[cotsCollectPinResponse.result.ordinal()];
        if (i != 1) {
            if (i == 2) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "PIN collection failed. Please try again.", null, null, 12, null);
            }
            if (i == 3) {
                throw new TerminalException(TerminalErrorCode.CANCELED, "PIN collection was canceled.", null, null, 12, null);
            }
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            throw new TerminalException(TerminalErrorCode.TAP_TO_PAY_DEVICE_TAMPERED, "PIN collection failed because we were unable to verify the integrity of the device.", null, null, 12, null);
        }
        clearCachedPayment();
        PaymentMethodDataMaker paymentMethodDataMaker = PaymentMethodDataMaker.INSTANCE;
        String tlv = paymentMethodData.getTlv();
        Intrinsics.checkNotNull(tlv);
        String encryptedTrack2 = paymentMethodData.getEncryptedTrack2();
        Intrinsics.checkNotNull(encryptedTrack2);
        String cryptogram = paymentMethodData.getCryptogram();
        String str = cotsCollectPinResponse.clientPublicKey;
        String str2 = cotsCollectPinResponse.serverPublicKeyHash;
        Reader connectedReader = this.terminalStatusManager.getConnectedReader();
        Intrinsics.checkNotNull(connectedReader);
        String serialNumber = connectedReader.getSerialNumber();
        Intrinsics.checkNotNull(serialNumber);
        return paymentMethodDataMaker.newEncryptedEmvDataWithTtpaPin(tlv, encryptedTrack2, cryptogram, str, str2, serialNumber, cotsCollectPinResponse.pinBlock);
    }

    public final PaymentMethodData collectPaymentMethodHandler(PaymentMethodCollectionType paymentMethodCollectionType) throws TerminalException {
        String intentId;
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        CotsContactlessResult cotsContactlessResult = (CotsContactlessResult) callAidlWithExceptionConverted(new CotsAdapter$collectPaymentMethodHandler$result$1(paymentMethodCollectionType, null));
        CotsContactlessResult.ContactlessOutcome contactlessOutcome = cotsContactlessResult != null ? cotsContactlessResult.outcome : null;
        switch (contactlessOutcome == null ? -1 : WhenMappings.$EnumSwitchMapping$2[contactlessOutcome.ordinal()]) {
            case -1:
            case 16:
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Invalid contactless result " + cotsContactlessResult, null, null, 12, null);
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                if (cotsContactlessResult.emvBlob.length() > 0 && cotsContactlessResult.encryptedTrack2.length() > 0 && cotsContactlessResult.cryptogram.length() > 0) {
                    PaymentMethodData paymentMethodDataNewEncryptedEmvData = PaymentMethodDataMaker.INSTANCE.newEncryptedEmvData(cotsContactlessResult.emvBlob, cotsContactlessResult.encryptedTrack2, cotsContactlessResult.cryptogram);
                    if (!isTtpaPinEnabled()) {
                        return paymentMethodDataNewEncryptedEmvData;
                    }
                    if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale) {
                        intentId = ((PaymentMethodCollectionType.Sale) paymentMethodCollectionType).getIntentId();
                    } else if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent) {
                        intentId = ((PaymentMethodCollectionType.SetupIntent) paymentMethodCollectionType).getIntentId();
                    } else {
                        if (!(paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough ? true : paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund ? true : paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        intentId = null;
                    }
                    ExpiringValue<CachedPayment> expiringValue = new ExpiringValue<>(new CachedPayment(intentId, CurrencyFormatter.format$default(new CurrencyFormatter(), paymentMethodCollectionType.getAmount(), null, 2, null), paymentMethodDataNewEncryptedEmvData));
                    BuildersKt__Builders_commonKt.launch$default(this.appScope, null, null, new CotsAdapter$collectPaymentMethodHandler$1$1(expiringValue, null), 3, null);
                    this.cachedPayment = expiringValue;
                    return paymentMethodDataNewEncryptedEmvData;
                }
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Invalid contactless result", null, null, 12, null);
            case 2:
                CotsContactlessResult.TtpaPinData ttpaPinData = cotsContactlessResult.ttpaPinData;
                if (cotsContactlessResult.emvBlob.length() > 0 && cotsContactlessResult.encryptedTrack2.length() > 0 && cotsContactlessResult.cryptogram.length() > 0 && ttpaPinData != null) {
                    PaymentMethodDataMaker paymentMethodDataMaker = PaymentMethodDataMaker.INSTANCE;
                    String str = cotsContactlessResult.emvBlob;
                    String str2 = cotsContactlessResult.encryptedTrack2;
                    String str3 = cotsContactlessResult.cryptogram;
                    String str4 = ttpaPinData.clientPublicKey;
                    String str5 = ttpaPinData.serverPublicKeyHash;
                    Reader connectedReader = this.terminalStatusManager.getConnectedReader();
                    Intrinsics.checkNotNull(connectedReader);
                    String serialNumber = connectedReader.getSerialNumber();
                    Intrinsics.checkNotNull(serialNumber);
                    return paymentMethodDataMaker.newEncryptedEmvDataWithTtpaPin(str, str2, str3, str4, str5, serialNumber, ttpaPinData.pinBlock);
                }
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Invalid contactless result", null, null, 12, null);
            case 3:
                throw new TerminalException(TerminalErrorCode.TAP_TO_PAY_DEVICE_TAMPERED, "Contactless transaction failed because we were unable to verify the integrity of the device.", null, null, 12, null);
            case 4:
                throw new TerminalException(TerminalErrorCode.CANCELED, "Contactless transaction was canceled", null, null, 12, null);
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Contactless transaction failed " + cotsContactlessResult, null, null, 12, null);
            case 11:
                throw new TerminalException(TerminalErrorCode.INVALID_REQUIRED_PARAMETER, "Currency is unsupported or not set", null, null, 12, null);
            case 12:
                throw new TerminalException(TerminalErrorCode.TAP_TO_PAY_NFC_DISABLED, "NFC is disabled", null, null, 12, null);
            case 13:
                this.terminalStatusManager.reportDisconnect(DisconnectReason.UNKNOWN);
                this.terminalStatusManager.unexpectedDisconnect();
                throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "Tap to Pay reader is not connected", null, null, 12, null);
            case 14:
                throw new TerminalException(TerminalErrorCode.CARD_READ_TIMED_OUT, "Transaction timed out.", null, null, 12, null);
            case 15:
                throw new TerminalException(TerminalErrorCode.TAP_TO_PAY_INSECURE_ENVIRONMENT, "The security of the payment collection process could not be guaranteed.", null, null, 12, null);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    protected Reader onConnectReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function1<? super DisconnectReason, Unit> requestReconnection) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        setRequestReconnection(requestReconnection);
        if (reader.getDeviceType() != DeviceType.TAP_TO_PAY_DEVICE) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Invalid reader type", null, null, 12, null);
        }
        this.nfcAntennaLogger.logDiscoveredAntennas();
        return reader;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onReaderActivated(Reader reader, ActivateReaderResponse response) throws Throwable {
        Object objM817constructorimpl;
        Object objM817constructorimpl2;
        Address address;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(response, "response");
        Unit unit = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            CotsAdapter cotsAdapter = this;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (reader.getDeviceType() != DeviceType.TAP_TO_PAY_DEVICE) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Invalid reader type", null, null, 12, null);
        }
        Location location = reader.getLocation();
        String country = (location == null || (address = location.getAddress()) == null) ? null : address.getCountry();
        if (country == null) {
            country = "";
        }
        if (country.length() == 0 && !reader.getIsSimulated()) {
            throw new TerminalException(TerminalErrorCode.MISSING_REQUIRED_PARAMETER, "Must have a country code to connect to a Tap to Pay reader.", null, null, 12, null);
        }
        CotsReader cotsReader = (CotsReader) callAidlWithExceptionConverted(new CotsAdapter$onReaderActivated$1$cotsReader$1(response, this, country, null));
        this.lastActivateReaderResponse = response;
        checkAndThrowCotsError(cotsReader);
        objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            throw thM820exceptionOrNullimpl;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            CotsAdapter cotsAdapter2 = this;
            ReaderFeatureFlags readerFeatureFlags = (ReaderFeatureFlags) callAidlWithExceptionConverted(new CotsAdapter$onReaderActivated$3$1(null));
            if (readerFeatureFlags != null) {
                this.featureFlagsRepository.putFeatureFlags(readerFeatureFlags);
                unit = Unit.INSTANCE;
            }
            objM817constructorimpl2 = Result.m817constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
        }
        Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
        if (thM820exceptionOrNullimpl2 != null) {
            getLogger().e("updateReader failed: " + thM820exceptionOrNullimpl2, new Pair[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAidlDisconnect(boolean unexpected) {
        clearCachedPayment();
        getLogger().d("onDisconnect", TuplesKt.to("unexpected", Boolean.valueOf(unexpected)));
        Function1<DisconnectReason, Unit> requestReconnection = getRequestReconnection();
        if (this.featureFlagsRepository.getTtpAutoReconnectEnabled() && unexpected && requestReconnection != null) {
            requestReconnection.invoke(DisconnectReason.UNKNOWN);
        } else if (unexpected) {
            this.terminalStatusManager.reportDisconnect(DisconnectReason.UNKNOWN);
            this.terminalStatusManager.unexpectedDisconnect();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void rebootReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support rebooting", null, null, 12, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$disconnectReader$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$disconnectReader$1", f = "CotsAdapter.kt", i = {}, l = {530}, m = "invokeSuspend", n = {}, s = {})
    static final class C03781 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C03781(Continuation<? super C03781> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03781 c03781 = new C03781(continuation);
            c03781.L$0 = obj;
            return c03781;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super Unit> continuation) {
            return ((C03781) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((CotsClientInterface) this.L$0).disconnect(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void disconnectReader(DisconnectReason disconnectReason) throws TerminalException {
        Intrinsics.checkNotNullParameter(disconnectReason, "disconnectReason");
        getLogger().i("disconnectReader", new Pair[0]);
        callAidlWithExceptionConverted(new C03781(null));
        this.lastActivateReaderResponse = null;
        clearCachedPayment();
        this.terminalStatusManager.reportDisconnect(disconnectReason);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void discoverReaders(DiscoveryConfiguration config, DiscoveryListener listener) throws TerminalException {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        setOperationInProgress(new DiscoverReadersOperation(this, listener));
        getOperationInProgress().execute();
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void installUpdate(ReaderSoftwareUpdate update) throws TerminalException {
        Intrinsics.checkNotNullParameter(update, "update");
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support updates", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData readReusableCard() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "The Tap to Pay adapter doesn't support readReusableCard", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public AdapterType adapterType() {
        return AdapterType.COTS;
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public Reader reconnectReader(Reader reader) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        if (this.featureFlagsRepository.getTtpAutoReconnectEnabled()) {
            setOperationInProgress(new ReconnectReaderOperation(this, reader));
            getOperationInProgress().execute();
            return reader;
        }
        return super.reconnectReader(reader);
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.ProxiedAdapter, com.stripe.stripeterminal.internal.common.Adapter
    public void cancelReconnectReader() {
        Adapter.ReaderOperation<?> operationInProgress = getOperationInProgress();
        if (operationInProgress instanceof ReconnectReaderOperation) {
            Adapter.ReaderOperation<?> operationInProgress2 = getOperationInProgress();
            Intrinsics.checkNotNull(operationInProgress2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.CotsAdapter.ReconnectReaderOperation");
            ((ReconnectReaderOperation) operationInProgress2).cancel();
            setOperationInProgress(new Adapter.NullOperation());
            return;
        }
        if (operationInProgress instanceof Adapter.NullOperation) {
            setOperationToCancel(Reflection.getOrCreateKotlinClass(ReconnectReaderOperation.class));
        } else {
            logUnexpectedOperationInProgressWarning(Reflection.getOrCreateKotlinClass(ReconnectReaderOperation.class));
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Object killAidlServer(long j, Continuation<? super Unit> continuation) {
        Object objKillAidlServer = this.cotsServiceClient.killAidlServer(j, continuation);
        return objKillAidlServer == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objKillAidlServer : Unit.INSTANCE;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public Object setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation) {
        CotsFakedContactlessOutcomeRepository.INSTANCE.getSelectedOutcome().setValue(fakedContactlessOutcomeType);
        Object fakedContactlessOutcome = this.cotsServiceClient.setFakedContactlessOutcome(fakedContactlessOutcomeType, continuation);
        return fakedContactlessOutcome == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? fakedContactlessOutcome : Unit.INSTANCE;
    }

    private final boolean isTtpaPinEnabled() {
        return this.featureFlagsRepository.getTtpaPinEntryEnabled();
    }

    private final boolean isTtpaEftposEnabled() {
        return this.featureFlagsRepository.getTtpaEftposEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkAndThrowCotsError(CotsReader cotsReader) throws TerminalException {
        TerminalErrorCode terminalErrorCode;
        if (cotsReader == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Null cotsReader", null, null, 12, null);
        }
        switch (WhenMappings.$EnumSwitchMapping$3[cotsReader.errorCode.ordinal()]) {
            case 1:
                return;
            case 2:
                terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_UNSUPPORTED_DEVICE;
                break;
            case 3:
                terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_INSECURE_ENVIRONMENT;
                break;
            case 4:
                terminalErrorCode = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
                break;
            case 5:
                terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_UNSUPPORTED_DEVICE;
                break;
            case 6:
                terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION;
                break;
            case 7:
                terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_DEVICE_TAMPERED;
                break;
            case 8:
                terminalErrorCode = TerminalErrorCode.STRIPE_API_CONNECTION_ERROR;
                break;
            case 9:
                terminalErrorCode = TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR;
                break;
            case 10:
                terminalErrorCode = TerminalErrorCode.STRIPE_API_ERROR;
                break;
            case 11:
                terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_DEBUG_NOT_SUPPORTED;
                break;
            case 12:
            case 13:
                terminalErrorCode = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        TerminalErrorCode terminalErrorCode2 = terminalErrorCode;
        String toMessage = cotsReader.errorMessage;
        if (toMessage.length() == 0) {
            toMessage = getToMessage(cotsReader.errorCode);
        }
        throw new TerminalException(terminalErrorCode2, toMessage, null, null, 12, null);
    }

    private final CotsError toCommonCotsError(CotsReader.CotsError cotsError) {
        switch (WhenMappings.$EnumSwitchMapping$3[cotsError.ordinal()]) {
            case 1:
                return CotsError.NONE;
            case 2:
                return CotsError.DISCOVERY_UNTRUSTED_HARDWARE;
            case 3:
                return CotsError.DISCOVERY_UNTRUSTED_SOFTWARE;
            case 4:
                return CotsError.DISCOVERY_MISSING_KEY_CERTIFICATES;
            case 5:
                return CotsError.DISCOVERY_MISSING_NFC_READER;
            case 6:
                return CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION;
            case 7:
                return CotsError.ATTESTATION_DEVICE_TAMPERED;
            case 8:
                return CotsError.ATTESTATION_API_CONNECTION_ERROR;
            case 9:
                return CotsError.ATTESTATION_API_RESPONSE_DECODING;
            case 10:
                return CotsError.ATTESTATION_SERVER_ERROR;
            case 11:
                return CotsError.DISCOVERY_DEBUG_NOT_ALLOWED;
            case 12:
                return CotsError.UNEXPECTED_ERROR;
            case 13:
                return null;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final String getToMessage(CotsReader.CotsError cotsError) {
        String message;
        CotsError commonCotsError = toCommonCotsError(cotsError);
        return (commonCotsError == null || (message = commonCotsError.getMessage()) == null) ? "Unknown error" : message;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CotsDescriptor getCotsDescriptor(CotsReader cotsReader) {
        String str;
        if (cotsReader == null || (str = cotsReader.serial) == null) {
            str = "";
        }
        return new CotsDescriptor(str, getAppInfo().getDeviceName(), getAppInfo().getDeviceModel(), getAppInfo().getDeviceModel(), cotsReader != null ? cotsReader.isSimulated : false);
    }

    private final void clearCachedPayment() {
        ExpiringValue<CachedPayment> expiringValue = this.cachedPayment;
        if (expiringValue != null) {
            expiringValue.clear();
        }
        this.cachedPayment = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T callAidlWithExceptionConverted(Function2<? super CotsClientInterface, ? super Continuation<? super T>, ? extends Object> call) throws TerminalException {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            CotsAdapter cotsAdapter = this;
            objM817constructorimpl = Result.m817constructorimpl(BuildersKt__BuildersKt.runBlocking$default(null, new CotsAdapter$callAidlWithExceptionConverted$1$1(call, this, null), 1, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            if (thM820exceptionOrNullimpl instanceof CotsException) {
                CotsException cotsException = (CotsException) thM820exceptionOrNullimpl;
                if (cotsException instanceof DebuggableException) {
                    TerminalErrorCode terminalErrorCode = TerminalErrorCode.TAP_TO_PAY_DEBUG_NOT_SUPPORTED;
                    String message = thM820exceptionOrNullimpl.getMessage();
                    throw new TerminalException(terminalErrorCode, message == null ? "" : message, null, null, 12, null);
                }
                if (!(cotsException instanceof ReaderNotConnectedException)) {
                    throw new NoWhenBranchMatchedException();
                }
                this.terminalStatusManager.reportDisconnect(DisconnectReason.UNKNOWN);
                this.terminalStatusManager.unexpectedDisconnect();
                TerminalErrorCode terminalErrorCode2 = TerminalErrorCode.NOT_CONNECTED_TO_READER;
                String message2 = thM820exceptionOrNullimpl.getMessage();
                throw new TerminalException(terminalErrorCode2, message2 == null ? "" : message2, null, null, 12, null);
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Contactless transaction failed " + thM820exceptionOrNullimpl + '.', null, null, 12, null);
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            return null;
        }
        return (T) objM817constructorimpl;
    }

    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "", "Lcom/stripe/stripeterminal/internal/common/Adapter;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V", "cancel", "cancelDiscoverReadersReason", "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class DiscoverReadersOperation extends Adapter.ReaderOperation<Unit> {
        private final DiscoveryListener listener;
        final /* synthetic */ CotsAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscoverReadersOperation(CotsAdapter cotsAdapter, DiscoveryListener listener) {
            super();
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.this$0 = cotsAdapter;
            this.listener = listener;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public /* bridge */ /* synthetic */ Unit execute() throws TerminalException {
            execute2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: execute, reason: avoid collision after fix types in other method */
        public void execute2() throws TerminalException {
            CotsReader cotsReader = (CotsReader) this.this$0.callAidlWithExceptionConverted(new CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1(null));
            this.this$0.checkAndThrowCotsError(cotsReader);
            CotsAdapter cotsAdapter = this.this$0;
            this.listener.onUpdateDiscoveredReaders(CollectionsKt.listOf(ReaderMaker.INSTANCE.fromCotsDescriptor(cotsAdapter.getCotsDescriptor(cotsReader))));
            cotsAdapter.cancelDiscoverReaders(CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE);
        }

        public final void cancel(CancelDiscoverReadersReason cancelDiscoverReadersReason) {
            Intrinsics.checkNotNullParameter(cancelDiscoverReadersReason, "cancelDiscoverReadersReason");
            if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE) ? true : Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.ConnectReaderInProgress.INSTANCE)) {
                set(null);
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.MerchantRequestedCancellation.INSTANCE)) {
                setException(new TerminalException(TerminalErrorCode.CANCELED, "DiscoverReaders was canceled by the user", null, null, 12, null));
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.NewDiscoverReadersQueued.INSTANCE)) {
                setException(new TerminalException(TerminalErrorCode.CANCELED_DUE_TO_INTEGRATION_ERROR, "DiscoverReaders was canceled because of a new discovery call. The SDK can process a single discovery operation at a time.", null, null, 12, null));
            }
        }
    }

    /* JADX INFO: compiled from: CotsAdapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;", "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;", "", "Lcom/stripe/stripeterminal/internal/common/Adapter;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V", "cancel", "execute", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ReconnectReaderOperation extends Adapter.ReaderOperation<Unit> {
        private final Reader reader;
        final /* synthetic */ CotsAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReconnectReaderOperation(CotsAdapter cotsAdapter, Reader reader) {
            super();
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.this$0 = cotsAdapter;
            this.reader = reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.Adapter.ReaderOperation
        public /* bridge */ /* synthetic */ Unit execute() throws Throwable {
            execute2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: execute, reason: avoid collision after fix types in other method */
        public void execute2() throws Throwable {
            Object objM817constructorimpl;
            ActivateReaderResponse activateReaderResponse = this.this$0.lastActivateReaderResponse;
            if (activateReaderResponse != null) {
                CotsAdapter cotsAdapter = this.this$0;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    ReconnectReaderOperation reconnectReaderOperation = this;
                    cotsAdapter.onReaderActivated(this.reader, activateReaderResponse);
                    objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
                if (thM820exceptionOrNullimpl != null) {
                    throw thM820exceptionOrNullimpl;
                }
                if (getDeferred().isActive()) {
                    return;
                }
                cotsAdapter.callAidlWithExceptionConverted(new CotsAdapter$ReconnectReaderOperation$execute$1$3(null));
                throw new TerminalException(TerminalErrorCode.CANCELED, "ReconnectReader was canceled by the user", null, null, 12, null);
            }
            CotsAdapter$ReconnectReaderOperation$execute$2 cotsAdapter$ReconnectReaderOperation$execute$2 = new Function0() { // from class: com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$ReconnectReaderOperation$execute$2
                @Override // kotlin.jvm.functions.Function0
                public final Void invoke() throws TerminalException {
                    throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Cannot reconnect Tap to Pay reader without valid initial connection", null, null, 12, null);
                }
            };
        }

        public final void cancel() {
            set(null);
        }
    }
}
