.class public final Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;
.super Ljava/lang/Object;
.source "DefaultStageEventLogger.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/metrics/StageEventLogger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u0010,\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u0010-\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u00101\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u00102\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u001a\u00103\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0006\u00104\u001a\u000205H\u0016J\"\u00106\u001a\u00020\'2\u0006\u00107\u001a\u0002082\u0006\u0010(\u001a\u00020)2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0010\u0010;\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010<\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001c\u0010=\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0010\u0010@\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u001a\u0010A\u001a\u00020\'2\u0006\u0010B\u001a\u00020C2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010D\u001a\u00020\'2\u0006\u0010B\u001a\u00020E2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010F\u001a\u00020\'H\u0016J\u0008\u0010G\u001a\u00020\'H\u0016J\u0008\u0010H\u001a\u00020\'H\u0016J\u0008\u0010I\u001a\u00020\'H\u0016J\u0008\u0010J\u001a\u00020\'H\u0016J\u0008\u0010K\u001a\u00020\'H\u0016J\u0010\u0010L\u001a\u00020\'2\u0006\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020\'H\u0016J\u0008\u0010P\u001a\u00020\'H\u0016J\u0008\u0010Q\u001a\u00020\'H\u0016J\u0010\u0010R\u001a\u00020\'2\u0006\u0010S\u001a\u00020?H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0012j\u0002`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V",
        "accountSelectionLogger",
        "Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;",
        "applicationSelectionLogger",
        "Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;",
        "displayCartLogger",
        "Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;",
        "dynamicCurrencyConversionLogger",
        "Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;",
        "kernelProcessingLogger",
        "Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        "Lcom/stripe/paymentcollection/metrics/StageLogger;",
        "nonCardPaymentMethodActionRequiredLogger",
        "Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;",
        "nonCardPaymentMethodSelectionLogger",
        "Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;",
        "onlineAuthLogger",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;",
        "pinEntryLogger",
        "Lcom/stripe/paymentcollection/metrics/PinEntryLogger;",
        "removeCardLogger",
        "Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;",
        "waitForCardPresent",
        "Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;",
        "waitForPosCommand",
        "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;",
        "closeAccountSelectionLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "nextState",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "closeApplicationSelectionLog",
        "closeDisplayCartLog",
        "displayCartResult",
        "Lcom/stripe/paymentcollection/metrics/DisplayCartResult;",
        "closeDynamicCurrencyConversionSelectionLog",
        "closeNonCardPaymentMethodActionRequiredLog",
        "closeNonCardPaymentMethodSelectionLog",
        "closeOnlineAuthenticationLog",
        "authState",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "closePinEntryLog",
        "result",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "knownFailureReason",
        "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;",
        "closeRemoveCardLog",
        "closeWaitForCardPresentLog",
        "closeWaitForPosCommandLog",
        "closingCommand",
        "Lcom/stripe/paymentcollection/metrics/PendingPosCommand;",
        "onCancel",
        "onHardwareEvent",
        "event",
        "Lcom/stripe/paymentcollection/HardwareEvent;",
        "onHardwareListenerEvent",
        "Lcom/stripe/paymentcollection/HardwareListenerEvent;",
        "openAccountSelectionLog",
        "openApplicationSelectionLog",
        "openDisplayCartLog",
        "openDynamicCurrencyConversionSelectionLog",
        "openNonCardPaymentMethodActionRequiredLog",
        "openNonCardPaymentMethodSelectionLog",
        "openOnlineAuthenticationLog",
        "authType",
        "Lcom/stripe/paymentcollection/OnlineAuthType;",
        "openPinEntryLog",
        "openRemoveCardLog",
        "openWaitForCardPresentLog",
        "openWaitForPosCommandLog",
        "pendingCommand",
        "impl_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final accountSelectionLogger:Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;

.field private final applicationSelectionLogger:Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;

.field private final displayCartLogger:Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;

.field private final dynamicCurrencyConversionLogger:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;

.field private final kernelProcessingLogger:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;

.field private final logger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final nonCardPaymentMethodActionRequiredLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;

.field private final nonCardPaymentMethodSelectionLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;

.field private final onlineAuthLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

