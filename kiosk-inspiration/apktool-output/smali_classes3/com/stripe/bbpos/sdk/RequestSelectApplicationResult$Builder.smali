.class public final Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RequestSelectApplicationResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;",
        "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;",
        "()V",
        "appList",
        "",
        "",
        "build",
        "sdk-protos_release"
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
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;->appList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final appList(Ljava/util/List;)Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;"
        }
    .end annotation

    const-string v0, "appList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 85
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;->appList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;->build()Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;
    .locals 3

    .line 89
    new-instance v0, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;

    .line 90
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;->appList:Ljava/util/List;

    .line 91
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 89
    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;-><init>(Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method
