package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.CollectiblePayment;
import com.sun.jna.Callback;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: ProxyResourceRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JX\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2>\u0010\u000e\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u000fj\u0002`\u0017H\u0016J \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aH\u0016J\b\u0010%\u001a\u00020\u0016H\u0016J\u0018\u0010&\u001a\u00020'2\u0006\u0010$\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u001a\u0010*\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016Jq\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001a2\u000e\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001000/2\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\u0019022\f\u00104\u001a\b\u0012\u0004\u0012\u0002050/2\u0006\u00106\u001a\u00020+2\u0006\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010:2\b\u0010;\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0002\u0010<J<\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u0001002\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\u0019022\u0006\u00107\u001a\u000208H\u0016JR\u0010B\u001a\u00020'2\u0006\u0010$\u001a\u00020'2\b\u0010A\u001a\u0004\u0018\u0001002\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\u0019022\f\u00104\u001a\b\u0012\u0004\u0012\u0002050/2\u0006\u00106\u001a\u00020+2\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u000205H\u0016J\u0018\u0010K\u001a\u00020'2\u0006\u0010L\u001a\u00020M2\u0006\u0010F\u001a\u00020GH\u0016J\"\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020P0O2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u001c0RH\u0016J\u0018\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020V2\u0006\u0010J\u001a\u000205H\u0016J\u000e\u0010W\u001a\u00020\u00162\u0006\u0010X\u001a\u00020YJ\"\u0010Z\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001a2\b\u0010A\u001a\u0004\u0018\u0001002\u0006\u0010[\u001a\u00020+H\u0016J8\u0010\\\u001a\u0002H]\"\b\b\u0000\u0010]*\u00020^2\u0006\u0010_\u001a\u00020\u001c2\u0017\u0010`\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H]02¢\u0006\u0002\baH\u0002¢\u0006\u0002\u0010bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006c"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "directResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;", "remoteReaderResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;", "(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)V", "currentResourceRepository", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "awaitActionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntentId", "", "accountId", "cancelConfirmPaymentIntent", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmRefund", "cancelConfirmSetupIntent", "cancelPaymentIntent", "intent", "cancelPaymentIntentActionRequired", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "completePaymentIntentActionRequired", "", "confirmPaymentIntent", "paymentIntent", "getCollectiblePayment", "Lkotlin/Function0;", "Lcom/stripe/transaction/CollectiblePayment;", "handleAuthResponse", "Lkotlin/Function1;", "Lcom/stripe/hardware/emv/TransactionResult;", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "immediateRecollectForSca", "authStateListener", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "collectiblePayment", "confirmSetupIntent", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "paymentMethodData", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "getReaderLocations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "readReusableCardParams", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "setResourceRepository", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "updatePaymentIntent", "requestDynamicCurrencyConversion", "withCurrentRepository", "T", "", "methodName", FirebaseAnalytics.Param.METHOD, "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyResourceRepository implements ResourceRepository {
    private ResourceRepository currentResourceRepository;
    private final DirectResourceRepositoryRouter directResourceRepository;
    private final RemoteReaderResourceRepository remoteReaderResourceRepository;

    public ProxyResourceRepository(DirectResourceRepositoryRouter directResourceRepository, RemoteReaderResourceRepository remoteReaderResourceRepository) {
        Intrinsics.checkNotNullParameter(directResourceRepository, "directResourceRepository");
        Intrinsics.checkNotNullParameter(remoteReaderResourceRepository, "remoteReaderResourceRepository");
        this.directResourceRepository = directResourceRepository;
        this.remoteReaderResourceRepository = remoteReaderResourceRepository;
    }

    public final void setResourceRepository(DiscoveryConfiguration config) {
        RemoteReaderResourceRepository remoteReaderResourceRepository;
        Intrinsics.checkNotNullParameter(config, "config");
        if ((config instanceof DiscoveryConfiguration.HandoffDiscoveryConfiguration) || ((config instanceof DiscoveryConfiguration.InternetDiscoveryConfiguration) && !((DiscoveryConfiguration.InternetDiscoveryConfiguration) config).isSimulated())) {
            remoteReaderResourceRepository = this.remoteReaderResourceRepository;
        } else {
            remoteReaderResourceRepository = this.directResourceRepository;
        }
        this.currentResourceRepository = remoteReaderResourceRepository;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public ActivateReaderResponse activateReader(final Reader reader, final ConnectionConfiguration connectionConfiguration, final Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Intrinsics.checkNotNullParameter(setReconnectParams, "setReconnectParams");
        return (ActivateReaderResponse) withCurrentRepository("activateReader", new Function1<ResourceRepository, ActivateReaderResponse>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.activateReader.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ActivateReaderResponse invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.activateReader(reader, connectionConfiguration, setReconnectParams);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent createPaymentIntent(final PaymentIntentParameters paymentIntentParameters, final CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return (PaymentIntent) withCurrentRepository("createPaymentIntent", new Function1<ResourceRepository, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.createPaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.createPaymentIntent(paymentIntentParameters, createConfiguration);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent createSetupIntent(final SetupIntentParameters setupIntentParameters, final CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return (SetupIntent) withCurrentRepository("createSetupIntent", new Function1<ResourceRepository, SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.createSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SetupIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.createSetupIntent(setupIntentParameters, createConfiguration);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Refund confirmRefund(final RefundParameters refundParams, final CollectiblePayment collectiblePayment, final Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, final OnlineAuthStateListener authStateListener) throws TerminalException {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        return (Refund) withCurrentRepository("confirmRefund", new Function1<ResourceRepository, Refund>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.confirmRefund.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Refund invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.confirmRefund(refundParams, collectiblePayment, handleAuthResponse, authStateListener);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent updatePaymentIntent(final PaymentIntent paymentIntent, final CollectiblePayment collectiblePayment, final boolean requestDynamicCurrencyConversion) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        return (PaymentIntent) withCurrentRepository("updatePaymentIntent", new Function1<ResourceRepository, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.updatePaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.updatePaymentIntent(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent confirmPaymentIntent(final PaymentIntent paymentIntent, final Function0<CollectiblePayment> getCollectiblePayment, final Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, final Function0<PaymentMethodData> collectScaPaymentMethodData, final boolean immediateRecollectForSca, final OnlineAuthStateListener authStateListener, final Long amountSurcharge, final String returnUrl) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(getCollectiblePayment, "getCollectiblePayment");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        return (PaymentIntent) withCurrentRepository("confirmPaymentIntent", new Function1<ResourceRepository, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.confirmPaymentIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.confirmPaymentIntent(paymentIntent, getCollectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener, amountSurcharge, returnUrl);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent confirmSetupIntent(final SetupIntent intent, final CollectiblePayment collectiblePayment, final Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, final Function0<PaymentMethodData> collectScaPaymentMethodData, final boolean immediateRecollectForSca, final OnlineAuthStateListener authStateListener) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        return (SetupIntent) withCurrentRepository("confirmSetupIntent", new Function1<ResourceRepository, SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.confirmSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SetupIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.confirmSetupIntent(intent, collectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent cancelPaymentIntent(final PaymentIntent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return (PaymentIntent) withCurrentRepository("cancelPaymentIntent", new Function1<ResourceRepository, PaymentIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.cancelPaymentIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.cancelPaymentIntent(intent);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent cancelSetupIntent(final SetupIntent intent, final SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        return (SetupIntent) withCurrentRepository("cancelSetupIntent", new Function1<ResourceRepository, SetupIntent>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.cancelSetupIntent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SetupIntent invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.cancelSetupIntent(intent, params);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentMethod readReusableCard(final ReadReusableCardParameters readReusableCardParams, final PaymentMethodData paymentMethodData) throws TerminalException {
        Intrinsics.checkNotNullParameter(readReusableCardParams, "readReusableCardParams");
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        return (PaymentMethod) withCurrentRepository("readReusableCard", new Function1<ResourceRepository, PaymentMethod>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.readReusableCard.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final PaymentMethod invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.readReusableCard(readReusableCardParams, paymentMethodData);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Map<String, Location> getReaderLocations(final List<String> deviceSerials) {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        return (Map) withCurrentRepository("getReaderLocations", new Function1<ResourceRepository, Map<String, ? extends Location>>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.getReaderLocations.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Map<String, Location> invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.getReaderLocations(deviceSerials);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Deferred<PaymentIntent> awaitActionRequiredPaymentIntentCompletion(final String paymentIntentId, final String accountId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        return (Deferred) withCurrentRepository("awaitActionRequiredPaymentIntentCompletion", new Function1<ResourceRepository, Deferred<? extends PaymentIntent>>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.awaitActionRequiredPaymentIntentCompletion.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Deferred<PaymentIntent> invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.awaitActionRequiredPaymentIntentCompletion(paymentIntentId, accountId);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public boolean completePaymentIntentActionRequired(final String paymentIntentId, final String accountId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        return ((Boolean) withCurrentRepository("completePaymentIntentActionRequired", new Function1<ResourceRepository, Boolean>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.completePaymentIntentActionRequired.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return Boolean.valueOf(withCurrentRepository.completePaymentIntentActionRequired(paymentIntentId, accountId));
            }
        })).booleanValue();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelPaymentIntentActionRequired() {
        withCurrentRepository("cancelPaymentIntentActionRequired", new Function1<ResourceRepository, Unit>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.cancelPaymentIntentActionRequired.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ResourceRepository resourceRepository) {
                invoke2(resourceRepository);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                withCurrentRepository.cancelPaymentIntentActionRequired();
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public CollectedData createReaderCollectedData(final PaymentMethodData paymentMethodData) {
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        return (CollectedData) withCurrentRepository("createReaderCollectedData", new Function1<ResourceRepository, CollectedData>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.createReaderCollectedData.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CollectedData invoke(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                return withCurrentRepository.createReaderCollectedData(paymentMethodData);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmPaymentIntent(final com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        withCurrentRepository("cancelConfirmPaymentIntent", new Function1<ResourceRepository, Unit>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.cancelConfirmPaymentIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ResourceRepository resourceRepository) {
                invoke2(resourceRepository);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                withCurrentRepository.cancelConfirmPaymentIntent(callback);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmSetupIntent(final com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        withCurrentRepository("cancelConfirmSetupIntent", new Function1<ResourceRepository, Unit>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.cancelConfirmSetupIntent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ResourceRepository resourceRepository) {
                invoke2(resourceRepository);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                withCurrentRepository.cancelConfirmSetupIntent(callback);
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmRefund(final com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        withCurrentRepository("cancelConfirmRefund", new Function1<ResourceRepository, Unit>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository.cancelConfirmRefund.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ResourceRepository resourceRepository) {
                invoke2(resourceRepository);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ResourceRepository withCurrentRepository) {
                Intrinsics.checkNotNullParameter(withCurrentRepository, "$this$withCurrentRepository");
                withCurrentRepository.cancelConfirmRefund(callback);
            }
        });
    }

    private final <T> T withCurrentRepository(String methodName, Function1<? super ResourceRepository, ? extends T> method) throws TerminalException {
        T tInvoke;
        ResourceRepository resourceRepository = this.currentResourceRepository;
        if (resourceRepository == null || (tInvoke = method.invoke(resourceRepository)) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "discoverReaders must be called before " + methodName, null, null, 12, null);
        }
        return tInvoke;
    }
}
