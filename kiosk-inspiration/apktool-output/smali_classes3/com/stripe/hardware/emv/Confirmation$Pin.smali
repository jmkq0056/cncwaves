.class public final Lcom/stripe/hardware/emv/Confirmation$Pin;
.super Lcom/stripe/hardware/emv/Confirmation;
.source "Confirmation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/emv/Confirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/emv/Confirmation$Pin$Error;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/Confirmation$Pin;",
        "Lcom/stripe/hardware/emv/Confirmation;",
        "error",
        "Lcom/stripe/hardware/emv/Confirmation$Pin$Error;",
        "(Lcom/stripe/hardware/emv/Confirmation$Pin$Error;)V",
        "getError",
        "()Lcom/stripe/hardware/emv/Confirmation$Pin$Error;",
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
        "Error",
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
.field private final error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/emv/Confirmation$Pin$Error;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/stripe/hardware/emv/Confirmation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/emv/Confirmation$Pin;Lcom/stripe/hardware/emv/Confirmation$Pin$Error;ILjava/lang/Object;)Lcom/stripe/hardware/emv/Confirmation$Pin;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/hardware/emv/Confirmation$Pin;->copy(Lcom/stripe/hardware/emv/Confirmation$Pin$Error;)Lcom/stripe/hardware/emv/Confirmation$Pin;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/emv/Confirmation$Pin$Error;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/emv/Confirmation$Pin$Error;)Lcom/stripe/hardware/emv/Confirmation$Pin;
    .locals 1

    new-instance v0, Lcom/stripe/hardware/emv/Confirmation$Pin;

    invoke-direct {v0, p1}, Lcom/stripe/hardware/emv/Confirmation$Pin;-><init>(Lcom/stripe/hardware/emv/Confirmation$Pin$Error;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/emv/Confirmation$Pin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/emv/Confirmation$Pin;

    iget-object v1, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    iget-object p1, p1, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getError()Lcom/stripe/hardware/emv/Confirmation$Pin$Error;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/Confirmation$Pin$Error;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pin(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/emv/Confirmation$Pin;->error:Lcom/stripe/hardware/emv/Confirmation$Pin$Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
