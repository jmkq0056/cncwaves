.class public final Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CreatePaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreatePaymentIntentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePaymentIntentRequest.kt\ncom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,681:1\n463#2,7:682\n1#3:689\n*S KotlinDebug\n*F\n+ 1 CreatePaymentIntentRequest.kt\ncom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1\n*L\n614#1:682,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "metadataAdapter",
        "",
        "",
        "getMetadataAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "metadataAdapter$delegate",
        "Lkotlin/Lazy;",
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
.field private final metadataAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 531
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 525
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.CreatePaymentIntentRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    sget-object p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1$metadataAdapter$2;->INSTANCE:Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1$metadataAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    .line 534
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    .line 682
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    .line 684
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v20, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 632
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 631
    :pswitch_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_1

    .line 630
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 629
    :pswitch_2
    sget-object v3, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_1

    .line 628
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/api/rest/TransferData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 627
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_1

    .line 626
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 625
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 624
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 623
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 622
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 621
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 619
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 618
    :pswitch_d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 617
    :pswitch_e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    .line 616
    :pswitch_f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    :goto_1
    move-object/from16 v4, v20

    goto/16 :goto_0

    .line 688
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 635
    new-instance v2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    .line 636
    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/Long;

    .line 637
    move-object/from16 v4, v20

    check-cast v4, Ljava/lang/String;

    .line 638
    check-cast v5, Ljava/lang/String;

    .line 639
    check-cast v6, Ljava/lang/String;

    .line 642
    check-cast v9, Ljava/lang/String;

    .line 643
    check-cast v10, Ljava/lang/String;

    .line 644
    check-cast v11, Ljava/lang/String;

    .line 645
    check-cast v12, Ljava/lang/String;

    .line 646
    check-cast v13, Ljava/lang/Long;

    .line 647
    check-cast v14, Ljava/lang/String;

    .line 648
    check-cast v15, Lcom/stripe/proto/api/rest/TransferData;

    .line 649
    check-cast v16, Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    .line 650
    check-cast v17, Ljava/lang/String;

    .line 651
    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 635
    invoke-direct/range {v2 .. v19}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 525
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 559
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 560
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 561
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 562
    :cond_3
    invoke-direct {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 563
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 564
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 565
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 566
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 567
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 568
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 569
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 570
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/api/rest/TransferData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 571
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 572
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 573
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 574
    :cond_d
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 525
    check-cast p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 579
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 580
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 581
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 582
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/api/rest/TransferData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 583
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 584
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 585
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 586
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 587
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 588
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 589
    :cond_9
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 590
    invoke-direct {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 591
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 592
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 593
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 594
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 525
    check-cast p2, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 538
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 540
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 542
    :cond_3
    invoke-direct {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 544
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 548
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/proto/api/rest/TransferData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 552
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object p1, p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_d
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 525
    check-cast p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 21

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-object v0, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->amount:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 658
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->capture_method:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 659
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->currency:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 660
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->description:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 661
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->receipt_email:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v8, v6

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 662
    :goto_4
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor:Ljava/lang/String;

    if-eqz v6, :cond_5

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v9, v6

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 663
    :goto_5
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->customer:Ljava/lang/String;

    if-eqz v6, :cond_6

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v10, v6

    goto :goto_6

    :cond_6
    move-object v10, v2

    .line 664
    :goto_6
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_group:Ljava/lang/String;

    if-eqz v6, :cond_7

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v11, v6

    goto :goto_7

    :cond_7
    move-object v11, v2

    .line 665
    :goto_7
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->application_fee_amount:Ljava/lang/Long;

    if-eqz v6, :cond_8

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v12, v6

    goto :goto_8

    :cond_8
    move-object v12, v2

    .line 666
    :goto_8
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v6, :cond_9

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v13, v6

    goto :goto_9

    :cond_9
    move-object v13, v2

    .line 667
    :goto_9
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    if-eqz v6, :cond_a

    sget-object v7, Lcom/stripe/proto/api/rest/TransferData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/api/rest/TransferData;

    move-object v14, v6

    goto :goto_a

    :cond_a
    move-object v14, v2

    .line 668
    :goto_a
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    if-eqz v6, :cond_b

    sget-object v7, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-object v15, v6

    goto :goto_b

    :cond_b
    move-object v15, v2

    .line 669
    :goto_b
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v6, :cond_c

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v16, v6

    goto :goto_c

    :cond_c
    move-object/from16 v16, v2

    .line 670
    :goto_c
    iget-object v6, v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->setup_future_usage:Ljava/lang/String;

    if-eqz v6, :cond_d

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_d
    move-object/from16 v17, v2

    .line 671
    sget-object v18, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v19, 0x30

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    .line 656
    invoke-static/range {v1 .. v20}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 525
    check-cast p1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method
