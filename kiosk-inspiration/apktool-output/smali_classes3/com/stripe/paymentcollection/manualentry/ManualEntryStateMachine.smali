.class public final Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;
.super Lcom/stripe/statemachine/StateMachine;
.source "ManualEntryStateMachine.kt"

# interfaces
.implements Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine<",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        ">;",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualEntryStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualEntryStateMachine.kt\ncom/stripe/paymentcollection/manualentry/ManualEntryStateMachine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1855#2,2:297\n*S KotlinDebug\n*F\n+ 1 ManualEntryStateMachine.kt\ncom/stripe/paymentcollection/manualentry/ManualEntryStateMachine\n*L\n70#1:297,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004BU\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!H\u0002J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\'H\u0002J8\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020*2\u0006\u0010.\u001a\u00020*2\u0006\u0010/\u001a\u00020*H\u0016J\u0008\u00100\u001a\u00020#H\u0016J\u001a\u00101\u001a\u00020#2\u0008\u00102\u001a\u0004\u0018\u00010*2\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020#2\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020:H\u0016J.\u0010;\u001a\u00020#2\u0006\u0010<\u001a\u00020\u00022\u0008\u0010=\u001a\u0004\u0018\u00010\u00022\u0008\u0010 \u001a\u0004\u0018\u00010\u00032\u0008\u0010>\u001a\u0004\u0018\u00010*H\u0014J\u0008\u0010?\u001a\u00020#H\u0002J\u0006\u0010@\u001a\u00020#J\u000e\u0010A\u001a\u00020#2\u0006\u0010B\u001a\u00020CJ>\u0010D\u001a\u00020#2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0016\u0010M\u001a\u0012\u0012\u0004\u0012\u00020O\u0012\u0004\u0012\u00020#0Nj\u0002`PR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u001b8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001eR\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
        "Lcom/stripe/statemachine/StateMachine;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        "emptyHandler",
        "Lcom/stripe/paymentcollection/manualentry/EmptyHandler;",
        "configureReaderHandler",
        "Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;",
        "zipCodeHandler",
        "Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;",
        "confirmDetailsHandler",
        "Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;",
        "panEntryHandler",
        "Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;",
        "expiryDateEntryHandler",
        "Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;",
        "cvvEntryHandler",
        "Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;",
        "finishedHandler",
        "Lcom/stripe/paymentcollection/manualentry/FinishedHandler;",
        "manualEntryLogger",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/manualentry/EmptyHandler;Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;Lcom/stripe/paymentcollection/manualentry/FinishedHandler;Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "isActive",
        "",
        "isActive$annotations",
        "()V",
        "()Z",
        "isEncryptedDataValid",
        "data",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;",
        "notifyHardwareCancel",
        "",
        "notifyMerchantCancel",
        "onCollectionFailed",
        "failureReason",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
        "onEncryptedDataCollected",
        "encPAN",
        "",
        "expiryDate",
        "encCVV",
        "maskedPan",
        "ksn",
        "posEntryMode",
        "onInvalidInput",
        "onRequestDisplayAsterisk",
        "unmaskedDigits",
        "numOfAsterisk",
        "",
        "onRequestManualEntry",
        "type",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryType;",
        "onReturnTransactionResult",
        "transactionResult",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "onStateChanging",
        "to",
        "from",
        "reason",
        "registerHandlers",
        "reset",
        "setManualEntryResult",
        "manualEntryResult",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;",
        "startTransaction",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "resultListener",
        "Lkotlin/Function1;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultListener;",
        "public_release"
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
.field private final configureReaderHandler:Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;

.field private final confirmDetailsHandler:Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;

.field private final cvvEntryHandler:Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;

.field private final emptyHandler:Lcom/stripe/paymentcollection/manualentry/EmptyHandler;

.field private final expiryDateEntryHandler:Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;

.field private final finishedHandler:Lcom/stripe/paymentcollection/manualentry/FinishedHandler;

.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

.field private final manualEntryLogger:Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

.field private final panEntryHandler:Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;

