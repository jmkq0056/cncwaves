.class public final Lio/ktor/util/ThrowableKt;
.super Ljava/lang/Object;
.source "Throwable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\" \u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00018FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "rootCause",
        "",
        "getRootCause$annotations",
        "(Ljava/lang/Throwable;)V",
        "getRootCause",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "ktor-utils"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static synthetic getRootCause$annotations(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    return-void
.end method
