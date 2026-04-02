.class public final Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;
.super Ljava/lang/Object;
.source "ProxyCollectInputsResultCallback.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u000cJ\u0016\u0010\u0010\u001a\u00020\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;",
        "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;",
        "collectInputsResultCallback",
        "formsIntegrationLogger",
        "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
        "proxyCollectInputsResultCallbackLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onStart",
        "onSuccess",
        "results",
        "",
        "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;",
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
.field private final collectInputsResultCallback:Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;

.field private final formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

.field private final proxyCollectInputsResultCallbackLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
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
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "collectInputsResultCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formsIntegrationLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyCollectInputsResultCallbackLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->collectInputsResultCallback:Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;

    .line 18
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    .line 19
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->proxyCollectInputsResultCallbackLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 4

    const-string v0, "onFailure("

    const-string v1, "e"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->proxyCollectInputsResultCallbackLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Lkotlin/Pair;

    invoke-interface {v2, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;->finishEndToEndTimer(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->collectInputsResultCallback:Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->proxyCollectInputsResultCallbackLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in CollectInputsResultCallback.onFailure"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;->startEndToEndTimer()V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    const-string v1, "SUCCESS"

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;->finishEndToEndTimer(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->collectInputsResultCallback:Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;->proxyCollectInputsResultCallbackLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in CollectInputsResultCallback.onSuccess"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method
