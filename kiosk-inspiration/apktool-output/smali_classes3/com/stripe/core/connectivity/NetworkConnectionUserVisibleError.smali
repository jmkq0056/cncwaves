.class public final Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;
.super Ljava/lang/Object;
.source "NetworkConnectionEvent.kt"

# interfaces
.implements Lcom/stripe/core/connectivity/NetworkConnectionEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;",
        "Lcom/stripe/core/connectivity/NetworkConnectionEvent;",
        "error",
        "Lcom/stripe/core/connectivity/NetworkConnectionError;",
        "autoAdvanceOnBoot",
        "",
        "onConsumed",
        "Lkotlin/Function0;",
        "",
        "(Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;)V",
        "getAutoAdvanceOnBoot",
        "()Z",
        "getError",
        "()Lcom/stripe/core/connectivity/NetworkConnectionError;",
        "getOnConsumed",
        "()Lkotlin/jvm/functions/Function0;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "connectivity_release"
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
.field private final autoAdvanceOnBoot:Z

.field private final error:Lcom/stripe/core/connectivity/NetworkConnectionError;

.field private final onConsumed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/connectivity/NetworkConnectionError;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConsumed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    .line 27
    iput-boolean p2, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    .line 29
    iput-object p3, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->copy(Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;)Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/connectivity/NetworkConnectionError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    return v0
.end method

.method public final component3()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final copy(Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;)Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/connectivity/NetworkConnectionError;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;"
        }
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConsumed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;-><init>(Lcom/stripe/core/connectivity/NetworkConnectionError;ZLkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;

    iget-object v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    iget-object v3, p1, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    iget-boolean v3, p1, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAutoAdvanceOnBoot()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    return v0
.end method

.method public final getError()Lcom/stripe/core/connectivity/NetworkConnectionError;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    return-object v0
.end method

.method public getOnConsumed()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    invoke-virtual {v0}, Lcom/stripe/core/connectivity/NetworkConnectionError;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkConnectionUserVisibleError(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->error:Lcom/stripe/core/connectivity/NetworkConnectionError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoAdvanceOnBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->autoAdvanceOnBoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/connectivity/NetworkConnectionUserVisibleError;->onConsumed:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
