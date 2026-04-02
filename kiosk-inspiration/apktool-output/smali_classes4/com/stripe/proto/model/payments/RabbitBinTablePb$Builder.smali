.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/RabbitBinTablePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
        "()V",
        "commercial_card_pipeline",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;",
        "credit_brand_exceptions",
        "",
        "Lcom/stripe/proto/model/payments/CreditBinEntry;",
        "credit_card_pipeline",
        "ebt_card_pipeline",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;",
        "hsa_fsa_card_pipeline",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
        "prepaid_card_pipeline",
        "unbranded_card_pipeline",
        "wic_card_pipeline",
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
.field public commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

.field public credit_brand_exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/CreditBinEntry;",
            ">;"
        }
    .end annotation
.end field

.field public credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

.field public ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

.field public hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

.field public prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

.field public unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

.field public wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 205
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_brand_exceptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->build()Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/RabbitBinTablePb;
    .locals 10

    .line 254
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 256
    iget-object v2, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 257
    iget-object v3, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 258
    iget-object v4, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    .line 259
    iget-object v5, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 260
    iget-object v6, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 261
    iget-object v7, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_brand_exceptions:Ljava/util/List;

    .line 262
    iget-object v8, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 263
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 254
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;-><init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V

    return-object v0
.end method

.method public final commercial_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    return-object p0
.end method

.method public final credit_brand_exceptions(Ljava/util/List;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/CreditBinEntry;",
            ">;)",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;"
        }
    .end annotation

    const-string v0, "credit_brand_exceptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_brand_exceptions:Ljava/util/List;

    return-object p0
.end method

.method public final credit_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    return-object p0
.end method

.method public final ebt_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    return-object p0
.end method

.method public final hsa_fsa_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    return-object p0
.end method

.method public final prepaid_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    return-object p0
.end method

.method public final unbranded_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    return-object p0
.end method

.method public final wic_card_pipeline(Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Builder;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    return-object p0
.end method
