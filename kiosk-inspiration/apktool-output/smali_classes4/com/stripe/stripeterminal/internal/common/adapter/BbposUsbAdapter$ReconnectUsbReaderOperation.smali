.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;
.source "BbposUsbAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReconnectUsbReaderOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "reconnectJob",
        "Lkotlinx/coroutines/Job;",
        "reconnector",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;",
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
.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private reconnectJob:Lkotlinx/coroutines/Job;

.field private final reconnector:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 209
    move-object v0, p1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 208
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 211
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    .line 212
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v2

    .line 213
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectivityHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v3

    .line 214
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v4

    .line 215
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getScheduler$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v5

    .line 216
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getReconnectionMaxTimeoutInSeconds$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Integer;

    move-result-object v6

    .line 217
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getReconnectionMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Integer;

    move-result-object v7

    .line 218
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getAttemptDelayMillis$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Long;

    move-result-object v8

    .line 211
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;-><init>(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lio/reactivex/rxjava3/core/Scheduler;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->reconnector:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    return-void
.end method

.method public static final synthetic access$failReconnection(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->failReconnection()V

    return-void
.end method

.method public static final synthetic access$getReader$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object p0
.end method

.method public static final synthetic access$getReconnector$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->reconnector:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    return-object p0
.end method

.method private final failReconnection()V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getDeviceController$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->stopUsb()V

    .line 269
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "USB reconnection failed."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 230
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->failReconnection()V

    :cond_0
    return-void
.end method

.method public execute()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->reconnectJob:Lkotlinx/coroutines/Job;

    .line 263
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->execute()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public onConnectDevice(Lcom/stripe/core/hardware/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReportReaderInfo(Lcom/stripe/hardware/status/ReaderInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
