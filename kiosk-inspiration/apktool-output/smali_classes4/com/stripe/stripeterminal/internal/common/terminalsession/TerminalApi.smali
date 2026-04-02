.class public interface abstract Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalApi;
.super Ljava/lang/Object;
.source "TerminalApi.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H&J \u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u001fH&J\u0008\u0010 \u001a\u00020\u0015H&J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\"H&J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\'H&J\u0018\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020*2\u0006\u0010\u0018\u001a\u00020+H&J \u0010,\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020-H&J \u0010.\u001a\u00020$2\u0006\u0010/\u001a\u0002002\u0006\u0010%\u001a\u0002012\u0006\u0010\u0018\u001a\u00020\"H&J(\u00102\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u001c2\u0006\u00103\u001a\u0002042\u0006\u0010%\u001a\u0002052\u0006\u0010\u0018\u001a\u00020\u001fH&J \u00106\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u000207H&J\u0010\u00108\u001a\u00020$2\u0006\u0010\u0018\u001a\u000209H&J\u0018\u0010:\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u001fH&J \u0010;\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u00032\u0006\u0010%\u001a\u00020=2\u0006\u0010>\u001a\u00020?H&J\u0018\u0010@\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020A2\u0006\u0010\u0018\u001a\u00020\u0019H&J\"\u0010@\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020A2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010B\u001a\u0004\u0018\u00010CH\'J\"\u0010D\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020E2\u0006\u0010\u0018\u001a\u00020\u001f2\u0008\u0010B\u001a\u0004\u0018\u00010CH&J\u0010\u0010F\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\"H&J \u0010G\u001a\u00020$2\u0006\u0010%\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010\u0018\u001a\u00020\"H&J\u0010\u0010K\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020LH&J\u0008\u0010M\u001a\u00020\u0015H&J\u0018\u0010N\u001a\u00020\u00152\u0006\u0010O\u001a\u00020P2\u0006\u0010\u0018\u001a\u00020QH&J\u0018\u0010R\u001a\u00020$2\u0006\u0010\u001d\u001a\u00020S2\u0006\u0010\u0018\u001a\u00020TH&J\u0010\u0010U\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\"H&J\u0018\u0010V\u001a\u00020\u00152\u0006\u0010W\u001a\u00020X2\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0018\u0010Y\u001a\u00020\u00152\u0006\u0010W\u001a\u00020X2\u0006\u0010\u0018\u001a\u00020\u001fH&J\u0010\u0010Z\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\\H\'J\u0018\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020_2\u0006\u0010\u0018\u001a\u00020\"H&J\u0018\u0010`\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020a2\u0006\u0010\u0018\u001a\u00020LH&J\u0010\u0010b\u001a\u00020\u00152\u0006\u0010[\u001a\u00020cH&J\u0018\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020HH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006i\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalApi;",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionStatus",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "getConnectionStatus",
        "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "paymentStatus",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "getPaymentStatus",
        "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "simulatorConfiguration",
        "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "getSimulatorConfiguration",
        "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "setSimulatorConfiguration",
        "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V",
        "cancelPaymentIntent",
        "",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "cancelSetupIntent",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        "clearCachedCredentials",
        "clearReaderDisplay",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "collectData",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;",
        "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;",
        "collectInputs",
        "collectInputsParameters",
        "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;",
        "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;",
        "collectRefundPaymentMethod",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "collectSetupIntentPaymentMethod",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;",
        "confirmPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;",
        "confirmRefund",
        "Lcom/stripe/stripeterminal/external/callable/RefundCallback;",
        "confirmSetupIntent",
        "connectReader",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "connectionCallback",
        "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
        "createPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "disconnectReader",
        "discoverReaders",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "discoveryListener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;",
        "installAvailableUpdate",
        "listLocations",
        "parameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;",
        "rebootReader",
        "retrievePaymentIntent",
        "clientSecret",
        "",
        "retrieveSetupIntent",
        "setOfflineListener",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "setTerminalListener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "supportsReadersOfType",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "discoveryConfiguration",
        "terminalsession_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
.end method

.method public abstract cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
.end method

.method public abstract clearCachedCredentials()V
.end method

.method public abstract clearReaderDisplay(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract collectData(Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract collectInputs(Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract confirmRefund(Lcom/stripe/stripeterminal/external/callable/RefundCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
.end method

.method public abstract createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
.end method

.method public abstract createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
.end method

.method public abstract createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
.end method

.method public abstract disconnectReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
.end method

.method public abstract getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
.end method

.method public abstract getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;
.end method

.method public abstract getReaderSettings(Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V
.end method

.method public abstract getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
.end method

.method public abstract installAvailableUpdate()V
.end method

.method public abstract listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V
.end method

.method public abstract readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract rebootReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
.end method

.method public abstract retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
.end method

.method public abstract setOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
.end method

.method public abstract setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V
.end method

.method public abstract setSimulatorConfiguration(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V
.end method

.method public abstract setTerminalListener(Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
.end method

.method public abstract supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
.end method
