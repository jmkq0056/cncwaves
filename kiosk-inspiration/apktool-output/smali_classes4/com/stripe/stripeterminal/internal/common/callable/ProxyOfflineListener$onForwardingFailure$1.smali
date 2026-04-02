.class final Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onForwardingFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyOfflineListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $e:Lcom/stripe/stripeterminal/external/models/TerminalException;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onForwardingFailure$1;->$e:Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onForwardingFailure$1;->invoke(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 1

    const-string v0, "$this$safelyCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onForwardingFailure$1;->$e:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method
