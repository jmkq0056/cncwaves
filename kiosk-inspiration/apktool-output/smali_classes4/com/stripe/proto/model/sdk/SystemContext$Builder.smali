.class public final Lcom/stripe/proto/model/sdk/SystemContext$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/SystemContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "Lcom/stripe/proto/model/sdk/SystemContext$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/SystemContext$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "()V",
        "connectivity_status",
        "Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;",
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
.field public connectivity_status:Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;->OFFLINE:Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/SystemContext$Builder;->connectivity_status:Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/SystemContext$Builder;->build()Lcom/stripe/proto/model/sdk/SystemContext;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/SystemContext;
    .locals 3

    .line 98
    new-instance v0, Lcom/stripe/proto/model/sdk/SystemContext;

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/SystemContext$Builder;->connectivity_status:Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;

    .line 100
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/SystemContext$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 98
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/model/sdk/SystemContext;-><init>(Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connectivity_status(Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;)Lcom/stripe/proto/model/sdk/SystemContext$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "connectivity_status is deprecated"
    .end annotation

    const-string v0, "connectivity_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/SystemContext$Builder;->connectivity_status:Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;

    return-object p0
.end method
