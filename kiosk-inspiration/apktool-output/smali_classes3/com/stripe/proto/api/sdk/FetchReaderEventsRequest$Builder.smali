.class public final Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FetchReaderEventsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;",
        "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;",
        "()V",
        "acked_id",
        "",
        "",
        "after_id",
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
.field public acked_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public after_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 104
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->acked_id:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final acked_id(Ljava/util/List;)Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;"
        }
    .end annotation

    const-string v0, "acked_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 119
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->acked_id:Ljava/util/List;

    return-object p0
.end method

.method public final after_id(J)Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->after_id:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->build()Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;
    .locals 5

    .line 123
    new-instance v0, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;

    .line 124
    iget-wide v1, p0, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->after_id:J

    .line 125
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->acked_id:Ljava/util/List;

    .line 126
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 123
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;-><init>(JLjava/util/List;Lokio/ByteString;)V

    return-object v0
.end method
