.class public final Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$defaultMatcher$1;
.super Ljava/lang/Object;
.source "ContentNegotiation.kt"

# interfaces
.implements Lio/ktor/http/ContentTypeMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->defaultMatcher(Lio/ktor/http/ContentType;)Lio/ktor/http/ContentTypeMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "io/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$defaultMatcher$1",
        "Lio/ktor/http/ContentTypeMatcher;",
        "contains",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "ktor-client-content-negotiation"
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
.field final synthetic $pattern:Lio/ktor/http/ContentType;


# direct methods
.method constructor <init>(Lio/ktor/http/ContentType;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$defaultMatcher$1;->$pattern:Lio/ktor/http/ContentType;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Lio/ktor/http/ContentType;)Z
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$defaultMatcher$1;->$pattern:Lio/ktor/http/ContentType;

    invoke-virtual {p1, v0}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result p1

    return p1
.end method
