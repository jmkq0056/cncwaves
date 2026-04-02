.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;
.source "BbposBluetoothAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReconnectBluetoothReaderOperation"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposBluetoothAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,630:1\n1#2:631\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "healthLoggerTags",
        "",
        "",
        "pendingTimer",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "reconnectJob",
        "Lkotlinx/coroutines/Job;",
        "cancel",
        "",
        "execute",
        "failReconnection",
        "onConnectDevice",
        "Lcom/stripe/core/hardware/Reader;",
        "onReportReaderInfo",
        "info",
        "Lcom/stripe/hardware/status/ReaderInfo;",
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
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private healthLoggerTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private reconnectJob:Lkotlinx/coroutines/Job;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 416
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 415
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 421
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$failReconnection(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->failReconnection()V

    return-void
.end method

.method public static final synthetic access$getHealthLoggerTags$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;)Ljava/util/Map;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    return-object p0
.end method

.method private final failReconnection()V
    .locals 8

    .line 469
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getDeviceController$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->disconnectBt()V

    .line 470
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 471
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 472
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 471
    const-string v3, "Bluetooth reconnection failed."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 470
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 476
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectivityHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->pendingTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    sget-object v0, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v3, v0

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    const/16 v6, 0x8

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    const-string v1, "reconnection_outcome"

    const-string v2, "cancelled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 462
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->failReconnection()V

    :cond_0
    return-void
.end method

.method public execute()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 10

    .line 480
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectivityHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->pendingTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 481
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getReconnectionMaxTimeoutInSeconds$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    const-string v2, "maxTimeoutInSeconds"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getReconnectionMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    const-string v2, "maxAttempts"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->requireHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->reconnectJob:Lkotlinx/coroutines/Job;

    .line 548
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->execute()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public onConnectDevice(Lcom/stripe/core/hardware/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    check-cast p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    .line 425
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->startReaderInfo()V

    .line 426
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    return-void
.end method

.method public onReportReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "info"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 431
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    .line 432
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    .line 433
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_0

    .line 434
    sget-object v6, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v6, v5}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->nameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 435
    :cond_0
    invoke-virtual {v3}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    .line 432
    :cond_1
    invoke-virtual {v4, v5}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v4

    .line 438
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    const v19, 0xfff8

    const/16 v20, 0x0

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

    .line 431
    invoke-static/range {v2 .. v20}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    .line 440
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reader reconnected:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lkotlin/Pair;

    invoke-interface {v3, v4, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 441
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectivityHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v6

    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->pendingTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    sget-object v3, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v8, v3

    check-cast v8, Lcom/stripe/loggingmodels/Outcome;

    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->healthLoggerTags:Ljava/util/Map;

    const/16 v11, 0x8

    invoke-static/range {v6 .. v12}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 442
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 443
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    .line 444
    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->set(Ljava/lang/Object;)V

    .line 448
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    move-object v3, v1

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {v2, v3}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-static {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 430
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 449
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 450
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 451
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 450
    const-string v4, "Connect reader failed unexpectedly"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 449
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_3
    return-void
.end method
