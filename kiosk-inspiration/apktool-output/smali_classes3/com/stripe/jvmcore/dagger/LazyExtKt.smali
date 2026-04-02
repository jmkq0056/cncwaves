.class public final Lcom/stripe/jvmcore/dagger/LazyExtKt;
.super Ljava/lang/Object;
.source "LazyExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a6\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "lazilyMap",
        "Ldagger/Lazy;",
        "U",
        "T",
        "block",
        "Lkotlin/Function1;",
        "dagger"
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
.method public static final lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/Lazy<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TU;>;)",
            "Ldagger/Lazy<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/stripe/jvmcore/dagger/LazyMapper;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/dagger/LazyMapper;-><init>(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ldagger/Lazy;

    return-object v0
.end method
