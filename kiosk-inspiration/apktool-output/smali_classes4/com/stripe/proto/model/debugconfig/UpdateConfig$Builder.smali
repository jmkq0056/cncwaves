.class public final Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/debugconfig/UpdateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig;",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig;",
        "()V",
        "bypassAppInstall",
        "",
        "channel",
        "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;",
        "debugLogging",
        "disabled",
        "forceTms",
        "build",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public bypassAppInstall:Z

.field public channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

.field public debugLogging:Z

.field public disabled:Z

.field public forceTms:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->build()Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/debugconfig/UpdateConfig;
    .locals 7

    .line 210
    new-instance v0, Lcom/stripe/proto/model/debugconfig/UpdateConfig;

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    .line 212
    iget-boolean v2, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->disabled:Z

    .line 213
    iget-boolean v3, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->forceTms:Z

    .line 214
    iget-boolean v4, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->debugLogging:Z

    .line 215
    iget-boolean v5, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->bypassAppInstall:Z

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 210
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/debugconfig/UpdateConfig;-><init>(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)V

    return-object v0
.end method

.method public final bypassAppInstall(Z)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->bypassAppInstall:Z

    return-object p0
.end method

.method public final channel(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->channel:Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;

    return-object p0
.end method

.method public final debugLogging(Z)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->debugLogging:Z

    return-object p0
.end method

.method public final disabled(Z)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->disabled:Z

    return-object p0
.end method

.method public final forceTms(Z)Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;->forceTms:Z

    return-object p0
.end method
