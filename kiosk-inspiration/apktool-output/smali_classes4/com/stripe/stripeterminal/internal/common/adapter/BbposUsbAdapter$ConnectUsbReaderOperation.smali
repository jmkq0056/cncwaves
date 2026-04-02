.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;
.source "BbposUsbAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectUsbReaderOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "execute",
        "onConnectDevice",
        "",
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
.field private device:Landroid/hardware/usb/UsbDevice;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V
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

    .line 338
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 339
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 338
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-void
.end method


# virtual methods
.method public execute()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 346
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->device:Landroid/hardware/usb/UsbDevice;

    .line 347
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v2

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    invoke-virtual {v2, v0}, Lcom/stripe/core/readerconnection/ConnectionManager;->startConnect(Lcom/stripe/core/hardware/Reader;)V

    .line 348
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->update()V

    .line 349
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    .line 350
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation$execute$1$1;

    invoke-direct {v2, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation$execute$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)V

    check-cast v2, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;

    .line 349
    invoke-virtual {v0, v2}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->setSessionTokenListener(Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;)V

    .line 345
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    move-object v1, p0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;

    .line 357
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 358
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 357
    const-string v4, "Connect reader requires usbDevice"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 356
    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->execute()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public onConnectDevice(Lcom/stripe/core/hardware/Reader;)V
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected reader type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->startReaderInfo()V

    .line 371
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->update()V

    return-void
.end method

.method public onReportReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "info"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    .line 376
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    invoke-virtual {v3}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v1, v4}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v4

    .line 378
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->device:Landroid/hardware/usb/UsbDevice;

    const v19, 0xfff4

    const/16 v20, 0x0

    const/4 v5, 0x0

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

    .line 375
    invoke-static/range {v2 .. v20}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    .line 380
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    const/4 v3, 0x2

    .line 382
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "reader_software_version"

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 383
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "unavailable"

    :cond_2
    const-string v6, "reader_battery_level"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x0

    .line 380
    invoke-interface {v2, v4, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 386
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->emvTransactionTypeForDeviceType(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v2

    .line 387
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    new-instance v4, Lcom/stripe/transaction/Settings;

    invoke-direct {v4, v2, v5}, Lcom/stripe/transaction/Settings;-><init>(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V

    invoke-virtual {v3, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->setSettings(Lcom/stripe/transaction/Settings;)V

    .line 389
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 390
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->update()V

    .line 391
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;->set(Ljava/lang/Object;)V

    return-void
.end method
