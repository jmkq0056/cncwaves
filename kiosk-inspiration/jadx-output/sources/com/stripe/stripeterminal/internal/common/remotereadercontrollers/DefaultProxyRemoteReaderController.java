package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.ActivateTerminalResponse;
import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSettings;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.sun.jna.Callback;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ProxyRemoteReaderController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¶\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u000fH\u0016J@\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0016J \u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0016J)\u00108\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u00109\u001a\u0004\u0018\u00010:2\b\u0010;\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020\u001dH\u0016J\u001e\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\n2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000f0BH\u0016J\u0018\u0010C\u001a\u00020\u001d2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u00020\u000fH\u0016J(\u0010I\u001a\b\u0012\u0004\u0012\u00020\n0J2\u0006\u0010K\u001a\u0002072\b\u0010L\u001a\u0004\u0018\u0001072\u0006\u0010M\u001a\u00020NH\u0016J\b\u0010O\u001a\u00020\u000fH\u0016J\n\u0010P\u001a\u0004\u0018\u00010\u0005H\u0007J\b\u0010Q\u001a\u00020RH\u0016J \u0010S\u001a\u00020T2\u0006\u0010@\u001a\u00020\n2\u0006\u0010K\u001a\u0002072\u0006\u0010U\u001a\u00020VH\u0014J\u0018\u0010W\u001a\u00020\u001a2\u0006\u0010X\u001a\u00020Y2\u0006\u0010F\u001a\u00020GH\u0015J\b\u0010Z\u001a\u00020\u000fH\u0016JB\u0010[\u001a\u00020\u000f2\u0006\u0010\\\u001a\u0002072\b\u0010]\u001a\u0004\u0018\u00010^2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016J\u0010\u0010a\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020cH\u0016J\u0010\u0010d\u001a\u00020\u000f2\u0006\u0010e\u001a\u00020fH\u0016J\u0010\u0010g\u001a\u00020R2\u0006\u0010\u001f\u001a\u00020hH\u0016JT\u0010i\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020k2\b\u0010l\u001a\u0004\u0018\u0001072\b\u0010m\u001a\u0004\u0018\u0001072\u0006\u0010%\u001a\u00020&2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016JÀ\u0001\u0010n\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020k2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(2\u0006\u0010o\u001a\u00020&2\u0006\u0010p\u001a\u00020&2\u0006\u0010q\u001a\u00020&2\b\u0010\\\u001a\u0004\u0018\u0001072\b\u0010r\u001a\u0004\u0018\u00010k2\u000e\u0010s\u001a\n\u0012\u0004\u0012\u00020t\u0018\u00010J2\b\u0010u\u001a\u0004\u0018\u0001072\b\u0010]\u001a\u0004\u0018\u00010^2\u0006\u0010%\u001a\u00020&2\b\u0010\u001b\u001a\u0004\u0018\u00010v2\u0006\u0010w\u001a\u00020&2\b\u0010x\u001a\u0004\u0018\u00010y2\b\u0010z\u001a\u0004\u0018\u0001072\b\u0010{\u001a\u0004\u0018\u00010|H\u0016Jp\u0010}\u001a\u00020\u000f2\b\u0010\\\u001a\u0004\u0018\u0001072\u0006\u0010%\u001a\u00020&2\u0006\u0010p\u001a\u00020&2\b\u0010]\u001a\u0004\u0018\u00010~2\b\u0010x\u001a\u0004\u0018\u00010y2\b\u0010{\u001a\u0004\u0018\u00010|2\u0006\u0010>\u001a\u00020\u007f2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016JG\u0010\u0080\u0001\u001a\u0003H\u0081\u0001\"\u0005\b\u0000\u0010\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u0002072\t\b\u0002\u0010\u0083\u0001\u001a\u0002072\u001a\u0010\u0084\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u0003H\u0081\u00010(¢\u0006\u0003\b\u0085\u0001H\u0002¢\u0006\u0003\u0010\u0086\u0001R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0087\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;", "ipReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;", "handoffReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "currentController", "cancelCollectData", "", "cancelCollectInputs", "cancelCollectInteracRefundMethod", "cancelCollectPaymentMethod", "cancelCollectSetupIntentPaymentMethod", "cancelConfirmInteracRefund", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmPaymentIntent", "cancelConfirmSetupIntent", "cancelPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "intent", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "clearReaderDisplay", "collectData", "type", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "enableCustomerCancellation", "", "onDataCollected", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "collectInputs", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "confirmInteracRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "reason", "", "confirmPayment", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmSetupIntent", "setupIntent", "connectReader", OfflineStorageConstantsKt.READER, "disconnectCallback", "Lkotlin/Function0;", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "disconnectReader", "discoverReaders", "", "connectionToken", FirebaseAnalytics.Param.LOCATION, "timeoutInSeconds", "", "finishConfirmPayment", "getCurrentController", "getReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "onActivateReader", "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "onCreatePaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "onPaymentMethodCollectedForPaymentIntent", "resumeCollectPaymentMethod", "intentId", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "onPaymentCollected", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "setReaderController", "discoveryConfiguration", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "startInteracRefund", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "chargeId", "paymentIntentId", "startPaymentCollection", "skipTipping", "manualEntry", "updatePaymentIntent", "tipEligibleAmount", "computedPriorities", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "Lcom/stripe/proto/model/rest/PaymentIntent;", "requestDynamicCurrencyConversion", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "surchargeNotice", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "startSetupIntentPaymentCollection", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "Lcom/stripe/proto/model/rest/SetupIntent;", "withCurrentController", "T", "methodName", "errorMessage", FirebaseAnalytics.Param.METHOD, "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultProxyRemoteReaderController extends ProxyRemoteReaderController {
    private RemoteReaderController currentController;
    private final RemoteReaderController handoffReaderController;
    private final IpReaderController ipReaderController;

    public final RemoteReaderController getCurrentController() {
        return this.currentController;
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController
    public void setReaderController(DiscoveryConfiguration discoveryConfiguration) throws TerminalException {
        IpReaderController ipReaderController;
        Intrinsics.checkNotNullParameter(discoveryConfiguration, "discoveryConfiguration");
        if (discoveryConfiguration instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration) {
            ipReaderController = this.ipReaderController;
        } else if (discoveryConfiguration instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration) {
            ipReaderController = this.handoffReaderController;
            if (ipReaderController == null) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "The Terminal `handoffclient` module must be included for this DiscoveryConfiguration", null, null, 12, null);
            }
        } else {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Encountered unexpected discovery configuration " + discoveryConfiguration, null, null, 12, null);
        }
        this.currentController = ipReaderController;
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public KmpCollectInputsResult collectInputs(final KmpCollectInputsParameters kmpCollectInputsParameters) {
        Intrinsics.checkNotNullParameter(kmpCollectInputsParameters, "kmpCollectInputsParameters");
        return (KmpCollectInputsResult) withCurrentController$default(this, "starting collect inputs", null, new Function1<RemoteReaderController, KmpCollectInputsResult>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.collectInputs.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final KmpCollectInputsResult invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.collectInputs(kmpCollectInputsParameters);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectInputs() {
        withCurrentController$default(this, "canceling collect inputs", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelCollectInputs.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelCollectInputs();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    protected ActivateTerminalResponse onActivateReader(final Reader reader, final String connectionToken, final ConnectionConfiguration connectionConfiguration) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        return (ActivateTerminalResponse) withCurrentController$default(this, "connecting to a reader", null, new Function1<RemoteReaderController, ActivateTerminalResponse>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.onActivateReader.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ActivateTerminalResponse invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.activateReader(reader, connectionToken, connectionConfiguration);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    protected PaymentIntent onCreatePaymentIntent(final PaymentIntentParameters paymentIntentParameters, final CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return (PaymentIntent) withCurrentController$default(this, "creating a payment intent", null, new Function1<RemoteReaderController, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.onCreatePaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.createPaymentIntent(paymentIntentParameters, createConfiguration);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public SetupIntent createSetupIntent(final SetupIntentParameters setupIntentParameters, final CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return (SetupIntent) withCurrentController$default(this, "creating a setup intent", null, new Function1<RemoteReaderController, SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.createSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SetupIntent invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.createSetupIntent(setupIntentParameters, createConfiguration);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectInteracRefundMethod() {
        withCurrentController$default(this, "canceling refund payment method collection", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelCollectInteracRefundMethod.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelCollectInteracRefundMethod();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectPaymentMethod() {
        withCurrentController$default(this, "canceling payment method collection", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelCollectPaymentMethod.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelCollectPaymentMethod();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectSetupIntentPaymentMethod() {
        withCurrentController$default(this, "canceling SetupIntent payment method collection", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelCollectSetupIntentPaymentMethod.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelCollectSetupIntentPaymentMethod();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void clearReaderDisplay() {
        withCurrentController$default(this, "clearing reader display", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.clearReaderDisplay.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.clearReaderDisplay();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public Refund confirmInteracRefund(final RefundParameters refundParams, final PaymentMethod paymentMethod, final String reason) {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(reason, "reason");
        return (Refund) withCurrentController$default(this, "confirming a refund", null, new Function1<RemoteReaderController, Refund>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.confirmInteracRefund.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Refund invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.confirmInteracRefund(refundParams, paymentMethod, reason);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelConfirmInteracRefund(final com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        withCurrentController$default(this, "canceling Refund confirmation", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelConfirmInteracRefund.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelConfirmInteracRefund(callback);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public PaymentIntent confirmPayment(final PaymentIntent paymentIntent, final Long amountSurcharge, final String returnUrl) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        return (PaymentIntent) withCurrentController$default(this, "confirming a payment intent", null, new Function1<RemoteReaderController, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.confirmPayment.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.confirmPayment(paymentIntent, amountSurcharge, returnUrl);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelConfirmPaymentIntent(final com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        withCurrentController$default(this, "canceling PaymentIntent confirmation", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelConfirmPaymentIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelConfirmPaymentIntent(callback);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void resumeCollectPaymentMethod(final String intentId, final OfflineDetails offlineDetails, final Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure) {
        Intrinsics.checkNotNullParameter(intentId, "intentId");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        withCurrentController$default(this, "resuming collecting a payment", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.resumeCollectPaymentMethod.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.resumeCollectPaymentMethod(intentId, offlineDetails, onPaymentCollected, onFailure);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public SetupIntent confirmSetupIntent(final SetupIntent setupIntent) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        return (SetupIntent) withCurrentController$default(this, "confirming a setup intent", null, new Function1<RemoteReaderController, SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.confirmSetupIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SetupIntent invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.confirmSetupIntent(setupIntent);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelConfirmSetupIntent(final com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        withCurrentController$default(this, "canceling SetupIntent confirmation", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelConfirmSetupIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelConfirmSetupIntent(callback);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void connectReader(final Reader reader, final Function0<Unit> disconnectCallback) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(disconnectCallback, "disconnectCallback");
        withCurrentController$default(this, "connecting to a reader", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.connectReader.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.connectReader(reader, disconnectCallback);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void disconnectReader() {
        withCurrentController$default(this, "disconnecting from a reader", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.disconnectReader.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.disconnectReader();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public List<Reader> discoverReaders(final String connectionToken, final String location, final int timeoutInSeconds) {
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        return (List) withCurrentController("discoverReaders", "Unexpected internal error", new Function1<RemoteReaderController, List<? extends Reader>>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.discoverReaders.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<Reader> invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.discoverReaders(connectionToken, location, timeoutInSeconds);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void setReaderDisplay(final Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        withCurrentController$default(this, "setting reader display", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.setReaderDisplay.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.setReaderDisplay(cart);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public ReaderSettings setReaderSettings(final ReaderSettingsParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return (ReaderSettings) withCurrentController$default(this, "setting reader settings", null, new Function1<RemoteReaderController, ReaderSettings>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.setReaderSettings.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ReaderSettings invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.setReaderSettings(params);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public ReaderSettings getReaderSettings() {
        return (ReaderSettings) withCurrentController$default(this, "querying reader settings", null, new Function1<RemoteReaderController, ReaderSettings>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.getReaderSettings.1
            @Override // kotlin.jvm.functions.Function1
            public final ReaderSettings invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.getReaderSettings();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void startPaymentCollection(final Amount amount, final Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure, final boolean skipTipping, final boolean manualEntry, final boolean updatePaymentIntent, final String intentId, final Amount tipEligibleAmount, final List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, final String stripeAccountId, final OfflineDetails offlineDetails, final boolean enableCustomerCancellation, final com.stripe.proto.model.rest.PaymentIntent paymentIntent, final boolean requestDynamicCurrencyConversion, final OfflineBehavior offlineBehavior, final String surchargeNotice, final AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        withCurrentController$default(this, "collecting a payment method", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.startPaymentCollection.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.startPaymentCollection(amount, onPaymentCollected, onFailure, skipTipping, manualEntry, updatePaymentIntent, intentId, tipEligibleAmount, computedPriorities, stripeAccountId, offlineDetails, enableCustomerCancellation, paymentIntent, requestDynamicCurrencyConversion, offlineBehavior, surchargeNotice, allowRedisplay);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void startInteracRefund(final Amount amount, final String chargeId, final String paymentIntentId, final boolean enableCustomerCancellation, final Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        withCurrentController$default(this, "collecting a refund payment method", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.startInteracRefund.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.startInteracRefund(amount, chargeId, paymentIntentId, enableCustomerCancellation, onPaymentCollected, onFailure);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void startSetupIntentPaymentCollection(final String intentId, final boolean enableCustomerCancellation, final boolean manualEntry, final SetupIntentOfflineDetails offlineDetails, final OfflineBehavior offlineBehavior, final AllowRedisplay allowRedisplay, final com.stripe.proto.model.rest.SetupIntent setupIntent, final Function1<? super PaymentMethodData, Unit> onPaymentCollected, final Function1<? super TerminalException, Unit> onFailure) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        Intrinsics.checkNotNullParameter(onPaymentCollected, "onPaymentCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        withCurrentController$default(this, "collecting a SetupIntent payment method", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.startSetupIntentPaymentCollection.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.startSetupIntentPaymentCollection(intentId, enableCustomerCancellation, manualEntry, offlineDetails, offlineBehavior, allowRedisplay, setupIntent, onPaymentCollected, onFailure);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void finishConfirmPayment() {
        withCurrentController$default(this, "confirming a payment intent", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.finishConfirmPayment.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.finishConfirmPayment();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public PaymentIntent cancelPaymentIntent(final PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        return (PaymentIntent) withCurrentController$default(this, "cancelling a payment intent", null, new Function1<RemoteReaderController, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelPaymentIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.cancelPaymentIntent(paymentIntent);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public SetupIntent cancelSetupIntent(final SetupIntent intent, final SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        return (SetupIntent) withCurrentController$default(this, "cancelling a setup intent", null, new Function1<RemoteReaderController, SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SetupIntent invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.cancelSetupIntent(intent, params);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void onPaymentMethodCollectedForPaymentIntent() {
        withCurrentController$default(this, "collected payment method for payment intent", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.onPaymentMethodCollectedForPaymentIntent.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.onPaymentMethodCollectedForPaymentIntent();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public Reader getConnectedReader() {
        return (Reader) withCurrentController$default(this, "connectedReader", null, new Function1<RemoteReaderController, Reader>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController$connectedReader$1
            @Override // kotlin.jvm.functions.Function1
            public final Reader invoke(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                return withCurrentController.getConnectedReader();
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void collectData(final CollectDataRequest.CollectDataType type, final boolean enableCustomerCancellation, final Function1<? super ReaderCollectedData, Unit> onDataCollected, final Function1<? super TerminalException, Unit> onFailure) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(onDataCollected, "onDataCollected");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        withCurrentController$default(this, "collect data", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.collectData.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.collectData(type, enableCustomerCancellation, onDataCollected, onFailure);
            }
        }, 2, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController
    public void cancelCollectData() {
        withCurrentController$default(this, "cancel collect data", null, new Function1<RemoteReaderController, Unit>() { // from class: com.stripe.stripeterminal.internal.common.remotereadercontrollers.DefaultProxyRemoteReaderController.cancelCollectData.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RemoteReaderController remoteReaderController) {
                invoke2(remoteReaderController);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RemoteReaderController withCurrentController) {
                Intrinsics.checkNotNullParameter(withCurrentController, "$this$withCurrentController");
                withCurrentController.cancelCollectData();
            }
        }, 2, null);
    }

    static /* synthetic */ Object withCurrentController$default(DefaultProxyRemoteReaderController defaultProxyRemoteReaderController, String str, String str2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "DiscoverReaders must be called before " + str;
        }
        return defaultProxyRemoteReaderController.withCurrentController(str, str2, function1);
    }

    private final <T> T withCurrentController(String methodName, String errorMessage, Function1<? super RemoteReaderController, ? extends T> method) throws TerminalException {
        T tInvoke;
        RemoteReaderController remoteReaderController = this.currentController;
        if (remoteReaderController == null || (tInvoke = method.invoke(remoteReaderController)) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, errorMessage, null, null, 12, null);
        }
        return tInvoke;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultProxyRemoteReaderController(IpReaderController ipReaderController, RemoteReaderController remoteReaderController, LoggerFactory loggerFactory) {
        super(loggerFactory.create(Reflection.getOrCreateKotlinClass(ProxyRemoteReaderController.class)));
        Intrinsics.checkNotNullParameter(ipReaderController, "ipReaderController");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.ipReaderController = ipReaderController;
        this.handoffReaderController = remoteReaderController;
    }
}
