.class public final Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;
.super Ljava/lang/Object;
.source "AidlServiceConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAidlServiceConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AidlServiceConnection.kt\ncom/stripe/core/aidlrpcclient/AidlServiceConnection\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,108:1\n148#2:109\n*S KotlinDebug\n*F\n+ 1 AidlServiceConnection.kt\ncom/stripe/core/aidlrpcclient/AidlServiceConnection\n*L\n27#1:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 &2\u00020\u0001:\u0001&B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0008\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018J\u0012\u0010\u001d\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010 \u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0018\u0010!\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010%\u001a\u00020\u001bR(\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r8@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;",
        "Landroid/content/ServiceConnection;",
        "connectionListener",
        "Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;",
        "connectionOwner",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "value",
        "Lcom/stripe/core/aidlrpc/AidlRpc;",
        "aidlService",
        "getAidlService$aidlrpcclient_release",
        "()Lcom/stripe/core/aidlrpc/AidlRpc;",
        "setAidlService$aidlrpcclient_release",
        "(Lcom/stripe/core/aidlrpc/AidlRpc;)V",
        "aidlServiceFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "aidlServiceMutableFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "isServiceConnected",
        "",
        "()Z",
        "disconnectFromService",
        "",
        "unexpected",
        "onBindingDied",
        "componentName",
        "Landroid/content/ComponentName;",
        "onNullBinding",
        "onServiceConnected",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "waitForServiceConnected",
        "Companion",
        "aidlrpcclient_release"
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
.field private static final CONNECTION_TIMEOUT_MS:J = 0xea60L

.field public static final Companion:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$Companion;


# instance fields
.field private final aidlServiceFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/aidlrpc/AidlRpc;",
            ">;"
        }
    .end annotation
.end field

.field private final aidlServiceMutableFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/core/aidlrpc/AidlRpc;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionListener:Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;

.field private final connectionOwner:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->Companion:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;",
            "Ljava/lang/String;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionListener:Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;

    .line 26
    iput-object p2, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionOwner:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->aidlServiceMutableFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->aidlServiceFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 27
    sget-object p3, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 109
    const-class p4, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    invoke-virtual {p3, p4}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object p3

    check-cast p3, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;-><init>(Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-void
.end method

.method public static final synthetic access$getAidlServiceFlow$p(Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->aidlServiceFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method


# virtual methods
.method public final disconnectFromService(Z)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x2

    .line 60
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectionOwner"

    iget-object v3, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionOwner:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 61
    const-string v2, "unexpected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 58
    const-string v2, "disconnectFromService()"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->setAidlService$aidlrpcclient_release(Lcom/stripe/core/aidlrpc/AidlRpc;)V

    .line 64
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionListener:Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;

    invoke-interface {v0, p1}, Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;->onDisconnect(Z)V

    return-void
.end method

.method public final getAidlService$aidlrpcclient_release()Lcom/stripe/core/aidlrpc/AidlRpc;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->aidlServiceFlow:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/aidlrpc/AidlRpc;

    return-object v0
.end method

.method public final isServiceConnected()Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->getAidlService$aidlrpcclient_release()Lcom/stripe/core/aidlrpc/AidlRpc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 88
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x2

    .line 90
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectionOwner"

    iget-object v3, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionOwner:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 91
    const-string v2, "componentName"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 88
    const-string p1, "onBindingDied()"

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 97
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x2

    .line 99
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectionOwner"

    iget-object v3, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionOwner:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 100
    const-string v2, "componentName"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 97
    const-string p1, "onNullBinding()"

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "service"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "connectionOwner"

    iget-object v4, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionOwner:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 71
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v3

    .line 68
    const-string p1, "onServiceConnected()"

    invoke-interface {v1, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 73
    invoke-static {p2}, Lcom/stripe/core/aidlrpc/AidlRpc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stripe/core/aidlrpc/AidlRpc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->setAidlService$aidlrpcclient_release(Lcom/stripe/core/aidlrpc/AidlRpc;)V

    .line 74
    iget-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionListener:Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;

    invoke-interface {p1}, Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;->onConnect()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x2

    .line 80
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "connectionOwner"

    iget-object v4, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->connectionOwner:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 81
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 78
    const-string p1, "onServiceDisconnected()"

    invoke-interface {v1, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->disconnectFromService(Z)V

    return-void
.end method

.method public final setAidlService$aidlrpcclient_release(Lcom/stripe/core/aidlrpc/AidlRpc;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->aidlServiceMutableFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final waitForServiceConnected()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->getAidlService$aidlrpcclient_release()Lcom/stripe/core/aidlrpc/AidlRpc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$waitForServiceConnected$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection$waitForServiceConnected$1;-><init>(Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
