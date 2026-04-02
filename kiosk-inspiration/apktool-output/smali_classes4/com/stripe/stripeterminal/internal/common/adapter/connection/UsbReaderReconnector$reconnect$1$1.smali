.class final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UsbReaderReconnector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$reconnect$1$1"
    f = "UsbReaderReconnector.kt"
    i = {
        0x0,
        0x0,
        0x2,
        0x4,
        0x4,
        0x6,
        0x6
    }
    l = {
        0x47,
        0x4a,
        0x5a,
        0x5b,
        0x64,
        0x68,
        0x6d
    }
    m = "invokeSuspend"
    n = {
        "$this$withTimeoutOrNull",
        "reconnectionAttempt",
        "reader",
        "$this$withTimeoutOrNull",
        "reconnectionAttempt",
        "$this$withTimeoutOrNull",
        "reconnectionAttempt"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$flow:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic $disconnectedUsbReader:Lcom/stripe/core/hardware/Reader$UsbReader;

.field final synthetic $reconnected:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader$UsbReader;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;",
            "Lcom/stripe/core/hardware/Reader$UsbReader;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedUsbReader:Lcom/stripe/core/hardware/Reader$UsbReader;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$reconnected:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedUsbReader:Lcom/stripe/core/hardware/Reader$UsbReader;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$reconnected:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader$UsbReader;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 65
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->I$0:I

    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->I$0:I

    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_2

    :pswitch_6
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->I$0:I

    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_1

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 68
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v7}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v7

    const-string v8, "Reconnect started, calling bbpos SDK"

    new-array v9, v6, [Lkotlin/Pair;

    invoke-interface {v7, v8, v9}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    move-object v7, v2

    move v2, v5

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v7}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 71
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v10, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedUsbReader:Lcom/stripe/core/hardware/Reader$UsbReader;

    check-cast v10, Lcom/stripe/core/hardware/Reader;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->I$0:I

    iput v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-static {v8, v9, v10, v11}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$attemptToReconnect(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_1

    goto/16 :goto_7

    .line 65
    :cond_1
    :goto_1
    check-cast v8, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;

    .line 72
    instance-of v9, v8, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader;

    if-eqz v9, :cond_7

    .line 74
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-static {v2, v7, v8}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getReaderInfo(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    goto/16 :goto_7

    .line 65
    :cond_2
    :goto_2
    move-object v8, v2

    check-cast v8, Lcom/stripe/hardware/status/ReaderInfo;

    .line 75
    sget-object v7, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;

    .line 76
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    invoke-virtual {v8}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, ""

    :cond_3
    invoke-virtual {v2, v9}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v9

    .line 78
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v11

    const v24, 0xfff4

    const/16 v25, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 75
    invoke-static/range {v7 .. v25}, Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;->withReaderInfo$default(Lcom/stripe/stripeterminal/internal/common/makers/KmpReaderMaker;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/stripeterminal/external/models/DeviceType;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/LocationStatus;Lcom/stripe/stripeterminal/external/models/Location;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    .line 80
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v7}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reader reconnected:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Lkotlin/Pair;

    invoke-interface {v7, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 83
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v7}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v7

    .line 85
    new-array v3, v3, [Lkotlin/Pair;

    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    const-string v10, "oldSerialNumber"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v6

    .line 86
    const-string v6, "newSerialNumber"

    invoke-virtual {v8}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v3, v5

    .line 83
    const-string v6, "serialNumber for reconnected reader has changed"

    invoke-interface {v7, v6, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 90
    :cond_4
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    sget-object v6, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-interface {v3, v6, v7}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    goto/16 :goto_7

    .line 91
    :cond_5
    :goto_3
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    new-instance v6, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;

    invoke-direct {v6, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;)V

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-interface {v3, v6, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_7

    .line 93
    :cond_6
    :goto_4
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$reconnected:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_9

    .line 97
    :cond_7
    instance-of v8, v8, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;

    if-eqz v8, :cond_0

    .line 99
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v8}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v8

    const-string v9, "Reconnect attempt failed. End connecting."

    new-array v10, v6, [Lkotlin/Pair;

    invoke-interface {v8, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 100
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    sget-object v9, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->I$0:I

    const/4 v11, 0x5

    iput v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-interface {v8, v9, v10}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_8

    goto :goto_7

    .line 102
    :cond_8
    :goto_5
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v8}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)I

    move-result v8

    if-lt v2, v8, :cond_a

    .line 104
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-interface {v2, v3, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_7

    .line 105
    :cond_9
    :goto_6
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->$reconnected:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_9

    .line 109
    :cond_a
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v8}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getAttemptDelay$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)J

    move-result-wide v8

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->I$0:I

    const/4 v11, 0x7

    iput v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->label:I

    invoke-static {v8, v9, v10}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_b

    :goto_7
    return-object v1

    .line 110
    :cond_b
    :goto_8
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {v8}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v8

    const-string v9, "Reconnect re-started, calling bbpos SDK"

    new-array v10, v6, [Lkotlin/Pair;

    invoke-interface {v8, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 116
    :cond_c
    :goto_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
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
