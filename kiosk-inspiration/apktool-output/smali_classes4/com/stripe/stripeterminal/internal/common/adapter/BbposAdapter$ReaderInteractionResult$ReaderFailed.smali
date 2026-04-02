.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderFailed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;",
        "",
        "exception",
        "Lcom/stripe/hardware/status/ReaderException;",
        "(Lcom/stripe/hardware/status/ReaderException;)V",
        "getException",
        "()Lcom/stripe/hardware/status/ReaderException;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final exception:Lcom/stripe/hardware/status/ReaderException;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/status/ReaderException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;Lcom/stripe/hardware/status/ReaderException;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->copy(Lcom/stripe/hardware/status/ReaderException;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/status/ReaderException;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/status/ReaderException;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;-><init>(Lcom/stripe/hardware/status/ReaderException;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getException()Lcom/stripe/hardware/status/ReaderException;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    invoke-virtual {v0}, Lcom/stripe/hardware/status/ReaderException;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReaderFailed(exception="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->exception:Lcom/stripe/hardware/status/ReaderException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
