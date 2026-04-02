.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
        "()V",
        "hsa_fsa_card_wildcard",
        "",
        "",
        "hsa_fsa_cards",
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
.field public hsa_fsa_card_wildcard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hsa_fsa_cards:Ljava/util/List;
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

    .line 791
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 793
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->hsa_fsa_cards:Ljava/util/List;

    .line 796
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->hsa_fsa_card_wildcard:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->build()Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
    .locals 4

    .line 817
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    .line 818
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->hsa_fsa_cards:Ljava/util/List;

    .line 819
    iget-object v2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->hsa_fsa_card_wildcard:Ljava/util/List;

    .line 820
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 817
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;-><init>(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final hsa_fsa_card_wildcard(Ljava/util/List;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;"
        }
    .end annotation

    const-string v0, "hsa_fsa_card_wildcard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 813
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->hsa_fsa_card_wildcard:Ljava/util/List;

    return-object p0
.end method

.method public final hsa_fsa_cards(Ljava/util/List;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;"
        }
    .end annotation

    const-string v0, "hsa_fsa_cards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 803
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Builder;->hsa_fsa_cards:Ljava/util/List;

    return-object p0
.end method
