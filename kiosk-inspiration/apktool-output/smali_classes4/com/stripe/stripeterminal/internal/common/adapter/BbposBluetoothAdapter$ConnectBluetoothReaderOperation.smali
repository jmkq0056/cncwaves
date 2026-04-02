.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;
.source "BbposBluetoothAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectBluetoothReaderOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposBluetoothAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,630:1\n1#2:631\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "execute",
        "onConnectDevice",
        "",
        "Lcom/stripe/core/hardware/Reader;",
        "onReportReaderInfo",
        "info",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "saveDeviceNameSerialMapping",
        "startConnect",
        "startConnectWithManualBonding",
        "bluetoothDevice",
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

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

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

    .line 272
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 273
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 272
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-void
.end method

.method public static final synthetic access$startConnect(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->startConnect()V

    return-void
.end method

.method private final saveDeviceNameSerialMapping(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;

    .line 394
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v2, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->nameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 396
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 397
    :cond_2
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getBluetoothDeviceNameRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;->saveDeviceSerialMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 393
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 399
    :goto_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Failed to save bluetooth reader name <> serial mapping."

    invoke-interface {v0, p1, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_4
    return-void
.end method

.method private final startConnect()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    .line 351
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    .line 352
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnect$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)V

    check-cast v1, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;

    .line 351
    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->setSessionTokenListener(Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;)V

    return-void
.end method

.method private final startConnectWithManualBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 360
    sget-object v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->bondStateFromDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startConnectWithManualBonding no-op, bluetoothDevice.bondState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    sget-object v2, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v2, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->bondStateFromDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 374
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    .line 373
    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->startConnect()V

    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getBluetoothBondStateReceiver$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1;

    invoke-direct {v1, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 363
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$2;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-direct {v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p1, v1, v2}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->startListening(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 370
    sget-object v0, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->createBondWithDevice(Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method


# virtual methods
.method public execute()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 280
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/hardware/Reader;

    invoke-virtual {v1, v2}, Lcom/stripe/core/readerconnection/ConnectionManager;->startConnect(Lcom/stripe/core/hardware/Reader;)V

    .line 282
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->startConnect()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/core/hardware/Reader$BluetoothReader;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->startConnectWithManualBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 279
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 292
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 293
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 292
    const-string v3, "Connect reader failed unexpectedly"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 291
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->execute()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public onConnectDevice(Lcom/stripe/core/hardware/Reader;)V
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 304
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 305
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 304
    const-string v3, "Unexpected reader type"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getBluetoothBondStateReceiver$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->stopListening()V

    .line 311
    check-cast p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    .line 312
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->startReaderInfo()V

    .line 313
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    return-void
.end method

.method public onReportReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "info"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    move-object v4, v2

    .line 318
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    .line 319
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    .line 320
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_0

    .line 321
    sget-object v7, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v7, v6}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->nameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 322
    :cond_0
    invoke-virtual {v3}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, ""

    .line 319
    :cond_1
    invoke-virtual {v5, v6}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v5

    move-object v6, v4

    move-object v4, v5

    .line 325
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->device:Landroid/bluetooth/BluetoothDevice;

    const v19, 0xfff8

    const/16 v20, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v0, v21

    .line 318
    invoke-static/range {v2 .. v20}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    .line 327
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    const/4 v4, 0x2

    .line 329
    new-array v4, v4, [Lkotlin/Pair;

    const-string v5, "reader_software_version"

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 330
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "unavailable"

    :cond_3
    const-string v7, "reader_battery_level"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 327
    invoke-interface {v3, v0, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 333
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->emvTransactionTypeForDeviceType(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    .line 334
    new-instance v3, Lcom/stripe/transaction/Settings;

    invoke-direct {v3, v0, v6}, Lcom/stripe/transaction/Settings;-><init>(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V

    invoke-virtual {v1, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->setSettings(Lcom/stripe/transaction/Settings;)V

    .line 336
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 337
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    move-object/from16 v1, p0

    .line 339
    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->saveDeviceNameSerialMapping(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 340
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->set(Ljava/lang/Object;)V

    .line 317
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    move-object v1, v0

    move-object v0, v2

    :goto_0
    if-nez v2, :cond_5

    .line 341
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 342
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 343
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 342
    const-string v4, "Connect reader failed unexpectedly"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_5
    return-void
.end method
