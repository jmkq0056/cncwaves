.class public final Lcom/stripe/wrappers/HandlerWrapperKt;
.super Ljava/lang/Object;
.source "HandlerWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "executor",
        "Lcom/stripe/wrappers/MessageQueueExecutor;",
        "looper",
        "Landroid/os/Looper;",
        "handler",
        "Landroid/os/Handler;",
        "android-wrappers-impl_release"
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
.method public static final executor(Landroid/os/Looper;)Lcom/stripe/wrappers/MessageQueueExecutor;
    .locals 2

    const-string v0, "looper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/stripe/wrappers/HandlerWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/stripe/wrappers/HandlerWrapper;-><init>(Landroid/os/Handler;)V

    check-cast v0, Lcom/stripe/wrappers/MessageQueueExecutor;

    return-object v0
.end method

.method public static final handler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    const-string v0, "looper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic handler$default(Landroid/os/Looper;ILjava/lang/Object;)Landroid/os/Handler;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    const-string p1, "getMainLooper(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/stripe/wrappers/HandlerWrapperKt;->handler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
