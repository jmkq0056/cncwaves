.class public final Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NavigationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/debugconfig/NavigationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/debugconfig/NavigationConfig;",
        "Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/debugconfig/NavigationConfig;",
        "()V",
        "alwaysNavigateToReaderApplication",
        "",
        "alwaysShowSummaryScreens",
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
.field public alwaysNavigateToReaderApplication:Z

.field public alwaysShowSummaryScreens:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final alwaysNavigateToReaderApplication(Z)Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;->alwaysNavigateToReaderApplication:Z

    return-object p0
.end method

.method public final alwaysShowSummaryScreens(Z)Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;->alwaysShowSummaryScreens:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;->build()Lcom/stripe/proto/model/debugconfig/NavigationConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/debugconfig/NavigationConfig;
    .locals 4

    .line 115
    new-instance v0, Lcom/stripe/proto/model/debugconfig/NavigationConfig;

    .line 116
    iget-boolean v1, p0, Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;->alwaysShowSummaryScreens:Z

    .line 117
    iget-boolean v2, p0, Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;->alwaysNavigateToReaderApplication:Z

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/model/debugconfig/NavigationConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 115
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/debugconfig/NavigationConfig;-><init>(ZZLokio/ByteString;)V

    return-object v0
.end method
