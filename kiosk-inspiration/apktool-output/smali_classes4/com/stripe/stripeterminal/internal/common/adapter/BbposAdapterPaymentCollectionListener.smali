.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;
.super Ljava/lang/Object;
.source "BbposAdapterPaymentCollectionListener.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/PaymentCollectionListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapterPaymentCollectionListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapterPaymentCollectionListener.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1855#2,2:249\n1#3:251\n*S KotlinDebug\n*F\n+ 1 BbposAdapterPaymentCollectionListener.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener\n*L\n83#1:249,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\r2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J$\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\"2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J*\u0010%\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020&2\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010+\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020,2\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0)\u0012\u0004\u0012\u00020\r0(H\u0016J\u0010\u0010.\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\r2\u0006\u0010\u0018\u001a\u000201H\u0016J*\u00102\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002032\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u00104\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002052\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u00106\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002072\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u00108\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002092\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020:0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010;\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020<2\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=0)\u0012\u0004\u0012\u00020\r0(H\u0016J\"\u0010>\u001a\u00020\r2\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010?\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020@2\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010B\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020C2\u0018\u0010D\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J\u0010\u0010E\u001a\u00020\r2\u0006\u0010F\u001a\u00020GH\u0016J*\u0010H\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020I2\u0018\u0010\'\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020J0)\u0012\u0004\u0012\u00020\r0(H\u0016J\u0012\u0010K\u001a\u00020L*\u0008\u0012\u0004\u0012\u00020N0MH\u0002R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "onAdditionalReaderDisplayMessage",
        "",
        "message",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "onCancelled",
        "onCardStateUpdate",
        "cardState",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "onChargeSummary",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "onCollectionComplete",
        "model",
        "Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;",
        "onInterstitial",
        "language",
        "",
        "onNonCardPaymentMethodLoading",
        "paymentMethodType",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "onProcessing",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "onRequestAccountTypeSelection",
        "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;",
        "onCompletion",
        "Lkotlin/Function1;",
        "Lcom/stripe/hardware/paymentcollection/Disposition;",
        "Lcom/stripe/hardware/emv/AccountType;",
        "onRequestApplicationSelection",
        "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;",
        "",
        "onRequestCardRemoval",
        "Lcom/stripe/hardware/paymentcollection/RemoveCardModel;",
        "onRequestDisplayCart",
        "Lcom/stripe/hardware/paymentcollection/DisplayCartModel;",
        "onRequestDisplayNonCardPaymentMethodActionRequired",
        "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;",
        "onRequestDisplayNonCardPaymentMethodsSelection",
        "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;",
        "onRequestDisplayRecoverableError",
        "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;",
        "onRequestDynamicCurrencySelection",
        "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
        "",
        "onRequestManualEntry",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;",
        "onRequestMerchantUiFinished",
        "onRequestPaymentMethodCollection",
        "Lcom/stripe/hardware/paymentcollection/CollectionModel;",
        "Lcom/stripe/hardware/paymentcollection/PaymentMethodCollectionResult;",
        "onRequestPinEntry",
        "Lcom/stripe/hardware/paymentcollection/PinEntryModel;",
        "onCancelation",
        "onRequestProduceAudioTone",
        "audioAlertType",
        "Lcom/stripe/hardware/status/AudioAlertType;",
        "onRequestTippingSelection",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
        "toReaderInputOptions",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "adapter_release"
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
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 45
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 46
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final toReaderInputOptions(Ljava/util/Set;)Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    check-cast p1, Ljava/lang/Iterable;

    .line 249
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    .line 84
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListenerKt;->translateReaderType(Lcom/stripe/hardware/ReaderConfiguration$ReaderType;)Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->NONE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    new-instance p1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public onAdditionalReaderDisplayMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdditionalReaderDisplayMessage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 169
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderDisplayMessageMaker$Companion;->fromCoreObject(Lcom/stripe/hardware/status/ReaderDisplayMessage;)Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->requestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onCancelled()V
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v1, "onCancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
    .locals 3

    const-string v0, "onCardStateUpdate "

    monitor-enter p0

    :try_start_0
    const-string v1, "cardState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 178
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getCardStatusFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    .line 180
    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne v0, v1, :cond_1

    .line 181
    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq p1, v1, :cond_0

    .line 182
    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_CORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne p1, v1, :cond_1

    .line 185
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderEvent;->CARD_INSERTED:Lcom/stripe/stripeterminal/external/models/ReaderEvent;

    goto :goto_0

    .line 187
    :cond_1
    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq v0, v1, :cond_2

    .line 188
    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_CORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne v0, v1, :cond_3

    .line 190
    :cond_2
    sget-object v0, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne p1, v0, :cond_3

    .line 192
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderEvent;->CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/ReaderEvent;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1, p1}, Lcom/stripe/core/transaction/TransactionRepository;->updateCardStatus(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    if-eqz v0, :cond_4

    .line 198
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportReaderEvent(Lcom/stripe/stripeterminal/external/models/ReaderEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onChargeSummary(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 3

    const-string v0, "onChargeSummary "

    monitor-enter p0

    :try_start_0
    const-string v1, "chargeAttempt"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {v1, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onCollectionComplete(Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;)V
    .locals 3

    const-string v0, "onCollectionComplete "

    monitor-enter p0

    :try_start_0
    const-string v1, "model"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {v1, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onInterstitial(Ljava/lang/String;)V
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "onInterstitial"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public declared-synchronized onNonCardPaymentMethodLoading(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "paymentMethodType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "onNonCardPaymentMethodLoading"

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onProcessing(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p2, "transactionType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onProcessing"

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestAccountTypeSelection(Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestAccountTypeSelection"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestApplicationSelection(Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestApplicationSelection"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestCardRemoval(Lcom/stripe/hardware/paymentcollection/RemoveCardModel;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "onRequestCardRemoval"

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestDisplayCart(Lcom/stripe/hardware/paymentcollection/DisplayCartModel;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "onRequestDisplayCart"

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestDisplayNonCardPaymentMethodActionRequired(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestDisplayNonCardPaymentMethodActionRequired"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestDisplayNonCardPaymentMethodsSelection(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestDisplayNonCardPaymentMethodsSelection"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestDisplayRecoverableError(Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestDisplayRecoverableError"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestDynamicCurrencySelection(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestDynamicCurrencySelection"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRequestManualEntry(Lcom/stripe/hardware/paymentcollection/ManualEntryModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    const-string v0, "onRequestManualEntry"

    invoke-interface {p1, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onRequestMerchantUiFinished(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCompletion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "onRequestMerchantUiFinished"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public declared-synchronized onRequestPaymentMethodCollection(Lcom/stripe/hardware/paymentcollection/CollectionModel;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/CollectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/PaymentMethodCollectionResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompletion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "onRequestPaymentMethodCollection"

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p2, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 70
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/CollectionModel;->getReaderActiveInterfaces()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->toReaderInputOptions(Ljava/util/Set;)Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->requestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestPinEntry(Lcom/stripe/hardware/paymentcollection/PinEntryModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/PinEntryModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCancelation"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestPinEntry"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/hardware/status/AudioAlertType;)V
    .locals 2

    const-string v0, "audioAlertType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "onRequestProduceAudioTone"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public declared-synchronized onRequestTippingSelection(Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onCompletion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "onRequestTippingSelection"

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
