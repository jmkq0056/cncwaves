.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/RabbitBinTablePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRabbitBinTablePb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RabbitBinTablePb.kt\ncom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,901:1\n463#2,7:902\n1#3:909\n*S KotlinDebug\n*F\n+ 1 RabbitBinTablePb.kt\ncom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1\n*L\n323#1:902,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 275
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/payments/payments.proto"

    .line 269
    const-string v3, "type.googleapis.com/com.stripe.proto.model.payments.RabbitBinTablePb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;
    .locals 12

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 902
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v9, v7

    .line 904
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    packed-switch v10, :pswitch_data_0

    .line 333
    invoke-virtual {p1, v10}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 332
    :pswitch_0
    sget-object v9, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 331
    :pswitch_1
    sget-object v10, Lcom/stripe/proto/model/payments/CreditBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :pswitch_2
    sget-object v7, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 329
    :pswitch_3
    sget-object v6, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 328
    :pswitch_4
    sget-object v5, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 327
    :pswitch_5
    sget-object v4, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 326
    :pswitch_6
    sget-object v3, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 325
    :pswitch_7
    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v10

    .line 336
    new-instance v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    .line 337
    check-cast v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 338
    check-cast v3, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 339
    check-cast v4, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 340
    check-cast v5, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    .line 341
    check-cast v6, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 342
    check-cast v7, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    .line 344
    check-cast v9, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    .line 336
    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;-><init>(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 292
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 293
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 294
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 295
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 296
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 297
    :cond_5
    sget-object v0, Lcom/stripe/proto/model/payments/CreditBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 298
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 299
    :cond_6
    invoke-virtual {p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 304
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 305
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/payments/CreditBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 306
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 307
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 308
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 309
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 310
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 311
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/payments/RabbitBinTablePb;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 279
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_5
    sget-object v1, Lcom/stripe/proto/model/payments/CreditBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    iget-object v1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_6
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 269
    check-cast p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/payments/RabbitBinTablePb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/payments/RabbitBinTablePb;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;
    .locals 12

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 351
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->commercial_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 352
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->prepaid_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 353
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->hsa_fsa_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 354
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->wic_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v1

    .line 355
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->ebt_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;

    move-object v8, v0

    goto :goto_5

    :cond_5
    move-object v8, v1

    .line 356
    :goto_5
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->credit_brand_exceptions:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/model/payments/CreditBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v9

    .line 357
    iget-object v0, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->unbranded_card_pipeline:Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;

    :cond_6
    move-object v10, v1

    .line 358
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 349
    invoke-virtual/range {v2 .. v11}, Lcom/stripe/proto/model/payments/RabbitBinTablePb;->copy(Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Lcom/stripe/proto/model/payments/RabbitBinTablePb$EbtCardPipeline;Ljava/util/List;Lcom/stripe/proto/model/payments/RabbitBinTablePb$BloomFilterCardPipeline;Lokio/ByteString;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 269
    check-cast p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/payments/RabbitBinTablePb;)Lcom/stripe/proto/model/payments/RabbitBinTablePb;

    move-result-object p1

    return-object p1
.end method