.field private final pinEntryLogger:Lcom/stripe/paymentcollection/metrics/PinEntryLogger;

.field private final removeCardLogger:Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;

.field private final waitForCardPresent:Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;

.field private final waitForPosCommand:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V
    .locals 1

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->buildsStageHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 17
    new-instance v0, Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->applicationSelectionLogger:Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;

    .line 18
    new-instance v0, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->accountSelectionLogger:Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;

    .line 19
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->displayCartLogger:Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;

    .line 20
    new-instance v0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->onlineAuthLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

    .line 21
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/PinEntryLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->pinEntryLogger:Lcom/stripe/paymentcollection/metrics/PinEntryLogger;

    .line 22
    new-instance v0, Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->removeCardLogger:Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;

    .line 23
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->waitForPosCommand:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;

    .line 24
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->waitForCardPresent:Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;

    .line 25
    new-instance v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->kernelProcessingLogger:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;

    .line 26
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->dynamicCurrencyConversionLogger:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;

    .line 27
    new-instance v0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->nonCardPaymentMethodSelectionLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;

    .line 29
    new-instance v0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->nonCardPaymentMethodActionRequiredLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;

    return-void
.end method


# virtual methods
.method public closeAccountSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->accountSelectionLogger:Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public closeApplicationSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->applicationSelectionLogger:Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public closeDisplayCartLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayCartResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->displayCartLogger:Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V

    return-void
.end method

.method public closeDynamicCurrencyConversionSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->dynamicCurrencyConversionLogger:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public closeNonCardPaymentMethodActionRequiredLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->nonCardPaymentMethodActionRequiredLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public closeNonCardPaymentMethodSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->nonCardPaymentMethodSelectionLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public closeOnlineAuthenticationLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 1

    const-string v0, "authState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->onlineAuthLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-void
.end method

.method public closePinEntryLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->pinEntryLogger:Lcom/stripe/paymentcollection/metrics/PinEntryLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/paymentcollection/metrics/PinEntryLogger;->closeLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V

    return-void
.end method

.method public closeRemoveCardLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->removeCardLogger:Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public closeWaitForCardPresentLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->waitForCardPresent:Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public closeWaitForPosCommandLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->waitForPosCommand:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    return-void
.end method

.method public onCancel(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DisplayCartResult;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->closeDisplayCartLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->closeWaitForPosCommandLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    .line 125
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->closeOnlineAuthenticationLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->closeWaitForCardPresentLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public onHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->kernelProcessingLogger:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->onHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public onHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->kernelProcessingLogger:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->onHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public openAccountSelectionLog()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->accountSelectionLogger:Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;->openLog()V

    return-void
.end method

.method public openApplicationSelectionLog()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->applicationSelectionLogger:Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/ApplicationSelectionLogger;->openLog()V

    return-void
.end method

.method public openDisplayCartLog()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->displayCartLogger:Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;->openLog()V

    return-void
.end method

.method public openDynamicCurrencyConversionSelectionLog()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->dynamicCurrencyConversionLogger:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;->openLog()V

    return-void
.end method

.method public openNonCardPaymentMethodActionRequiredLog()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->nonCardPaymentMethodActionRequiredLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;->openLog()V

    return-void
.end method

.method public openNonCardPaymentMethodSelectionLog()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->nonCardPaymentMethodSelectionLogger:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;->openLog()V

    return-void
.end method

.method public openOnlineAuthenticationLog(Lcom/stripe/paymentcollection/OnlineAuthType;)V
    .locals 1

    const-string v0, "authType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->onlineAuthLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->openLog(Lcom/stripe/paymentcollection/OnlineAuthType;)V

    return-void
.end method

.method public openPinEntryLog()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->pinEntryLogger:Lcom/stripe/paymentcollection/metrics/PinEntryLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/PinEntryLogger;->openLog()V

    return-void
.end method

.method public openRemoveCardLog()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->removeCardLogger:Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;->openLog()V

    return-void
.end method

.method public openWaitForCardPresentLog()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->waitForCardPresent:Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;->openLog()V

    return-void
.end method

.method public openWaitForPosCommandLog(Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
    .locals 1

    const-string v0, "pendingCommand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;->waitForPosCommand:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->openLog(Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    return-void
.end method
