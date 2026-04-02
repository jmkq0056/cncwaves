.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
        "()V",
        "card_bloomfilter",
        "Lokio/ByteString;",
        "card_exceptions",
        "",
        "",
        "card_wildcard",
        "build",
        "terminal_release"
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
.field public card_bloomfilter:Lokio/ByteString;

.field public card_exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public card_wildcard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 461
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 463
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_exceptions:Ljava/util/List;

    .line 466
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_bloomfilter:Lokio/ByteString;

    .line 469
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_wildcard:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->build()Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;
    .locals 5

    .line 498
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 499
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_exceptions:Ljava/util/List;

    .line 500
    iget-object v2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_bloomfilter:Lokio/ByteString;

    .line 501
    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_wildcard:Ljava/util/List;

    .line 502
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 498
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;-><init>(Ljava/util/List;Lokio/ByteString;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_bloomfilter(Lokio/ByteString;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;
    .locals 1

    const-string v0, "card_bloomfilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_bloomfilter:Lokio/ByteString;

    return-object p0
.end method

.method public final card_exceptions(Ljava/util/List;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;"
        }
    .end annotation

    const-string v0, "card_exceptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_exceptions:Ljava/util/List;

    return-object p0
.end method

.method public final card_wildcard(Ljava/util/List;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;"
        }
    .end annotation

    const-string v0, "card_wildcard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 494
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline$Builder;->card_wildcard:Ljava/util/List;

    return-object p0
.end method
