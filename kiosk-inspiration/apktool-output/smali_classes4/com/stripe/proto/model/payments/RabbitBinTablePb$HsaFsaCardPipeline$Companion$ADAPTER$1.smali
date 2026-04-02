.class public final Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RabbitBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRabbitBinTablePb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RabbitBinTablePb.kt\ncom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,901:1\n463#2,7:902\n*S KotlinDebug\n*F\n+ 1 RabbitBinTablePb.kt\ncom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1\n*L\n857#1:902,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
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
            "Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 833
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/payments/payments.proto"

    .line 827
    const-string v3, "type.googleapis.com/com.stripe.proto.model.payments.RabbitBinTablePb.HsaFsaCardPipeline"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
    .locals 12

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 904
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    const-wide/32 v5, 0x7fffffff

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 v8, 0x2

    if-eq v4, v8, :cond_0

    .line 879
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 872
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextFieldMinLengthInBytes()J

    move-result-wide v3

    int-to-long v7, v7

    div-long/2addr v3, v7

    .line 873
    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 875
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 877
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 862
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextFieldMinLengthInBytes()J

    move-result-wide v8

    int-to-long v10, v7

    div-long/2addr v8, v10

    .line 863
    invoke-static {v8, v9, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 865
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 867
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 908
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 882
    new-instance v0, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    .line 883
    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 884
    :cond_5
    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 882
    :cond_6
    invoke-direct {v0, v2, v3, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;-><init>(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 827
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asPacked()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hsa_fsa_cards:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 844
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asPacked()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hsa_fsa_card_wildcard:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 845
    invoke-virtual {p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 827
    check-cast p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 850
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asPacked()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hsa_fsa_card_wildcard:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 851
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asPacked()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hsa_fsa_cards:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 827
    check-cast p2, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 837
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asPacked()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hsa_fsa_cards:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asPacked()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->hsa_fsa_card_wildcard:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 827
    check-cast p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 889
    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;->copy$default(Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 827
    check-cast p1, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;)Lcom/stripe/proto/model/payments/RabbitBinTablePb$HsaFsaCardPipeline;

    move-result-object p1

    return-object p1
.end method
