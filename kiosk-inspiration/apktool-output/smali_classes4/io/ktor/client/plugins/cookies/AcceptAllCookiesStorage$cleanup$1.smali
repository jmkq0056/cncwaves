.class final Lio/ktor/client/plugins/cookies/AcceptAllCookiesStorage$cleanup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AcceptAllCookiesStorage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/cookies/AcceptAllCookiesStorage;->cleanup(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/http/Cookie;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "cookie",
        "Lio/ktor/http/Cookie;",
        "invoke",
        "(Lio/ktor/http/Cookie;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $timestamp:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lio/ktor/client/plugins/cookies/AcceptAllCookiesStorage$cleanup$1;->$timestamp:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/http/Cookie;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "cookie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lio/ktor/http/Cookie;->getExpires()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v1

    .line 50
    iget-wide v3, p0, Lio/ktor/client/plugins/cookies/AcceptAllCookiesStorage$cleanup$1;->$timestamp:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lio/ktor/http/Cookie;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/cookies/AcceptAllCookiesStorage$cleanup$1;->invoke(Lio/ktor/http/Cookie;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
