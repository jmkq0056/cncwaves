.class public final Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "Adapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NullOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0084\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "(Lcom/stripe/stripeterminal/internal/common/Adapter;)V",
        "execute",
        "setException",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/Adapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;->execute()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method public setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const/4 p1, 0x0

    new-array v4, p1, [Lkotlin/Pair;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V

    return-void
.end method
