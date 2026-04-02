.class public final Lio/ktor/client/plugins/HttpSend$Config;
.super Ljava/lang/Object;
.source "HttpSend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpSend$Config;",
        "",
        "()V",
        "maxSendCount",
        "",
        "getMaxSendCount",
        "()I",
        "setMaxSendCount",
        "(I)V",
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
.field private maxSendCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 45
    iput v0, p0, Lio/ktor/client/plugins/HttpSend$Config;->maxSendCount:I

    return-void
.end method


# virtual methods
.method public final getMaxSendCount()I
    .locals 1

    .line 45
    iget v0, p0, Lio/ktor/client/plugins/HttpSend$Config;->maxSendCount:I

    return v0
.end method

.method public final setMaxSendCount(I)V
    .locals 0

    .line 45
    iput p1, p0, Lio/ktor/client/plugins/HttpSend$Config;->maxSendCount:I

    return-void
.end method