.field private final zipCodeHandler:Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/manualentry/EmptyHandler;Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;Lcom/stripe/paymentcollection/manualentry/FinishedHandler;Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "emptyHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configureReaderHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipCodeHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmDetailsHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panEntryHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiryDateEntryHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvvEntryHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishedHandler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryLogger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/stripe/statemachine/StateMachine;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->emptyHandler:Lcom/stripe/paymentcollection/manualentry/EmptyHandler;

    .line 20
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->configureReaderHandler:Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;

    .line 21
    iput-object p3, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->zipCodeHandler:Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    .line 22
    iput-object p4, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->confirmDetailsHandler:Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;

    .line 23
    iput-object p5, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->panEntryHandler:Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;

    .line 24
    iput-object p6, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->expiryDateEntryHandler:Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;

    .line 25
    iput-object p7, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->cvvEntryHandler:Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;

    .line 26
    iput-object p8, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->finishedHandler:Lcom/stripe/paymentcollection/manualentry/FinishedHandler;

    .line 27
    iput-object p9, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->manualEntryLogger:Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    .line 28
    iput-object p10, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [Lkotlin/Pair;

    const-string p2, "registerHandlers"

    invoke-interface {p10, p2, p1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    invoke-direct {p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->registerHandlers()V

    .line 35
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine;

    sget-object p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EMPTY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-static {p1, p2, p3, p4, p3}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic isActive$annotations()V
    .locals 0
    .annotation runtime Lcom/stripe/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final isEncryptedDataValid(Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;)Z
    .locals 5

    .line 201
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getEncCVV()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getEncPAN()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getExpiryDate()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getKsn()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 207
    iget-object v2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid encrypted data result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v2, p1, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_1
    return v0
.end method

.method private final onCollectionFailed(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V
    .locals 19

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getState()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-nez v12, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/16 v17, 0x73ff

    const/16 v18, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    .line 278
    invoke-static/range {v1 .. v18}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 277
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    return-void
.end method

.method private final registerHandlers()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 297
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 71
    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 79
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->finishedHandler:Lcom/stripe/paymentcollection/manualentry/FinishedHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 78
    :pswitch_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->cvvEntryHandler:Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 77
    :pswitch_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->expiryDateEntryHandler:Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 76
    :pswitch_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->panEntryHandler:Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 75
    :pswitch_4
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->confirmDetailsHandler:Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 74
    :pswitch_5
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->zipCodeHandler:Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 73
    :pswitch_6
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->configureReaderHandler:Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    goto :goto_1

    .line 72
    :pswitch_7
    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->emptyHandler:Lcom/stripe/paymentcollection/manualentry/EmptyHandler;

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;

    .line 80
    :goto_1
    move-object v2, p0

    check-cast v2, Lcom/stripe/statemachine/StateMachine;

    invoke-virtual {v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->register(Lcom/stripe/statemachine/StateMachine;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final isActive()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EMPTY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyHardwareCancel()V
    .locals 1

    .line 160
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->USER_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->onCollectionFailed(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V

    return-void
.end method

.method public final notifyMerchantCancel()V
    .locals 1

    .line 153
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->onCollectionFailed(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V

    return-void
.end method

.method public onEncryptedDataCollected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "encPAN"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expiryDate"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "encCVV"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maskedPan"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ksn"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "posEntryMode"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 175
    :cond_1
    new-instance v12, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    move-object v2, v12

    invoke-direct/range {v2 .. v8}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {v0, v12}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isEncryptedDataValid(Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v18, 0x7dff

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    .line 188
    invoke-static/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v2, v1

    .line 193
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 194
    sget-object v14, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->INVALID_ENCRYPTED_DATA_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const/16 v18, 0x71ff

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 191
    invoke-static/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    return-void
.end method

.method public onInvalidInput()V
    .locals 20

    move-object/from16 v0, p0

    .line 214
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    iget-object v1, v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->manualEntryLogger:Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    invoke-interface {v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;->onInvalidInput(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    .line 217
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-eqz v2, :cond_3

    const/16 v18, 0x3fff

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 223
    invoke-static/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 20

    move-object/from16 v0, p0

    .line 104
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-eqz v2, :cond_5

    const/16 v18, 0x3fef

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v7, p2

    .line 131
    invoke-static/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    .line 119
    :cond_3
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-eqz v2, :cond_5

    const/16 v18, 0x3fdf

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, p1

    .line 121
    invoke-static/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    .line 108
    :cond_4
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-eqz v2, :cond_5

    const/16 v18, 0x3ff3

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 110
    invoke-static/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onRequestManualEntry(Lcom/stripe/hardware/paymentcollection/ManualEntryType;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    .line 247
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine;

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CVV_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {p1, v0, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 246
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine;

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EXPIRY_DATE_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {p1, v0, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 245
    :cond_3
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine;

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->PAN_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {p1, v0, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V
    .locals 1

    const-string v0, "transactionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 256
    :cond_1
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 265
    sget-object p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->EARLY_TRANSACTION_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->onCollectionFailed(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V

    return-void

    .line 262
    :cond_2
    sget-object p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->DEVICE_FAILURE:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->onCollectionFailed(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V

    return-void

    .line 259
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->onCollectionFailed(Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;)V

    return-void
.end method

.method protected onStateChanging(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Ljava/lang/String;)V
    .locals 3

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    new-array p4, p4, [Lkotlin/Pair;

    invoke-interface {v0, p2, p4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 292
    iget-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->manualEntryLogger:Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    invoke-interface {p2, p3}, Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;->onExit(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    .line 293
    iget-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->manualEntryLogger:Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    invoke-interface {p2, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;->onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V

    return-void
.end method

.method public bridge synthetic onStateChanging(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    check-cast p3, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->onStateChanging(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Ljava/lang/String;)V

    return-void
.end method

.method public final reset()V
    .locals 4

    .line 39
    move-object v0, p0

    check-cast v0, Lcom/stripe/statemachine/StateMachine;

    sget-object v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->FINISHED:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setManualEntryResult(Lcom/stripe/hardware/paymentcollection/ManualEntryResult;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "manualEntryResult"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    if-nez v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    instance-of v2, v1, Lcom/stripe/hardware/paymentcollection/ZipCodeManualEntryResult;

    if-eqz v2, :cond_1

    .line 88
    check-cast v1, Lcom/stripe/hardware/paymentcollection/ZipCodeManualEntryResult;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/ZipCodeManualEntryResult;->getZipCode()Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x7ffd

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 87
    invoke-static/range {v3 .. v20}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_1
    sget-object v2, Lcom/stripe/hardware/paymentcollection/ConfirmPaymentFromManualEntryResult;->INSTANCE:Lcom/stripe/hardware/paymentcollection/ConfirmPaymentFromManualEntryResult;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v19, 0x6fff

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 94
    invoke-static/range {v3 .. v20}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->copy$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final startTransaction(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "amount"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionType"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "emvTransactionType"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "integrationType"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resultListener"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    const/16 v18, 0x5e3e

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, p5

    invoke-direct/range {v2 .. v19}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->updateData(Ljava/lang/Object;)V

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/stripe/statemachine/StateMachine;

    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIGURE_READER:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    const/4 v3, 0x2

    invoke-static {v1, v2, v4, v3, v4}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
