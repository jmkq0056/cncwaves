.class public final Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion$ADAPTER$1;
.super Lcom/squareup/wire/EnumAdapter;
.source "NetworkConnectivityStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion$ADAPTER$1",
        "Lcom/squareup/wire/EnumAdapter;",
        "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
        "fromValue",
        "value",
        "",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
            ")V"
        }
    .end annotation

    .line 30
    check-cast p3, Lcom/squareup/wire/WireEnum;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion$ADAPTER$1;->fromValue(I)Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/WireEnum;

    return-object p1
.end method

.method protected fromValue(I)Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;
    .locals 1

    .line 32
    sget-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->Companion:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus$Companion;->fromValue(I)Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    move-result-object p1

    return-object p1
.end method
