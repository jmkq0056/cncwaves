package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.ActivateTerminalResponse;
import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.proto.api.sdk.ReaderSettingsResponse;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderAccessibility;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.ReaderTextToSpeechStatus;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.extensions.TerminalExceptionExtensionsKt;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.sun.jna.Callback;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoteReaderController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¶\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \u008f\u00012\u00020\u0001:\u0002\u008f\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J!\u0010!\u001a\u0002H\"\"\u0004\b\u0000\u0010\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H\"0$H\u0004¢\u0006\u0002\u0010%J)\u0010&\u001a\u0002H\"\"\u0004\b\u0000\u0010\"2\u0006\u0010'\u001a\u00020(2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H\"0$H\u0004¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020+H&J\b\u0010,\u001a\u00020+H&J\b\u0010-\u001a\u00020+H&J\b\u0010.\u001a\u00020+H&J\b\u0010/\u001a\u00020+H&J\u0010\u00100\u001a\u00020+2\u0006\u00101\u001a\u000202H&J\u0010\u00103\u001a\u00020+2\u0006\u00101\u001a\u000202H&J\u0010\u00104\u001a\u00020+2\u0006\u00101\u001a\u000202H&J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H&J\u0018\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020<H&J\b\u0010=\u001a\u00020+H&J@\u0010>\u001a\u00020+2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH&J \u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u001eH&J)\u0010S\u001a\u0002062\u0006\u00107\u001a\u0002062\b\u0010T\u001a\u0004\u0018\u00010(2\b\u0010U\u001a\u0004\u0018\u00010\u001eH&¢\u0006\u0002\u0010VJ\u0010\u0010W\u001a\u0002092\u0006\u0010X\u001a\u000209H&J\u001e\u0010Y\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\t2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020+0$H&J\u0016\u0010[\u001a\u0002062\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_J\u0018\u0010`\u001a\u0002092\u0006\u0010a\u001a\u00020b2\u0006\u0010^\u001a\u00020_H&J\b\u0010c\u001a\u00020+H&J(\u0010d\u001a\b\u0012\u0004\u0012\u00020\t0e2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010g\u001a\u00020hH&J\b\u0010i\u001a\u00020+H&J\b\u0010\u0018\u001a\u00020\u000fH&J \u0010j\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H$J\u0018\u0010k\u001a\u0002062\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_H$J\b\u0010l\u001a\u00020+H&JD\u0010m\u001a\u00020+2\u0006\u0010n\u001a\u00020\u001e2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010p2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&J\u0010\u0010s\u001a\u00020+2\u0006\u0010t\u001a\u00020uH&J\u0010\u0010v\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020wH&JT\u0010x\u001a\u00020+2\u0006\u0010y\u001a\u00020z2\b\u0010{\u001a\u0004\u0018\u00010\u001e2\b\u0010|\u001a\u0004\u0018\u00010\u001e2\u0006\u0010A\u001a\u00020B2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&JÌ\u0001\u0010}\u001a\u00020+2\u0006\u0010y\u001a\u00020z2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0D2\u0006\u0010~\u001a\u00020B2\u0006\u0010\u007f\u001a\u00020B2\u0007\u0010\u0080\u0001\u001a\u00020B2\b\u0010n\u001a\u0004\u0018\u00010\u001e2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010z2\u0010\u0010\u0082\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0083\u0001\u0018\u00010e2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u001e2\b\u0010o\u001a\u0004\u0018\u00010p2\u0006\u0010A\u001a\u00020B2\t\u00107\u001a\u0005\u0018\u00010\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020B2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u001e2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H&Jw\u0010\u008c\u0001\u001a\u00020+2\b\u0010n\u001a\u0004\u0018\u00010\u001e2\u0006\u0010A\u001a\u00020B2\u0006\u0010\u007f\u001a\u00020B2\t\u0010o\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u0007\u0010X\u001a\u00030\u008e\u00012\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&R\u0014\u0010\b\u001a\u0004\u0018\u00010\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR$\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00148DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u000f*\u00020\u00148DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u0090\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "getLogger", "()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "orDefault", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "getOrDefault", "(Lcom/stripe/stripeterminal/external/models/ReaderSettings;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "readerAccessibility", "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;", "getReaderAccessibility", "(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "readerSettings", "getReaderSettings", "(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "activateReader", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", OfflineStorageConstantsKt.READER, "connectionToken", "", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "assertReaderSettingsIsSupported", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "assertReaderVersionAtLeast", "minVersion", "", "(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "cancelCollectData", "", "cancelCollectInputs", "cancelCollectInteracRefundMethod", "cancelCollectPaymentMethod", "cancelCollectSetupIntentPaymentMethod", "cancelConfirmInteracRefund", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmPaymentIntent", "cancelConfirmSetupIntent", "cancelPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "intent", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "clearReaderDisplay", "collectData", "type", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "enableCustomerCancellation", "", "onDataCollected", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "collectInputs", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "confirmInteracRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "reason", "confirmPayment", "amountSurcharge", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmSetupIntent", "setupIntent", "connectReader", "disconnectCallback", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "disconnectReader", "discoverReaders", "", FirebaseAnalytics.Param.LOCATION, "timeoutInSeconds", "", "finishConfirmPayment", "onActivateReader", "onCreatePaymentIntent", "onPaymentMethodCollectedForPaymentIntent", "resumeCollectPaymentMethod", "intentId", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "onPaymentCollected", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "startInteracRefund", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "chargeId", "paymentIntentId", "startPaymentCollection", "skipTipping", "manualEntry", "updatePaymentIntent", "tipEligibleAmount", "computedPriorities", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "Lcom/stripe/proto/model/rest/PaymentIntent;", "requestDynamicCurrencyConversion", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "surchargeNotice", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "startSetupIntentPaymentCollection", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "Lcom/stripe/proto/model/rest/SetupIntent;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class RemoteReaderController {
    private static final Companion Companion = new Companion(null);
    private static final long MINIMUM_READER_SETTINGS_SW_VERSION = 2200100;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    /* JADX INFO: compiled from: RemoteReaderController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.values().length];
            try {
                iArr[ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.OFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.HEADPHONES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.SPEAKERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public abstract void cancelCollectData();

    public abstract void cancelCollectInputs();

    public abstract void cancelCollectInteracRefundMethod();

    public abstract void cancelCollectPaymentMethod();

    public abstract void cancelCollectSetupIntentPaymentMethod();

    public abstract void cancelConfirmInteracRefund(com.stripe.stripeterminal.external.callable.Callback callback);

    public abstract void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback);

    public abstract void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback);

    public abstract PaymentIntent cancelPaymentIntent(PaymentIntent paymentIntent);

    public abstract SetupIntent cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params);

    public abstract void clearReaderDisplay();

    public abstract void collectData(CollectDataRequest.CollectDataType type, boolean enableCustomerCancellation, Function1<? super ReaderCollectedData, Unit> onDataCollected, Function1<? super TerminalException, Unit> onFailure);

    public abstract KmpCollectInputsResult collectInputs(KmpCollectInputsParameters kmpCollectInputsParameters);

    public abstract Refund confirmInteracRefund(RefundParameters refundParams, PaymentMethod paymentMethod, String reason);

    public abstract PaymentIntent confirmPayment(PaymentIntent paymentIntent, Long amountSurcharge, String returnUrl);

    public abstract SetupIntent confirmSetupIntent(SetupIntent setupIntent);

    public abstract void connectReader(Reader reader, Function0<Unit> disconnectCallback);

    public abstract SetupIntent createSetupIntent(SetupIntentParameters setupIntentParameters, CreateConfiguration createConfiguration);

    public abstract void disconnectReader();

    public abstract List<Reader> discoverReaders(String connectionToken, String location, int timeoutInSeconds);

    public abstract void finishConfirmPayment();

    public abstract Reader getConnectedReader();

    public abstract ReaderSettings getReaderSettings();

    protected abstract ActivateTerminalResponse onActivateReader(Reader reader, String connectionToken, ConnectionConfiguration connectionConfiguration);

    protected abstract PaymentIntent onCreatePaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration);

    public abstract void onPaymentMethodCollectedForPaymentIntent();

    public abstract void resumeCollectPaymentMethod(String intentId, OfflineDetails offlineDetails, Function1<? super PaymentMethodData, Unit> onPaymentCollected, Function1<? super TerminalException, Unit> onFailure);

    public abstract void setReaderDisplay(Cart cart);

    public abstract ReaderSettings setReaderSettings(ReaderSettingsParameters params);

    public abstract void startInteracRefund(Amount amount, String chargeId, String paymentIntentId, boolean enableCustomerCancellation, Function1<? super PaymentMethodData, Unit> onPaymentCollected, Function1<? super TerminalException, Unit> onFailure);

    public abstract void startPaymentCollection(Amount amount, Function1<? super PaymentMethodData, Unit> onPaymentCollected, Function1<? super TerminalException, Unit> onFailure, boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, String intentId, Amount tipEligibleAmount, List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, String stripeAccountId, OfflineDetails offlineDetails, boolean enableCustomerCancellation, com.stripe.proto.model.rest.PaymentIntent paymentIntent, boolean requestDynamicCurrencyConversion, OfflineBehavior offlineBehavior, String surchargeNotice, AllowRedisplay allowRedisplay);

    public abstract void startSetupIntentPaymentCollection(String intentId, boolean enableCustomerCancellation, boolean manualEntry, SetupIntentOfflineDetails offlineDetails, OfflineBehavior offlineBehavior, AllowRedisplay allowRedisplay, com.stripe.proto.model.rest.SetupIntent setupIntent, Function1<? super PaymentMethodData, Unit> onPaymentCollected, Function1<? super TerminalException, Unit> onFailure);

    public RemoteReaderController(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    protected final SimpleLogger<ApplicationTrace, ApplicationTraceResult> getLogger() {
        return this.logger;
    }

    public final ActivateTerminalResponse activateReader(Reader reader, String connectionToken, ConnectionConfiguration connectionConfiguration) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        this.logger.d("activateReader", TuplesKt.to(OfflineStorageConstantsKt.READER, reader.getId()), TuplesKt.to("deviceInfo", reader.toDeviceInfo().toString()), TuplesKt.to("connectionConfigurationType", connectionConfiguration.getClass().getSimpleName()));
        return onActivateReader(reader, connectionToken, connectionConfiguration);
    }

    public final PaymentIntent createPaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        this.logger.i("createPaymentIntent", new Pair[0]);
        return onCreatePaymentIntent(paymentIntentParameters, createConfiguration);
    }

    public static /* synthetic */ void resumeCollectPaymentMethod$default(RemoteReaderController remoteReaderController, String str, OfflineDetails offlineDetails, Function1 function1, Function1 function12, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeCollectPaymentMethod");
        }
        if ((i & 2) != 0) {
            offlineDetails = null;
        }
        remoteReaderController.resumeCollectPaymentMethod(str, offlineDetails, function1, function12);
    }

    protected final ReaderAccessibility getReaderAccessibility(ReaderSettingsResponse readerSettingsResponse) {
        ReaderTextToSpeechStatus readerTextToSpeechStatus;
        Intrinsics.checkNotNullParameter(readerSettingsResponse, "<this>");
        ReaderSettingsResponse.AccessibilitySettings accessibilitySettings = readerSettingsResponse.accessibility_settings;
        if (accessibilitySettings != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[accessibilitySettings.text_to_speech_status.ordinal()];
            if (i == 1 || i == 2) {
                readerTextToSpeechStatus = ReaderTextToSpeechStatus.OFF;
            } else if (i == 3) {
                readerTextToSpeechStatus = ReaderTextToSpeechStatus.HEADPHONES;
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                readerTextToSpeechStatus = ReaderTextToSpeechStatus.SPEAKERS;
            }
            return new ReaderAccessibility.Accessibility(readerTextToSpeechStatus);
        }
        return new ReaderAccessibility.Error(TerminalExceptionExtensionsKt.toTerminalException$default(readerSettingsResponse.accessibility_settings_error, false, 1, null));
    }

    protected final ReaderSettings getReaderSettings(ReaderSettingsResponse readerSettingsResponse) {
        Intrinsics.checkNotNullParameter(readerSettingsResponse, "<this>");
        return new ReaderSettings(getReaderAccessibility(readerSettingsResponse));
    }

    protected final ReaderSettings getOrDefault(ReaderSettings readerSettings) {
        return readerSettings == null ? new ReaderSettings(new ReaderAccessibility.Error(TerminalExceptionExtensionsKt.toTerminalException$default(null, false, 1, null))) : readerSettings;
    }

    protected final <T> T assertReaderVersionAtLeast(long minVersion, Function0<? extends T> block) throws TerminalException {
        Intrinsics.checkNotNullParameter(block, "block");
        Reader connectedReader = getConnectedReader();
        if (connectedReader != null) {
            Long canonicalReaderVersion = connectedReader.getCanonicalReaderVersion();
            if ((canonicalReaderVersion != null ? canonicalReaderVersion.longValue() : 0L) >= minVersion) {
                T tInvoke = block.invoke();
                if (tInvoke != null) {
                    return tInvoke;
                }
            } else {
                throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "This operation is not supported for this reader", null, null, 12, null);
            }
        }
        throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No active reader", null, null, 12, null);
    }

    protected final <T> T assertReaderSettingsIsSupported(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return (T) assertReaderVersionAtLeast(MINIMUM_READER_SETTINGS_SW_VERSION, block);
    }

    /* JADX INFO: compiled from: RemoteReaderController.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$Companion;", "", "()V", "MINIMUM_READER_SETTINGS_SW_VERSION", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
