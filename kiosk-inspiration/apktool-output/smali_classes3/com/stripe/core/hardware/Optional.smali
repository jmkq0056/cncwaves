.class public interface abstract Lcom/stripe/core/hardware/Optional;
.super Ljava/lang/Object;
.source "Optional.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/Optional$Absent;,
        Lcom/stripe/core/hardware/Optional$Companion;,
        Lcom/stripe/core/hardware/Optional$Present;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u0000 \u0006*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0003\u0005\u0006\u0007J\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u0004\u0082\u0001\u0002\u0008\t\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Optional;",
        "V",
        "",
        "getOrNull",
        "()Ljava/lang/Object;",
        "Absent",
        "Companion",
        "Present",
        "Lcom/stripe/core/hardware/Optional$Absent;",
        "Lcom/stripe/core/hardware/Optional$Present;",
        "hardware_release"
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
.field public static final Companion:Lcom/stripe/core/hardware/Optional$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/core/hardware/Optional$Companion;->$$INSTANCE:Lcom/stripe/core/hardware/Optional$Companion;

    sput-object v0, Lcom/stripe/core/hardware/Optional;->Companion:Lcom/stripe/core/hardware/Optional$Companion;

    return-void
.end method


# virtual methods
.method public getOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 18
    instance-of v0, p0, Lcom/stripe/core/hardware/Optional$Present;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/stripe/core/hardware/Optional$Present;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/Optional$Present;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 19
    :cond_0
    instance-of v0, p0, Lcom/stripe/core/hardware/Optional$Absent;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
