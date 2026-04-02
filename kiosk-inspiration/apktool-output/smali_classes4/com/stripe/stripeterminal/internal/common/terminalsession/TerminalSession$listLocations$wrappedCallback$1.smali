.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/LocationListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001e\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1",
        "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onSuccess",
        "locations",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "hasMore",
        "",
        "terminalsession_release"
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
.field final synthetic $callback:Lcom/stripe/stripeterminal/external/callable/LocationListCallback;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;->$callback:Lcom/stripe/stripeterminal/external/callable/LocationListCallback;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->failure(Lcom/stripe/stripeterminal/external/models/TerminalException;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;->$callback:Lcom/stripe/stripeterminal/external/callable/LocationListCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/LocationListCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "locations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;->$callback:Lcom/stripe/stripeterminal/external/callable/LocationListCallback;

    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/external/callable/LocationListCallback;->onSuccess(Ljava/util/List;Z)V

    return-void
.end method
