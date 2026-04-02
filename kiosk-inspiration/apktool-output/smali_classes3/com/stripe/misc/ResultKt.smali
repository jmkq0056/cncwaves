.class public final Lcom/stripe/misc/ResultKt;
.super Ljava/lang/Object;
.source "Result.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004\u001aN\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00060\u0008H\u0086\u000c\u00f8\u0001\u0000\u001a[\u0010\t\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00060\u00082\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00060\u0008H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001aN\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00060\u0008H\u0086\u000c\u00f8\u0001\u0000\u001aH\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00100\u0008H\u0086\u000c\u00f8\u0001\u0000\u001aH\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00100\u0008H\u0086\u000c\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "isSuccess",
        "",
        "S",
        "F",
        "Lcom/stripe/misc/Result;",
        "map",
        "U",
        "transform",
        "Lkotlin/Function1;",
        "mapBoth",
        "success",
        "failure",
        "(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "mapFailure",
        "onFailure",
        "effect",
        "",
        "onSuccess",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isSuccess(Lcom/stripe/misc/Result;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/misc/Result<",
            "+TS;+TF;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of p0, p0, Lcom/stripe/misc/Result$Success;

    return p0
.end method

.method public static final map(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;)Lcom/stripe/misc/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/misc/Result<",
            "+TS;+TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+TU;>;)",
            "Lcom/stripe/misc/Result<",
            "TU;TF;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p0, Lcom/stripe/misc/Result$Success;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/stripe/misc/Result$Success;

    check-cast p0, Lcom/stripe/misc/Result$Success;

    invoke-virtual {p0}, Lcom/stripe/misc/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/stripe/misc/Result$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/stripe/misc/Result;

    return-object v0

    .line 11
    :cond_0
    instance-of p1, p0, Lcom/stripe/misc/Result$Failure;

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final mapBoth(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/misc/Result<",
            "+TS;+TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+TU;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TF;+TU;>;)TU;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    instance-of v0, p0, Lcom/stripe/misc/Result$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/stripe/misc/Result$Success;

    invoke-virtual {p0}, Lcom/stripe/misc/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    instance-of p1, p0, Lcom/stripe/misc/Result$Failure;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/stripe/misc/Result$Failure;

    invoke-virtual {p0}, Lcom/stripe/misc/Result$Failure;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final mapFailure(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;)Lcom/stripe/misc/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/misc/Result<",
            "+TS;+TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TF;+TU;>;)",
            "Lcom/stripe/misc/Result<",
            "TS;TU;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p0, Lcom/stripe/misc/Result$Success;

    if-eqz v0, :cond_0

    return-object p0

    .line 26
    :cond_0
    instance-of v0, p0, Lcom/stripe/misc/Result$Failure;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/stripe/misc/Result$Failure;

    check-cast p0, Lcom/stripe/misc/Result$Failure;

    invoke-virtual {p0}, Lcom/stripe/misc/Result$Failure;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/stripe/misc/Result$Failure;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/stripe/misc/Result;

    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final onFailure(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;)Lcom/stripe/misc/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/misc/Result<",
            "+TS;+TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TF;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/misc/Result<",
            "TS;TF;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p0, Lcom/stripe/misc/Result$Success;

    if-nez v0, :cond_0

    .line 33
    instance-of v0, p0, Lcom/stripe/misc/Result$Failure;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/stripe/misc/Result$Failure;

    invoke-virtual {v0}, Lcom/stripe/misc/Result$Failure;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final onSuccess(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;)Lcom/stripe/misc/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/misc/Result<",
            "+TS;+TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/misc/Result<",
            "TS;TF;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p0, Lcom/stripe/misc/Result$Success;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/stripe/misc/Result$Success;

    invoke-virtual {v0}, Lcom/stripe/misc/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 18
    :cond_0
    instance-of p1, p0, Lcom/stripe/misc/Result$Failure;

    return-object p0
.end method
