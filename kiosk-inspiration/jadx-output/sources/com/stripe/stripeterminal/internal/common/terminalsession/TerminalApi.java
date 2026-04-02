package com.stripe.stripeterminal.internal.common.terminalsession;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.callable.CollectInputsResultCallback;
import com.stripe.stripeterminal.external.callable.CollectedDataCallback;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.callable.LocationListCallback;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.callable.PaymentIntentCallback;
import com.stripe.stripeterminal.external.callable.PaymentMethodCallback;
import com.stripe.stripeterminal.external.callable.ReaderCallback;
import com.stripe.stripeterminal.external.callable.ReaderSettingsCallback;
import com.stripe.stripeterminal.external.callable.RefundCallback;
import com.stripe.stripeterminal.external.callable.SetupIntentCallback;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.CollectConfiguration;
import com.stripe.stripeterminal.external.models.CollectDataConfiguration;
import com.stripe.stripeterminal.external.models.CollectInputsParameters;
import com.stripe.stripeterminal.external.models.ConfirmConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionStatus;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.ListLocationsParameters;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentStatus;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.ReaderSupportResult;
import com.stripe.stripeterminal.external.models.RefundConfiguration;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentConfiguration;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.SimulatorConfiguration;
import com.sun.jna.Callback;
import kotlin.Metadata;

