.class public final Lio/ktor/client/request/forms/InputProvider;
.super Ljava/lang/Object;
.source "formDsl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lio/ktor/client/request/forms/InputProvider;",
        "",
        "size",
        "",
        "block",
        "Lkotlin/Function0;",
        "Lio/ktor/utils/io/core/Input;",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V",
        "getBlock",
        "()Lkotlin/jvm/functions/Function0;",
        "getSize",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/ktor/utils/io/core/Input;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lio/ktor/utils/io/core/Input;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lio/ktor/client/request/forms/InputProvider;->size:Ljava/lang/Long;

    iput-object p2, p0, Lio/ktor/client/request/forms/InputProvider;->block:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/client/request/forms/InputProvider;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getBlock()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/ktor/utils/io/core/Input;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lio/ktor/client/request/forms/InputProvider;->block:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 203
    iget-object v0, p0, Lio/ktor/client/request/forms/InputProvider;->size:Ljava/lang/Long;

    return-object v0
.end method
