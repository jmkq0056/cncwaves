.class public final Lcom/stripe/cots/common/SimulatedCotsClient;
.super Ljava/lang/Object;
.source "SimulatedCotsClient.kt"

# interfaces
.implements Lcom/stripe/cots/common/CotsClientInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/common/SimulatedCotsClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 52\u00020\u0001:\u00015B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J@\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0096@\u00a2\u0006\u0002\u0010#J\u0018\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\'J\u000e\u0010(\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010)\u001a\u0004\u0018\u00010\u0010H\u0096@\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010*\u001a\u00020\u001bH\u0016J\u0016\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020-H\u0096@\u00a2\u0006\u0002\u0010.J\u0016\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u000201H\u0096@\u00a2\u0006\u0002\u00102J\u000e\u00103\u001a\u000204H\u0096@\u00a2\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/cots/common/SimulatedCotsClient;",
        "Lcom/stripe/cots/common/CotsClientInterface;",
        "context",
        "Landroid/content/Context;",
        "preFlightChecks",
        "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
        "simulatedEmvBlobProvider",
        "Lcom/stripe/cots/common/SimulatedEmvBlobProvider;",
        "(Landroid/content/Context;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/cots/common/SimulatedEmvBlobProvider;)V",
        "disconnectFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getDisconnectFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "isConnected",
        "reader",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "activate",
        "sessionToken",
        "",
        "rpcSessionToken",
        "clientType",
        "clientVersion",
        "deviceUuid",
        "countryCode",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelCollectPayment",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkDeviceCompatibility",
        "Lcom/stripe/cots/common/CotsError;",
        "collectPayment",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "parameters",
        "Lcom/stripe/cots/common/CotsCollectionParameters;",
        "(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectPin",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
        "amount",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disconnect",
        "discover",
        "initializeKeys",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setFakedContactlessOutcome",
        "fakedContactlessOutcomeType",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateReader",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/cots/common/SimulatedCotsClient$Companion;

.field public static final PARAMETERS:Ljava/lang/String; = "com.stripe.cots.simulator.SimulatedCotsClient.collectionparameters"

.field private static final shouldProceed:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final disconnectFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private final preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

.field private reader:Lcom/stripe/cots/aidlservice/CotsReader;

.field private final simulatedEmvBlobProvider:Lcom/stripe/cots/common/SimulatedEmvBlobProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/cots/common/SimulatedCotsClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/common/SimulatedCotsClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/common/SimulatedCotsClient;->Companion:Lcom/stripe/cots/common/SimulatedCotsClient$Companion;

    .line 132
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/common/SimulatedCotsClient;->shouldProceed:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/cots/common/SimulatedEmvBlobProvider;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preFlightChecks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatedEmvBlobProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    .line 22
    iput-object p3, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->simulatedEmvBlobProvider:Lcom/stripe/cots/common/SimulatedEmvBlobProvider;

    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->disconnectFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getShouldProceed$cp()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    .line 19
    sget-object v0, Lcom/stripe/cots/common/SimulatedCotsClient;->shouldProceed:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->isConnected:Z

    .line 54
    iget-object p1, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->reader:Lcom/stripe/cots/aidlservice/CotsReader;

    return-object p1
.end method

.method public cancelCollectPayment(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    sget-object p1, Lcom/stripe/cots/common/SimulatedCotsClient;->shouldProceed:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 106
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public checkDeviceCompatibility()Lcom/stripe/cots/common/CotsError;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    invoke-virtual {v0}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->getDeviceCompatibility()Lcom/stripe/cots/common/CotsError;

    move-result-object v0

    return-object v0
.end method

.method public collectPayment(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/common/CotsCollectionParameters;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;

    iget v3, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;-><init>(Lcom/stripe/cots/common/SimulatedCotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 63
    iget v4, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/cots/common/SimulatedCotsClient;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-boolean v1, v0, Lcom/stripe/cots/common/SimulatedCotsClient;->isConnected:Z

    if-eqz v1, :cond_6

    .line 67
    sget-object v1, Lcom/stripe/cots/common/SimulatedCotsClient;->shouldProceed:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 69
    iget-object v4, v0, Lcom/stripe/cots/common/SimulatedCotsClient;->context:Landroid/content/Context;

    .line 70
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 72
    iget-object v7, v0, Lcom/stripe/cots/common/SimulatedCotsClient;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 73
    const-string v8, "com.stripe.cots.simulator.SimulatedContactlessPaymentActivity"

    .line 71
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v7, "com.stripe.cots.simulator.SimulatedCotsClient.collectionparameters"

    move-object/from16 v8, p1

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 76
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {v4, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v0, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/stripe/cots/common/SimulatedCotsClient$collectPayment$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_4

    .line 82
    new-instance v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    .line 83
    sget-object v7, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PROCEED_ONLINE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 84
    iget-object v1, v2, Lcom/stripe/cots/common/SimulatedCotsClient;->simulatedEmvBlobProvider:Lcom/stripe/cots/common/SimulatedEmvBlobProvider;

    invoke-interface {v1}, Lcom/stripe/cots/common/SimulatedEmvBlobProvider;->getSimsulatedEmvBlob()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x30

    const/4 v14, 0x0

    .line 82
    const-string v9, "fakeEncryptedTrack2"

    const-string v10, "fakeCryptogram"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_4
    if-nez v1, :cond_5

    .line 90
    new-instance v7, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    .line 91
    sget-object v8, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CANCELED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    const/16 v14, 0x30

    const/4 v15, 0x0

    .line 90
    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v15}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_5
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 64
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t collectPayment from CotsReader. CotsService not connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public collectPin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    new-instance p1, Lkotlin/NotImplementedError;

    const-string p2, "collectPin is not implemented in SimulatedCotsClient"

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->isConnected:Z

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public discover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/stripe/cots/common/SimulatedCotsClient;->checkDeviceCompatibility()Lcom/stripe/cots/common/CotsError;

    move-result-object p1

    .line 31
    sget-object v0, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    if-eq p1, v0, :cond_0

    .line 32
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader;

    invoke-static {p1}, Lcom/stripe/cots/common/CotsErrorKt;->toProto(Lcom/stripe/cots/common/CotsError;)Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/stripe/cots/aidlservice/CotsReader;-><init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->reader:Lcom/stripe/cots/aidlservice/CotsReader;

    if-nez p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/stripe/cots/common/SimulatedCotsClient;

    .line 35
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsReader;

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "toString(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->NONE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/stripe/cots/aidlservice/CotsReader;-><init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->reader:Lcom/stripe/cots/aidlservice/CotsReader;

    return-object v0

    :cond_1
    return-object p1
.end method

.method public getDisconnectFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->disconnectFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public initializeKeys()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/stripe/cots/common/SimulatedCotsClient;->preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    invoke-virtual {v0}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->initialize()V

    return-void
.end method

.method public killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    new-instance p1, Lkotlin/NotImplementedError;

    const-string p2, "killAidlServer is not implemented in SimulatedCotsClient"

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    new-instance p1, Lkotlin/NotImplementedError;

    const-string p2, "setFakedContactlessOutcome is not implemented in SimulatedCotsClient"

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateReader(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    new-instance p1, Lkotlin/NotImplementedError;

    const-string v0, "updateReader is not implemented in SimulatedCotsClient"

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
