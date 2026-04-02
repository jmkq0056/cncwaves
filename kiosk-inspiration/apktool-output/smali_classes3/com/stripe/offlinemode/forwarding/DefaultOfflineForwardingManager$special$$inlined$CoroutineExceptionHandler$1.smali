.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;-><init>(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 DefaultOfflineForwardingManager.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager\n*L\n1#1,106:1\n77#2,12:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "kotlinx-coroutines-core"
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
.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V
    .locals 0

    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    .line 44
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 4

    .line 107
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object p1

    const/4 v0, 0x1

    .line 110
    new-array v0, v0, [Lkotlin/Pair;

    instance-of v1, p2, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;

    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "NotifyIntegration"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 109
    const-string v2, "Forwarding stopped/halted."

    .line 107
    invoke-interface {p1, v2, p2, v0}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 112
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->endSession()V

    if-nez v1, :cond_1

    .line 115
    instance-of p1, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getListener$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    move-result-object p1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-interface {p1, p2}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getListener$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->toTerminalException$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_1
    return-void
.end method
