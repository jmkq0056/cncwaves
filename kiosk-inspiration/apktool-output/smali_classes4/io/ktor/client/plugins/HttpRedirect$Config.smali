.class public final Lio/ktor/client/plugins/HttpRedirect$Config;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRedirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpRedirect$Config;",
        "",
        "()V",
        "allowHttpsDowngrade",
        "",
        "getAllowHttpsDowngrade",
        "()Z",
        "setAllowHttpsDowngrade",
        "(Z)V",
        "checkHttpMethod",
        "getCheckHttpMethod",
        "setCheckHttpMethod",
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
.field private allowHttpsDowngrade:Z

.field private checkHttpMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->checkHttpMethod:Z

    return-void
.end method


# virtual methods
.method public final getAllowHttpsDowngrade()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->allowHttpsDowngrade:Z

    return v0
.end method

.method public final getCheckHttpMethod()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->checkHttpMethod:Z

    return v0
.end method

.method public final setAllowHttpsDowngrade(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->allowHttpsDowngrade:Z

    return-void
.end method

.method public final setCheckHttpMethod(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpRedirect$Config;->checkHttpMethod:Z

    return-void
.end method
