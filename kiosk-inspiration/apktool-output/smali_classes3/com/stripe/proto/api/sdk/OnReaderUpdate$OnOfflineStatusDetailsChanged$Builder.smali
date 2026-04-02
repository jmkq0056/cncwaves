.class public final Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OnReaderUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;",
        "()V",
        "network_status",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
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
.field public network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

.field public offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 499
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 504
    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->build()Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;
    .locals 4

    .line 516
    new-instance v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;

    .line 517
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 518
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 519
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 516
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;-><init>(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final network_status(Lcom/stripe/proto/api/sdk/NetworkStatus;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;
    .locals 1

    const-string v0, "network_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-object p0
.end method

.method public final offline_stats(Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object p0
.end method