/* JADX INFO: compiled from: TerminalApi.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0098\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H&J \u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u001fH&J\b\u0010 \u001a\u00020\u0015H&J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\"H&J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020'H&J\u0018\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020*2\u0006\u0010\u0018\u001a\u00020+H&J \u0010,\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020-H&J \u0010.\u001a\u00020$2\u0006\u0010/\u001a\u0002002\u0006\u0010%\u001a\u0002012\u0006\u0010\u0018\u001a\u00020\"H&J(\u00102\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u001c2\u0006\u00103\u001a\u0002042\u0006\u0010%\u001a\u0002052\u0006\u0010\u0018\u001a\u00020\u001fH&J \u00106\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u000207H&J\u0010\u00108\u001a\u00020$2\u0006\u0010\u0018\u001a\u000209H&J\u0018\u0010:\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u001fH&J \u0010;\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u00032\u0006\u0010%\u001a\u00020=2\u0006\u0010>\u001a\u00020?H&J\u0018\u0010@\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020A2\u0006\u0010\u0018\u001a\u00020\u0019H&J\"\u0010@\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020A2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010B\u001a\u0004\u0018\u00010CH'J\"\u0010D\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020E2\u0006\u0010\u0018\u001a\u00020\u001f2\b\u0010B\u001a\u0004\u0018\u00010CH&J\u0010\u0010F\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\"H&J \u0010G\u001a\u00020$2\u0006\u0010%\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010\u0018\u001a\u00020\"H&J\u0010\u0010K\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020LH&J\b\u0010M\u001a\u00020\u0015H&J\u0018\u0010N\u001a\u00020\u00152\u0006\u0010O\u001a\u00020P2\u0006\u0010\u0018\u001a\u00020QH&J\u0018\u0010R\u001a\u00020$2\u0006\u0010\u001d\u001a\u00020S2\u0006\u0010\u0018\u001a\u00020TH&J\u0010\u0010U\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\"H&J\u0018\u0010V\u001a\u00020\u00152\u0006\u0010W\u001a\u00020X2\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0018\u0010Y\u001a\u00020\u00152\u0006\u0010W\u001a\u00020X2\u0006\u0010\u0018\u001a\u00020\u001fH&J\u0010\u0010Z\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\\H'J\u0018\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020_2\u0006\u0010\u0018\u001a\u00020\"H&J\u0018\u0010`\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020a2\u0006\u0010\u0018\u001a\u00020LH&J\u0010\u0010b\u001a\u00020\u00152\u0006\u0010[\u001a\u00020cH&J\u0018\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020HH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006iÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalApi;", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectedReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "connectionStatus", "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "getConnectionStatus", "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "paymentStatus", "Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "getPaymentStatus", "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;", "simulatorConfiguration", "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "getSimulatorConfiguration", "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "setSimulatorConfiguration", "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V", "cancelPaymentIntent", "", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "cancelSetupIntent", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "clearCachedCredentials", "clearReaderDisplay", "Lcom/stripe/stripeterminal/external/callable/Callback;", "collectData", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "config", "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;", "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;", "collectInputs", "collectInputsParameters", "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;", "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;", "collectPaymentMethod", "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;", "collectRefundPaymentMethod", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;", "collectSetupIntentPaymentMethod", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;", "confirmPaymentIntent", "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;", "confirmRefund", "Lcom/stripe/stripeterminal/external/callable/RefundCallback;", "confirmSetupIntent", "connectReader", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "connectionCallback", "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;", "createPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "disconnectReader", "discoverReaders", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "discoveryListener", "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", "getReaderSettings", "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;", "installAvailableUpdate", "listLocations", "parameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;", "rebootReader", "retrievePaymentIntent", "clientSecret", "", "retrieveSetupIntent", "setOfflineListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "setTerminalListener", "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "supportsReadersOfType", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "discoveryConfiguration", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TerminalApi extends OfflineStatusRepository {
    void cancelPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback);

    void cancelSetupIntent(SetupIntent setupIntent, SetupIntentCancellationParameters params, SetupIntentCallback callback);

    void clearCachedCredentials();

    void clearReaderDisplay(com.stripe.stripeterminal.external.callable.Callback callback);

    com.stripe.stripeterminal.external.callable.Cancelable collectData(CollectDataConfiguration config, CollectedDataCallback callback);

    com.stripe.stripeterminal.external.callable.Cancelable collectInputs(CollectInputsParameters collectInputsParameters, CollectInputsResultCallback callback);

    com.stripe.stripeterminal.external.callable.Cancelable collectPaymentMethod(PaymentIntent intent, PaymentIntentCallback callback, CollectConfiguration config);

    com.stripe.stripeterminal.external.callable.Cancelable collectRefundPaymentMethod(RefundParameters refundParams, RefundConfiguration config, com.stripe.stripeterminal.external.callable.Callback callback);

    com.stripe.stripeterminal.external.callable.Cancelable collectSetupIntentPaymentMethod(SetupIntent intent, AllowRedisplay allowRedisplay, SetupIntentConfiguration config, SetupIntentCallback callback);

    com.stripe.stripeterminal.external.callable.Cancelable confirmPaymentIntent(PaymentIntent intent, PaymentIntentCallback callback, ConfirmConfiguration config);

    com.stripe.stripeterminal.external.callable.Cancelable confirmRefund(RefundCallback callback);

    com.stripe.stripeterminal.external.callable.Cancelable confirmSetupIntent(SetupIntent intent, SetupIntentCallback callback);

    void connectReader(Reader reader, ConnectionConfiguration config, ReaderCallback connectionCallback);

    void createPaymentIntent(PaymentIntentParameters params, PaymentIntentCallback callback);

    void createPaymentIntent(PaymentIntentParameters params, PaymentIntentCallback callback, CreateConfiguration createConfiguration);

    void createSetupIntent(SetupIntentParameters params, SetupIntentCallback callback, CreateConfiguration createConfiguration);

    void disconnectReader(com.stripe.stripeterminal.external.callable.Callback callback);

    com.stripe.stripeterminal.external.callable.Cancelable discoverReaders(DiscoveryConfiguration config, DiscoveryListener discoveryListener, com.stripe.stripeterminal.external.callable.Callback callback);

    Reader getConnectedReader();

    ConnectionStatus getConnectionStatus();

    PaymentStatus getPaymentStatus();

    void getReaderSettings(ReaderSettingsCallback callback);

    SimulatorConfiguration getSimulatorConfiguration();

    void installAvailableUpdate();

    void listLocations(ListLocationsParameters parameters, LocationListCallback callback);

    com.stripe.stripeterminal.external.callable.Cancelable readReusableCard(ReadReusableCardParameters params, PaymentMethodCallback callback);

    void rebootReader(com.stripe.stripeterminal.external.callable.Callback callback);

    void retrievePaymentIntent(String clientSecret, PaymentIntentCallback callback);

    void retrieveSetupIntent(String clientSecret, SetupIntentCallback callback);

    void setOfflineListener(OfflineListener listener);

    void setReaderDisplay(Cart cart, com.stripe.stripeterminal.external.callable.Callback callback);

    void setReaderSettings(ReaderSettingsParameters params, ReaderSettingsCallback callback);

    void setSimulatorConfiguration(SimulatorConfiguration simulatorConfiguration);

    void setTerminalListener(TerminalListener listener);

    ReaderSupportResult supportsReadersOfType(DeviceType deviceType, DiscoveryConfiguration discoveryConfiguration);
}
