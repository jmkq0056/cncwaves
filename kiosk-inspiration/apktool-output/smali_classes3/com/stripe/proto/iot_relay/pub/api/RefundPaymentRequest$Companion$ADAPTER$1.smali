.class public final Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RefundPaymentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRefundPaymentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefundPaymentRequest.kt\ncom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,568:1\n463#2,7:569\n1#3:576\n*S KotlinDebug\n*F\n+ 1 RefundPaymentRequest.kt\ncom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1\n*L\n482#1:569,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;",
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
.field private final metadataAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 407
    const-string v6, "uppsala/src/main/proto/com/stripe/iot_relay/pub/api/server_driven_api_service.proto"

    .line 401
    const-string v3, "type.googleapis.com/com.stripe.iot_relay.pub.api.RefundPaymentRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1$metadataAdapter$2;->INSTANCE:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1$metadataAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

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

    .line 409
    iget-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    .line 410
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;
    .locals 24

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->REASON_INVALID:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    .line 478
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v15, v2

    check-cast v15, Ljava/util/Map;

    .line 569
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v19, v0

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-wide v13, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object v5, v12

    move-object v6, v5

    move-object v7, v6

    .line 571
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 502
    invoke-virtual {v1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 501
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    .line 500
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 499
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 498
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v15, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    goto/16 :goto_1

    .line 497
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 496
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_0

    .line 495
    :pswitch_6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 491
    :pswitch_7
    :try_start_0
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v20, v5

    .line 493
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 489
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 488
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide v13, v4

    move-object/from16 v5, v20

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 487
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 486
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v20, v5

    move-object/from16 v22, v7

    .line 485
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 484
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto/16 :goto_0

    :cond_0
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 575
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 505
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    .line 506
    move-object/from16 v4, v20

    check-cast v4, Ljava/lang/String;

    .line 507
    move-object/from16 v5, v21

    check-cast v5, Ljava/lang/String;

    .line 508
    move-object/from16 v6, v22

    check-cast v6, Ljava/lang/String;

    .line 509
    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 511
    check-cast v9, Ljava/lang/String;

    .line 512
    check-cast v19, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    .line 513
    check-cast v16, Ljava/lang/Boolean;

    .line 514
    check-cast v17, Ljava/lang/Boolean;

    .line 515
    check-cast v10, Ljava/lang/String;

    .line 517
    check-cast v11, Ljava/lang/String;

    .line 518
    check-cast v12, Ljava/lang/String;

    .line 519
    check-cast v18, Ljava/lang/Boolean;

    move-object/from16 v23, v10

    move-object v10, v9

    move-wide v8, v13

    move-object/from16 v14, v23

    move-object/from16 v13, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v0

    .line 505
    invoke-direct/range {v3 .. v19}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 401
    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->device_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 433
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 434
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->charge:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->charge:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 435
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->payment_intent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->payment_intent:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 436
    :cond_3
    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 437
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 438
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    sget-object v2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->REASON_INVALID:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 439
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 440
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 441
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 442
    :cond_9
    invoke-direct {p0}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 443
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 444
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 445
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 446
    :cond_c
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 401
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 451
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 452
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_account:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 453
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 455
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 456
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 457
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 458
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    sget-object v2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->REASON_INVALID:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 459
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 460
    :cond_7
    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 461
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->payment_intent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->payment_intent:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 462
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->charge:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->charge:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 463
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 464
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 401
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 414
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->device_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->charge:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->charge:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 417
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->payment_intent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->payment_intent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_3
    iget-wide v3, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->amount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v3, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->amount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    sget-object v3, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->REASON_INVALID:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    if-eq v1, v3, :cond_6

    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_9
    invoke-direct {p0}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_c
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 401
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->refund_application_fee:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, v2

    .line 526
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->reverse_transfer:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object v11, v2

    .line 527
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    :cond_2
    move-object/from16 v16, v2

    .line 528
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v18, 0x1e7f

    const/16 v19, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 524
    invoke-static/range {v1 .. v19}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;->copy$default(Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    move-result-object p1

    return-object p1
.end method
